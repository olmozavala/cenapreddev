<?php

/*--------------------------------------------------------------
# Copyright (C) joomla-monster.com
# License: http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
# Website: http://www.joomla-monster.com
# Support: info@joomla-monster.com
---------------------------------------------------------------*/

defined('_JEXEC') or die;
// including base setup file
include_once (JPATH_ROOT."/templates/".$this->template.'/lib/php/dj_setup.php');
?>
<?php if ($this->direction == 'rtl') { ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<?php } else { ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<?php } ?>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $direction; ?>" >
    <head>
        <jdoc:include type="head" />
        <?php
        // including template header files
        include_once (JPATH_ROOT."/templates/".$this->template.'/lib/php/dj_head.php');
    ?>
    </head>
<body>
  <div id="all" <?php if($fontswitcher) {} else { ?> style="font-size: <?php echo $fontsize; ?>px; line-height:  <?php echo $fontsize+6; ?>px " <?php } ?>>    
    <div id="pageAll" <?php if($widtharea) {} else { ?> style="width: <?php echo $page_width; ?>; " <?php } ?>>
      <?php if($this->countModules('top')) : ?>
      <div id="topModule">
        <jdoc:include type="modules" name="top" style="raw" />
      </div>
        <?php endif; ?>
      <div id="logoSearch" class="clearfix">
        <?php if($this->countModules('position-0')) : ?>
        
          <jdoc:include type="modules" name="position-0" style="raw"/>
        
        <?php endif; ?>
      </div>
      <div id="topmenuIcons" class="clearfix">
       
        <div id="topmenu">
          <jdoc:include type="modules" name="topmenu" style="raw" />
        </div>
      </div>
      <div id="header">
        <?php if($this->countModules('header')) : ?>
          <jdoc:include type="modules" name="header" style="raw" />
        <?php endif; ?>
        <?php if($this->countModules('slogan')) : ?>
          <div id="headerModule">
            <jdoc:include type="modules" name="slogan" style="raw" />
          </div>
          <?php endif; ?>
      </div>
      <?php  if (($this->countModules('user1')) || ($this->countModules('user2'))) : ?>
       <div id="user1_user2" class="clearfix">
              <?php  if ($this->countModules('user1')) : ?>
        <div id="user1<?php echo $user12; ?>">
                  <jdoc:include type="modules" name="user1" style="djmodule"/>
        </div>
        <?php endif; ?>
        <?php  if ($this->countModules('user2')) : ?>
        <div id="user2<?php echo $user12; ?>">
          <jdoc:include type="modules" name="user2" style="djmodule"/>
        </div>
        <?php endif; ?>
            </div>                                   
            <?php endif; ?>
      <div id="pathwayFonts" class="clearfix">
        <?php  if ($this->countModules('position-2')) : ?>
        <div id="pathway">
          <jdoc:include type="modules" name="position-2" />
        </div>
        <?php endif; ?>
        <?php if($fontswitcher) : ?>
        <div id="fonts">
          <a href="index.php" class="texttoggler" id="largeFont" rel="largeview" title="large size"><!--large size--></a>
          <a href="index.php" class="texttoggler" id="smallFont" rel="smallview" title="small size" ><!--small size--></a>
          <a href="index.php" class="texttoggler" id="normalFont" rel="normalview" title="normal size"><!--default size--></a>
          <script type="text/javascript">
          //documenttextsizer.setup("shared_css_class_of_toggler_controls")
          documenttextsizer.setup("texttoggler")
          </script>
        </div>
        <?php endif; ?>
      </div>
      <div id="wrapper" class="scheme_<?php echo $scheme; ?>">
              <div id="main" class="clearfix">
          <?php if ($showLeft) : ?>
                  <div id="left">
                    <jdoc:include type="modules" name="left" style="djmodule"/>
            <jdoc:include type="modules" name="position-7" style="djmodule" />
                  </div>
                  <?php endif; ?>              
                  <div id="content"> 
            <?php if ($this->countModules('user5')) : ?>
            <div id="user5">
              <jdoc:include type="modules" name="user5" style="djmodule"/>
            </div>
            <?php endif; ?>
                        <div id="maincontent">
                            <jdoc:include type="message" />
              <jdoc:include type="component" />                
                        </div>    
          </div>
          <?php if ($showRight) : ?>
                    <div id="right">
                      <jdoc:include type="modules" name="right" style="djmodule"/>
            <jdoc:include type="modules" name="position-3" style="djmodule"/>
            <jdoc:include type="modules" name="position-4" style="djmodule"/>
                    </div>
                  <?php endif; ?>  
        </div>
      </div>
      <?php if($this->countModules('bottom1') or $this->countModules('bottom2') or $this->countModules('bottom3') or $this->countModules('bottom4')) : ?>
      <div id="bottom">   
        <div id="modules-bottom" class="m<?php echo $bottom_total ?> clearfix" >
          <?php if($this->countModules('bottom1')) : ?>
            <div class="modules-bottom-in">
              <jdoc:include type="modules" name="bottom1" style="djmodule2"/>
            </div>
                <?php endif; ?>     
                <?php if($this->countModules('bottom2')) : ?>
            <div class="modules-bottom-in">      
              <jdoc:include type="modules" name="bottom2" style="djmodule2"/>
            </div>
                <?php endif; ?> 
          <?php if($this->countModules('bottom3')) : ?>
            <div class="modules-bottom-in">
              <jdoc:include type="modules" name="bottom3" style="djmodule2"/>
            </div>
                <?php endif; ?> 
          <?php if($this->countModules('bottom4')) : ?>
            <div class="modules-bottom-in">
              <jdoc:include type="modules" name="bottom4" style="djmodule2"/>
            </div>
                <?php endif; ?>       
        </div>
      </div> 
       <?php endif; ?> 
      <div id="footer" class="clearfix">
        <?php if($this->countModules('syndicateload')) : ?>	
         <jdoc:include type="modules" name="syndicateload" style="xhtml" />    
       <?php endif; ?>       
     
        </div>
      
      </div>
      
    </div>
  </div>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-47527704-1', 'unam.mx');
  ga('send', 'pageview');

</script>
  </body>
</html>
