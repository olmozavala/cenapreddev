<?php
/**
 * @Copyright
 *
 * @package    Visitorcounter - VCNT for Joomla! 3
 * @author     Viktor Vogel <admin@kubik-rubik.de>
 * @version    3-3 - 2015-03-07
 * @link       https://joomla-extensions.kubik-rubik.de/vcnt-visitorcounter
 *
 * @license    GNU/GPL
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
defined('_JEXEC') or die('Restricted access');

/**
 * Main helper class of the visitorcounter module
 */
class ModVisitorcounterHelper
{
    protected $db;

    function __construct()
    {
        $this->db = JFactory::getDbo();
    }

    /**
     * Creates the needed database tables to store the data of the visitorcounter
     *
     * @param int $clean_db Determines whether the clean database option is activated
     */
    public function createSqlTables($clean_db)
    {
        $query = "CREATE TABLE IF NOT EXISTS ".$this->db->quoteName('#__vcnt')." (".$this->db->quoteName('tm')." INT NOT NULL, ".$this->db->quoteName('ip')." VARCHAR(16) NOT NULL DEFAULT '0.0.0.0')";
        $this->db->setQuery($query);
        $this->db->query();

        if(!empty($clean_db))
        {
            $query = "CREATE TABLE IF NOT EXISTS ".$this->db->quoteName('#__vcnt_pc')." (".$this->db->quoteName('cnt')." INT NOT NULL DEFAULT '0')";
            $this->db->setQuery($query);
            $this->db->query();

            $query = "SELECT count(*) FROM ".$this->db->quoteName('#__vcnt_pc');
            $this->db->setQuery($query);
            $numrows = $this->db->loadResult();

            if(empty($numrows))
            {
                $query = "INSERT INTO ".$this->db->quoteName('#__vcnt_pc')." VALUES(0)";
                $this->db->setQuery($query);
                $this->db->query();
            }
        }
    }

    /**
     * Checks the call and counts it if conditions are fulfilled
     *
     * @param JRegistry $params
     */
    function count($params)
    {
        $locktime = $params->get('locktime', 60) * 60;
        $nobots = $params->get('nobots');
        $botslist = $params->get('botslist');
        $noip = $params->get('noip');
        $ipslist = $params->get('ipslist');
        $anonymize_ip = $params->get('anonymize_ip');

        $now = time();
        $ip = $_SERVER['REMOTE_ADDR'];

        $bot = 0;

        if($nobots)
        {
            $agent = $_SERVER['HTTP_USER_AGENT'];

            if(!empty($agent))
            {
                $bots_array = array_map('trim', explode(',', $botslist));

                foreach($bots_array as $bot_value)
                {
                    if(preg_match('@'.$bot_value.'@i', $agent))
                    {
                        $bot = 1;
                        break;
                    }
                }
            }
            else
            {
                $bot = 1;
            }
        }

        $iplock = 0;

        if($noip)
        {
            if(!empty($ip))
            {
                $ips_array = array_map('trim', explode(',', $ipslist));

                foreach($ips_array as $ip_value)
                {
                    if(preg_match('@'.$ip_value.'@i', $ip))
                    {
                        $iplock = 1;
                        break;
                    }
                }
            }
            else
            {
                $iplock = 1;
            }
        }

        // Anonymize IP - set last octet of address to 0
        if($anonymize_ip)
        {
            $ip = substr($ip, 0, strrpos($ip, '.')).'.0';
        }

        // Check whether the same IP is not already counted or the reload time has expired
        $query = "SELECT count(*) FROM ".$this->db->quoteName('#__vcnt')." WHERE ".$this->db->quoteName('ip')." = ".$this->db->quote($ip)." AND (".$this->db->quoteName('tm')." + ".$this->db->quote($locktime).") > ".$this->db->quote($now);
        $this->db->setQuery($query);
        $items = $this->db->loadResult();

        // All conditions are fulfilled, store the hit to the database
        if(empty($items) AND $bot == 0 AND $iplock == 0)
        {
            $query = "INSERT INTO ".$this->db->quoteName('#__vcnt')." (".$this->db->quoteName('tm').", ".$this->db->quoteName('ip').") VALUES (".$this->db->quote($now).", ".$this->db->quote($ip).")";
            $this->db->setQuery($query);
            $this->db->query();
        }
    }

    /**
     * Reads the current numbers from the database
     *
     * @param JRegistry $params
     *
     * @return array    All needed information for the visitorcounter
     */
    function read($params)
    {
        // Set the correct timezone offset
        $site_offset = JFactory::getApplication()->getCfg('offset');
        date_default_timezone_set($site_offset);

        // Calculate the needed time intervalls
        $day = date('d');
        $month = date('m');
        $year = date('Y');
        $daystart = mktime(0, 0, 0, $month, $day, $year);
        $monthstart = mktime(0, 0, 0, $month, 1, $year);
        $weekstart = $daystart - ((date('N') - 1) * 24 * 60 * 60);
        $yesterdaystart = $daystart - (24 * 60 * 60);

        // Create queries for the database call
        $queries = array();

        $queries['query_all'] = "SELECT count(*) FROM ".$this->db->quoteName('#__vcnt');
        $queries['query_today'] = "SELECT count(*) FROM ".$this->db->quoteName('#__vcnt')." WHERE ".$this->db->quoteName('tm')." > ".$this->db->quote($daystart);
        $queries['query_yesterday'] = "SELECT count(*) FROM ".$this->db->quoteName('#__vcnt')." WHERE ".$this->db->quoteName('tm')." > ".$this->db->quote($yesterdaystart)." AND ".$this->db->quoteName('tm')." < ".$this->db->quote($daystart);
        $queries['query_week'] = "SELECT count(*) FROM ".$this->db->quoteName('#__vcnt')." WHERE ".$this->db->quoteName('tm')." >= ".$this->db->quote($weekstart);
        $queries['query_month'] = "SELECT count(*) FROM ".$this->db->quoteName('#__vcnt')." WHERE ".$this->db->quoteName('tm')." >= ".$this->db->quote($monthstart);

        // Add the number from the cleaned database table
        $clean_db = $params->get('clean_db');

        if(!empty($clean_db))
        {
            $queries['query_clean_db'] = "SELECT ".$this->db->quoteName('cnt')." FROM ".$this->db->quoteName('#__vcnt_pc');
        }

        $queries_string = implode(' UNION ALL ', $queries);
        $this->db->setQuery($queries_string);
        $result = $this->db->loadRowList();

        $all_visitors = $result[0][0];

        // Add the preset number
        $preset = $params->get('preset');

        if(!empty($preset))
        {
            $all_visitors += $preset;
        }

        if(!empty($clean_db))
        {
            $all_visitors += $result[5][0];
        }

        $today_visitors = $result[1][0];
        $yesterday_visitors = $result[2][0];
        $week_visitors = $result[3][0];
        $month_visitors = $result[4][0];

        $ret = array($all_visitors, $today_visitors, $yesterday_visitors, $week_visitors, $month_visitors);

        return $ret;
    }

    /**
     * Cleans the database from old entries which are not needed anymore for the output
     */
    function clean()
    {
        $site_offset = JFactory::getApplication()->getCfg('offset');
        date_default_timezone_set($site_offset);

        $month = date('m');
        $year = date('Y');
        $monthstart = mktime(0, 0, 0, $month, 1, $year);

        $cleanstart = $monthstart - (8 * 24 * 60 * 60);

        $query = "SELECT count(*) FROM ".$this->db->quoteName('#__vcnt')." WHERE ".$this->db->quoteName('tm')." < ".$this->db->quote($cleanstart);
        $this->db->setQuery($query);
        $oldrows = $this->db->loadResult();

        if(!empty($oldrows))
        {
            $query = "UPDATE ".$this->db->quoteName('#__vcnt_pc')." SET ".$this->db->quoteName('cnt')." = ".$this->db->quoteName('cnt')." + ".$this->db->quote($oldrows);
            $this->db->setQuery($query);
            $this->db->query();

            $query = "DELETE FROM ".$this->db->quoteName('#__vcnt')." WHERE ".$this->db->quoteName('tm')." < ".$this->db->quote($cleanstart);
            $this->db->setQuery($query);
            $this->db->query();
        }
    }

    /**
     * Checks the session table and creates a list with all guests and registered user who have an entry in the database in the specified session time
     *
     * @param int $whoisonline_session
     *
     * @return array $users_online All online visitors in the specified session time
     */
    function whoIsOnline($whoisonline_session)
    {
        $users_online = array();
        $guest = 0;
        $user = 0;
        $whoisonline_session = time() - $whoisonline_session * 60;

        $query = "SELECT ".$this->db->quoteName('guest').", ".$this->db->quoteName('client_id')." , ".$this->db->quoteName('username').", ".$this->db->quoteName('userid')." FROM ".$this->db->quoteName('#__session')." WHERE ".$this->db->quoteName('client_id')." = 0 AND ".$this->db->quoteName('time')." > ".$this->db->quote($whoisonline_session);
        $this->db->setQuery($query);
        $sessions = (array)$this->db->loadObjectList();

        if(!empty($sessions))
        {
            $counted_session = array();

            foreach($sessions as $session)
            {
                if($session->guest == 1 AND empty($session->usertype))
                {
                    $guest++;
                    continue;
                }
                else
                {
                    if(!in_array($session->username, $counted_session))
                    {
                        $user++;
                        $username = array('username' => $session->username, 'userid' => $session->userid);
                        $users_online['usernames'][] = $username;

                        $counted_session[] = $session->username;
                    }
                }
            }
        }

        $users_online['guest'] = $guest;
        $users_online['user'] = $user;

        return $users_online;
    }

    /**
     * Creates a squeeze modal window to show an image for the winner contest functionality
     *
     * @param JRegistry $params
     */
    function popupSqueeze($params)
    {
        $document = JFactory::getDocument();
        JHtml::_('behavior.framework');
        JHtml::_('behavior.modal');

        $cwsession = !$params->get('cwsession');
        $url = $params->get('squeeze_url');
        $relativetoroot = $params->get('squeeze_relativetoroot');
        $width = $params->get('squeeze_width');
        $height = $params->get('squeeze_height');
        $cookietime = $params->get('squeeze_time');
        $cOverlayOpacity = $params->get('squeeze_opacity');
        $ckey = '';
        $enableonchange = 0;
        $cnocookies = 0;
        $cswf = 0;
        $cookiename = 'vcnt';

        if(!$enableonchange)
        {
            $ckey = 'yes';
        }

        if($relativetoroot)
        {
            $url = JURI::base().$url;
        }

        $html = '<script type="text/javascript">
                <!--
                function getCookie(c_name)
                {
                   if (document.cookie.length>0)
                     {
                     c_start=document.cookie.indexOf(c_name + "=");
                     if (c_start!=-1)
                       {
                       c_start=c_start + c_name.length+1;
                       c_end=document.cookie.indexOf(";",c_start);
                       if (c_end==-1) c_end=document.cookie.length;
                       return unescape(document.cookie.substring(c_start,c_end));
                       }
                     }
                   return "";
                }
                function setCookie(name,value,minutes)
                {
                   if (minutes) {
                      var date = new Date();
                      date.setTime(date.getTime()+(minutes*1000*60));
                      var expires = "; expires="+date.toGMTString();
                   }
                   else var expires = "";
                   document.cookie = name+"="+value+expires+"; path=/";
                }
                function checkCookie()
                {
                   showrightpane=getCookie(\''.$cookiename.'\');
                   if ((showrightpane==null) || (showrightpane=="")) {
                     setCookie(\''.$cookiename.'\',\'no\','.$cookietime.'); //set the default cookie value here
                   }
                }
                function showV() {
                        '.($cswf ? '
                        var myel = new Element("div").adopt(
                                new Element("div",{"id":"squeeze_swf_pop"}).adopt(
                                        new Element("h1").appendText("To watch this video... please get suitable Flash Player!"),
                                        new Element("br"),
                                        new Element("a",{"href":"http://www.adobe.com/go/getflashplayer"}).adopt(
                                                new Element ("img",{"src":"http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif", "alt":"Get Adobe Flash player"})
                                        )
                                )
                        );
                        ' : 'var myel = new Element(\'a\',{\'href\':\''.$url.'\'});').'
                        SqueezeBox.fromElement(myel,{
                                size: {x: '.$width.', y: '.$height.'},
                                overlayOpacity: '.((double)$cOverlayOpacity) / 100.0 .',
                                handler: \''.($cswf ? 'adopt' : 'iframe').'\',
                                iframePreload:true,
                                onOpen: function() {
                                        '.($cswf ? '
                                        swfobject.embedSWF("'.$url.'", "squeeze_swf_pop", '.$width.', '.$height.', "9.0.0");
                                        ' : '').'
                                        if (window.ie6) {
                                          window.scrollTo(0,0);
                                          var t=$(\'sbox-btn-close\'); var g = t.getStyle(\'background-image\');
                                          if (g!="none") {
                                            g = g.replace("url(\"","").replace("\")","");
                                            t.setStyle("filter", \'progid:DXImageTransform.Microsoft.AlphaImageLoader(src="\' + g + \'",sizingMethod="crop")\');
                                            t.setStyle("background","none");
                                                        t.setStyle("cursor","pointer");
                                          }
                                        }
                                },
                                onClose: function(){
                                        setCookie(\''.$cookiename.'\',\''.$ckey.'\','.$cookietime.');
                                }'.($cswf ? ',
                                onClose: function(){
                                        $(\'squeeze_swf_pop\').StopPlay();
                                }' : '').'
                        });
                }
                function closeV() {
                        SqueezeBox.close();
                }
                checkCookie();
                window.addEvent(\'domready\', function() {
                    v = getCookie(\''.$cookiename.'\');
                    '.($cwsession ? 'showV();' : '
                    if(!('.($cnocookies ? '' : '(v==null) || (v == "") || ').'(v=="'.$ckey.'")))
                    {
                            showV();
                    }
                    ').'
                 });
                 //-->
                 </script>';

        $document->addCustomTag($html);
    }

    /**
     * Creates a JavaScrip alert window to show a text from the language file for the winner contest functionality
     *
     * @param string $cwsession
     */
    function popupJSAlert($cwsession)
    {
        if(!isset($_SESSION['cwsessioncookie']))
        {
            $_SESSION['cwsessioncookie'] = 0;
        }

        if(!$cwsession)
        {
            $_SESSION['cwsessioncookie'] = 0;
        }

        if(empty($_SESSION['cwsessioncookie']))
        {
            $head = '<script type="text/javascript">alert("'.JText::_('MOD_VISITORCOUNTER_JSALERT').'");</script>';
            $document = JFactory::getDocument();
            $document->addCustomTag($head);
        }

        if($cwsession)
        {
            $_SESSION['cwsessioncookie'] = 1;
        }
    }

    /**
     * Checks the group of the visitor to determine whether the template of the module has to be loaded
     *
     * @param JRegistry $params
     *
     * @return boolean
     */
    function showAllowedUser($params)
    {
        $user = JFactory::getUser();

        $filtergroups = array_map('intval', (array)$params->get('filter_groups', 1));
        $usergroups = JAccess::getGroupsByUser($user->id);

        foreach($usergroups as $usergroup)
        {
            if(in_array($usergroup, $filtergroups))
            {
                return true;
            }
        }

        return false;
    }

    /**
     * Gets the Item ID of the component - the Item ID is the ID from the menu entry
     *
     * @param integer $whoisonline_linknames
     *
     * @return mixed|string
     */
    function getItemId($whoisonline_linknames)
    {
        if($whoisonline_linknames == 1)
        {
            $link = 'index.php?option=com_users&view=profile';
        }
        elseif($whoisonline_linknames == 2)
        {
            $link = 'index.php?option=com_comprofiler';
        }

        $db = JFactory::getDBO();
        $query = 'SELECT '.$db->quoteName("id").' FROM '.$db->quoteName("#__menu").' WHERE '.$db->quoteName("link").' = "'.$link.'" AND '.$db->quoteName("published").' = 1';
        $db->setQuery($query);
        $item_id = $db->loadResult();

        if(empty($item_id))
        {
            $item_id = '';
        }
        else
        {
            $item_id = '&Itemid='.$item_id;
        }

        return $item_id;
    }
}
