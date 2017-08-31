CREATE DATABASE  IF NOT EXISTS `operativo_admin2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `operativo_admin2`;
-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: operativo_admin2
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bak_j4_assets`
--

DROP TABLE IF EXISTS `bak_j4_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_assets`
--

LOCK TABLES `bak_j4_assets` WRITE;
/*!40000 ALTER TABLE `bak_j4_assets` DISABLE KEYS */;
INSERT INTO `bak_j4_assets` VALUES (1,0,0,101,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,20,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,21,22,1,'com_cpanel','com_cpanel','{}'),(10,1,23,24,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,25,26,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,27,28,1,'com_login','com_login','{}'),(13,1,29,30,1,'com_mailto','com_mailto','{}'),(14,1,31,32,1,'com_massmail','com_massmail','{}'),(15,1,33,34,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,35,36,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,37,38,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,39,70,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,71,74,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,75,76,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,77,78,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,79,80,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,81,82,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,83,86,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(26,1,87,88,1,'com_wrapper','com_wrapper','{}'),(27,8,18,19,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,72,73,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,84,85,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,89,90,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,91,92,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,93,94,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,95,96,1,'com_contenthistory','com_contenthistory','{}'),(37,1,97,98,1,'com_ajax','com_ajax','{}'),(38,1,99,100,1,'com_postinstall','com_postinstall','{}'),(39,18,40,41,2,'com_modules.module.1','Main Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(40,18,42,43,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,44,45,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,46,47,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,48,49,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,50,51,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,52,53,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,54,55,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,56,57,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,58,59,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,60,61,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,18,62,63,2,'com_modules.module.16','Login Form','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(51,18,64,65,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(52,18,66,67,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,68,69,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
/*!40000 ALTER TABLE `bak_j4_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_associations`
--

DROP TABLE IF EXISTS `bak_j4_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_associations`
--

LOCK TABLES `bak_j4_associations` WRITE;
/*!40000 ALTER TABLE `bak_j4_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_banner_clients`
--

DROP TABLE IF EXISTS `bak_j4_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_banner_clients`
--

LOCK TABLES `bak_j4_banner_clients` WRITE;
/*!40000 ALTER TABLE `bak_j4_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_banner_tracks`
--

DROP TABLE IF EXISTS `bak_j4_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_banner_tracks`
--

LOCK TABLES `bak_j4_banner_tracks` WRITE;
/*!40000 ALTER TABLE `bak_j4_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_banners`
--

DROP TABLE IF EXISTS `bak_j4_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_banners`
--

LOCK TABLES `bak_j4_banners` WRITE;
/*!40000 ALTER TABLE `bak_j4_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_categories`
--

DROP TABLE IF EXISTS `bak_j4_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_categories`
--

LOCK TABLES `bak_j4_categories` WRITE;
/*!40000 ALTER TABLE `bak_j4_categories` DISABLE KEYS */;
INSERT INTO `bak_j4_categories` VALUES (1,0,0,0,11,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `bak_j4_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_contact_details`
--

DROP TABLE IF EXISTS `bak_j4_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_contact_details`
--

LOCK TABLES `bak_j4_contact_details` WRITE;
/*!40000 ALTER TABLE `bak_j4_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_content`
--

DROP TABLE IF EXISTS `bak_j4_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_content`
--

LOCK TABLES `bak_j4_content` WRITE;
/*!40000 ALTER TABLE `bak_j4_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_content_frontpage`
--

DROP TABLE IF EXISTS `bak_j4_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_content_frontpage`
--

LOCK TABLES `bak_j4_content_frontpage` WRITE;
/*!40000 ALTER TABLE `bak_j4_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_content_rating`
--

DROP TABLE IF EXISTS `bak_j4_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_content_rating`
--

LOCK TABLES `bak_j4_content_rating` WRITE;
/*!40000 ALTER TABLE `bak_j4_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_content_types`
--

DROP TABLE IF EXISTS `bak_j4_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_content_types`
--

LOCK TABLES `bak_j4_content_types` WRITE;
/*!40000 ALTER TABLE `bak_j4_content_types` DISABLE KEYS */;
INSERT INTO `bak_j4_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `bak_j4_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_contentitem_tag_map`
--

DROP TABLE IF EXISTS `bak_j4_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_contentitem_tag_map`
--

LOCK TABLES `bak_j4_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `bak_j4_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_core_log_searches`
--

DROP TABLE IF EXISTS `bak_j4_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_core_log_searches`
--

LOCK TABLES `bak_j4_core_log_searches` WRITE;
/*!40000 ALTER TABLE `bak_j4_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_extensions`
--

DROP TABLE IF EXISTS `bak_j4_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=701 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_extensions`
--

LOCK TABLES `bak_j4_extensions` WRITE;
/*!40000 ALTER TABLE `bak_j4_extensions` DISABLE KEYS */;
INSERT INTO `bak_j4_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"simplepie\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.6\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2014\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.1.7\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','','',0,'0000-00-00 00:00:00',4,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','','','',0,'0000-00-00 00:00:00',0,0),(451,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.3\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.3\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.5\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `bak_j4_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_filters`
--

DROP TABLE IF EXISTS `bak_j4_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_filters`
--

LOCK TABLES `bak_j4_finder_filters` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links`
--

DROP TABLE IF EXISTS `bak_j4_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links`
--

LOCK TABLES `bak_j4_finder_links` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_terms0`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_terms0`
--

LOCK TABLES `bak_j4_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_terms1`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_terms1`
--

LOCK TABLES `bak_j4_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_terms2`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_terms2`
--

LOCK TABLES `bak_j4_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_terms3`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_terms3`
--

LOCK TABLES `bak_j4_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_terms4`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_terms4`
--

LOCK TABLES `bak_j4_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_terms5`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_terms5`
--

LOCK TABLES `bak_j4_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_terms6`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_terms6`
--

LOCK TABLES `bak_j4_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_terms7`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_terms7`
--

LOCK TABLES `bak_j4_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_terms8`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_terms8`
--

LOCK TABLES `bak_j4_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_terms9`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_terms9`
--

LOCK TABLES `bak_j4_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_termsa`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_termsa`
--

LOCK TABLES `bak_j4_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_termsb`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_termsb`
--

LOCK TABLES `bak_j4_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_termsc`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_termsc`
--

LOCK TABLES `bak_j4_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_termsd`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_termsd`
--

LOCK TABLES `bak_j4_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_termse`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_termse`
--

LOCK TABLES `bak_j4_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_links_termsf`
--

DROP TABLE IF EXISTS `bak_j4_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_links_termsf`
--

LOCK TABLES `bak_j4_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_taxonomy`
--

DROP TABLE IF EXISTS `bak_j4_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_taxonomy`
--

LOCK TABLES `bak_j4_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `bak_j4_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `bak_j4_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `bak_j4_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_taxonomy_map`
--

LOCK TABLES `bak_j4_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_terms`
--

DROP TABLE IF EXISTS `bak_j4_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_terms`
--

LOCK TABLES `bak_j4_finder_terms` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_terms_common`
--

DROP TABLE IF EXISTS `bak_j4_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_terms_common`
--

LOCK TABLES `bak_j4_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_terms_common` DISABLE KEYS */;
INSERT INTO `bak_j4_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `bak_j4_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_tokens`
--

DROP TABLE IF EXISTS `bak_j4_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_tokens`
--

LOCK TABLES `bak_j4_finder_tokens` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `bak_j4_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_tokens_aggregate`
--

LOCK TABLES `bak_j4_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_finder_types`
--

DROP TABLE IF EXISTS `bak_j4_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_finder_types`
--

LOCK TABLES `bak_j4_finder_types` WRITE;
/*!40000 ALTER TABLE `bak_j4_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_languages`
--

DROP TABLE IF EXISTS `bak_j4_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_languages`
--

LOCK TABLES `bak_j4_languages` WRITE;
/*!40000 ALTER TABLE `bak_j4_languages` DISABLE KEYS */;
INSERT INTO `bak_j4_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1);
/*!40000 ALTER TABLE `bak_j4_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_menu`
--

DROP TABLE IF EXISTS `bak_j4_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_menu`
--

LOCK TABLES `bak_j4_menu` WRITE;
/*!40000 ALTER TABLE `bak_j4_menu` DISABLE KEYS */;
INSERT INTO `bak_j4_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,43,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',29,30,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',31,32,0,'*',1),(18,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',33,34,0,'*',1),(19,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',35,36,0,'*',1),(20,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',37,38,0,'',1),(21,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',39,40,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',41,42,1,'*',0);
/*!40000 ALTER TABLE `bak_j4_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_menu_types`
--

DROP TABLE IF EXISTS `bak_j4_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_menu_types`
--

LOCK TABLES `bak_j4_menu_types` WRITE;
/*!40000 ALTER TABLE `bak_j4_menu_types` DISABLE KEYS */;
INSERT INTO `bak_j4_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site');
/*!40000 ALTER TABLE `bak_j4_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_messages`
--

DROP TABLE IF EXISTS `bak_j4_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_messages`
--

LOCK TABLES `bak_j4_messages` WRITE;
/*!40000 ALTER TABLE `bak_j4_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_messages_cfg`
--

DROP TABLE IF EXISTS `bak_j4_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_messages_cfg`
--

LOCK TABLES `bak_j4_messages_cfg` WRITE;
/*!40000 ALTER TABLE `bak_j4_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_modules`
--

DROP TABLE IF EXISTS `bak_j4_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_modules`
--

LOCK TABLES `bak_j4_modules` WRITE;
/*!40000 ALTER TABLE `bak_j4_modules` DISABLE KEYS */;
INSERT INTO `bak_j4_modules` VALUES (1,39,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,40,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,41,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(4,42,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(8,43,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,45,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(12,46,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,47,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,48,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,49,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,50,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,51,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,52,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
/*!40000 ALTER TABLE `bak_j4_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_modules_menu`
--

DROP TABLE IF EXISTS `bak_j4_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_modules_menu`
--

LOCK TABLES `bak_j4_modules_menu` WRITE;
/*!40000 ALTER TABLE `bak_j4_modules_menu` DISABLE KEYS */;
INSERT INTO `bak_j4_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0);
/*!40000 ALTER TABLE `bak_j4_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_newsfeeds`
--

DROP TABLE IF EXISTS `bak_j4_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_newsfeeds`
--

LOCK TABLES `bak_j4_newsfeeds` WRITE;
/*!40000 ALTER TABLE `bak_j4_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_overrider`
--

DROP TABLE IF EXISTS `bak_j4_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_overrider`
--

LOCK TABLES `bak_j4_overrider` WRITE;
/*!40000 ALTER TABLE `bak_j4_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_postinstall_messages`
--

DROP TABLE IF EXISTS `bak_j4_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_postinstall_messages`
--

LOCK TABLES `bak_j4_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `bak_j4_postinstall_messages` DISABLE KEYS */;
INSERT INTO `bak_j4_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1);
/*!40000 ALTER TABLE `bak_j4_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_redirect_links`
--

DROP TABLE IF EXISTS `bak_j4_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_redirect_links`
--

LOCK TABLES `bak_j4_redirect_links` WRITE;
/*!40000 ALTER TABLE `bak_j4_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_schemas`
--

DROP TABLE IF EXISTS `bak_j4_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_schemas`
--

LOCK TABLES `bak_j4_schemas` WRITE;
/*!40000 ALTER TABLE `bak_j4_schemas` DISABLE KEYS */;
INSERT INTO `bak_j4_schemas` VALUES (700,'3.4.0-2015-02-26');
/*!40000 ALTER TABLE `bak_j4_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_session`
--

DROP TABLE IF EXISTS `bak_j4_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_session`
--

LOCK TABLES `bak_j4_session` WRITE;
/*!40000 ALTER TABLE `bak_j4_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_tags`
--

DROP TABLE IF EXISTS `bak_j4_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_tags`
--

LOCK TABLES `bak_j4_tags` WRITE;
/*!40000 ALTER TABLE `bak_j4_tags` DISABLE KEYS */;
INSERT INTO `bak_j4_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',42,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `bak_j4_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_template_styles`
--

DROP TABLE IF EXISTS `bak_j4_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_template_styles`
--

LOCK TABLES `bak_j4_template_styles` WRITE;
/*!40000 ALTER TABLE `bak_j4_template_styles` DISABLE KEYS */;
INSERT INTO `bak_j4_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'1','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');
/*!40000 ALTER TABLE `bak_j4_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_ucm_base`
--

DROP TABLE IF EXISTS `bak_j4_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_ucm_base`
--

LOCK TABLES `bak_j4_ucm_base` WRITE;
/*!40000 ALTER TABLE `bak_j4_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_ucm_content`
--

DROP TABLE IF EXISTS `bak_j4_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_ucm_content`
--

LOCK TABLES `bak_j4_ucm_content` WRITE;
/*!40000 ALTER TABLE `bak_j4_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_ucm_history`
--

DROP TABLE IF EXISTS `bak_j4_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_ucm_history`
--

LOCK TABLES `bak_j4_ucm_history` WRITE;
/*!40000 ALTER TABLE `bak_j4_ucm_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_update_sites`
--

DROP TABLE IF EXISTS `bak_j4_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_update_sites`
--

LOCK TABLES `bak_j4_update_sites` WRITE;
/*!40000 ALTER TABLE `bak_j4_update_sites` DISABLE KEYS */;
INSERT INTO `bak_j4_update_sites` VALUES (1,'Joomla! Core','collection','http://update.joomla.org/core/list.xml',1,0,''),(2,'Joomla! Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,0,''),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,0,''),(4,'Joomla! Update Component Update Site','extension','http://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,0,'');
/*!40000 ALTER TABLE `bak_j4_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_update_sites_extensions`
--

DROP TABLE IF EXISTS `bak_j4_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_update_sites_extensions`
--

LOCK TABLES `bak_j4_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `bak_j4_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `bak_j4_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(4,28);
/*!40000 ALTER TABLE `bak_j4_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_updates`
--

DROP TABLE IF EXISTS `bak_j4_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_updates`
--

LOCK TABLES `bak_j4_updates` WRITE;
/*!40000 ALTER TABLE `bak_j4_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_user_keys`
--

DROP TABLE IF EXISTS `bak_j4_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_user_keys`
--

LOCK TABLES `bak_j4_user_keys` WRITE;
/*!40000 ALTER TABLE `bak_j4_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_user_notes`
--

DROP TABLE IF EXISTS `bak_j4_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_user_notes`
--

LOCK TABLES `bak_j4_user_notes` WRITE;
/*!40000 ALTER TABLE `bak_j4_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_user_profiles`
--

DROP TABLE IF EXISTS `bak_j4_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_user_profiles`
--

LOCK TABLES `bak_j4_user_profiles` WRITE;
/*!40000 ALTER TABLE `bak_j4_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_j4_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_user_usergroup_map`
--

DROP TABLE IF EXISTS `bak_j4_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_user_usergroup_map`
--

LOCK TABLES `bak_j4_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `bak_j4_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `bak_j4_user_usergroup_map` VALUES (337,8);
/*!40000 ALTER TABLE `bak_j4_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_usergroups`
--

DROP TABLE IF EXISTS `bak_j4_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_usergroups`
--

LOCK TABLES `bak_j4_usergroups` WRITE;
/*!40000 ALTER TABLE `bak_j4_usergroups` DISABLE KEYS */;
INSERT INTO `bak_j4_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `bak_j4_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_users`
--

DROP TABLE IF EXISTS `bak_j4_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_users`
--

LOCK TABLES `bak_j4_users` WRITE;
/*!40000 ALTER TABLE `bak_j4_users` DISABLE KEYS */;
INSERT INTO `bak_j4_users` VALUES (337,'Super User','Dulce','dulce.herrera@atmosfera.unam.mx','$2y$10$ofgrM.oAgo1KbU.Be00x1edx20vhJe.WLm0BMXg5R9De7PDxLUYP2',0,1,'2015-10-26 21:50:09','0000-00-00 00:00:00','0','','0000-00-00 00:00:00',0,'','',0);
/*!40000 ALTER TABLE `bak_j4_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_j4_viewlevels`
--

DROP TABLE IF EXISTS `bak_j4_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_j4_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_j4_viewlevels`
--

LOCK TABLES `bak_j4_viewlevels` WRITE;
/*!40000 ALTER TABLE `bak_j4_viewlevels` DISABLE KEYS */;
INSERT INTO `bak_j4_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',2,'[6,2,8]'),(3,'Special',3,'[6,3,8]'),(5,'Guest',1,'[9]'),(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `bak_j4_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_ak_profiles`
--

DROP TABLE IF EXISTS `j4_ak_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_ak_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci,
  `filters` longtext COLLATE utf8mb4_unicode_ci,
  `quickicon` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_ak_profiles`
--

LOCK TABLES `j4_ak_profiles` WRITE;
/*!40000 ALTER TABLE `j4_ak_profiles` DISABLE KEYS */;
INSERT INTO `j4_ak_profiles` VALUES (1,'Default Backup Profile','###AES128###AdUWa5C+vQyOR4B9XjJYH1HQROoj4hzvcYna3yOZmQc2+IG1MAJ+UAJ9DERTOtojydEt5/Gerz0+Of3cA8bqdvSmxePAM28ObGQbigTAma6FWHkdbVaS6Pbh5jB8DQVgXqyMzoVDgoEbe8ABRq6NEvlyk3WeFqk759x1s/NclEbZ4wVC4B0NyP41fBgmOdMuCv681zXYmFqmFaBmXUOan+o8ia+uO8fh1cUwZUBbUYeDvy1g4tgH/iHdjgG8f2wl00xYtkJyHwXZp4uJbktSBpTVP89MKoEdFZrZgcWzhtYFNAkdIbMYpwkqR4Fz5sf9eQJEsAnL/xO27jJFJZx1yrMEOkIXZCL9v8GoXsQcjI/9Bs0TQGvlAVOgjocaAca8IDDEfhldENyZuqIN1XKiQIajPwwC/DmMzkn/FFqFnb6KFzySgjwYiTWu4xJgWrRfsa7cUZhpxbwB89LqG+0xzgLp6ePYc43GqiKLQz34J2kxrgu/Taou1hYZKU3+Yr31kFfQbvYBPhQ/U81+4WeY49nIk2SFtLv0EfanutpdRNeznxXbculDVHBo2v0TrAcWqhEuOFCaet2HAKn58a83va7eG9CMbSo0cBdXIT16d5PUijYWMfNyRw4Q8e/sECoWYeBe9qYoSaUuoVBDs+fQGdu+937LNjDH+QD1wE1//dSScLX5mo5HPnEZzDCq/P8ccY6pHQWXtbk3WUA20Fa5bLv2XJhfsEd0BzX23F05jEsPFPxj8gdzzIBj903xBYv96plkkVk67FyWDuQwkKLVemMA5JtGoBWDJmrm4TIcWZFdPxSHCsIDBROisk3AFjsGbP898/nE6KoyS0q2bwdoYtt/LE6FSb8kdmCJSeWPsZX2XDD4sq4VnQD7ikku3RKpubCsJbN6pio+t07iPUyD/5weC5Cj5LadjWt2pjnBX47zF+NhGdTEhYHua/hxcy/7v5uISgR02sVCvPVPMAim5bbun5chnXu+ntZpXsRpOki/+B+lYlp/JDSEW8CPNtNiyrxTOxYRk7v2BgzEdYp4/nb9kZAP1QAXwc0SyjmFcGJ/HAjXrE0ESrc5vlSGPPQy8YEvloJMDIJ+tuFHgTedT7Gt7Oyievf95Cq0hHO2sbktD6rg0N69L5cGkiPQa7R6rXWATdIZx5IFMkxW49iLrQMZOaKKTFZ/7HYNlnkYKEa/DlB5LIKSLPWuLLSRB1M3AmtzcG7akRtF0Imj7e9Lex/tWils9F86fYPsIoDO4i3E4VZebeUKcfMshqnV3ckr18j1SLBVa50AbezFoityNFnWNqAPBePz/E7Bbnp3u/MDt4dipFW6tuYD9W7rpnwNZ7sd7rzoKeITBK3l5XHC1/ZUg8HP1tVM7kohI/URPoxp/5beMJqObS/QxUCtTm5Fp6yrS8W/1iCUOUg3tCLQ5+QEVJDs7sZPTdYzSgT+CP+S71HP6pHRCZYwAcuWPRDIeHTC6v84GppeUjP0RYRz+zb0YNCUkQnWv0p0xxiKVBHBXE6N+ryZck/kerWrtyQHKsS8pt08BjMVNChKLx+6kdJRzHfc2DdRYj71lFUaZKFdwq6/6KHx07/Y+zz0JWb509WY1f90xNbhJp5IUfK5AJmSpuetrNlYp6eKImtp2QxKbFhe2ZTykIRARbBOxy5I6MZmVEh2LJXYRqdirB6cbeoMl/+ydsd3S/XwjVrhKP/H0fbTcmq77y05L2jbndfxtPe2/iNDB8DGOK1zjtNl0rsQoHQUti5lHJsogv8Pk5GbPkiW91ZnjGN2NWikJ+GPKePZHV9jzH2RK55XGlBx67AaOW2AJl4T1HQ41vCTLyOwKcjCmH9i5sNvtk1WauZZVaNg/IWVXnsuR6RGNCC8M65KqL2m0DP1BWDL+g2Wcm2BmxP/qDhhzx1iU0GvOjZt2nsSpjgzptGPj+FSH//xhbFJDcNGmisnRvOvsI36z7zYZEXSqI2fbsAIiN1VKzqjDEnzPlowuyt5eO3tsCCQLGcj12cwG5XUv92vXANbrwTAEHgRhBlCuEB63BETy4In61mDWpP7uQatCXMrmVcaZirMmtOR9l6309zJqSle7kf/uG7aDdLbSbNBkC4JegL04V7eE+6n2bHjfPmfICTOQ+X2Y3CMPBWqZ9T1bHJHnp2EuUfOmYl47LDmKbRNVtbFIQbldC3Cq6/RR1H71n1r/JnaT8IJo5FMioj4k/ls0beXPtAovnlXLFH6Ftva9xAqkKuwbosP5n294khogvqCnMIts+af0rNlGRCIj3EoKOEp0WnWX0zCNnvoRb3Lq96fNpqDeqDFf1Xn3TPvscZI8ZU3WAN2T26gXQKZE9mueFPD77UUcehZnRlk3e1aOfgEG7WudldUvsalK3xGYr5+xbw9qbUKdUuOvNpuF4w5KNKAGTRFjKMAZKkjKb52TKW+o3dFwlhoHL8eGg8Gl39XgkpQU1QgYUgqvLXm2ucLWHaU66+Wc6PoaUFvluxUyTSe1uc6Vm2ffDGM5kgZ6URFzqP845JnbpUyERIifoOBndyZLdY6SlBJVotVOnOfRhI5crWwtaDdi3crBwAA','',1);
/*!40000 ALTER TABLE `j4_ak_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_ak_stats`
--

DROP TABLE IF EXISTS `j4_ak_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_ak_stats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `backupstart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'run',
  `origin` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'full',
  `profile_id` bigint(20) NOT NULL DEFAULT '1',
  `archivename` longtext COLLATE utf8mb4_unicode_ci,
  `absolute_path` longtext COLLATE utf8mb4_unicode_ci,
  `multipart` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backupid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesexist` tinyint(3) NOT NULL DEFAULT '1',
  `remote_filename` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_size` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_fullstatus` (`filesexist`,`status`),
  KEY `idx_stale` (`status`,`origin`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_ak_stats`
--

LOCK TABLES `j4_ak_stats` WRITE;
/*!40000 ALTER TABLE `j4_ak_stats` DISABLE KEYS */;
INSERT INTO `j4_ak_stats` VALUES (1,'Backup taken on Wednesday, 11 November 2015 21:43','','2015-11-12 03:43:16','2015-11-12 03:43:25','complete','backend','full',1,'site-132.248.8.238-20151111-214316.jpa','/home/portales-web/nOperativo/portal/administrator/components/com_akeeba/backup/site-132.248.8.238-20151111-214316.jpa',1,'backend','id1',0,NULL,14196435),(2,'Backup taken on Monday, 31 October 2016 20:37','','2016-11-01 02:37:17','2016-11-01 02:37:48','complete','backend','full',1,'site-grupo-ioa.atmosfera.unam.mx-20161031-203717.jpa','/home/portales-web/nOperativo/portal/administrator/components/com_akeeba/backup/site-grupo-ioa.atmosfera.unam.mx-20161031-203717.jpa',1,'backend','id2',0,NULL,18963890),(3,'Backup taken on Wednesday, 07 June 2017 15:51','','2017-06-07 20:51:57','2017-06-07 20:52:17','complete','backend','full',1,'site-grupo-ioa.atmosfera.unam.mx-20170607-155157.jpa','/home/portales-web/nOperativo/portal/administrator/components/com_akeeba/backup/site-grupo-ioa.atmosfera.unam.mx-20170607-155157.jpa',1,'backend','id3',0,NULL,33365119),(4,'Backup taken on Friday, 16 June 2017 16:41','','2017-06-16 21:41:57','0000-00-00 00:00:00','complete','backend','full',1,'site-grupo-ioa.atmosfera.unam.mx-20170616-164157.jpa','/home/portales-web/nOperativo/portal/administrator/components/com_akeeba/backup/site-grupo-ioa.atmosfera.unam.mx-20170616-164157.jpa',0,'backend','id4',0,NULL,0),(5,'Backup taken on Saturday, 29 July 2017 18:24','','2017-07-29 23:24:17','2017-07-29 23:24:39','complete','backend','full',1,'site-localhost-20170729-182417.jpa','/var/www/html/operativo/administrator/components/com_akeeba/backup/site-localhost-20170729-182417.jpa',1,'backend','id5',1,NULL,72439347);
/*!40000 ALTER TABLE `j4_ak_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_ak_storage`
--

DROP TABLE IF EXISTS `j4_ak_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_ak_storage` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`tag`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_ak_storage`
--

LOCK TABLES `j4_ak_storage` WRITE;
/*!40000 ALTER TABLE `j4_ak_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_ak_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_akeeba_common`
--

DROP TABLE IF EXISTS `j4_akeeba_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_akeeba_common` (
  `key` varchar(192) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_akeeba_common`
--

LOCK TABLES `j4_akeeba_common` WRITE;
/*!40000 ALTER TABLE `j4_akeeba_common` DISABLE KEYS */;
INSERT INTO `j4_akeeba_common` VALUES ('fof30','[\"com_akeeba\"]'),('stats_lastrun','1501352627'),('stats_siteid','70006bea69a5c2e758db6c6b0edf128e8ed808c9'),('stats_siteurl','31c6ac9e613b62a29d4aa00b78f7ddc3');
/*!40000 ALTER TABLE `j4_akeeba_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_assets`
--

DROP TABLE IF EXISTS `j4_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_assets`
--

LOCK TABLES `j4_assets` WRITE;
/*!40000 ALTER TABLE `j4_assets` DISABLE KEYS */;
INSERT INTO `j4_assets` VALUES (1,0,0,279,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,140,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.options\":[],\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,141,142,1,'com_cpanel','com_cpanel','{}'),(10,1,143,144,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,145,146,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,147,148,1,'com_login','com_login','{}'),(13,1,149,150,1,'com_mailto','com_mailto','{}'),(14,1,151,152,1,'com_massmail','com_massmail','{}'),(15,1,153,154,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,155,156,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,157,158,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,159,242,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,243,246,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,247,248,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,249,250,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,251,252,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,253,254,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,255,258,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(26,1,259,260,1,'com_wrapper','com_wrapper','{}'),(27,8,18,113,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,244,245,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,256,257,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,261,262,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,263,264,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,265,266,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,267,268,1,'com_contenthistory','com_contenthistory','{}'),(37,1,269,270,1,'com_ajax','com_ajax','{}'),(38,1,271,272,1,'com_postinstall','com_postinstall','{}'),(39,18,160,161,2,'com_modules.module.1','Main Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(40,18,162,163,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,164,165,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,166,167,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,168,169,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,170,171,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,172,173,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,174,175,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,176,177,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,178,179,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,180,181,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,18,182,183,2,'com_modules.module.16','Login Form','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(51,18,184,185,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(52,18,186,187,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,188,189,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,27,19,20,3,'com_content.article.1','Inicio','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(55,27,21,22,3,'com_content.article.2','Meteoro','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(56,27,23,24,3,'com_content.article.3','Inicio (2)','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(57,27,25,26,3,'com_content.article.4','Precipitación acumulada','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(58,18,190,191,2,'com_modules.module.87','pie','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(59,18,192,193,2,'com_modules.module.88','cd-unam','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(60,27,27,28,3,'com_content.article.5','Líneas de corriente y precipitación ','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(61,27,29,30,3,'com_content.article.6','Temperatura y PRNM','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(62,27,31,32,3,'com_content.article.7','Viento y altura geopotencial','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(63,27,33,34,3,'com_content.article.8','Agua precipitable','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(64,27,35,36,3,'com_content.article.9','Vorticidad relativa y viento','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(65,27,37,38,3,'com_content.article.10','Humedad relativa y viento','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(66,27,39,40,3,'com_content.article.11','Temperatura potencial equivalente','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(67,27,41,42,3,'com_content.article.12','Índices de inestabilidad','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(68,27,43,44,3,'com_content.article.13','Nubocidad','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(69,27,45,46,3,'com_content.article.14','Divergencia y viento ','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(70,27,47,48,3,'com_content.article.15','Cizallamiento','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(71,27,49,50,3,'com_content.article.16','Velocidad vertical (Omega)','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(72,18,194,195,2,'com_modules.module.89','meteorologia','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),(73,18,196,197,2,'com_modules.module.90','Meteorología','{}'),(74,18,198,199,2,'com_modules.module.91','Oleaje','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(75,27,51,52,3,'com_content.article.17','Oleaje','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(76,27,53,54,3,'com_content.article.18','Altura significante y dirección','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(77,27,55,56,3,'com_content.article.19','Periodo de altura significante y dirección','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(78,27,57,58,3,'com_content.article.20','Altura y dirección de marejada','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(79,27,59,60,3,'com_content.article.21','Periodo y dirección de marejada','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(80,27,61,62,3,'com_content.article.22','Series de tiempo','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(81,27,63,64,3,'com_content.article.23','Meteogramas','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(82,27,65,66,3,'com_content.article.24','Cortes verticales','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(83,27,67,68,3,'com_content.article.25','Sondeos','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(84,18,200,201,2,'com_modules.module.92','Modelos','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(85,18,202,203,2,'com_modules.module.93','Visitas','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(86,18,204,205,2,'com_modules.module.94','Noticias y reportes','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(87,8,114,137,2,'com_content.category.8','news','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(88,87,115,116,3,'com_content.article.26','dulce muere','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(89,87,117,118,3,'com_content.article.27','Angel se titula','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(90,27,69,70,3,'com_content.article.28','Participantes','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(91,27,71,72,3,'com_content.article.29','Galería','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(92,18,206,207,2,'com_modules.module.95','Menu_inicio_top','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),(93,8,138,139,2,'com_content.category.9','Reportes','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(94,18,208,209,2,'com_modules.module.96','Krizalys Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(95,27,73,74,3,'com_content.article.30','Circulación oceánica','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(96,18,210,211,2,'com_modules.module.97','Dispersión de cenizas','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(97,27,75,76,3,'com_content.article.31','Concentración de partículas','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(98,18,212,213,2,'com_modules.module.98','Marea de tormenta','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(99,27,77,78,3,'com_content.article.32','Marea de tormenta','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(100,27,79,80,3,'com_content.article.33','Dispersión de cenizas','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(101,18,214,215,2,'com_modules.module.99','Circulación oceánica','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(102,27,81,82,3,'com_content.article.34','Niveles de vuelo','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(103,27,83,84,3,'com_content.article.35','Cortes','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(104,27,85,86,3,'com_content.article.36','Concentración de partículas','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(105,27,87,88,3,'com_content.article.37','THICKNESS','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(106,1,273,274,1,'com_akeeba','Akeeba','{}'),(107,87,119,120,3,'com_content.article.38','noticia ejemplo','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(108,87,121,122,3,'com_content.article.39','noticia1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(109,87,123,124,3,'com_content.article.40','noticia2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(110,87,125,126,3,'com_content.article.41','noticia3','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(111,87,127,128,3,'com_content.article.42','noticia4','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(112,87,129,130,3,'com_content.article.43','noticia5','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(113,87,131,132,3,'com_content.article.44','noticia6','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(115,87,133,134,3,'com_content.article.46','noticia7','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(117,27,89,90,3,'com_content.article.48','Circulación oceánica','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(118,27,91,92,3,'com_content.article.49','Temperatura','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(119,27,93,94,3,'com_content.article.50','Salinidad','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(120,27,95,96,3,'com_content.article.51','Rapidez','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(121,87,135,136,3,'com_content.article.52','noticia8','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(122,27,97,98,3,'com_content.article.53','Viento','{\"core.admin\":{\"7\":1},\"core.options\":[],\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(123,27,99,100,3,'com_content.article.54','Lineas de corriente','{\"core.admin\":{\"7\":1},\"core.options\":[],\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(124,18,216,217,2,'com_modules.module.100','oleaje2','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(125,18,218,219,2,'com_modules.module.101','meteogramas','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(126,18,220,221,2,'com_modules.module.102','meteogramas','{}'),(127,18,222,223,2,'com_modules.module.103','Sondeos','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(128,18,224,225,2,'com_modules.module.104','Sondeos','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(129,18,226,227,2,'com_modules.module.105','Sondeos','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(130,18,228,229,2,'com_modules.module.106','sondeos','{}'),(131,18,230,231,2,'com_modules.module.107','sondeos (copy)','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(132,27,101,102,3,'com_content.article.55','Participantes Fall3D','{\"core.admin\":{\"7\":1},\"core.options\":[],\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(133,27,103,104,3,'com_content.article.56','descrip fall3d','{\"core.admin\":{\"7\":1},\"core.options\":[],\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(134,18,232,233,2,'com_modules.module.108','Información Dispersión de Cenizas','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(135,27,105,106,3,'com_content.article.57','WRF','{\"core.admin\":{\"7\":1},\"core.options\":[],\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(136,27,107,108,3,'com_content.article.58','Participantes WWII','{\"core.admin\":{\"7\":1},\"core.options\":[],\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(137,18,234,235,2,'com_modules.module.109','Información sobre WRF','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(138,27,109,110,3,'com_content.article.59','WAVEWATCH','{\"core.admin\":{\"7\":1},\"core.options\":[],\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(139,18,236,237,2,'com_modules.module.110','Información sobre WWII','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(140,27,111,112,3,'com_content.article.60','Construcción','{\"core.admin\":{\"7\":1},\"core.options\":[],\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(141,18,238,239,2,'com_modules.module.111','Met','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(142,18,240,241,2,'com_modules.module.112','Dispersión de cenizas (copy)','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),(143,1,275,276,1,'com_fields','com_fields','{}'),(144,1,277,278,1,'com_associations','com_associations','{}');
/*!40000 ALTER TABLE `j4_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_associations`
--

DROP TABLE IF EXISTS `j4_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_associations`
--

LOCK TABLES `j4_associations` WRITE;
/*!40000 ALTER TABLE `j4_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_banner_clients`
--

DROP TABLE IF EXISTS `j4_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_banner_clients`
--

LOCK TABLES `j4_banner_clients` WRITE;
/*!40000 ALTER TABLE `j4_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_banner_tracks`
--

DROP TABLE IF EXISTS `j4_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_banner_tracks`
--

LOCK TABLES `j4_banner_tracks` WRITE;
/*!40000 ALTER TABLE `j4_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_banners`
--

DROP TABLE IF EXISTS `j4_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_banners`
--

LOCK TABLES `j4_banners` WRITE;
/*!40000 ALTER TABLE `j4_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_categories`
--

DROP TABLE IF EXISTS `j4_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_alias` (`alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_categories`
--

LOCK TABLES `j4_categories` WRITE;
/*!40000 ALTER TABLE `j4_categories` DISABLE KEYS */;
INSERT INTO `j4_categories` VALUES (1,0,0,0,15,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,295,'2017-08-22 16:38:16',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(8,87,1,11,12,1,'news','com_content','news','news','','<p>dulv</p>',1,294,'2015-11-11 23:03:03',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',293,'2015-11-08 05:55:14',293,'2015-11-08 05:56:50',0,'*',1),(9,93,1,13,14,1,'reportes','com_content','Reportes','reportes','','',1,294,'2015-11-11 23:03:22',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',293,'2015-11-08 07:52:19',0,'2015-11-08 07:52:19',0,'*',1);
/*!40000 ALTER TABLE `j4_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_contact_details`
--

DROP TABLE IF EXISTS `j4_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_contact_details`
--

LOCK TABLES `j4_contact_details` WRITE;
/*!40000 ALTER TABLE `j4_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_content`
--

DROP TABLE IF EXISTS `j4_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_content`
--

LOCK TABLES `j4_content` WRITE;
/*!40000 ALTER TABLE `j4_content` DISABLE KEYS */;
INSERT INTO `j4_content` VALUES (1,54,'Inicio','inicio','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Modelos</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia\"><img class=\"d1\" src=\"images/Portadas/pron_met.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Meteorologìa</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/oleaje\"><img class=\"d1\" src=\"images/Portadas/pron_ole.png\" alt=\"\" width=\"160\" height=\"160\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Oleaje</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><img class=\"d1\" src=\"images/construccionmini.jpg\" alt=\"\" /><br /><br />\r\n<h6 class=\"font-weight-bold\">Marea de Tormenta</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica\"><img class=\"d1\" src=\"images/Portadas/hycom.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Circulaciòn oceànica</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas\"><img class=\"d1\" src=\"images/Portadas/volcan/mass.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Dispersiòn de cenizas</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteogramas\"><img class=\"d1\" src=\"images/Portadas/series_tiempo.jpg\" alt=\"\" width=\"161\" height=\"146\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Meteogramas</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/sondeos\"><img class=\"d1\" src=\"images/Portadas/sv_campeche_024.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Sondeos</h6>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container\">\r\n<h1 style=\"text-align: center;\">OWGIS</h1>\r\n<p> </p>\r\n<div class=\"row text-center\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"http://pronostico.meteorologico.unam.mx/meteorologico/mapviewer\"><img class=\"d1\" src=\"images/Portadas/owgis_anim.gif\" alt=\"\" /></a><br /> <br />\r\n<h6 class=\"font-weight-bold\">Pronòstico meteorològico</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center \"><a href=\"http://pronostico.meteorologico.unam.mx:8080/global/mapviewer\"><img class=\"d1\" src=\"images/Portadas/gfs_hycom.gif\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Pronòsticos globales GFS y HYCOM</h6>\r\n</div>\r\n</div>\r\n</div>','',1,2,'2015-10-30 00:10:14',293,'','2017-05-03 18:03:36',293,293,'2017-05-03 18:03:36','2015-10-30 00:10:14','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_tags\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',88,45,'','',1,2349,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(2,55,'Meteoro','meteo-art','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Meteorología</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/precipitacion-acumulada\"><img class=\"d1\" src=\"images/Portadas/Precipitacion_acumulada/precipitacion_d1_6.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Precipitación acumulada</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/lineas-de-corriente\"><img class=\"d1\" src=\"images/Portadas/lineas_corriente/pcpcn_streamlines_s_11_010.jpg\" alt=\"\" width=\"160\" height=\"94\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Líneas de corriente</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/temperatura-y-prnm\"> <img class=\"d1\" src=\"images/Portadas/temperatura/temp_d1.jpg\" alt=\"\" /><br /><br /></a>\r\n<h6 class=\"font-weight-bold\">Temperatura y PRNM</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/temperatura-potencial-equivalente\"><img class=\"d1\" src=\"images/Portadas/temperatura/temperatura_potencial_d1_sup.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Temperatura potencial equivalente</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/cizallamiento\"> <img class=\"d1\" src=\"images/Portadas/cizallamiento/cizalladura_11_073.jpg\" alt=\"\" width=\"150\" height=\"100\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Cizallamiento</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/velocidad-vertical\"><img class=\"d1\" src=\"images/Portadas/omega/omega_d1_sup.jpg\" alt=\"\" width=\"160\" height=\"94\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Velocidad vertical (Omega)</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/nubosidad\"> <img class=\"d1\" src=\"images/Portadas/nubocidad/nubes_11_012.jpg\" alt=\"\" width=\"150\" height=\"95\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Nubosidad</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/viento\"> <img class=\"d1\" src=\"images/Portadas/vientos/viento_10m_11_005.jpg\" alt=\"\" width=\"150\" height=\"94\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Viento</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/agua-precipitable\"> <img class=\"d1\" src=\"images/Portadas/agua/pwat_p_11_007.jpg\" alt=\"\" width=\"150\" height=\"94\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Agua precipitable</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/indices-de-inestabilidad\"> <img class=\"d1\" src=\"images/Portadas/nubocidad/indices_p_11_002.png\" alt=\"\" width=\"150\" height=\"95\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Índeces de inestabilidad</h6>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container\"> </div>','',1,2,'2015-10-30 23:25:29',293,'','2017-04-03 21:17:58',293,0,'0000-00-00 00:00:00','2015-10-30 23:25:29','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_tags\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',84,44,'','',1,1834,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,56,'Inicio (2)','inicio-2','<h1 style=\"text-align: center;\">Modelos</h1>\r\n<p> </p>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"texto_cell2\">Meteorología</td>\r\n<td class=\"texto_cell2\">Oleaje</td>\r\n<td class=\"texto_cell2\">Marea de Tormenta</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: hidden;\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=2\"> <img class=\"d1\" src=\"images/Portadas/pron_met.png\" alt=\"\" /></a></td>\r\n<td style=\"border: hidden;\"><img class=\"d1\" src=\"images/Portadas/pron_ole.png\" alt=\"\" /></td>\r\n<td><img class=\"d1\" src=\"images/Portadas/marea_tormenta.png\" alt=\"\" /> </td>\r\n</tr>\r\n<tr>\r\n<td class=\"texto_cell2\">Circulación oceánica</td>\r\n<td class=\"texto_cell2\">Cenizas volcanicas</td>\r\n<td class=\"texto_cell2\">Series de tiempo</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"meteorologia_viento.html\"><img class=\"d1\" src=\"images/Portadas/hycom.png\" alt=\"\" /></a></td>\r\n<td><img class=\"d1\" src=\"images/Portadas/volcan.png\" alt=\"\" /></td>\r\n<td> <img class=\"d1\" src=\"images/Portadas/series_tiempo.jpg\" alt=\"\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>','',-2,2,'2015-10-30 00:10:14',293,'','2015-11-03 18:11:54',0,0,'0000-00-00 00:00:00','2015-10-30 00:10:14','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,57,'Precipitación acumulada','precipitacion-acumulada','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Precipitación acumulada</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/precipitacion-acumulada/dominio-1\"> <img class=\"d1\" src=\"images/Portadas/Precipitacion_acumulada/precipitacion_d1_6.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Dominio 1</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/precipitacion-acumulada/dominio-2\"><img class=\"d1\" src=\"images/Portadas/Precipitacion_acumulada/precipitacion_d1_12.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Dominio 2</h6>\r\n</div>\r\n</div>\r\n</div>','',1,2,'2015-11-03 18:41:39',294,'','2017-04-03 21:20:10',293,0,'0000-00-00 00:00:00','2015-11-03 18:41:39','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',20,43,'','',1,618,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,60,'Líneas de corriente y precipitación ','lineas-de-corriente-y-precipitacion','<h1 style=\"text-align: center;\">Líneas de corriente y precipitación acumulada cada 6 horas</h1>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 1</h2>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteorologia/lineas-de-corriente-y-precipitacion/dominio-1/en-superficie\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/lineas_corriente/lineas_d1_sup.jpg\" alt=\"\" /></a></td>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteorologia/lineas-de-corriente-y-precipitacion/dominio-1/panel\"><img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/lineas_corriente/lineas_d1_mosaico.jpg\" alt=\"\" /></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"texto_cell2\" style=\"text-align: center;\">Superficie</td>\r\n<td class=\"texto_cell2\" style=\"text-align: center;\">Panel</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Superficie</h2>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteorologia/lineas-de-corriente-y-precipitacion/dominio-2\"> <img class=\"d2\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/lineas_corriente/lineas_d2_sup.jpg\" alt=\"\" /></a></td>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteorologia/lineas-de-corriente-y-precipitacion/dominio-3\"> <img class=\"d3\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/lineas_corriente/lineas_d2_sup.jpg\" alt=\"\" /></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"texto_cell2\" style=\"text-align: center;\">Dominio 2</td>\r\n<td class=\"texto_cell2\" style=\"text-align: center;\">Dominio 3</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>','',1,2,'2015-11-03 23:10:43',294,'','2017-04-03 21:21:32',293,0,'0000-00-00 00:00:00','2015-11-03 23:10:43','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',21,42,'','',1,98,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,61,'Temperatura y PRNM','temperatura-y-prnm','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Temperatura y Presión Reducida al Nivel del Mar (PRNM)</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/temperatura-y-prnm/dominio-1\"> <img class=\"d1\" src=\"images/Portadas/temperatura/temp_d1.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Dominio 1</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/temperatura-y-prnm/dominio-2\"> <img class=\"d1\" src=\"images/Portadas/temperatura/temp_d2.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Dominio 2</h6>\r\n</div>\r\n</div>\r\n</div>','',1,2,'2015-11-04 06:49:53',294,'','2017-04-03 21:22:03',293,0,'0000-00-00 00:00:00','2015-11-04 06:49:53','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,41,'','',1,139,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,62,'Viento y altura geopotencial','viento-y-altura-geopotencial','<h1 style=\"text-align: center;\">Viento y altura geopotencial</h1>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 1</h2>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteorologia/viento-y-altura-geopotencial/dominio-1/en-superficie\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/vientos/viento_d1_sup.jpg\" alt=\"\" /></a></td>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteorologia/viento-y-altura-geopotencial/dominio-1/panel\"><img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/vientos/viento_d1_mosaico.jpg\" alt=\"\" /></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"texto_cell2\">Superficie</td>\r\n<td class=\"texto_cell2\">Panel</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Superficie</h2>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteorologia/viento-y-altura-geopotencial/dominio-2/en-superficie\"> <img class=\"d2\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/vientos/viento_d2_sup.jpg\" alt=\"\" /></a></td>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteorologia/viento-y-altura-geopotencial/dominio-3/en-superficie\"> <img class=\"d3\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/lineas_corriente/lineas_d2_sup.jpg\" alt=\"\" /></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"texto_cell2\">Dominio 2</td>\r\n<td class=\"texto_cell2\">Dominio 3</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>','',1,2,'2015-11-04 07:06:34',294,'','2017-04-03 21:25:06',293,0,'0000-00-00 00:00:00','2015-11-04 07:06:34','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',15,40,'','',1,32,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(8,63,'Agua precipitable','agua-precipitable','<h1 style=\"text-align: center;\">Agua precipitable</h1>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 1</h2>\r\n<p> </p>\r\n<p> </p>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteorologia/agua-precipitable/dominio-1/toda-la-columna\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/agua/agua_precipitable_d1_sup.jpg\" alt=\"\" /></a></td>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteorologia/agua-precipitable/dominio-1/espesor-sup-850hpa\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/agua/agua_precipitable_d1_850.jpg\" alt=\"\" /></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"texto_cell2\" style=\"text-align: center;\">Toda la columna</td>\r\n<td class=\"texto_cell2\" style=\"text-align: center;\">Espesor Sup - 850hPa</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"index.php/meteorologia/agua-precipitable/dominio-1/espesor-sup-700hpa\"><img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/agua/agua_precipitable_d1_700.jpg\" alt=\"\" /></a></td>\r\n<td><a href=\"index.php/meteorologia/agua-precipitable/dominio-1/espesor-sup-500hpa\"><img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/agua/agua_precipitable_d1_500.jpg\" alt=\"\" /></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"texto_cell2\" style=\"text-align: center;\">Espesor Sup - 700hPa</td>\r\n<td class=\"texto_cell2\" style=\"text-align: center;\">Espesor Sup - 500hPa</td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,2,'2015-11-04 07:34:34',294,'','2017-04-03 21:26:24',293,0,'0000-00-00 00:00:00','2015-11-04 07:34:34','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',10,39,'','',1,27,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(9,64,'Vorticidad relativa y viento','vorticidad-relativa-y-viento','<h1 style=\"text-align: center;\">Vorticidad relativa y viento</h1>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 1</h2>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"texto_cell2\">Superficie</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: hidden; text-align: center;\"><a href=\"index.php/meteorologia/vorticidad-relativa-y-viento/dominio-1/en-superficie\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/vorticidad/vorticidad_d1_sup.jpg\" alt=\"\" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 2</h2>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"texto_cell2\">Superficie</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: hidden; text-align: center;\"><a href=\"index.php/meteorologia/vorticidad-relativa-y-viento/dominio-2/en-superficie\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/vorticidad/vorticidad_d2_sup.jpg\" alt=\"\" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>','',1,2,'2015-11-04 16:57:13',294,'','2016-06-14 16:44:09',293,0,'0000-00-00 00:00:00','2015-11-04 16:57:13','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',12,38,'','',1,50,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,65,'Humedad relativa y viento','humedad-relativa-y-viento','<h1 style=\"text-align: center;\">Humedad relativa y viento en superficie</h1>\r\n<p> </p>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border: hidden; text-align: center;\"><a href=\"index.php/meteorologia/humedad-relativa-y-viento/dominio-1\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/humedad/humedad_d1_sup.jpg\" alt=\"\" /></a></td>\r\n<td style=\"border: hidden; text-align: center;\"><a href=\"index.php/meteorologia/humedad-relativa-y-viento/dominio-2\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/humedad/humedad_d2_sup.jpg\" alt=\"\" /></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"texto_cell2\">Dominio 1</td>\r\n<td class=\"texto_cell2\">Dominio 2</td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,2,'2015-11-04 18:10:36',294,'','2017-04-03 21:28:12',293,0,'0000-00-00 00:00:00','2015-11-04 18:10:36','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',10,37,'','',1,72,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(11,66,'Temperatura potencial equivalente','temperatura-potencial-equivalente','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Temperatura potencial equivalente</h1>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 1</h2>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/temperatura-potencial-equivalente/dominio-1/en-superficie\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/temperatura/temperatura_potencial_d1_sup.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Superficie</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/temperatura-potencial-equivalente/dominio-1/en-altura\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/temperatura/temp_pot_eq_p_11_050.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">En altura</h6>\r\n</div>\r\n</div>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 2</h2>\r\n<p> </p>\r\n<div class=\"col-sm12 col-md-12 col-lg-12 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/temperatura-potencial-equivalente/dominio-2/en-superficie\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/temperatura/temperatura_potencial_d2_sup.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Superficie</h6>\r\n</div>\r\n</div>','',1,2,'2015-11-04 18:26:31',294,'','2017-04-03 21:29:18',293,0,'0000-00-00 00:00:00','2015-11-04 18:26:31','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',11,36,'','',1,99,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(12,67,'Índices de inestabilidad','indices-de-inestabilidad','<h1 style=\"text-align: center;\">Índices de inestabilidad</h1>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 1</h2>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border: medium hidden; text-align: center;\"><a href=\"index.php/meteorologia/indices-de-inestabilidad/dominio-1/panel\"> <img class=\"d1\" src=\"images/Portadas/indices/indice_mosaico_d1.jpg\" alt=\"\" /></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"texto_cell2\" style=\"text-align: center;\">Panel</td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,2,'2015-11-04 18:38:04',294,'','2017-04-03 21:30:35',293,0,'0000-00-00 00:00:00','2015-11-04 18:38:04','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,35,'','',1,23,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(13,68,'Nubocidad','nubocidad','<h1 style=\"text-align: center;\">Nubocidad</h1>\r\n<p> </p>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"texto_cell2\">\r\n<h2 style=\"text-align: center;\">Dominio 1</h2>\r\n</td>\r\n<td class=\"texto_cell2\">\r\n<h2 style=\"text-align: center;\">Dominio 2</h2>\r\n</td>\r\n<td class=\"texto_cell2\">\r\n<h2 style=\"text-align: center;\">Dominio 3</h2>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteorologia/nubosidad/dominio-1\"> <img class=\"d1\" src=\"images/Portadas/nubocidad/nubosidad_d1.jpg\" alt=\"\" /></a></td>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteorologia/nubosidad/dominio-2\"><img class=\"d2\" src=\"images/Portadas/nubocidad/nubosidad_d2.jpg\" alt=\"\" /></a></td>\r\n<td><a href=\"index.php/meteorologia/nubosidad/dominio-3\"><img class=\"d3\" src=\"images/Portadas/nubocidad/nubosidad_d1.jpg\" alt=\"\" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,2,'2015-11-04 19:06:03',294,'','2015-11-10 21:52:16',294,294,'2017-06-13 18:02:55','2015-11-04 19:06:03','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,34,'','',1,22,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(14,69,'Divergencia y viento ','divergencia-y-viento','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Divergencia y viento</h1>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 1</h2>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/divergencia-y-viento/dominio-1/en-superficie\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/divergencia/divergencia_d1_sup.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Superficie</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/divergencia-y-viento/dominio-1/panel\"><img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/divergencia/divergencia_d1_mosaico.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Panel</h6>\r\n</div>\r\n</div>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 2</h2>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/divergencia-y-viento/dominio-2/en-superficie\"> <img class=\"d2\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/divergencia/divergencia_d2_sup.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Superficie</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/divergencia-y-viento/dominio-2/panel\"> <img class=\"d2\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/divergencia/divergencia_d2_mosaico.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Panel</h6>\r\n</div>\r\n</div>\r\n</div>','',1,2,'2015-11-04 19:51:39',294,'','2017-04-03 21:41:09',293,0,'0000-00-00 00:00:00','2015-11-04 19:51:39','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,33,'','',1,17,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(15,70,'Cizallamiento','cizallamiento','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Cizallamiento</h1>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 1</h2>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/cizallamiento/dominio-1/en-superficie\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/divergencia/divergencia_d1_sup.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Superficie</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/cizallamiento/dominio-1/panel\"><img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/divergencia/divergencia_d1_mosaico.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Panel</h6>\r\n</div>\r\n</div>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 2</h2>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/cizallamiento/dominio-2/en-superficie\"> <img class=\"d2\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/divergencia/divergencia_d2_sup.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Superficie</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/cizallamiento/dominio-2/panel\"> <img class=\"d2\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/divergencia/divergencia_d2_mosaico.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Panel</h6>\r\n</div>\r\n</div>\r\n</div>','',1,2,'2015-11-04 20:07:51',294,'','2017-04-03 21:40:51',293,0,'0000-00-00 00:00:00','2015-11-04 20:07:51','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,32,'','',1,21,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(16,71,'Velocidad vertical (Omega)','velocidad-vertical-omega','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Velocidad vertical (Omega)</h1>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 1</h2>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/velocidad-vertical/dominio-1/en-superficie\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/omega/omega_d1_sup.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Superficie</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/velocidad-vertical/dominio-1/en-altura\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/omega/omega_p_11_001.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">En altura</h6>\r\n</div>\r\n</div>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 2</h2>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-12 col-lg-12 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/velocidad-vertical/dominio-2/en-superficie\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/omega/omega_d2_sup.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Superficie</h6>\r\n</div>\r\n</div>\r\n<div class=\"container\"> </div>\r\n</div>','',1,2,'2015-11-04 20:15:39',294,'','2017-04-03 21:42:35',293,0,'0000-00-00 00:00:00','2015-11-04 20:15:39','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',14,31,'','',1,64,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(17,75,'Oleaje','oleaje','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Oleaje</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/oleaje/altura-significante-y-direccion\"><img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/oleaje/oleaje_altura_d1.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Altura</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/oleaje/periodo-de-altura-significante-y-direccion\"><img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/oleaje/oleaje_periodo_d1.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Periodo</h6>\r\n</div>\r\n</div>\r\n</div>','',1,2,'2015-11-05 05:35:05',293,'','2017-04-03 21:50:31',293,0,'0000-00-00 00:00:00','2015-11-05 05:35:05','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',18,30,'','',1,462,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(18,76,'Altura significante y dirección','altura-significante-y-direccion','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Altura</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><img src=\"images/construccionmini.jpg\" alt=\"\" /><br /><br />\r\n<h6 class=\"font-weight-bold\">Pacífico</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/oleaje/altura-significante-y-direccion/gom\"><img class=\"d1\" src=\"images/Portadas/oleaje/oleaje_altura_d1.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Golfo de México</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><img src=\"images/construccionmini.jpg\" alt=\"\" /><br /><br />\r\n<h6 class=\"font-weight-bold\">Atlántico</h6>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container\"> </div>','',1,2,'2015-11-05 21:36:20',294,'','2017-04-03 21:51:15',293,0,'0000-00-00 00:00:00','2015-11-05 21:36:20','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',10,29,'','',1,161,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(19,77,'Periodo de altura significante y dirección','periodo-de-altura-significante-y-direccion','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Periodo</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><img src=\"images/construccionmini.jpg\" alt=\"\" /><br /><br />\r\n<h6 class=\"font-weight-bold\">Pacífico</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/oleaje/periodo-de-altura-significante-y-direccion/gom\"> <img class=\"d1\" src=\"images/Portadas/oleaje/oleaje_periodo_d1.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Golfo de México</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><img src=\"images/construccionmini.jpg\" alt=\"\" /><br /><br />\r\n<h6 class=\"font-weight-bold\">Atlántico</h6>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container\"> </div>','',1,2,'2015-11-06 17:04:51',294,'','2017-04-03 22:41:03',293,293,'2017-04-17 23:25:03','2015-11-06 17:04:51','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',15,28,'','',1,46,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(20,78,'Altura y dirección de marejada','altura-y-direccion-de-marejada','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Altura y dirección de marejada</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/oleaje/altura-y-direccion-de-marejada/pacifico\"> <img class=\"d1\" src=\"images/Portadas/oleaje/oleaje_altura_marejada_d1.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Pacífico</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/oleaje/periodo-y-direccion-de-marejada/atlantico\"> <img class=\"d2\" src=\"images/Portadas/oleaje/oleaje_altura_marejada_d2.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Atlántico</h6>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container\"> </div>','',1,2,'2015-11-06 17:11:55',294,'','2015-11-10 22:21:32',294,0,'0000-00-00 00:00:00','2015-11-06 17:11:55','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,27,'','',1,11,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(21,79,'Periodo y dirección de marejada','periodo-y-direccion-de-marejada','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Periodo y dirección</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/oleaje/periodo-y-direccion-de-marejada/pacifico\"> <img class=\"d1\" src=\"images/Portadas/oleaje/oleaje_periodo_marejada_d1.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Pacífico</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/oleaje/periodo-y-direccion-de-marejada/atlantico\"><img class=\"d2\" src=\"images/Portadas/oleaje/oleaje_periodo_marejada_d2.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Atlántico</h6>\r\n</div>\r\n</div>\r\n</div>','',1,2,'2015-11-06 17:21:00',294,'','2017-04-03 21:53:37',293,0,'0000-00-00 00:00:00','2015-11-06 17:21:00','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,26,'','',1,15,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(22,80,'Series de tiempo','series-de-tiempo','','',1,2,'2015-11-06 17:25:58',294,'','2017-04-03 21:54:54',293,0,'0000-00-00 00:00:00','2015-11-06 17:25:58','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,25,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(23,81,'Meteogramas','meteogramas','<h1 style=\"text-align: center;\">Meteogramas</h1>\r\n<p> </p>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteoro/precipitacion-acumulada\"> <img class=\"d1\" src=\"images/Portadas/cortes/cortes_meridionales.jpg\" alt=\"\" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,2,'2015-11-06 19:45:17',294,'','2015-11-06 19:49:26',294,293,'2017-04-17 23:24:55','2015-11-06 19:45:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,24,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(24,82,'Cortes verticales','cortes-verticales','<h1 style=\"text-align: center;\">Cortes verticales</h1>\r\n<p> </p>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteoro/precipitacion-acumulada\"> <img class=\"d1\" src=\"images/Portadas/cortes/cortes_verticales.jpg\" alt=\"\" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>','',1,2,'2015-11-06 19:52:19',294,'','2015-11-06 20:01:19',294,294,'2015-11-10 17:49:17','2015-11-06 19:52:19','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,23,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(25,83,'Sondeos','sondeos','<h1 style=\"text-align: center;\">Sondeos</h1>\r\n<p> </p>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border: hidden;\"><a href=\"index.php/meteoro/precipitacion-acumulada\"> <img class=\"d1\" src=\"images/Portadas/sondeos/sondeos.jpg\" alt=\"\" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,2,'2015-11-06 20:02:01',294,'','2015-11-06 20:06:15',294,293,'2017-04-17 23:24:46','2015-11-06 20:02:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,22,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(26,88,'dulce muere','dulce-muere','','',-2,8,'2015-11-08 05:58:28',293,'','2015-11-08 05:58:28',0,0,'0000-00-00 00:00:00','2015-11-08 05:58:28','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,10,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(27,89,'Angel se titula','angel-se-titula','','',-2,8,'2015-11-08 06:02:57',293,'','2015-11-08 06:02:57',0,0,'0000-00-00 00:00:00','2015-11-08 06:02:57','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,9,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(28,90,'Participantes','participantes','<p style=\"text-align: center;\"><strong>Desarrollado por:</strong></p>\r\n<p style=\"text-align: center; font-size: 18px;\">Grupo Interacción Océano-Atmósfera</p>\r\n<p style=\"text-align: center; font-size: 18px;\">Centro de Ciencias de la Atmósfera</p>\r\n<p style=\"text-align: center; font-size: 18px;\">Universidad Nacional Autónoma de México</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/banners/logos_unam_cca_ioa.png\" alt=\"\" /></p>\r\n<p> </p>\r\n<p style=\"text-align: left;\"><strong>Responsable: </strong></p>\r\n<ul class=\"lista\">\r\n<li>Jorge Zavala Hidalgo</li>\r\n</ul>\r\n<p><strong> Participantes: </strong></p>\r\n<ul class=\"lista\">\r\n<li>Angel Ruiz Angulo</li>\r\n<li>Dulce Rosario Herrera Moro</li>\r\n<li>Erika Danaé López Espinoza</li>\r\n<li>Fernando Magariños Lamas</li>\r\n<li>Fernando Nicolas Arellano Guerrero</li>\r\n<li>María Elena Osorio Tai</li>\r\n<li>Octavio Gómez Ramos</li>\r\n<li>Ovel Díaz Garcia</li>\r\n<li>Rosario Romero Centeno</li>\r\n</ul>','',1,2,'2015-11-08 07:17:35',293,'','2015-11-11 22:54:02',293,0,'0000-00-00 00:00:00','2015-11-08 07:17:35','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,21,'','',1,49,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(29,91,'Galería','galeria','','',1,2,'2015-11-08 07:18:04',293,'','2015-11-08 07:18:42',293,293,'2017-04-17 23:05:10','2015-11-08 07:18:04','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,20,'','',1,33,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(30,95,'Circulación oceánica','circulacion-oceanica','','',1,2,'2015-11-09 07:57:09',293,'','2017-04-03 22:00:11',293,0,'0000-00-00 00:00:00','2015-11-09 07:57:09','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,19,'','',1,80,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(31,97,'Concentración de partículas','concentracion-de-particulas','','',1,2,'2015-11-09 09:37:53',293,'','2015-11-09 09:37:53',0,0,'0000-00-00 00:00:00','2015-11-09 09:37:53','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,18,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(32,99,'Marea de tormenta','marea-de-tormenta','','',1,2,'2015-11-09 09:51:41',293,'','2015-11-09 09:51:41',0,0,'0000-00-00 00:00:00','2015-11-09 09:51:41','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,17,'','',1,147,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(33,100,'Dispersión de cenizas','dispersion-de-cenizas','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Modelos</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/niveles-de-vuelo\"> <img class=\"d1\" src=\"images/Portadas/volcan/fl100.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Niveles de vuelo</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/cortes\"><img class=\"d1\" src=\"images/Portadas/volcan/clat.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Cortes</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/concentracion-particulas\"> <img class=\"d1\" src=\"images/Portadas/volcan/pm10.png\" alt=\"\" /><br /><br /></a>\r\n<h6 class=\"font-weight-bold\">Concentración de partículas</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/thickness\"><img class=\"d1\" src=\"images/Portadas/volcan/thickness.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">THICKNESS</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/col-mass\"> <img class=\"d1\" src=\"images/Portadas/volcan/mass.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Col Mass</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/load\"><img class=\"d1\" src=\"images/Portadas/volcan/load.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">LOAD</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/aod\"> <img class=\"d1\" src=\"images/Portadas/volcan/aod.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">AOD</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/panel\"> <img class=\"d1\" src=\"images/Portadas/volcan/panel.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Panel</h6>\r\n</div>\r\n</div>\r\n</div>','',1,2,'2015-11-09 09:54:55',293,'','2017-04-03 21:58:08',293,0,'0000-00-00 00:00:00','2015-11-09 09:54:55','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',16,16,'','',1,370,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(34,102,'Niveles de vuelo','niveles-de-vuelo','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Niveles de vuelo</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/niveles-de-vuelo/fl100\"> <img class=\"d1\" src=\"images/Portadas/volcan/fl100.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">FL100</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/niveles-de-vuelo/fl150\"><img class=\"d1\" src=\"images/Portadas/volcan/fl150.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">FL150</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/niveles-de-vuelo/fl200\"> <img class=\"d1\" src=\"images/Portadas/volcan/fl200.png\" alt=\"\" /><br /><br /></a>\r\n<h6 class=\"font-weight-bold\">FL200</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/niveles-de-vuelo/fl250\"><img class=\"d1\" src=\"images/Portadas/volcan/fl250.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">FL250</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/niveles-de-vuelo/fl300\"> <img class=\"d1\" src=\"images/Portadas/volcan/fl300.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">FL300</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/niveles-de-vuelo/fl300\"> <img class=\"d1\" src=\"images/Portadas/volcan/fl300.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">FL350</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/niveles-de-vuelo/fl400\"> <img class=\"d1\" src=\"images/Portadas/volcan/fl400.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">FL400</h6>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container\"> </div>','',1,2,'2015-11-10 17:13:00',294,'','2017-04-03 22:04:10',293,0,'0000-00-00 00:00:00','2015-11-10 17:13:00','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,15,'','',1,132,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(35,103,'Cortes','cortes','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Cortes</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/cortes/clat\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/volcan/clat.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">CLAT</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/cortes/clon\"><img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/volcan/clon.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">CLON</h6>\r\n</div>\r\n</div>\r\n</div>','',1,2,'2015-11-10 17:25:09',294,'','2017-04-03 22:04:52',293,0,'0000-00-00 00:00:00','2015-11-10 17:25:09','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,14,'','',1,34,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(36,104,'Concentración de partículas','concentracion-de-particulas-2','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Concentración de partículas</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/concentracion-particulas/pm10\"> <img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/volcan/pm10.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">PM10</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/dispersion-de-cenizas/concentracion-particulas/superficie\"><img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/volcan/grnd.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Superficie</h6>\r\n</div>\r\n</div>\r\n</div>','',1,2,'2015-11-10 17:37:03',294,'','2017-04-03 22:05:39',293,0,'0000-00-00 00:00:00','2015-11-10 17:37:03','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,13,'','',1,27,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(37,105,'THICKNESS','thickness','<h1 style=\"text-align: center;\">Thickness</h1>\r\n<p> </p>\r\n<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border: hidden;\"><a href=\"index.php/dispersion-de-cenizas/thickness\"> <img class=\"d1\" src=\"images/Portadas/volcan/thickness.png\" alt=\"\" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,2,'2015-11-10 19:38:51',294,'','2015-11-10 19:48:42',294,0,'0000-00-00 00:00:00','2015-11-10 19:38:51','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,12,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(38,107,'noticia ejemplo','noticiaeje','<table style=\"height: 532px;\" width=\"647px\" cellspacing=\"0\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">\r\n<h1>Debajo de las verdes colinas de Waitomo, yace un laberinto de cuevas, simas y ríos subterráneos. El nombre del área proviene de las palabras maoríes wai (agua) y tomo (hoyo).</h1>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: justify;\" rowspan=\"2\">\r\n<p>Bajo las verdes colinas de Waitomo, yace un laberinto de cuevas, simas y ríos subterráneos. El nombre de la zona proviene de las palabras maoríes \"wai\" (agua) y \"tomo\" (hoyo).Las cuevas se originaron por la presión que ejercieron las corrientes subterráneas sobre la piedra caliza</p>\r\n<p>blanda durante miles de años. En muchas de ellas, desde el cielo y el suelo, se asoman im p resionantes estalactitas y estalagmitas, puntiagudosc onos de rocas estratificadas, formadas por el goteo del agua durante siglos. Las paredes de estas cuevas están decoradas con una galaxia de luciérnagas nativas.</p>\r\n<p>La forma más fácil de conocer las cuevas es a través de un tour a pie o en bote. Si te gusta la aventura, vive la experiencia única de la navegación en cuevas, donde te desplazarás, nadarás y flotarás en una cámara de goma. También puedes descender a la oscuridad en rapel o tirolesa. Cualquiera sea tu opción para explorar las cuevas de Waitomo, llegarás a la conclusión de que son una maravilla de la naturaleza.</p>\r\n</td>\r\n<td style=\"border: medium hidden; text-align: center;\">imagen</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: justify;\">Hay mucho para conocer y disfrutar, tanto bajo tierra como sobre ella. <br />Cerca del museo Waitomo Museum of Caves, comienza una vía que atraviesa tierras de labranza, donde se puebrden apreciar formaciones rocosas fascinantes y extraños afloramientos acanalados. En el bosque Pureora, es posible realizar fantásticas excursiones cortas y largas, adecuadas para todos los niveles.</td>\r\n</tr>\r\n</tbody>\r\n</table>','',-2,8,'2015-11-17 22:01:26',294,'','2015-11-19 19:35:04',294,0,'0000-00-00 00:00:00','2015-11-17 22:01:26','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',13,6,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(39,108,'noticia1','noticia1','<table style=\"height: 528px;\" width=\"558\" cellspacing=\"1\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">\r\n<h1>Erick Raúl Olvera Prado</h1>\r\n<h1>Defiende su tesis de maestría</h1>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: justify;\" rowspan=\"2\">Defendió su tesis de maestría el día 20 de junio de 2014. Su trabajo titulado \"Hidrodinámica de la Laguna de Alvarado apartir de mediciones y modelación numérica.\", representa un avance en la construcción de la línea base de la hidrodinámica del sistema estuarino del Papaloapan y la Laguna de Alavarado. <br />Por la calidad de su trabajo y su defensa de tesis Erick fue candidato propuesto para obtener la medalla Alfonso Caso.<br /> Muchas Felicidades !!</td>\r\n<td style=\"border: medium hidden; text-align: center;\"><img src=\"images/dscn1647.png\" alt=\"raul\" width=\"161\" height=\"200\" /><br />\r\n<h3 style=\"text-align: center;\">Erick Raúl Olvera Prado</h3>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>','',-2,8,'2015-11-17 22:43:56',294,'','2015-11-19 19:35:17',294,0,'0000-00-00 00:00:00','2015-11-17 22:43:56','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',33,7,'','',1,63,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(40,109,'noticia2','noticia2','<table style=\"height: 528px;\" width=\"558\" cellspacing=\"1\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">\r\n<h1>Luz Areli Zárate Jiménez.</h1>\r\n<h1>Defiende su tesis de licenciatura</h1>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: justify;\" rowspan=\"2\">defendió su tesis de licencitura el día 25 de Junio de 2015. Su trabajo titulado \"Validación de corrientes geostróficas en el Golfo de México.\" <br /> Muchas Felicidades !!</td>\r\n<td style=\"border: medium hidden; text-align: center;\"><img src=\"images/Portadas/noticias/luz.jpg\" alt=\"raul\" width=\"161\" height=\"200\" /><br />\r\n<h3 style=\"text-align: center;\">Luz Areli Zárate Jiménez</h3>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>','',-2,8,'2015-11-19 19:17:50',294,'','2015-11-19 19:53:49',294,0,'0000-00-00 00:00:00','2015-11-19 19:17:50','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,8,'','',1,11,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(41,110,'noticia3','noticia3','<table style=\"height: 528px;\" width=\"558\" cellspacing=\"1\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">\r\n<h1>María Eugenia Allende Arandía.</h1>\r\n<h1>Defiende su tesis de posgrado</h1>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: justify;\" rowspan=\"2\">defendió su tesis de posgrado el día 14 de Mayo de 2015. Su trabajo titulado \"Escenarios de la Dinámica y Termodinámica en el Sistema Arrecifal Veracruzano Norte ante el Cambio Climático.\" <br /> Muchas Felicidades !!</td>\r\n<td style=\"border: medium hidden; text-align: center;\"><img src=\"images/Portadas/noticias/maru1.jpg\" alt=\"\" width=\"161\" height=\"200\" /><br />\r\n<h3 style=\"text-align: center;\">María Eugenia Allende Arandía</h3>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>','',-2,8,'2015-11-19 19:39:24',294,'','2015-11-19 19:53:35',294,0,'0000-00-00 00:00:00','2015-11-19 19:39:24','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,5,'','',1,8,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(42,111,'noticia4','noticia4','<table style=\"height: 528px;\" width=\"558\" cellspacing=\"1\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">\r\n<h1>Nidia Taylor Espinoza.</h1>\r\n<h1>Defiende su tesis de maestría</h1>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: justify;\" rowspan=\"2\">defendió su tesis de maestría el día 3 de junio de 2014. Su trabajo titulado \"Estudio numérico de la componente diurna de los vientos en el sur del Golfo de México.\", representa un grán avance en el conocimiento de las brisas en las costas del Golfo de México. Por la calidad de su trabajo a Nidia se le propuso como candidata a la medalla Alfonso Caso.<br /> Muchas Felicidades !!</td>\r\n<td style=\"border: medium hidden; text-align: center;\"><img src=\"images/Portadas/noticias/nidia1.jpg\" alt=\"\" width=\"161\" height=\"200\" /><br />\r\n<h3 style=\"text-align: center;\">Nidia Taylor Espinoza</h3>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>','',-2,8,'2015-11-19 19:46:30',294,'','2015-11-19 19:53:05',294,0,'0000-00-00 00:00:00','2015-11-19 19:46:30','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,4,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(43,112,'noticia5','noticia5','<table style=\"height: 528px;\" width=\"558\" cellspacing=\"1\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">\r\n<h1>María Elena Osorio Tai.</h1>\r\n<h1>Defiende su tesis de maestría</h1>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: justify;\" rowspan=\"2\">defendió su tesis de maestría el día 27 de Febrero de 2015. Su trabajo titulado \"Estudio de la intensificación de los vientos en el puerto de Veracruz mediante modelación numérica.<br /> Muchas Felicidades !!</td>\r\n<td style=\"border: medium hidden; text-align: center;\"><img src=\"images/Portadas/noticias/tai1.jpg\" alt=\"\" width=\"161\" height=\"200\" /><br />\r\n<h3 style=\"text-align: center;\">María Elena Osorio Tai</h3>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>','',-2,8,'2015-11-19 19:48:37',294,'','2015-11-19 19:52:40',294,0,'0000-00-00 00:00:00','2015-11-19 19:48:37','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,3,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(44,113,'noticia6','noticia6','<table style=\"height: 528px;\" width=\"558\" cellspacing=\"1\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">\r\n<h1>Julio Lara.</h1>\r\n<h1>Defiende su tesis de maestría</h1>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: justify;\" rowspan=\"2\">defendió su tesis de maestría el día 27 de Febrero de 2015. Su trabajo titulado \"Estudio de la intensificación de los vientos en el puerto de Veracruz mediante modelación numérica.<br /> Muchas Felicidades !!</td>\r\n<td style=\"border: medium hidden; text-align: center;\"><img alt=\"\" width=\"161\" height=\"200\" /><br />\r\n<h3 style=\"text-align: center;\">Julio Lara</h3>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>','',-2,8,'2015-11-19 19:51:26',294,'','2015-11-19 19:51:26',0,0,'0000-00-00 00:00:00','2015-11-19 19:51:26','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(46,115,'noticia7','noticia7','<table style=\"height: 528px;\" width=\"558\" cellspacing=\"1\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">\r\n<h1 style=\"text-align: center;\">Nuevas publicaciones</h1>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border: medium hidden; text-align: center;\">\r\n<p>Olmo Zavala-Romero, Arsalan Ahmed, Eric P. Chassignet, Jorge Zavala-Hidalgo, Agustin Fernández Eguiarte, Anke Meyer-Baese: An open source Java web application to build self-contained web GIS sites. Environmental Modelling &amp; Software. 62 (2014) 210-220. DOI: 10.1016/j.envsoft.2014.08.029.</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\">A. Ruiz-Angulo. Some aspects of turbulence role in Oceanic Currents. Experimental and Theoretical Advances in Fluid Dynamics, Springer, 2014.</p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\">Fernández-Eguiarte, A., R. Romero-Centeno, J. Zavala-Hidalgo: Metodologías empleadas en el Atlas Climático Digital de México para la generación de mapas de alta resolución. Geoacta, 39(1): 165-173. ISSN Impreso 0326-7237/ISSN En línea 1852-7744.(2014).</p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\">Adolfo Contreras Ruiz Esparza, Pascal Douillet, and Jorge Zavala-Hidalgo. \"Tidal dynamics of the Terminos Lagoon, Mexico: observations and 3D numerical modelling.\" Ocean Dynamics, 1-23,(2014).</p>\r\n</td>\r\n<td style=\"border: medium hidden; text-align: center;\">\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> Jorge Zavala Hidalgo, Rosario Romero-Centeno, Adriana Mateos-Jasso, Steven L. Morey, Benjamín Martínez-López: The Resposnse of the Gulf of Mexico to Wind and Heat Flux Forcings: What has been learned in the last 20 years?.Atmósfera 27(3),317-334,(2014).</p>\r\n<p><br />Cipagauta, C., B. Mendoza, J. Zavala-Hidalgo: Sensitivity of a WRF model simulation of the North Atlantic to changes in total solar irradiance. Geofísica Internacional, vol. 53, n º 2, p. 153-162, (2014).</p>\r\n<p> </p>\r\nLaura Sanvicente Añorve, Jorge Zavala-Hidalgo, Ma Eugenia Allende-Arandía. Connectivity patterns among coral reef systems in the southern Gulf of Mexico. Mar Ecol Prog Ser 498:27-41.doi: 10.3354/meps1063, (2014).\r\n<p> </p>\r\nFigueroa-Espinoza B., Salles P., and Zavala-Hidalgo J. On the wind potential in the northwest of the Yucatan Peninsula in Mexico. Atmosfera, 27(1), 77-90, (2014).\r\n<h3 style=\"text-align: center;\"> </h3>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>','',-2,8,'2015-11-19 21:47:36',294,'','2015-11-19 22:22:21',294,0,'0000-00-00 00:00:00','2015-11-19 21:47:36','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,1,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(48,117,'Circulación oceánica','circulacion-oceanica2','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Circulación oceánica</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura\"><img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/circulacion/temperatura_010.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Temperatura</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad\"><img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/circulacion/salinidad_003.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Salinidad</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/nivel-del-mar\"><img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/circulacion/nivel_017.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Nivel del mar</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez\"><img class=\"d1\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Portadas/circulacion/rapidez_003.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Rapidez</h6>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container\"> </div>','',1,2,'2015-11-20 17:32:55',294,'','2017-04-03 21:59:33',293,0,'0000-00-00 00:00:00','2015-11-20 17:32:55','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',16,11,'','',1,343,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(49,118,'Temperatura','temperatura','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Temperatura</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/superficie\"> <img class=\"d1\" src=\"images/Portadas/circulacion/temperatura_010.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Superficie</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/10m\"><img class=\"d1\" src=\"images/Portadas/circulacion/temperatura/temperatura_10.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">10m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/50m\"> <img class=\"d1\" src=\"images/Portadas/circulacion/temperatura/temperatura_50.png\" alt=\"\" /><br /><br /></a>\r\n<h6 class=\"font-weight-bold\">50m</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/100m\"><img class=\"d1\" src=\"images/Portadas/circulacion/temperatura/temperatura_100.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">100m</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/200m\"> <img class=\"d1\" src=\"images/Portadas/circulacion/temperatura/temperatura_200.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">200m</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/300m\"><img class=\"d1\" src=\"images/Portadas/circulacion/temperatura/temperatura_300.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">300m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/400m\"> <img class=\"d1\" src=\"images/Portadas/circulacion/temperatura/temperatura_400.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">400m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/500m\"> <img class=\"d1\" src=\"images/Portadas/circulacion/temperatura/temperatura_500.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">500m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/700m\"><img class=\"d1\" src=\"images/Portadas/circulacion/temperatura/temperatura_700.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">700m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/1000m\"><img class=\"d1\" src=\"images/Portadas/circulacion/temperatura/temperatura_1000.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">1000m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/1500m\"><img class=\"d1\" src=\"images/Portadas/circulacion/temperatura/temperatura_1500.png\" alt=\"\" width=\"160\" height=\"104\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">1500m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/2000m\"><img class=\"d1\" src=\"images/Portadas/circulacion/temperatura/temperatura_2000.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">2000m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/2500m\"><img class=\"d1\" src=\"images/Portadas/circulacion/temperatura/temperatura_2500.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">2500m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/3000m\"><img class=\"d1\" src=\"images/Portadas/circulacion/temperatura/temperatura_3000.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">3000m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/temperatura/3500m\"><img class=\"d1\" src=\"images/Portadas/circulacion/temperatura/temperatura_3500.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">3500m</h6>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container\"> </div>','',1,2,'2015-11-20 22:57:18',294,'','2017-04-03 22:06:38',293,0,'0000-00-00 00:00:00','2015-11-20 22:57:18','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,10,'','',1,187,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(50,119,'Salinidad','salinidad','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Salinidad</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/superficie\"> <img class=\"d1\" src=\"images/Portadas/circulacion/salinidad_003.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Superficie</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/10m\"><img class=\"d1\" src=\"images/Portadas/circulacion/salinidad/salinidad_10.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">10m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/50m\"> <img class=\"d1\" src=\"images/Portadas/circulacion/salinidad/salinidad_50.png\" alt=\"\" /><br /><br /></a>\r\n<h6 class=\"font-weight-bold\">50m</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/100m\"><img class=\"d1\" src=\"images/Portadas/circulacion/salinidad/salinidad_100.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">100m</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/200m\"> <img class=\"d1\" src=\"images/Portadas/circulacion/salinidad/salinidad_200.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">200m</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/300m\"><img class=\"d1\" src=\"images/Portadas/circulacion/salinidad/salinidad_300.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">300m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/400m\"> <img class=\"d1\" src=\"images/Portadas/circulacion/salinidad/salinidad_400.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">400m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/500m\"> <img class=\"d1\" src=\"images/Portadas/circulacion/salinidad/salinidad_500.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">500m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/700m\"><img class=\"d1\" src=\"images/Portadas/circulacion/salinidad/salinidad_700.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">700m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/1000m\"><img class=\"d1\" src=\"images/Portadas/circulacion/salinidad/salinidad_1000.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">1000m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/1500m\"><img class=\"d1\" src=\"images/Portadas/circulacion/salinidad/salinidad_1500.png\" alt=\"\" width=\"160\" height=\"104\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">1500m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/2000m\"><img class=\"d1\" src=\"images/Portadas/circulacion/salinidad/salinidad_2000.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">2000m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/2500m\"><img class=\"d1\" src=\"images/Portadas/circulacion/salinidad/salinidad_2500.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">2500m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/3000m\"><img class=\"d1\" src=\"images/Portadas/circulacion/salinidad/salinidad_3000.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">3000m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/salinidad/3500m\"><img class=\"d1\" src=\"images/Portadas/circulacion/salinidad/salinidad_3500.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">3500m</h6>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container\"> </div>','',1,2,'2015-11-23 22:12:38',294,'','2017-04-03 22:10:31',293,0,'0000-00-00 00:00:00','2015-11-23 22:12:38','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,9,'','',1,64,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(51,120,'Rapidez','rapidez','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Rapidez</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/superficie\"> <img class=\"d1\" src=\"images/Portadas/circulacion/rapidez_003.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Superficie</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/10m\"><img class=\"d1\" src=\"images/Portadas/circulacion/rapidez/rapidez_10.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">10m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/50m\"> <img class=\"d1\" src=\"images/Portadas/circulacion/rapidez/rapidez_50.png\" alt=\"\" /><br /><br /></a>\r\n<h6 class=\"font-weight-bold\">50m</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/100m\"><img class=\"d1\" src=\"images/Portadas/circulacion/rapidez/rapidez_100.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">100m</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/200m\"> <img class=\"d1\" src=\"images/Portadas/circulacion/rapidez/rapidez_200.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">200m</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/300m\"><img class=\"d1\" src=\"images/Portadas/circulacion/rapidez/rapidez_300.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">300m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/400m\"> <img class=\"d1\" src=\"images/Portadas/circulacion/rapidez/rapidez_400.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">400m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/500m\"> <img class=\"d1\" src=\"images/Portadas/circulacion/rapidez/rapidez_500.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">500m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/700m\"><img class=\"d1\" src=\"images/Portadas/circulacion/rapidez/rapidez_700.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">700m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/1000m\"><img class=\"d1\" src=\"images/Portadas/circulacion/rapidez/rapidez_1000.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">1000m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/1500m\"><img class=\"d1\" src=\"images/Portadas/circulacion/rapidez/rapidez_1500.png\" alt=\"\" width=\"160\" height=\"104\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">1500m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/2000m\"><img class=\"d1\" src=\"images/Portadas/circulacion/rapidez/rapidez_2000.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">2000m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/2500m\"><img class=\"d1\" src=\"images/Portadas/circulacion/rapidez/rapidez_2500.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">2500m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/3000m\"><img class=\"d1\" src=\"images/Portadas/circulacion/rapidez/rapidez_3000.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">3000m</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/circulacion-oceanica/rapidez/3500m\"><img class=\"d1\" src=\"images/Portadas/circulacion/rapidez/rapidez_3500.png\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">3500m</h6>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container\"> </div>','',1,2,'2015-11-24 17:26:33',294,'','2017-04-03 22:12:32',293,295,'2017-08-22 15:59:17','2015-11-24 17:26:33','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,8,'','',1,68,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(52,121,'noticia8','noticia8','<table style=\"height: 528px;\" width=\"558\" cellspacing=\"1\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">\r\n<h1>Se agregaron 9 nuevos meteogramas al portal del pronóstico</h1>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: justify;\" rowspan=\"2\">\r\n<ul style=\"text-align: left;\" type=\"circle\">Estos son los nuevos meteogramas agregados recientemente al portal del pronostico:</ul>\r\n<ul type=\"circle\">\r\n<li>Chetumal</li>\r\n<li>Ciudad del Carmen</li>\r\n<li>Coatzacoalcos</li>\r\n<li>Isla Mujeres</li>\r\n<li>Matamoros</li>\r\n<li>Progreso</li>\r\n<li>Tuxpan</li>\r\n<li>Veracruz</li>\r\n</ul>\r\n</td>\r\n<td style=\"border: medium hidden; text-align: center;\"><img src=\"images/Portadas/noticias/Meteograma_28Chetumal.jpg\" alt=\"\" width=\"177\" height=\"220\" /><br />\r\n<h3 style=\"text-align: center;\">Meteograma Chetumal</h3>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>','',-2,8,'2012-08-02 11:48:00',294,'','2016-02-02 18:29:48',294,0,'0000-00-00 00:00:00','2016-02-02 17:50:21','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,0,'','',1,20,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(53,122,'Viento','viento','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Viento</h1>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 1</h2>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/viento/domio-1/en-superficie\"> <img class=\"d1\" src=\"images/Portadas/vientos/viento_sup_d1.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Viento en superficie</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/viento/domio-1/viento-en-superficie-y-humedad-relativa\"> <img class=\"d1\" src=\"images/Portadas/vientos/viento_hr_s_11_057.jpg\" alt=\"\" width=\"150\" height=\"95\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Viento en superficie y húmedad relativa</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/viento/domio-1/vien-alt-humedad-relativa\"> <img class=\"d1\" src=\"images/Portadas/vientos/viento_hr_p_11_003.jpg\" alt=\"\" width=\"150\" height=\"99\" /><br /><br /></a>\r\n<h6 class=\"font-weight-bold\">Viento en altura y húmedad relativa</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/viento/domio-1/viento-en-superficie-y-divergencia\"> <img class=\"d1\" src=\"images/Portadas/vientos/div_conv_s_11_002.jpg\" alt=\"\" width=\"150\" height=\"96\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Viento en superficie y divergencia</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/viento/domio-1/viento-en-altura-y-divergencia\"> <img class=\"d1\" src=\"images/Portadas/vientos/div_conv_p_11_013.jpg\" alt=\"\" width=\"150\" height=\"99\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Viento en altura y divergencia</h6>\r\n</div>\r\n<div class=\"col-xs12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/viento/domio-1/geopotencial\"> <img class=\"d1\" src=\"images/Portadas/vientos/viento_sup_d2.jpg\" alt=\"\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Viento y altura geopotencial</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/viento/domio-1/vorticidad-relativa\"> <img class=\"d1\" src=\"images/Portadas/vientos/viento_relvor_s_11_002.jpg\" alt=\"\" width=\"150\" height=\"96\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Vorticidad relativa</h6>\r\n</div>\r\n</div>\r\n<p> </p>\r\n<h2 style=\"text-align: center;\">Dominio 2</h2>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/viento/domio-2/en-superficie\"> <img class=\"d1\" src=\"images/Portadas/vientos/viento_10m_12_001.jpg\" alt=\"\" width=\"150\" height=\"86\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Viento en superficie</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/viento/domio-2/viento-en-superficie-y-humedad-relativa\"> <img class=\"d1\" src=\"images/Portadas/vientos/viento_hr_s_12_002.jpg\" alt=\"\" width=\"150\" height=\"85\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">Viento en superficie y húmedad relativa</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-4 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/viento/domio-2/vorticidad-relativa\"> <img class=\"d1\" src=\"images/Portadas/vientos/viento_relvor_s_12_001.jpg\" alt=\"\" width=\"150\" height=\"85\" /><br /><br /></a>\r\n<h6 class=\"font-weight-bold\">Viento en altura y húmedad relativa</h6>\r\n</div>\r\n</div>\r\n<div class=\"container\"> </div>\r\n</div>','',1,2,'2016-06-10 17:33:16',293,'','2017-04-03 22:14:44',293,0,'0000-00-00 00:00:00','2016-06-10 17:33:16','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',23,7,'','',1,163,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(54,123,'Lineas de corriente','precipitacion-acumulada-total','<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Líneas de corriente</h1>\r\n<p> </p>\r\n<h1 style=\"text-align: center;\">Dominio 1</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/lineas-de-corriente/domio/sup-1\"> <img class=\"d1\" src=\"images/Portadas/lineas_corriente/pcpcn_streamlines_s_11_010.jpg\" alt=\"\" width=\"150\" height=\"95\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">En superficie</h6>\r\n</div>\r\n<div class=\"col-sm12 col-md-6 col-lg-6 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/lineas-de-corriente/domio/en-altura\"><img class=\"d1\" src=\"images/Portadas/lineas_corriente/pcpcn_streamlines_p_11_001.jpg\" alt=\"\" width=\"150\" height=\"98\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">En altura</h6>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container\">\r\n<h1 style=\"text-align: center;\">Dominio 2</h1>\r\n<p> </p>\r\n<div class=\"row\">\r\n<div class=\"col-sm12 col-md-12 col-lg-12 text-black text-center font-weight-bold\"><a href=\"index.php/meteorologia/lineas-de-corriente/dn2/sup\"> <img class=\"d1\" src=\"images/Portadas/lineas_corriente/pcpcn_streamlines_s_12_014.jpg\" alt=\"\" width=\"150\" height=\"84\" /></a><br /><br />\r\n<h6 class=\"font-weight-bold\">En superficie</h6>\r\n</div>\r\n</div>\r\n</div>','',1,2,'2016-06-10 20:51:33',293,'','2017-04-03 22:16:14',293,293,'2017-04-27 21:27:00','2016-06-10 20:51:33','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',11,6,'','',1,143,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(55,132,'Participantes Fall3D','participantes-fall3d','<p style=\"text-align: center;\"><strong>Desarrollado por:</strong></p>\r\n<p style=\"text-align: center;\">Universidad Nacional Autónoma de México</p>\r\n<p style=\"text-align: center;\">Centro de Ciencias de la Atmósfera</p>\r\n<p style=\"text-align: center;\">Instituto de Geofísica</p>\r\n<p style=\"text-align: center;\">Grupo Interacción Océano-Atmósfera</p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p><strong><span style=\"color: #363636;\">Participantes:</span></strong></p>\r\n<ul style=\"text-align: left;\">\r\n<li>Dr. Jorge Zavala Hidalgo - jzavala@atmosfera.unam.mx</li>\r\n<li>Dr. Agustín García Reynoso - <a href=\"mailto:agustin@atmosfera.unam.mx\">agustin@atmosfera.unam.mx</a></li>\r\n<li>Dr. Hugo Delgado Granados - hugo@geofisica.unam.mx</li>\r\n<li>M. en C. Octavio Gómez Ramos - octavio@atmosfera.unam.mx</li>\r\n<li>M. en C. Fernando Nicolas Arellano Guerrero - farellanoguerrero@gmail.com</li>\r\n<li>M. en C. Dulce Rosario Herrera Moro - dulce.herrera@atmosfera.unam.mx</li>\r\n<li>Dra. Erika Danaé López Espinoza - danae@atmosfera.unam.mx</li>\r\n<li>Lic. Ángel Valentín Bautista Durán - angelv.bautista@gmail.com</li>\r\n</ul>','',1,2,'2017-03-14 22:51:33',293,'','2017-03-15 00:15:36',293,293,'2017-04-03 22:16:42','2017-03-14 22:51:33','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,5,'','',1,11,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(56,133,'descrip fall3d','descrip-fall3d','<h1>FALL3D</h1>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">El modelo resuelve un conjunto de ecuaciones de advección-difusión-sedimentación (ADS) en una malla que sigue el terreno empleando un esquema explícito de ecuaciones de diferencias finitas de segundo-orden.</p>\r\n<p style=\"text-align: justify;\">Las entradas del modelo son datos meteorológicos, topografía y coordenadas del venteo, parámetros de la fuente de erupción (ESP) como lo son la altura de columna, el flujo masico (MFR), la duración de la erupción, y la distribución total del tamaño de los granos (TGSD), incluyendo la forma de las partículas y la densidad. Las salidas son la variables de espesor y cantidad en masa de tefra, concentración atmosférica de ceniza y otras variables relacionadas.</p>\r\n<p style=\"text-align: justify;\">El código, escrito en FORTRAN 90, esta disponible para sistemas operativos Unix/ Linux /Mac X y puede compilarse tanto para uso serial como para lelo empleando MPI. Se incluyen también en el paquete de distribución Fall3D un conjunto de programas utilitarios para pre y post procesamiento y programas auxiliares .</p>\r\n<p style=\"text-align: justify;\">Se pueden seleccionar diferentes parametrizaciones para describir la fuente de erupción, la velocidad terminal de sedimentación, el tensor de difusividad y la agregación de ceniza.</p>\r\n<p style=\"text-align: justify;\">Para las variables meteorologicas el Fall3D emplea una estrategia fuera de línea. i.e. las variables meteorologicas son calculadas por modelos independientes o por conjuntos de datos y se interpolan a la malla del Fall3D como archivos NetCDF. El modelo Fall3D puede usarse para reproducir eventos de erupciones pasadas, así como une herramienta para dispersión de ceniza en pronóstico, y para la evaluación de riesgos de caída de ceniza volcánica.</p>\r\n<p> </p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Informacion/fall3d.png\" alt=\"\" width=\"740\" height=\"709\" /></p>\r\n<p> </p>','',1,2,'2017-03-14 23:02:18',293,'','2017-03-15 00:18:49',293,294,'2017-06-13 18:04:12','2017-03-14 23:02:18','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,4,'','',1,18,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(57,135,'WRF','wrf','<h1 class=\"item-page\">Pronóstico Meteorológico</h1>\r\n<p> </p>\r\n<p align=\"justify\">El pronóstico meteorológico se realiza utilizando el modelo Weather Research and Forecasting Model (WRF) en su versión la 3.5. El modelo WRF es un modelo de predicción numérica del tiempo diseñado para la investigación y para aplicaciones operativas. Diversas instituciones han contribuido y siguen contribuyendo a su desarrollo, con el firme objetivo de construir el modelo de pronóstico numérico de mesoescala de la siguiente generación, para lograr un avance en el entendimiento de los procesos atmosféricos y en la predicción de tiempo. El modelo WRF ha sido deseñado principalmente por el National Center for Atmospheric Research (NCAR), la National Oceanic and Atmospheric Admisntration (NOAA), el National Center for Environmental Prediciton (NCEP), el Earth System Research Laboratory (ESRL), la Air Force Weather Agengy (AFWA), el Naval Research Laboratory (NLR) el Center for Analysis an Prediction Storms (CAPS) y la Federal Aviaton Administration (FAA). El código del modelo está abierto a la comunidad y ha sido optimizado de manera que puede ser adaptado tanto en supercomputadoras que trabajan en paralelo como en computadoras portátiles de reciente generación. El modelo es muy versátil, y se puede usar en una gran diversidad de aplicaciones, tales como simulaciones ideales, simulaciones reales (predicción numérica del tiempo real), modelación de la calidad del aire y estudios de interacción océano-atmósfera mediante el acoplamiento con modelos oceánicos.</p>\r\n<p align=\"justify\">El WRF Software Infrastructure (WFS) contiene los códigos que incorporan la física al modelo (dynamic solvers) y los paquetes físicos que constituyen la interfaz con los códigos. También se localizan aquí los códigos necesarios para realizar asimilación de datos y para emplear algunas opciones del modelo relacionadas con la química atmosférica. Fuera del WSF, se encuentra la parte de pre-procesamiento y post-procesamiento de las simulaciones numéricas. El modelo cuenta con dos núcleos que resuelven su física, el Advanced Research WPS (ARW) y el Nonhydrostatical Mesoscale Model (NMM). En la configuración desarrollada para este sistema se utiliza el núcleo ARW el cual se describe brevemente la versión del WRF con este núcleo.</p>\r\n<p><strong>Núcleo ARW</strong></p>\r\n<p align=\"justify\">El núcleo ARW es la componente del modelo, donde se lleva a cabo la integración numérica del dominio principal y de los anidamientos.</p>\r\n<p>Las características del núcleo ARW, son las siguientes:</p>\r\n<ul>\r\n<li><strong>Ecuaciones: </strong>Modelo totalmente compresible, no-hidrostático, basado en flujo euleriano, con una opción hidrostática.</li>\r\n<li><strong>Coordenada vertical:</strong> Coordenada que sigue el terreno y que permite un estiramiento en los niveles verticales. El tope del modelo es una superficie de presión constante.</li>\r\n<li><strong>Malla horizontal:</strong> Malla escalonada tipo Arakawa C.</li>\r\n<li><strong>Integración en tiempo:</strong> Runge-Kutta de 2do y 3er orden con paso de tiempo menor para ondas acústicas y de gravedad.</li>\r\n<li><strong>Discretización espacial:</strong> Opcional de 2do y 6to orden en la horizontal y vertical.</li>\r\n<li><strong>Condiciones de frontera laterales:</strong> Periódicas, abiertas y simétricas.</li>\r\n<li><strong>Condiciones de frontera en superficie:</strong> Física o free-slip.</li>\r\n<li><strong>Anidamientos:</strong> Unidireccionales interactivos, bi-direccionales interactivos y movibles, estos últimos pueden usarse a través de movimientos especificados por el usuario o con un algoritmo que sigue el movimiento de un vórtice.</li>\r\n<li><strong>Malla Global:</strong> Cuenta con capacidad para realizar simulaciones globales.</li>\r\n<li><strong>Microfísica:</strong> Esquemas simplificados para simulaciones idealizadas y esquemas complejos que incorporan explícitamente procesos de precipitación, vapor de agua y nubes.</li>\r\n<li><strong>Parametrizaciones de cúmulus:</strong> Diversos esquemas para modelos de mesoescala modificados y adaptados para el modelo.</li>\r\n<li><strong>Capa límite planetaria:</strong> Esquema de energía cinética turbulenta y esquemas no locales.</li>\r\n</ul>\r\n<p align=\"justify\"> </p>\r\n<p align=\"justify\"><strong>WRF Preprocessing System (WPS).</strong> Esta componente del modelo es utilizada para simulaciones reales. Aquí, el usuario puede definir los dominios de la simulación, interpolar los datos terrestres a los dominios (por ejemplo topografía, tipo de suelo, uso de suelo, etcétera), así como decodificar e interpolar los datos meteorológicos que alimentan al modelo.</p>\r\n<p align=\"justify\"><strong>WRF-Var.</strong> Este programa es opcional y se encarga de incorporar observaciones a los análisis interpolados creados por el WPS (por ejemplo datos de superficie, radiosondeos, datos de radar, etcétera), generando un ajuste en las condiciones iniciales del modelo.</p>\r\n<p align=\"justify\"><strong>Post-procesamiento y visualización.</strong> Esta componente del modelo depende totalmente del usuario pues existe una gran cantidad de herramientas gráficas que pueden ser utilizadas para visualizar las simulaciones numéricas. Algunas de estas opciones son: NCAR Command Language (NCL), Read/Interpolate/Plot (RIP4), Grid Analysis and Display System (GrADS), Vis5D, Visualization and Analysis Platform for Ocean, Atmosphere, and Solar Researchers (VAPOR), General Equilibrium Modelling Software (GEMPAK) y MATrix LABoratory (MATLAB).</p>\r\n<p align=\"justify\"><strong>Parametrizaciones físicas</strong></p>\r\n<ul>\r\n<li><strong>Esquema de Dudhia para la radiación de onda corta.</strong> Representa el flujo de energía solar que llega a la atmósfera considerando la absorción del vapor de agua y la absorción y albedo de las nubes.</li>\r\n<li><strong>Esquema Rapid Radiative Transfer Model (RRTM) para radiación de onda larga.</strong> Este esquema utiliza valores predeterminados en tablas que representan los procesos de onda larga debidos al vapor de agua, ozono, CO2 y gases traza (si existen), considerando también las propiedades ópticas de la nube en función de su profundidad.</li>\r\n<li><strong>Esquema de Kain-Fritsch para la parametrización de cúmulus.</strong> Es utilizado para representar los procesos convectivos por medio de un modelo que considera las corrientes verticales de aire húmedo en ambos sentidos, además de considerar un modelo simple de microfísica.</li>\r\n<li><strong>Esquema Yonsei University para la capa límite planetaria.</strong> Este esquema se encarga de representar los flujos verticales pequeños que son resultado del transporte turbulento en toda la columna atmosférica.</li>\r\n</ul>','',1,2,'2017-03-15 00:44:09',293,'','2017-04-27 18:34:19',293,293,'2017-04-27 21:26:42','2017-03-15 00:44:09','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,3,'','',1,29,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(58,136,'Participantes WWII','participantes-wwii','<p style=\"text-align: center;\"><strong>Desarrollado por:</strong></p>\r\n<p style=\"text-align: center;\">Universidad Nacional Autónoma de México</p>\r\n<p style=\"text-align: center;\">Centro de Ciencias de la Atmósfera</p>\r\n<p style=\"text-align: center;\">Instituto de Geofísica</p>\r\n<p style=\"text-align: center;\">Grupo Interacción Océano-Atmósfera</p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p><strong><span style=\"color: #363636;\">Participantes:</span></strong></p>\r\n<ul style=\"text-align: left;\">\r\n<li>Jorge Zavala Hidalgo - <a href=\"mailto:jzavala@atmosfera.unam.mx\">jzavala@atmosfera.unam.mx</a></li>\r\n<li>Rosario Romero Centeno - <a href=\"mailto:rosario@atmosfera.unam.mx\">rosario@atmosfera.unam.mx</a></li>\r\n<li>Erika Danaé López Espinoza - <a href=\"mailto:danae@atmosfera.unam.mx\">danae@atmosfera.unam.mx</a></li>\r\n<li>Ovel Díaz Garcia - <a href=\"mailto:ovel.diaz@atmosfera.unam.mx\">ovel.diaz@atmosfera.unam.mx</a></li>\r\n<li>M. en C. Octavio Gómez Ramos - <a href=\"mailto:octavio@atmosfera.unam.mx\">octavio@atmosfera.unam.mx</a></li>\r\n<li>Fernando Nicolas Arellano Guerrero - <a href=\"mailto:farellanoguerrero@gmail.com\">farellanoguerrero@gmail.com</a></li>\r\n<li>María Elena Osorio Tai - <a href=\"mailto:tai@atmosfera.unam.mx\">tai@atmosfera.unam.mx</a></li>\r\n</ul>','',1,2,'2017-03-15 22:22:50',293,'','2017-03-15 23:46:58',293,295,'2017-08-22 15:59:13','2017-03-15 22:22:50','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,2,'','',1,36,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(59,138,'WAVEWATCH','wavewatch','<div class=\"page-header\">\r\n<h2>Modelo WAVEWATCH</h2>\r\n</div>\r\n<p align=\"justify\">El pronóstico de oleaje se realiza empleando el modelo WAVEWATCH III (WWIII) en su versión 3.14, el modelo WWIII es un model de tercera generación a sido desarrollado en por la Marine Modeling Branch (MMAB) de el Environmental Modeling Cener (EMC) de el National Center for Environmental Prediction (NCEP). En la práctica el modelo WAVEWATCH fue diseñado para actividades en la investigación como para actividades operativas gracias a las mejoras realizadas de las versiones anteriores del modelo.</p>\r\n<p>Las variables que se pronostican con el modelo WAVEWATCH son altura significante y dirección, periodo da altura significante, altura y dirección de marejada y periodo y dirección de marejada.</p>\r\n<p>El pronóstico se realiza empleando la información del WRF y se corre a las horas.</p>\r\n<p><em><strong>Características del modelo</strong></em></p>\r\n<p align=\"justify\">El modelo WAVEWATCH III es de código restringido, las mejoras realizadas al modelo se llevan a cabo en el NCEP, las cuales incluye mallas curvilíneas, sub mallas para estructuras complejas, nuevas variables de salida respecto a las versiones anteriores del modelo y en un formato NetCDF hasta esta versión, mejoras en los paquetes de los términos fuente en la ecuaciones del modelo y en el termino de fricción en el fondo (SHOWEX), filtros GMD y filtros no lineales en la solución, mejoras en las técnicas de palelizaje del modelo.</p>\r\n<p style=\"margin-right: 0.01in;\" align=\"justify\">El modelo WAVEWATCH incluye la opción de transferir condiciones de frontera de un dominio mayor a un dominio inferior anidado, en dichas condiciones de frontera lo que se transfiere es la información de los espectros de energía del oleaje de un dominio al otro.</p>\r\n<p><em><strong>Física del modelo</strong></em></p>\r\n<p style=\"font-weight: normal;\" align=\"justify\">El modelo WAVEWATCH puede ser configurado tanto en un sistema de referencia cartesiano como esférico, en el cual se resuelve la ecuación de energía del oleaje, en dicha ecuación de energía se tiene como término fuente la energía generada por el viento y como términos sumideros la disipación en el tiempo y un termino de transferencia no lineal de energía entre las diferentes componentes del oleaje.</p>\r\n<p style=\"margin-bottom: 0.24in; font-weight: normal;\" align=\"justify\"><span style=\"font-style: normal;\">En el modelo WWIII se parametrizan los procesos como son: el crecimien</span><span style=\"font-style: normal;\">t</span><span style=\"font-style: normal;\">o de oleaje y su decaimiento debid</span><span style=\"font-style: normal;\">o</span><span style=\"font-style: normal;\"> al esfuerzo del viento, interacciones no lineales, disipación, fricción en el fond</span><span style=\"font-style: normal;\">o</span><span style=\"font-style: normal;\">, </span><span style=\"font-style: normal;\">olas rompientes y dispersión debidas a interacción con ondas de fondo.</span></p>','',1,2,'2017-03-15 23:10:58',293,'','2017-03-15 23:11:05',293,0,'0000-00-00 00:00:00','2017-03-15 23:10:58','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,1,'','',1,7,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(60,140,'Construcción','construccion','<table class=\"T_portada\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td> <img src=\"images/construccion.jpg\" alt=\"\" /></td>\r\n<td>\r\n<h1><strong>Página en Construcción  </strong></h1>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,2,'2017-03-24 23:56:37',293,'','2017-03-25 00:02:05',293,0,'0000-00-00 00:00:00','2017-03-24 23:56:37','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,'','',1,205,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `j4_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_content_frontpage`
--

DROP TABLE IF EXISTS `j4_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_content_frontpage`
--

LOCK TABLES `j4_content_frontpage` WRITE;
/*!40000 ALTER TABLE `j4_content_frontpage` DISABLE KEYS */;
INSERT INTO `j4_content_frontpage` VALUES (1,1);
/*!40000 ALTER TABLE `j4_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_content_rating`
--

DROP TABLE IF EXISTS `j4_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_content_rating`
--

LOCK TABLES `j4_content_rating` WRITE;
/*!40000 ALTER TABLE `j4_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_content_types`
--

DROP TABLE IF EXISTS `j4_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_content_types`
--

LOCK TABLES `j4_content_types` WRITE;
/*!40000 ALTER TABLE `j4_content_types` DISABLE KEYS */;
INSERT INTO `j4_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `j4_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_contentitem_tag_map`
--

DROP TABLE IF EXISTS `j4_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_contentitem_tag_map`
--

LOCK TABLES `j4_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `j4_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_core_log_searches`
--

DROP TABLE IF EXISTS `j4_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_core_log_searches`
--

LOCK TABLES `j4_core_log_searches` WRITE;
/*!40000 ALTER TABLE `j4_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_extensions`
--

DROP TABLE IF EXISTS `j4_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10016 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_extensions`
--

LOCK TABLES `j4_extensions` WRITE;
/*!40000 ALTER TABLE `j4_extensions` DISABLE KEYS */;
INSERT INTO `j4_extensions` VALUES (1,0,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,0,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,0,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,0,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,0,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,0,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,0,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,0,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,0,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,0,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(11,0,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,0,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,0,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,0,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(15,0,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,0,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,0,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,0,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,0,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,0,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(22,0,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"0\",\"show_readmore_title\":\"0\",\"readmore_limit\":\"100\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,0,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,0,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,0,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,0,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,0,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(29,0,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,0,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,0,'com_ajax','component','com_ajax','',1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,0,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(33,0,'com_fields','component','com_fields','',1,1,1,0,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(34,0,'com_associations','component','com_associations','',1,1,1,0,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,0,'LIB_PHPUTF8','library','phputf8','',0,1,1,1,'{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,0,'LIB_JOOMLA','library','joomla','',0,1,1,1,'{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"7612386dec84c871e6c4e616aa16fac2\"}','','',0,'0000-00-00 00:00:00',0,0),(104,0,'LIB_IDNA','library','idna_convert','',0,1,1,1,'{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,0,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,0,'LIB_PHPASS','library','phpass','',0,1,1,1,'{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,0,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,0,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,0,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,0,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,0,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,0,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,0,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,0,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,0,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,0,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,0,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,0,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,0,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,0,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,0,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,0,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,0,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,0,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,0,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,0,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,0,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,0,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,0,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,0,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,0,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,0,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,0,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,0,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,0,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,0,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,0,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,0,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,0,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,0,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,0,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,0,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,0,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,0,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,0,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,0,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,0,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,0,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,0,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,0,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,0,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,0,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,0,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,0,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,0,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,0,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.25.2\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,0,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,0,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.7\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,0,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,0,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,0,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,0,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,0,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,0,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,0,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,0,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,0,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,0,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,0,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,0,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,0,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,0,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,0,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,0,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,0,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,0,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,0,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,0,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,0,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,0,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,0,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,0,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,0,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,0,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,0,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,0,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,0,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,0,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,0,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','','',0,'0000-00-00 00:00:00',4,0),(447,0,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,0,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,0,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,0,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','','','',0,'0000-00-00 00:00:00',0,0),(451,0,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(452,0,'plg_system_updatenotification','plugin','updatenotification','system',0,1,1,0,'{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}','{\"lastrun\":1504133855}','','',0,'0000-00-00 00:00:00',0,0),(453,0,'plg_editors-xtd_module','plugin','module','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}','','','',0,'0000-00-00 00:00:00',0,0),(454,0,'plg_system_stats','plugin','stats','system',0,1,1,0,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}','{\"mode\":3,\"lastrun\":\"\",\"unique_id\":\"b6cb1b8b124f9e64551530b40b52840f92e6ec4b\",\"interval\":12}','','',0,'0000-00-00 00:00:00',0,0),(455,0,'plg_installer_packageinstaller','plugin','packageinstaller','installer',0,1,1,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}','','','',0,'0000-00-00 00:00:00',1,0),(456,0,'PLG_INSTALLER_FOLDERINSTALLER','plugin','folderinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}','','','',0,'0000-00-00 00:00:00',2,0),(457,0,'PLG_INSTALLER_URLINSTALLER','plugin','urlinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}','','','',0,'0000-00-00 00:00:00',3,0),(458,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}','','','',0,'0000-00-00 00:00:00',0,0),(459,0,'plg_editors-xtd_menu','plugin','menu','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(460,0,'plg_editors-xtd_contact','plugin','contact','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',0,0),(461,0,'plg_system_fields','plugin','fields','system',0,1,1,0,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(462,0,'plg_fields_calendar','plugin','calendar','fields',0,1,1,0,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}','','','',0,'0000-00-00 00:00:00',0,0),(463,0,'plg_fields_checkboxes','plugin','checkboxes','fields',0,1,1,0,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}','','','',0,'0000-00-00 00:00:00',0,0),(464,0,'plg_fields_color','plugin','color','fields',0,1,1,0,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}','','','',0,'0000-00-00 00:00:00',0,0),(465,0,'plg_fields_editor','plugin','editor','fields',0,1,1,0,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}','','','',0,'0000-00-00 00:00:00',0,0),(466,0,'plg_fields_imagelist','plugin','imagelist','fields',0,1,1,0,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}','','','',0,'0000-00-00 00:00:00',0,0),(467,0,'plg_fields_integer','plugin','integer','fields',0,1,1,0,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(468,0,'plg_fields_list','plugin','list','fields',0,1,1,0,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}','','','',0,'0000-00-00 00:00:00',0,0),(469,0,'plg_fields_media','plugin','media','fields',0,1,1,0,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','','','',0,'0000-00-00 00:00:00',0,0),(470,0,'plg_fields_radio','plugin','radio','fields',0,1,1,0,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}','','','',0,'0000-00-00 00:00:00',0,0),(471,0,'plg_fields_sql','plugin','sql','fields',0,1,1,0,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}','','','',0,'0000-00-00 00:00:00',0,0),(472,0,'plg_fields_text','plugin','text','fields',0,1,1,0,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}','','','',0,'0000-00-00 00:00:00',0,0),(473,0,'plg_fields_textarea','plugin','textarea','fields',0,1,1,0,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}','','','',0,'0000-00-00 00:00:00',0,0),(474,0,'plg_fields_url','plugin','url','fields',0,1,1,0,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}','','','',0,'0000-00-00 00:00:00',0,0),(475,0,'plg_fields_user','plugin','user','fields',0,1,1,0,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}','','','',0,'0000-00-00 00:00:00',0,0),(476,0,'plg_fields_usergrouplist','plugin','usergrouplist','fields',0,1,1,0,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}','','','',0,'0000-00-00 00:00:00',0,0),(477,0,'plg_content_fields','plugin','fields','content',0,1,1,0,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(478,0,'plg_editors-xtd_fields','plugin','fields','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(503,0,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,0,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,0,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,0,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,802,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.4\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,802,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.4\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,0,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.4\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(802,0,'English (en-GB) Language Pack','package','pkg_en-GB','',0,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.4.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,0,'jm-0013','template','jm-0013','',0,1,1,0,'{\"name\":\"jm-0013\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/2011\",\"author\":\"joomla-monster.com\",\"copyright\":\"joomla-monster.com\",\"authorEmail\":\"joomla-monster@design-joomla.eu\",\"authorUrl\":\"joomla-monster.com\",\"version\":\"1.7\",\"description\":\"\\n\\t<head>\\n\\t\\t<style>\\n\\t\\t\\tbody {\\n\\t\\t\\t\\tfont-family: Arial, Helvetica, sans-serif;\\n\\t\\t\\t\\tfont-size: 11px;\\n\\t\\t\\t}\\n\\t\\t\\ta:link,\\n\\t\\t\\ta:visited {\\n\\t\\t\\t\\tcolor: #4991c1;\\n\\t\\t\\t\\tfont-weight: bold;\\n\\t\\t\\t}\\n\\t\\t\\ta:hover {\\n\\t\\t\\t\\ttext-decoration: underline;\\n\\t\\t\\t}\\n\\t\\t\\th2 {\\n\\t\\t\\t\\tcolor: #fa9539;\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tfont-size: 16px;\\n\\t\\t\\t\\tpadding: 0;\\n\\t\\t\\t\\tmargin: 2px 0;\\n\\t\\t\\t}\\n\\t\\t\\tp {\\n\\t\\t\\t\\tpadding: 0;\\n\\t\\t\\t\\tmargin: 4px 0;\\n\\t\\t\\t}\\n\\t\\t\\t#left-logo {\\n\\t\\t\\t\\tfloat: left;\\n\\t\\t\\t\\twidth: 320px;\\n\\t\\t\\t\\theight: 100px;\\n\\t\\t\\t\\tdisplay: block;\\n\\t\\t\\t\\tpadding-top: 50px;\\n\\t\\t\\t}\\n\\t\\t\\t#right-text {\\n\\t\\t\\t\\tfloat: left;\\n\\t\\t\\t\\twidth: 400px;\\n\\t\\t\\t}\\n\\t\\t\\t#info {\\n\\t\\t\\t\\tborder: 1px solid #efefef;\\n\\t\\t\\t\\tpadding: 10px;\\n\\t\\t\\t\\tbackground: #ffffff;\\n\\t\\t\\t}\\n\\t\\t\\t#info p {\\n\\t\\t\\t\\tfont-size: 10px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t<\\/head>\\n\\t<body>\\n\\t\\t<div id=\\\"left-logo\\\">\\n\\t\\t\\t<img src=\\\"http:\\/\\/joomla-monster.com\\/images\\/jm-logo.png\\\" \\/>\\n\\t\\t<\\/div>\\n\\t\\t<div id=\\\"right-text\\\">\\n\\t\\t\\t<h2>Template jm-0013<\\/h2>\\n\\t\\t\\t<p><b>Templates for Joomla! CMS<\\/b><\\/p>\\n\\t\\t\\t<div id=\\\"info\\\">\\n\\t\\t\\t\\t<p><b>Version:<\\/b> 1.7<\\/p>\\n\\t\\t\\t\\t<p><b>Date:<\\/b> October 2011<\\/p>\\n\\t\\t\\t\\t<p><b>Client:<\\/b> Random<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<p>\\n\\t\\t\\tUnique and oryginal templates for <b>Joomla! CMS<\\/b><br \\/>\\n\\t\\t\\tGraphic design & template code: <b>design-joomla.eu<\\/b><br \\/>\\n\\t\\t\\t<a href=\\\"http:\\/\\/www.design-joomla.eu\\\">http:\\/\\/www.design-joomla.eu<\\/a><br \\/><br \\/>\\n\\t\\t\\t<\\/p>\\n\\t\\t<\\/div>\\n\\t<\\/body>\\n\\t\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"fontswitcher\":\"1\",\"fontsize\":\"12\",\"stylearea\":\"1\",\"template_color\":\"1\",\"widtharea\":\"1\",\"page_width\":\"960px\",\"sitetitle\":\"\",\"sitedescription\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10001,0,'JE Accordion Menu','module','mod_je_accordionmenu','',0,1,0,0,'{\"name\":\"JE Accordion Menu\",\"type\":\"module\",\"creationDate\":\"February, 2015\",\"author\":\"jExtensions.com\",\"copyright\":\"Copyright 2015 - jExtensions.com\",\"authorEmail\":\"support@jExtensions.com\",\"authorUrl\":\"http:\\/\\/jExtensions.com\",\"version\":\"3.4\",\"description\":\"\\t\\n\\t<h1 class=\\\"sub-heading\\\">JE Accordion Menu<\\/h1>\\t\\n\\t<div class=\\\"description\\\">Download more free extensions from <a href=\\\"http:\\/\\/jextensions.com\\/\\\" target=\\\"_blank\\\">jExtensions.com<\\/a><br\\/>\\n\\tNeed help? <a href=\\\"http:\\/\\/jextensions.com\\/free-accordion-menu-joomla-2.5\\/\\\" target=\\\"_blank\\\">Click here to visit the support page<\\/a>.<br\\/>\\n\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"mod_je_accordionmenu\"}','{\"jQuery\":\"0\",\"menulinkcolor\":\"#ffffff\",\"menucolor\":\"#35a9e7\",\"menulinkcolorsub\":\"#ffffff\",\"menucolorsub\":\"#49525e\",\"fontStyle\":\"Open+Sans\",\"accordion\":\"mouseenter\",\"speed\":\"normal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(10002,0,'MOD_VISITORCOUNTER','module','mod_visitorcounter','',0,1,0,0,'{\"name\":\"MOD_VISITORCOUNTER\",\"type\":\"module\",\"creationDate\":\"2015-03-07\",\"author\":\"Viktor Vogel\",\"copyright\":\"Copyright 2015 Viktor Vogel. All rights reserved.\",\"authorEmail\":\"admin@kubik-rubik.de\",\"authorUrl\":\"https:\\/\\/joomla-extensions.kubik-rubik.de\\/\",\"version\":\"3-3\",\"description\":\"MOD_VISITORCOUNTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_visitorcounter\"}','{\"s_today\":\"1\",\"today\":\"\",\"s_yesterday\":\"1\",\"yesterday\":\"\",\"s_week\":\"1\",\"week\":\"\",\"s_month\":\"1\",\"month\":\"\",\"s_all\":\"1\",\"all\":\"\",\"horizontal\":\"0\",\"hor_text\":\"\",\"separator\":\"\",\"locktime\":\"1440\",\"preset\":\"0\",\"whoisonline\":\"1\",\"whoisonline_linknames\":\"0\",\"whoisonline_session\":\"10\",\"filter_groups\":\"1\",\"nobots\":\"1\",\"botslist\":\"bot,spider,crawler,libwww,search,archive,slurp,teoma,facebook,twitter\",\"noip\":\"0\",\"ipslist\":\"\",\"anonymize_ip\":\"0\",\"clean_db\":\"1\",\"sql\":\"1\",\"copy\":\"1\",\"counterwinner\":\"0\",\"cwnumber\":\"\",\"cwcode\":\"\",\"cwemail\":\"\",\"cwtext\":\"\",\"cwpopup\":\"0\",\"cwsession\":\"0\",\"squeeze_url\":\"\",\"squeeze_relativetoroot\":\"0\",\"squeeze_width\":\"200\",\"squeeze_height\":\"200\",\"squeeze_time\":\"10\",\"squeeze_opacity\":\"70\",\"donation_code\":\"\",\"cache\":\"0\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10003,0,'News Show SP2','module','mod_news_show_sp2','',0,1,0,0,'{\"name\":\"News Show SP2\",\"type\":\"module\",\"creationDate\":\"Feb 2012\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2015 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"2.9\",\"description\":\"JoomShaper News Display\\/Slider Module for 3\",\"group\":\"\",\"filename\":\"mod_news_show_sp2\"}','{\"uniqid\":\"\",\"content_source\":\"joomla\",\"catids\":\"\",\"k2catids\":\"all\",\"vmcat\":\"all\",\"vmordering\":\"latest\",\"ordering\":\"a.created\",\"ordering_direction\":\"ASC\",\"user_id\":\"0\",\"show_featured\":\"\",\"article_column\":\"1\",\"article_row\":\"1\",\"article_col_padding\":\"3px 3px 3px 3px\",\"article_showtitle\":\"1\",\"article_linkedtitle\":\"1\",\"article_title_text_limit\":\"1\",\"article_count_title_text\":\"0\",\"article_introtext\":\"1\",\"article_intro_text_limit\":\"0\",\"article_count_intro_text\":\"30\",\"article_date_format\":\"DATE_FORMAT_LC3\",\"article_show_author\":\"0\",\"article_show_category\":\"0\",\"article_linked_category\":\"1\",\"article_show_ratings\":\"0\",\"article_show_image\":\"1\",\"article_linked_image\":\"1\",\"article_image_pos\":\"bottom\",\"article_image_float\":\"float:left\",\"article_image_margin\":\"0 0 0 0\",\"article_thumb_width\":\"50\",\"article_thumb_height\":\"50\",\"article_extra_fields\":\"0\",\"article_show_more\":\"1\",\"article_more_text\":\"Read More...\",\"article_comments\":\"1\",\"article_hits\":\"1\",\"btn_like\":\"0\",\"btn_twitter\":\"0\",\"btn_gplus\":\"0\",\"art_show_price\":\"0\",\"art_show_cart_button\":\"0\",\"article_animation\":\"nssp2-slide\",\"article_slide_count\":\"2\",\"article_controllers_style\":\"nssp2-default\",\"article_pagination\":\"1\",\"article_arrows\":\"0\",\"article_autoplay\":\"1\",\"article_animation_interval\":\"5000\",\"links_block\":\"0\",\"links_count\":\"3\",\"links_col_padding\":\"3px 3px 3px 3px\",\"links_position\":\"bottom\",\"links_more\":\"1\",\"links_more_text\":\"MORE\",\"links_title_text_limit\":\"1\",\"links_title_count\":\"0\",\"links_show_intro\":\"0\",\"links_intro_text_limit\":\"0\",\"links_intro_count\":\"20\",\"links_show_image\":\"0\",\"links_linked_image\":\"1\",\"links_image_pos\":\"bottom\",\"links_image_float\":\"float:left\",\"links_image_margin\":\"0 0 0 0\",\"links_thumb_width\":\"50\",\"links_thumb_height\":\"50\",\"links_show_price\":\"0\",\"links_show_cart_button\":\"0\",\"links_animation\":\"nssp2-slide\",\"links_slide_count\":\"2\",\"links_controllers_style\":\"nssp2-default\",\"links_pagination\":\"1\",\"links_arrows\":\"0\",\"links_autoplay\":\"1\",\"links_animation_interval\":\"5000\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','','',0,'0000-00-00 00:00:00',0,0),(10004,0,'mod_krizalys_breadcrumbs','module','mod_krizalys_breadcrumbs','',0,1,0,0,'{\"name\":\"mod_krizalys_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Krizalys\",\"copyright\":\"Copyright (C) 2008 - 2015 Krizalys (http:\\/\\/www.krizalys.com\\/). All rights reserved.\",\"authorEmail\":\"support@krizalys.com\",\"authorUrl\":\"www.krizalys.com\",\"version\":\"1.1.0\",\"description\":\"MOD_KRIZALYS_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_krizalys_breadcrumbs\"}','{\"show_here\":\"1\",\"show_home\":\"1\",\"show_last\":\"1\",\"link_last\":\"0\",\"use_xhtml\":\"0\",\"format\":\"microdata\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','','',0,'0000-00-00 00:00:00',0,0),(10005,0,'Akeeba','component','com_akeeba','',1,1,0,0,'{\"name\":\"Akeeba\",\"type\":\"component\",\"creationDate\":\"2017-05-18\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"Copyright (c)2006-2017 Akeeba Ltd \\/ Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@dionysopoulos.me\",\"authorUrl\":\"http:\\/\\/www.akeebabackup.com\",\"version\":\"5.4.0\",\"description\":\"Akeeba Backup Core - Full Joomla! site backup solution, Core Edition.\",\"group\":\"\",\"filename\":\"akeeba\"}','{\"confwiz_upgrade\":1,\"siteurl\":\"http:\\/\\/localhost\\/operativo\\/\",\"jlibrariesdir\":\"\\/var\\/www\\/html\\/operativo\\/libraries\",\"jversion\":\"1.6\",\"show_howtorestoremodal\":0,\"updatedb\":null}','','',0,'0000-00-00 00:00:00',0,0),(10007,0,'AkeebaStrapper','file','AkeebaStrapper','',0,1,0,0,'{\"name\":\"AkeebaStrapper\",\"type\":\"file\",\"creationDate\":\"2016-03-19\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"(C) 2012-2013 Akeeba Ltd.\",\"authorEmail\":\"nicholas@dionysopoulos.me\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.5.4\",\"description\":\"Namespaced jQuery, jQuery UI and Bootstrap for Akeeba products.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10008,0,'plg_quickicon_akeebabackup','plugin','akeebabackup','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_akeebabackup\",\"type\":\"plugin\",\"creationDate\":\"2012-09-26\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"Copyright (c)2006-2017 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"http:\\/\\/www.akeebabackup.com\",\"version\":\"1.0\",\"description\":\"PLG_QUICKICON_AKEEBABACKUP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"akeebabackup\"}','{\"context\":\"mod_quickicon\",\"enablewarning\":\"1\",\"warnfailed\":\"1\",\"maxbackupperiod\":\"24\",\"profileid\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10009,0,'PLG_SYSTEM_AKEEBAUPDATECHECK_TITLE','plugin','akeebaupdatecheck','system',0,0,1,0,'{\"name\":\"PLG_SYSTEM_AKEEBAUPDATECHECK_TITLE\",\"type\":\"plugin\",\"creationDate\":\"2011-05-26\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"Copyright (c)2006-2017 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@dionysopoulos.me\",\"authorUrl\":\"http:\\/\\/www.akeebabackup.com\",\"version\":\"1.1\",\"description\":\"PLG_AKEEBAUPDATECHECK_DESCRIPTION2\",\"group\":\"\",\"filename\":\"akeebaupdatecheck\"}','{\"email\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10010,0,'PLG_SYSTEM_BACKUPONUPDATE_TITLE','plugin','backuponupdate','system',0,1,1,0,'{\"name\":\"PLG_SYSTEM_BACKUPONUPDATE_TITLE\",\"type\":\"plugin\",\"creationDate\":\"2013-08-13\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"Copyright (c)2006-2017 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@dionysopoulos.me\",\"authorUrl\":\"http:\\/\\/www.akeebabackup.com\",\"version\":\"3.7\",\"description\":\"PLG_SYSTEM_BACKUPONUPDATE_DESCRIPTION\",\"group\":\"\",\"filename\":\"backuponupdate\"}','{\"profileid\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10011,0,'F0F (NEW) DO NOT REMOVE','library','lib_f0f','',0,1,1,0,'{\"name\":\"F0F (NEW) DO NOT REMOVE\",\"type\":\"library\",\"creationDate\":\"2016-03-19\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2014 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.5.4\",\"description\":\"Framework-on-Framework (FOF) newer version - DO NOT REMOVE - The rapid component development framework for Joomla!. This package is the newer version of FOF, not the one shipped with Joomla! as the official Joomla! RAD Layer. The Joomla! RAD Layer has ceased development in March 2014. DO NOT UNINSTALL THIS PACKAGE, IT IS *** N O T *** A DUPLICATE OF THE \'FOF\' PACKAGE. REMOVING EITHER FOF PACKAGE WILL BREAK YOUR SITE.\",\"group\":\"\",\"filename\":\"lib_f0f\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10012,0,'Akeeba Backup package','package','pkg_akeeba','',0,1,1,0,'{\"name\":\"Akeeba Backup package\",\"type\":\"package\",\"creationDate\":\"2017-05-18\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"Copyright (c)2006-2017 Akeeba Ltd \\/ Nicholas K. Dionysopoulos\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"5.4.0\",\"description\":\"Akeeba Backup installation package v.5.4.0\",\"group\":\"\",\"filename\":\"pkg_akeeba\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10015,0,'FOF30','library','lib_fof30','',0,1,1,0,'{\"name\":\"FOF30\",\"type\":\"library\",\"creationDate\":\"2017-05-11\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2010-2017 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"3.1.0\",\"description\":\"\\n\\t\\t\\n\\t\\tFramework-on-Framework (FOF) 3.x - The rapid application development framework for Joomla!.<br\\/>\\n\\t\\t<b>WARNING<\\/b>: This is NOT a duplicate of the FOF library already installed with Joomla!. It is a different version used by other extensions on your site. Do NOT uninstall either FOF package. If you do you will break your site.\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"lib_fof30\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `j4_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_fields`
--

DROP TABLE IF EXISTS `j4_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_fields`
--

LOCK TABLES `j4_fields` WRITE;
/*!40000 ALTER TABLE `j4_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_fields_categories`
--

DROP TABLE IF EXISTS `j4_fields_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_fields_categories`
--

LOCK TABLES `j4_fields_categories` WRITE;
/*!40000 ALTER TABLE `j4_fields_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_fields_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_fields_groups`
--

DROP TABLE IF EXISTS `j4_fields_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_fields_groups`
--

LOCK TABLES `j4_fields_groups` WRITE;
/*!40000 ALTER TABLE `j4_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_fields_values`
--

DROP TABLE IF EXISTS `j4_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_fields_values`
--

LOCK TABLES `j4_fields_values` WRITE;
/*!40000 ALTER TABLE `j4_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_fields_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_filters`
--

DROP TABLE IF EXISTS `j4_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` mediumtext NOT NULL,
  `params` longtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_filters`
--

LOCK TABLES `j4_finder_filters` WRITE;
/*!40000 ALTER TABLE `j4_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links`
--

DROP TABLE IF EXISTS `j4_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`),
  KEY `idx_title` (`title`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links`
--

LOCK TABLES `j4_finder_links` WRITE;
/*!40000 ALTER TABLE `j4_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_terms0`
--

DROP TABLE IF EXISTS `j4_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_terms0`
--

LOCK TABLES `j4_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_terms1`
--

DROP TABLE IF EXISTS `j4_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_terms1`
--

LOCK TABLES `j4_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_terms2`
--

DROP TABLE IF EXISTS `j4_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_terms2`
--

LOCK TABLES `j4_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_terms3`
--

DROP TABLE IF EXISTS `j4_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_terms3`
--

LOCK TABLES `j4_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_terms4`
--

DROP TABLE IF EXISTS `j4_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_terms4`
--

LOCK TABLES `j4_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_terms5`
--

DROP TABLE IF EXISTS `j4_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_terms5`
--

LOCK TABLES `j4_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_terms6`
--

DROP TABLE IF EXISTS `j4_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_terms6`
--

LOCK TABLES `j4_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_terms7`
--

DROP TABLE IF EXISTS `j4_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_terms7`
--

LOCK TABLES `j4_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_terms8`
--

DROP TABLE IF EXISTS `j4_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_terms8`
--

LOCK TABLES `j4_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_terms9`
--

DROP TABLE IF EXISTS `j4_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_terms9`
--

LOCK TABLES `j4_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_termsa`
--

DROP TABLE IF EXISTS `j4_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_termsa`
--

LOCK TABLES `j4_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_termsb`
--

DROP TABLE IF EXISTS `j4_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_termsb`
--

LOCK TABLES `j4_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_termsc`
--

DROP TABLE IF EXISTS `j4_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_termsc`
--

LOCK TABLES `j4_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_termsd`
--

DROP TABLE IF EXISTS `j4_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_termsd`
--

LOCK TABLES `j4_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_termse`
--

DROP TABLE IF EXISTS `j4_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_termse`
--

LOCK TABLES `j4_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_links_termsf`
--

DROP TABLE IF EXISTS `j4_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_links_termsf`
--

LOCK TABLES `j4_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `j4_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_taxonomy`
--

DROP TABLE IF EXISTS `j4_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_taxonomy`
--

LOCK TABLES `j4_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `j4_finder_taxonomy` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `j4_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_taxonomy_map`
--

LOCK TABLES `j4_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `j4_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_terms`
--

DROP TABLE IF EXISTS `j4_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_terms`
--

LOCK TABLES `j4_finder_terms` WRITE;
/*!40000 ALTER TABLE `j4_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_terms_common`
--

DROP TABLE IF EXISTS `j4_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_terms_common`
--

LOCK TABLES `j4_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `j4_finder_terms_common` DISABLE KEYS */;
INSERT INTO `j4_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `j4_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_tokens`
--

DROP TABLE IF EXISTS `j4_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_tokens`
--

LOCK TABLES `j4_finder_tokens` WRITE;
/*!40000 ALTER TABLE `j4_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `j4_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_tokens_aggregate`
--

LOCK TABLES `j4_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `j4_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_finder_types`
--

DROP TABLE IF EXISTS `j4_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_finder_types`
--

LOCK TABLES `j4_finder_types` WRITE;
/*!40000 ALTER TABLE `j4_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_languages`
--

DROP TABLE IF EXISTS `j4_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_languages`
--

LOCK TABLES `j4_languages` WRITE;
/*!40000 ALTER TABLE `j4_languages` DISABLE KEYS */;
INSERT INTO `j4_languages` VALUES (1,0,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1);
/*!40000 ALTER TABLE `j4_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_menu`
--

DROP TABLE IF EXISTS `j4_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100))
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_menu`
--

LOCK TABLES `j4_menu` WRITE;
/*!40000 ALTER TABLE `j4_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_menu_types`
--

DROP TABLE IF EXISTS `j4_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_menu_types`
--

LOCK TABLES `j4_menu_types` WRITE;
/*!40000 ALTER TABLE `j4_menu_types` DISABLE KEYS */;
INSERT INTO `j4_menu_types` VALUES (1,0,'mainmenu','Main Menu','The main menu for the site',0),(2,0,'sipronomo1','Meteorología','',0),(4,0,'sipronomo3','Paneles','',0),(6,0,'sipronomo4','Otros Productos','',0),(7,0,'sipronomo5','Oleaje','',0),(16,0,'hycom1','HYCOM','',0),(18,0,'volcan','Volcan','',0),(19,0,'inicio','Menu_inicio','',0),(20,0,'main-menu','Menu_inicio_top','',0),(21,0,'tormenta','Marea de tormenta','',0),(23,0,'meteogr','Meteogramas','',0),(24,0,'sondeos','Sondeos','',0),(25,0,'fall3d','inf_fall3d','',0),(26,0,'meteo','Inf meteorologia','',0),(27,0,'inf-wwii','inf WWII','',0);
/*!40000 ALTER TABLE `j4_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_messages`
--

DROP TABLE IF EXISTS `j4_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_messages`
--

LOCK TABLES `j4_messages` WRITE;
/*!40000 ALTER TABLE `j4_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_messages_cfg`
--

DROP TABLE IF EXISTS `j4_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_messages_cfg`
--

LOCK TABLES `j4_messages_cfg` WRITE;
/*!40000 ALTER TABLE `j4_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_modules`
--

DROP TABLE IF EXISTS `j4_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_modules`
--

LOCK TABLES `j4_modules` WRITE;
/*!40000 ALTER TABLE `j4_modules` DISABLE KEYS */;
INSERT INTO `j4_modules` VALUES (1,39,'Main Menu','','',1,'topmenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(2,40,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,41,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(4,42,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(8,43,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,45,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(12,46,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,47,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,48,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,49,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,50,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,51,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_breadcrumbs',1,0,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"Inicio\",\"showLast\":\"1\",\"separator\":\"->\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"AMI\",\"style\":\"0\"}',0,'*'),(79,52,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,58,'pie','','<p style=\"text-align: center; color: #e8e8e9;\">TODOS LOS DERECHOS RESERVADOS © 2017 Grupo de Interacción Océano Atmósfera.<br /> Centro de Ciencias de la Atmósfera, UNAM. Circuito de la investigación Científica s/n, Ciudad Universitaria, Delegación Coyoacán, C.P. 04510, México D.F.</p>',1,'syndicateload',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(88,59,'cd-unam','','<div style=\"background: #ece9e6;\">\r\n<div style=\"float: left; padding: 5px;\"><a href=\"https://www.unam.mx/\"> <img src=\"images/escudo-unam-100x100.png\" alt=\"\" /></a></div>\r\n<div style=\"float: left; padding: 5px;\"><a href=\"http://www.atmosfera.unam.mx//\"> <img src=\"images/cca-logo.png\" alt=\"\" /></a></div>\r\n<div style=\"float: left; padding: 5px;\"> </div>\r\n<div style=\"float: left; padding: 5px;\">\r\n<div style=\"float: top; padding: 15px 20px 0px 0px; color: #000; font-size: 1.6em; font-weight: bold;\">Modelos Númericos</div>\r\n<div style=\"float: bottom; padding: 15px 35px 0px 0px; color: #673500; font-size: 1.2em; font-weight: bold;\"> </div>\r\n</div>\r\n<div style=\"float: right; padding: 5px 15px 5px 5px;\"><img src=\"images/logocenapredpng.png\" alt=\"\" /></div>\r\n</div>',1,'position-0',293,'2017-07-16 01:11:51','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(89,72,'meteorologia','','',0,'left',0,'0000-00-00 00:00:00','2017-03-25 00:49:23','0000-00-00 00:00:00',0,'mod_menu',1,1,'{\"menutype\":\"sipronomo1\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(90,73,'Meteorología','','',1,'left',0,'0000-00-00 00:00:00','2017-04-17 21:18:37','0000-00-00 00:00:00',1,'mod_je_accordionmenu',1,1,'{\"jQuery\":\"1\",\"menutype\":\"sipronomo1\",\"menulinkcolor\":\"#333333\",\"menucolor\":\"#FFFFFF\",\"menulinkcolorsub\":\"#333333\",\"menucolorsub\":\"#FFFFFF\",\"menuborer\":\"#BBB9B7\",\"fontStyle\":\"Open+Sans\",\"accordion\":\"click\",\"speed\":\"normal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(91,74,'Oleaje','','',1,'left',0,'0000-00-00 00:00:00','2016-11-02 19:44:29','0000-00-00 00:00:00',1,'mod_je_accordionmenu',1,1,'{\"jQuery\":\"0\",\"menutype\":\"sipronomo5\",\"menulinkcolor\":\"#333333\",\"menucolor\":\"#FFFFFF\",\"menulinkcolorsub\":\"#333333\",\"menucolorsub\":\"#FFFFFF\",\"menuborer\":\"#BBB9B7\",\"fontStyle\":\"Open+Sans\",\"accordion\":\"click\",\"speed\":\"normal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(92,84,'Modelos','','',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_je_accordionmenu',1,1,'{\"jQuery\":\"1\",\"menutype\":\"inicio\",\"menulinkcolor\":\"#333333\",\"menucolor\":\"#FFFFFF\",\"menulinkcolorsub\":\"#333333\",\"menucolorsub\":\"#FFFFFF\",\"menuborer\":\"#BBB9B7\",\"fontStyle\":\"Open+Sans\",\"accordion\":\"mouseenter\",\"speed\":\"normal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(93,85,'Visitas','','',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_visitorcounter',1,1,'{\"s_today\":\"1\",\"today\":\"Hoy\",\"s_yesterday\":\"1\",\"yesterday\":\"Ayer\",\"s_week\":\"1\",\"week\":\"Semana\",\"s_month\":\"1\",\"month\":\"Mes\",\"s_all\":\"1\",\"all\":\"Total\",\"horizontal\":\"0\",\"hor_text\":\"\",\"separator\":\"\",\"locktime\":\"1440\",\"preset\":\"0\",\"whoisonline\":\"0\",\"whoisonline_linknames\":\"0\",\"whoisonline_session\":\"10\",\"filter_groups\":[\"1\"],\"nobots\":\"1\",\"botslist\":\"bot,spider,crawler,libwww,search,archive,slurp,teoma,facebook,twitter\",\"noip\":\"0\",\"ipslist\":\"\",\"anonymize_ip\":\"0\",\"clean_db\":\"1\",\"sql\":\"1\",\"copy\":\"0\",\"counterwinner\":\"0\",\"cwnumber\":\"\",\"cwcode\":\"\",\"cwemail\":\"\",\"cwtext\":\"\",\"cwpopup\":\"0\",\"cwsession\":\"0\",\"squeeze_url\":\"\",\"squeeze_relativetoroot\":\"0\",\"squeeze_width\":\"200\",\"squeeze_height\":\"200\",\"squeeze_time\":\"10\",\"squeeze_opacity\":\"70\",\"donation_code\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(94,86,'Noticias y reportes','','',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_news_show_sp2',1,1,'{\"uniqid\":\"145\",\"content_source\":\"joomla\",\"catids\":[\"8\"],\"vmcat\":\"all\",\"vmordering\":\"latest\",\"ordering\":\"a.ordering\",\"ordering_direction\":\"DESC\",\"user_id\":\"0\",\"show_featured\":\"\",\"article_column\":\"2\",\"article_row\":\"1\",\"article_col_padding\":\"3px 3px 3px 3px\",\"article_showtitle\":\"0\",\"article_linkedtitle\":\"1\",\"article_title_text_limit\":\"0\",\"article_count_title_text\":\"0\",\"article_introtext\":\"1\",\"article_intro_text_limit\":\"1\",\"article_count_intro_text\":\"50\",\"article_date_format\":\"DATE_FORMAT_LC3\",\"article_show_author\":\"0\",\"article_show_category\":\"0\",\"article_linked_category\":\"1\",\"article_show_ratings\":\"0\",\"article_show_image\":\"1\",\"article_linked_image\":\"1\",\"article_image_pos\":\"top\",\"article_image_float\":\"float:right\",\"article_image_margin\":\"0 0 0 20px\",\"article_thumb_width\":\"70\",\"article_thumb_height\":\"70\",\"article_extra_fields\":\"0\",\"article_show_more\":\"1\",\"article_more_text\":\"Leer más...\",\"article_comments\":\"1\",\"article_hits\":\"1\",\"btn_like\":\"0\",\"btn_twitter\":\"0\",\"btn_gplus\":\"0\",\"art_show_price\":\"0\",\"art_show_cart_button\":\"0\",\"article_animation\":\"nssp2-slide\",\"article_slide_count\":\"5\",\"article_controllers_style\":\"nssp2-default\",\"article_pagination\":\"1\",\"article_arrows\":\"1\",\"article_autoplay\":\"1\",\"article_animation_interval\":\"3000\",\"links_block\":\"0\",\"links_count\":\"3\",\"links_col_padding\":\"3px 3px 3px 3px\",\"links_position\":\"bottom\",\"links_more\":\"1\",\"links_more_text\":\"MORE\",\"links_title_text_limit\":\"1\",\"links_title_count\":\"0\",\"links_show_intro\":\"0\",\"links_intro_text_limit\":\"0\",\"links_intro_count\":\"20\",\"links_show_image\":\"0\",\"links_linked_image\":\"1\",\"links_image_pos\":\"bottom\",\"links_image_float\":\"float:left\",\"links_image_margin\":\"0 0 0 0\",\"links_thumb_width\":\"50\",\"links_thumb_height\":\"50\",\"links_show_price\":\"0\",\"links_show_cart_button\":\"0\",\"links_animation\":\"nssp2-slide\",\"links_slide_count\":\"2\",\"links_controllers_style\":\"nssp2-default\",\"links_pagination\":\"1\",\"links_arrows\":\"0\",\"links_autoplay\":\"1\",\"links_animation_interval\":\"50000\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(95,92,'Menu_inicio_top','','',1,'topmenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"main-menu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(96,94,'Krizalys Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_krizalys_breadcrumbs',1,0,'{\"show_here\":\"0\",\"show_home\":\"1\",\"home_text\":\"Inicio\",\"show_last\":\"1\",\"link_last\":\"0\",\"use_xhtml\":\"1\",\"format\":\"microdata\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(97,96,'Dispersión de cenizas','','',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_je_accordionmenu',1,1,'{\"jQuery\":\"0\",\"menutype\":\"volcan\",\"menulinkcolor\":\"#333333\",\"menucolor\":\"#FFFFFF\",\"menulinkcolorsub\":\"#333333\",\"menucolorsub\":\"#FFFFFF\",\"menuborer\":\"#BBB9B7\",\"fontStyle\":\"Open+Sans\",\"accordion\":\"click\",\"speed\":\"normal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(98,98,'Marea de tormenta','','',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_je_accordionmenu',1,1,'{\"jQuery\":\"0\",\"menutype\":\"tormenta\",\"menulinkcolor\":\"#333333\",\"menucolor\":\"#FFFFFF\",\"menulinkcolorsub\":\"#333333\",\"menucolorsub\":\"#FFFFFF\",\"menuborer\":\"#BBB9B7\",\"fontStyle\":\"Open+Sans\",\"accordion\":\"mouseenter\",\"speed\":\"normal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(99,101,'Circulación oceánica','','',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_je_accordionmenu',1,1,'{\"jQuery\":\"0\",\"menutype\":\"hycom1\",\"menulinkcolor\":\"#333333\",\"menucolor\":\"#FFFFFF\",\"menulinkcolorsub\":\"#333333\",\"menucolorsub\":\"#FFFFFF\",\"menuborer\":\"#BBB9B7\",\"fontStyle\":\"Open+Sans\",\"accordion\":\"click\",\"speed\":\"normal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(100,124,'oleaje2','','',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_menu',1,1,'{\"menutype\":\"sipronomo5\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(102,126,'meteogramas','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_je_accordionmenu',1,1,'{\"jQuery\":\"1\",\"menutype\":\"meteogr\",\"menulinkcolor\":\"#333333\",\"menucolor\":\"#FFFFFF\",\"menulinkcolorsub\":\"#333333\",\"menucolorsub\":\"#FFFFFF\",\"menuborer\":\"#BBB9B7\",\"fontStyle\":\"Open+Sans\",\"accordion\":\"mouseenter\",\"speed\":\"normal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(103,127,'Sondeos','','',1,'left',0,'0000-00-00 00:00:00','2017-02-18 00:48:19','0000-00-00 00:00:00',-2,'mod_je_accordionmenu',1,1,'{\"jQuery\":\"1\",\"menutype\":\"sondeos\",\"menulinkcolor\":\"#FFFFFF\",\"menucolor\":\"#35A9E7\",\"menulinkcolorsub\":\"#FFFFFF\",\"menucolorsub\":\"#49525E\",\"fontStyle\":\"Open+Sans\",\"accordion\":\"mouseenter\",\"speed\":\"normal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(104,128,'Sondeos','','',1,'left',0,'0000-00-00 00:00:00','2017-02-20 21:51:21','0000-00-00 00:00:00',-2,'mod_je_accordionmenu',1,1,'{\"jQuery\":\"0\",\"menutype\":\"sondeos\",\"menulinkcolor\":\"#FFFFFF\",\"menucolor\":\"#35A9E7\",\"menulinkcolorsub\":\"#FFFFFF\",\"menucolorsub\":\"#49525E\",\"fontStyle\":\"Open+Sans\",\"accordion\":\"mouseenter\",\"speed\":\"normal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(105,129,'Sondeos','','',1,'left',0,'0000-00-00 00:00:00','2017-02-20 22:05:06','0000-00-00 00:00:00',-2,'mod_je_accordionmenu',1,1,'{\"jQuery\":\"0\",\"menutype\":\"sondeos\",\"menulinkcolor\":\"#FFFFFF\",\"menucolor\":\"#35A9E7\",\"menulinkcolorsub\":\"#FFFFFF\",\"menucolorsub\":\"#49525E\",\"fontStyle\":\"Open+Sans\",\"accordion\":\"mouseenter\",\"speed\":\"normal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(106,130,'sondeos','','',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_je_accordionmenu',1,1,'{\"jQuery\":\"0\",\"menutype\":\"sondeos\",\"menulinkcolor\":\"#333333\",\"menucolor\":\"#FFFFFF\",\"menulinkcolorsub\":\"#333333\",\"menucolorsub\":\"#FFFFFF\",\"menuborer\":\"#BBB9B7\",\"fontStyle\":\"Open+Sans\",\"accordion\":\"mouseenter\",\"speed\":\"normal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(107,131,'sondeos (copy)','','',1,'left',0,'0000-00-00 00:00:00','2017-07-15 23:56:30','0000-00-00 00:00:00',1,'mod_je_accordionmenu',1,1,'{\"jQuery\":\"0\",\"menutype\":\"sondeos\",\"menulinkcolor\":\"#143E64\",\"menucolor\":\"#FFFFFF\",\"menulinkcolorsub\":\"#143E64\",\"menucolorsub\":\"#EEEEEE\",\"fontStyle\":\"Open+Sans\",\"accordion\":\"mouseenter\",\"speed\":\"normal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(108,134,'Información Dispersión de Cenizas','','',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"fall3d\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(109,137,'Información sobre WRF','','',19,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"meteo\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(110,139,'Información sobre WWII','','',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"inf-wwii\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(111,141,'Met','','',3,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_menu',1,1,'{\"menutype\":\"sipronomo1\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"3\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(112,142,'Dispersión de cenizas (copy)','','',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_je_accordionmenu',1,1,'{\"jQuery\":\"0\",\"menutype\":\"volcan\",\"menulinkcolor\":\"#006383\",\"menucolor\":\"#FFFFFF\",\"menulinkcolorsub\":\"#006383\",\"menucolorsub\":\"#FFFFFF\",\"menuborer\":\"#49525E\",\"fontStyle\":\"Open+Sans\",\"accordion\":\"click\",\"speed\":\"normal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `j4_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_modules_menu`
--

DROP TABLE IF EXISTS `j4_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_modules_menu`
--

LOCK TABLES `j4_modules_menu` WRITE;
/*!40000 ALTER TABLE `j4_modules_menu` DISABLE KEYS */;
INSERT INTO `j4_modules_menu` VALUES (1,-101),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,0),(88,0),(89,0),(90,386),(90,387),(90,390),(90,394),(90,398),(90,399),(90,400),(90,402),(90,403),(90,404),(90,405),(90,406),(90,408),(90,410),(90,411),(90,413),(90,416),(90,418),(90,419),(90,420),(90,421),(90,493),(90,495),(90,496),(90,497),(90,498),(90,499),(90,500),(90,502),(90,503),(90,504),(90,509),(90,510),(90,514),(90,516),(90,517),(90,519),(90,520),(90,521),(90,526),(90,527),(90,528),(90,530),(90,531),(90,533),(90,534),(90,543),(90,544),(90,788),(90,795),(90,798),(90,799),(90,800),(90,805),(90,808),(90,809),(90,810),(90,814),(90,815),(90,816),(90,817),(90,819),(90,820),(90,821),(90,822),(90,835),(90,838),(90,841),(90,849),(90,850),(90,851),(90,852),(90,853),(90,854),(90,986),(90,990),(91,354),(91,602),(91,604),(91,613),(91,614),(91,615),(91,616),(91,617),(91,618),(91,627),(91,628),(91,637),(91,638),(91,647),(91,648),(91,657),(91,993),(91,994),(91,997),(92,101),(92,382),(92,383),(92,384),(92,385),(93,101),(93,381),(93,382),(93,383),(93,384),(93,385),(94,101),(94,381),(94,382),(94,383),(94,384),(94,385),(95,101),(95,381),(95,382),(95,383),(95,384),(95,385),(96,0),(97,356),(97,736),(97,737),(97,738),(97,739),(97,740),(97,741),(97,742),(97,743),(97,744),(97,745),(97,746),(97,747),(97,748),(97,749),(97,750),(97,751),(97,752),(97,753),(97,771),(97,984),(98,355),(98,774),(98,775),(99,369),(99,687),(99,688),(99,689),(99,690),(99,691),(99,692),(99,693),(99,694),(99,695),(99,696),(99,697),(99,698),(99,699),(99,700),(99,701),(99,702),(99,703),(99,704),(99,705),(99,706),(99,707),(99,708),(99,709),(99,710),(99,711),(99,712),(99,713),(99,714),(99,715),(99,716),(99,717),(99,718),(99,719),(99,720),(99,721),(99,722),(99,723),(99,724),(99,725),(99,726),(99,727),(99,728),(99,729),(99,730),(99,731),(99,732),(99,733),(99,734),(99,735),(100,613),(100,614),(100,615),(100,616),(100,617),(100,618),(100,627),(100,628),(100,637),(100,638),(100,647),(100,648),(101,251),(101,370),(101,380),(101,858),(101,859),(102,860),(102,864),(102,865),(102,866),(102,867),(102,868),(102,869),(102,870),(102,871),(102,872),(102,873),(102,874),(102,875),(102,876),(102,877),(102,878),(102,879),(102,880),(102,881),(102,882),(102,883),(102,884),(102,885),(102,886),(102,887),(102,888),(102,889),(102,890),(102,980),(103,-978),(103,-977),(103,-976),(103,-975),(103,-974),(103,-973),(103,-972),(103,-971),(103,-970),(103,-969),(103,-968),(103,-967),(103,-966),(103,-965),(103,-964),(103,-963),(103,-962),(103,-961),(103,-960),(103,-959),(103,-958),(103,-957),(103,-956),(103,-955),(103,-954),(103,-953),(103,-952),(103,-951),(103,-950),(103,-949),(103,-948),(103,-947),(103,-946),(103,-945),(103,-944),(103,-943),(103,-942),(103,-941),(103,-940),(103,-939),(103,-938),(103,-937),(103,-936),(103,-935),(103,-934),(103,-933),(103,-932),(103,-931),(103,-930),(103,-929),(103,-928),(103,-927),(103,-926),(103,-925),(103,-924),(103,-923),(103,-922),(103,-921),(103,-920),(103,-919),(103,-918),(103,-917),(103,-862),(104,-948),(104,-947),(104,-946),(104,-945),(104,-944),(104,-943),(104,-942),(104,-941),(104,-940),(104,-939),(104,-938),(104,-937),(104,-936),(104,-935),(104,-934),(104,-933),(104,-932),(104,-931),(104,-930),(104,-929),(104,-928),(104,-927),(104,-926),(104,-925),(104,-924),(104,-923),(104,-922),(104,-921),(104,-920),(104,-919),(104,-918),(104,-862),(105,-948),(105,-947),(105,-946),(105,-945),(105,-944),(105,-943),(105,-942),(105,-941),(105,-940),(105,-939),(105,-938),(105,-937),(105,-936),(105,-935),(105,-934),(105,-933),(105,-932),(105,-931),(105,-930),(105,-929),(105,-928),(105,-927),(105,-926),(105,-925),(105,-924),(105,-923),(105,-922),(105,-921),(105,-920),(105,-919),(105,-918),(105,-917),(105,-862),(106,862),(106,917),(106,918),(106,919),(106,920),(106,921),(106,922),(106,923),(106,924),(106,925),(106,926),(106,927),(106,928),(106,929),(106,930),(106,931),(106,932),(106,933),(106,934),(106,935),(106,936),(106,937),(106,938),(106,939),(106,940),(106,941),(106,942),(106,943),(106,944),(106,945),(106,946),(106,947),(106,948),(107,862),(107,917),(107,918),(107,919),(107,920),(107,921),(107,922),(107,923),(107,924),(107,925),(107,926),(107,927),(107,928),(107,929),(107,930),(107,931),(107,932),(107,933),(107,934),(107,935),(107,936),(107,937),(107,938),(107,939),(107,940),(107,941),(107,942),(107,943),(107,944),(107,945),(107,946),(107,947),(107,948),(108,356),(108,736),(108,737),(108,738),(108,739),(108,740),(108,741),(108,742),(108,743),(108,744),(108,745),(108,746),(108,747),(108,748),(108,749),(108,750),(108,751),(108,752),(108,753),(108,754),(108,755),(108,756),(108,757),(108,758),(108,759),(108,760),(108,761),(108,762),(108,763),(108,764),(108,765),(108,766),(108,767),(108,768),(108,769),(108,770),(108,771),(108,772),(108,773),(108,983),(108,984),(108,988),(109,386),(109,387),(109,390),(109,394),(109,398),(109,399),(109,400),(109,402),(109,403),(109,404),(109,405),(109,406),(109,408),(109,409),(109,410),(109,411),(109,412),(109,413),(109,416),(109,418),(109,419),(109,420),(109,421),(109,422),(109,493),(109,495),(109,496),(109,497),(109,498),(109,499),(109,500),(109,501),(109,502),(109,503),(109,504),(109,505),(109,509),(109,510),(109,514),(109,515),(109,516),(109,517),(109,518),(109,519),(109,520),(109,521),(109,525),(109,526),(109,527),(109,528),(109,529),(109,530),(109,531),(109,532),(109,533),(109,534),(109,542),(109,543),(109,544),(109,788),(109,794),(109,795),(109,798),(109,799),(109,800),(109,804),(109,805),(109,808),(109,809),(109,810),(109,814),(109,815),(109,816),(109,817),(109,818),(109,819),(109,820),(109,821),(109,822),(109,835),(109,838),(109,841),(109,847),(109,848),(109,849),(109,850),(109,851),(109,852),(109,853),(109,854),(109,986),(109,990),(110,277),(110,283),(110,284),(110,285),(110,286),(110,287),(110,288),(110,354),(110,602),(110,603),(110,604),(110,613),(110,614),(110,615),(110,616),(110,617),(110,618),(110,627),(110,628),(110,637),(110,638),(110,647),(110,648),(110,657),(110,658),(110,667),(110,668),(110,669),(110,670),(110,671),(110,672),(110,673),(110,674),(110,675),(110,676),(110,677),(110,678),(110,679),(110,680),(110,681),(110,682),(110,683),(110,684),(110,685),(110,686),(110,993),(110,994),(110,995),(110,996),(110,997),(110,998),(110,999),(111,386),(111,387),(111,390),(111,394),(111,398),(111,399),(111,400),(111,402),(111,403),(111,404),(111,405),(111,406),(111,408),(111,409),(111,410),(111,411),(111,412),(111,413),(111,416),(111,418),(111,419),(111,420),(111,421),(111,422),(111,462),(111,463),(111,467),(111,475),(111,476),(111,477),(111,493),(111,495),(111,496),(111,497),(111,498),(111,499),(111,500),(111,501),(111,502),(111,503),(111,504),(111,505),(111,509),(111,510),(111,514),(111,515),(111,516),(111,517),(111,518),(111,519),(111,520),(111,521),(111,525),(111,526),(111,527),(111,528),(111,529),(111,530),(111,531),(111,532),(111,533),(111,534),(111,539),(111,542),(111,543),(111,544),(111,545),(111,550),(111,551),(111,552),(111,553),(111,576),(111,583),(111,584),(111,585),(111,587),(111,588),(111,788),(111,794),(111,795),(111,796),(111,797),(111,798),(111,799),(111,800),(111,801),(111,802),(111,803),(111,804),(111,805),(111,807),(111,808),(111,809),(111,810),(111,812),(111,813),(111,814),(111,815),(111,816),(111,817),(111,818),(111,819),(111,820),(111,821),(111,822),(111,824),(111,826),(111,827),(111,831),(111,833),(111,834),(111,835),(111,836),(111,837),(111,838),(111,840),(111,841),(111,842),(111,843),(111,844),(111,845),(111,846),(111,847),(111,848),(111,849),(111,850),(111,851),(111,852),(111,853),(111,854),(111,982),(111,986),(111,990),(112,356),(112,736),(112,737),(112,738),(112,739),(112,740),(112,741),(112,742),(112,743),(112,744),(112,745),(112,746),(112,747),(112,748),(112,749),(112,750),(112,751),(112,752),(112,753),(112,771),(112,984),(112,986);
/*!40000 ALTER TABLE `j4_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_newsfeeds`
--

DROP TABLE IF EXISTS `j4_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_newsfeeds`
--

LOCK TABLES `j4_newsfeeds` WRITE;
/*!40000 ALTER TABLE `j4_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_overrider`
--

DROP TABLE IF EXISTS `j4_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_overrider`
--

LOCK TABLES `j4_overrider` WRITE;
/*!40000 ALTER TABLE `j4_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_postinstall_messages`
--

DROP TABLE IF EXISTS `j4_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_postinstall_messages`
--

LOCK TABLES `j4_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `j4_postinstall_messages` DISABLE KEYS */;
INSERT INTO `j4_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),(3,700,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),(4,700,'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION','plg_system_updatenotification',1,'action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_condition','3.6.3',1),(5,700,'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE','COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/joomla40checks.php','admin_postinstall_joomla40checks_condition','3.7.0',1),(6,700,'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE','TPL_HATHOR_MESSAGE_POSTINSTALL_BODY','TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION','tpl_hathor',1,'action','admin://templates/hathor/postinstall/hathormessage.php','hathormessage_postinstall_action','admin://templates/hathor/postinstall/hathormessage.php','hathormessage_postinstall_condition','3.7.0',1);
/*!40000 ALTER TABLE `j4_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_productos`
--

DROP TABLE IF EXISTS `j4_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_productos` (
  `codigo` varchar(20) NOT NULL DEFAULT '',
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `image` varchar(400) DEFAULT NULL,
  `modelo` varchar(15) DEFAULT NULL,
  `dominio` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_productos`
--

LOCK TABLES `j4_productos` WRITE;
/*!40000 ALTER TABLE `j4_productos` DISABLE KEYS */;
INSERT INTO `j4_productos` VALUES ('ag_prec_500','agua_precipitable','Agua precipitable en el espesor Sup_500hPa',1,'pwat_11_sfc_500hPa_','wrf',''),('ag_prec_700','agua_precipitable','Agua precipitable en el espesor Sup_700hPa',1,'pwat_11_sfc_700hPa_','wrf',''),('ag_prec_850','agua_precipitable','Agua precipitable en el espesor Sup_850hPa',1,'pwat_11_sfc_850hPa_','wrf',''),('ag_prec_col','agua_precipitable','Agua precipitable en toda la columna (mm)',1,'pwat_s_11_','wrf',''),('AOD','AOD','Espesor &oacute;ptico de aerosol',1,'AOD_','fall3d',''),('ciza_1','d01_cizalladura','Cizallamiento',1,'cizalladura_11_','wrf',''),('CLAT','C_lat','Corte transversal',1,'C_lat_','fall3d',''),('CLON','C_lon','Corte longitudinal',1,'C_lon_','fall3d',''),('div_conv_p_1','d01_div_conv_p','Viento en altura y divergencia',1,'div_conv_p_11_','wrf',''),('div_conv_s_1','d01_div_conv_s','Viento en superficie y divergencia',1,'div_conv_s_11_','wrf',''),('dn','densidad','',1,NULL,'hycom',''),('dn15c','densidad_1500m','',1,NULL,'hycom',''),('dn1c','densidad_100m','',1,NULL,'hycom',''),('dn1d','densidad_10m','',1,NULL,'hycom',''),('dn1k','densidad_1000m','',1,NULL,'hycom',''),('dn25c','densidad_2500m','',1,NULL,'hycom',''),('dn2c','densidad_200m','',1,NULL,'hycom',''),('dn2k','densidad_2000m','',1,NULL,'hycom',''),('dn35c','densidad_3500m','',1,NULL,'hycom',''),('dn3c','densidad_300m','',1,NULL,'hycom',''),('dn3k','densidad_3000m','',1,NULL,'hycom',''),('dn4c','densidad_400m','',1,NULL,'hycom',''),('dn5d','densidad_50m','',1,NULL,'hycom',''),('dn7c','densidad_700m','',1,NULL,'hycom',''),('FL100','C_FL100','Concentraci&oacute;n al nivel de vuelo FL100',1,'C_FL100_','fall3d',''),('FL150','C_FL150','Concentraci&oacute;n al nivel de vuelo FL150',1,'C_FL150_','fall3d',''),('FL200','C_FL200','Concentraci&oacute;n al nivel de vuelo FL200',1,'C_FL200_','fall3d',''),('FL250','C_FL250','Concentraci&oacute;n al nivel de vuelo FL250',1,'C_FL250_','fall3d',''),('FL300','C_FL300','Concentraci&oacute;n al nivel de vuelo FL300',1,'C_FL300_','fall3d',''),('FL350','C_FL350','Concentraci&oacute;n al nivel de vuelo FL350',1,'C_FL350_','fall3d',''),('FL400','C_FL400','Concentraci&oacute;n al nivel de vuelo FL350',1,'C_FL400_','fall3d',''),('GRND','C_GRND','Concentraci&oacute;n de part&iacute;culas en la superficie',1,'C_GRND_','fall3d',''),('indices_p_1','d01_indices_p','Índices de inestabilidad',1,'indices_p_11_','wrf',''),('LOAD','LOAD','Dep&oacute;sito de part&iacute;culas en superficie',1,'LOAD_','fall3d',''),('MASS','COL_MASS','Masa total de part&iacute;culas en la columna vertical',1,'COL_MASS_','fall3d',''),('niv','nivel','',1,'nivel_','hycom',''),('nub_1','d01_nubes','Nubosidad',1,'nubes_11_','wrf',''),('nvrm','nivel_roms','',1,'nivel_','hycom',''),('omg_1','d01_omega_s','Velocidad vertical (omega) en superficie',1,'omega_s_11_','wrf',''),('omg_2','d02_omega_s','Velocidad vertical (omega) en superficie',1,'omega_s_12_','wrf',''),('omg_p_1','d01_omega_p','Velocidad vertical (Omega) en altura',1,'omega_p_11_','wrf',''),('pcpcn_acum_1','d01_pcpcn_acum','Precipitaci&oacute;n acumulada',1,'pcpcn_acum_11_','wrf',''),('pcpcn_acum_2','d02_pcpcn_acum','Precipitaci&oacute;n acumulada',1,'pcpcn_acum_12_','wrf',''),('pcpcn_acum_3','precipitacion_acumulada','Precipitaci&oacute;n acumulada',0,'pcpcn_acum_13_1_','wrf',''),('pcpcn_st_1','d01_pcpcn_streamlines_s','Precipitaci&oacute;n acumulada total',1,'pcpcn_streamlines_s_11_','wrf',''),('pcpcn_st_2','d02_pcpcn_streamlines_s','Precipitaci&oacute;n acumulada total',1,'pcpcn_streamlines_s_12_','wrf',''),('pcpcn_st_p_1','d01_pcpcn_streamlines_p','Lineas de corriente en altura y precipitación acumulada',1,'pcpcn_streamlines_p_11_','wrf',''),('PM10','C_PM10_GRND','Concentraci&oacute;n de part&iacute;culas PM10 en superficie',1,'C_PM10_GRND_','fall3d',''),('PNL','Panel','Panel',1,'Panel_','fall3d',''),('pwat_p_1','d01_pwat_p','Agua precipitable en espesores',1,'pwat_p_11_','wrf',''),('rpd','rapidez','',1,'rapidez_','hycom',''),('rpd15c','rapidez_1500m','',1,'rapidez_','hycom',''),('rpd1c','rapidez_100m','',1,'rapidez_','hycom',''),('rpd1d','rapidez_10m','',1,'rapidez_','hycom',''),('rpd1k','rapidez_1000m','',1,'rapidez_','hycom',''),('rpd25c','rapidez_2500m','',1,'rapidez_','hycom',''),('rpd2c','rapidez_200m','',1,'rapidez_','hycom',''),('rpd2k','rapidez_2000m','',1,'rapidez_','hycom',''),('rpd35c','rapidez_3500m','',1,'rapidez_','hycom',''),('rpd3c','rapidez_300m','',1,'rapidez_','hycom',''),('rpd3k','rapidez_3000m','',1,'rapidez_','hycom',''),('rpd4c','rapidez_400m','',1,'rapidez_','hycom',''),('rpd5c','rapidez_500m','',1,'rapidez_','hycom',''),('rpd5d','rapidez_50m','',1,'rapidez_','hycom',''),('rpd7c','rapidez_700m','',1,'rapidez_','hycom',''),('sal','salinidad','',1,'salinidad_','hycom',''),('sal15c','salinidad_1500m','',1,'salinidad_','hycom',''),('sal1c','salinidad_100m','',1,'salinidad_','hycom',''),('sal1d','salinidad_10m','',1,'salinidad_','hycom',''),('sal1k','salinidad_1000m','',1,'salinidad_','hycom',''),('sal25c','salinidad_2500m','',1,'salinidad_','hycom',''),('sal2c','salinidad_200m','',1,'salinidad_','hycom',''),('sal2k','salinidad_2000m','',1,'salinidad_','hycom',''),('sal35c','salinidad_3500m','',1,'salinidad_','hycom',''),('sal3c','salinidad_300m','',1,'salinidad_','hycom',''),('sal3k','salinidad_3000m','',1,'salinidad_','hycom',''),('sal4c','salinidad_400m','',1,'salinidad_','hycom',''),('sal5c','salinidad_500m','',1,'salinidad_','hycom',''),('sal5d','salinidad_50m','',1,'salinidad_','hycom',''),('salrm','salinidad_roms','',1,'salinidad_','hycom',''),('temp_prnm_1','d01_temp_prnm','Temperatura en superficie',1,'temp_prnm_11_','wrf',''),('temp_prnm_2','d02_temp_prnm','Temperatura en superficie',1,'temp_prnm_12_','wrf',''),('temp_prnm_3','temperatura_prnm','Temperatura en superficie',1,'temp_prnm_13_','wrf',''),('theta_1','d01_temp_pot_eq_s','Temperatura potencial equivalente en superficie',1,'temp_pot_eq_s_11_','wrf',''),('theta_2','d02_temp_pot_eq_s','Temperatura potencial equivalente en superficie',1,'temp_pot_eq_s_12_','wrf',''),('theta_p_1','d01_temp_pot_eq_p','Temperatura potencial equivalente en altura',1,'temp_pot_eq_p_11_','wrf',''),('THIC','THICKNESS','Espesor del dep&oacute;sito en superficie',1,'THICKNESS_','fall3d',''),('tmp','temperatura','',1,'temperatura_','hycom',''),('tmp15c','temperatura_1500m','',1,'temperatura_','hycom',''),('tmp1c','temperatura_100m','',1,'temperatura_','hycom',''),('tmp1d','temperatura_10m','',1,'temperatura_','hycom',''),('tmp1k','temperatura_1000m','',1,'temperatura_','hycom',''),('tmp25c','temperatura_2500m','',1,'temperatura_','hycom',''),('tmp2c','temperatura_200m','',1,'temperatura_','hycom',''),('tmp2k','temperatura_2000m','',1,'temperatura_','hycom',''),('tmp35c','temperatura_3500m','',1,'temperatura_','hycom',''),('tmp3c','temperatura_300m','',1,'temperatura_','hycom',''),('tmp3k','temperatura_3000m','',1,'temperatura_','hycom',''),('tmp4c','temperatura_400m','',1,'temperatura_','hycom',''),('tmp5c','temperatura_500m','',1,'temperatura_','hycom',''),('tmp5d','temperatura_50m','',1,'temperatura_','hycom',''),('tmp7c','temperatura_700m','',1,'temperatura_','hycom',''),('tmprm','temperatura_roms','',1,'temperatura_','hycom',''),('vien_10m_1','d01_viento_10m','Viento en superficie y PRNM',1,'viento_10m_11_','wrf',''),('vien_10m_2','d02_viento_10m','Viento en superficie y PRNM',1,'viento_10m_12_','wrf',''),('vien_geo_1','d01_viento_geo_p','Viento en altura y algura geopotencial',1,'viento_geo_p_11_','wrf',''),('vien_hr_1','d01_viento_hr_s','Humedad relativa y viento en superficie',1,'viento_hr_s_11_','wrf',''),('vien_hr_2','d02_viento_hr_s','Humedad relativa y viento en superficie',1,'viento_hr_s_12_','wrf',''),('vien_hr_p_1','d01_viento_hr_p','Viento en altura y humedad relativa',1,'viento_hr_p_11_','wrf',''),('vie_sup_1','d01_viento_10m','Viento en superficie',1,'viento_10m_11_','wrf',''),('vie_sup_2','d02_viento_10m','Viento en superficie',1,'viento_10m_12_','wrf',''),('vor_vie_pn_1','vorticidad_relativa_y_viento','Viento y Vorticidad relativa ',1,'viento_relvor_p_11_','wrf',''),('vor_vie_pn_2','vorticidad_relativa_y_viento','Viento y Vorticidad relativa ',1,'viento_relvor_p_12_','wrf',''),('vor_vie_sup_1','d01_viento_relvor_s','Vorticidad relativa y viento en superficie ',1,'viento_relvor_s_11_','wrf',''),('vor_vie_sup_2','d02_viento_relvor_s','Vorticidad relativa y viento en superficie ',1,'viento_relvor_s_12_','wrf','');
/*!40000 ALTER TABLE `j4_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_redirect_links`
--

DROP TABLE IF EXISTS `j4_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_link_modifed` (`modified_date`),
  KEY `idx_old_url` (`old_url`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_redirect_links`
--

LOCK TABLES `j4_redirect_links` WRITE;
/*!40000 ALTER TABLE `j4_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_schemas`
--

DROP TABLE IF EXISTS `j4_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_schemas`
--

LOCK TABLES `j4_schemas` WRITE;
/*!40000 ALTER TABLE `j4_schemas` DISABLE KEYS */;
INSERT INTO `j4_schemas` VALUES (700,'3.7.4-2017-07-05');
/*!40000 ALTER TABLE `j4_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_session`
--

DROP TABLE IF EXISTS `j4_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_session`
--

LOCK TABLES `j4_session` WRITE;
/*!40000 ALTER TABLE `j4_session` DISABLE KEYS */;
INSERT INTO `j4_session` VALUES ('4ebiej1nvmjpv327jqhbu0s5q3',1,0,'1504133880','joomla|s:844:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo0O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUwNDEzMzg2MjtzOjQ6Imxhc3QiO2k6MTUwNDEzMzg3NjtzOjM6Im5vdyI7aToxNTA0MTMzODc3O31zOjU6InRva2VuIjtzOjMyOiJQUjNIYmlqdVRFZndSSXJ5QnluRFN2b3NHOWtPTDRhRSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtzOjM6IjI5NCI7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',294,'Cuauhtemoc'),('h04on15u478k18o5q4j4726ug2',0,1,'1504133856','joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUwNDEzMzg1NTtzOjQ6Imxhc3QiO2k6MTUwNDEzMzg1NTtzOjM6Im5vdyI7aToxNTA0MTMzODU1O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',0,'');
/*!40000 ALTER TABLE `j4_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_station_products`
--

DROP TABLE IF EXISTS `j4_station_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_station_products` (
  `id_station` varchar(5) NOT NULL DEFAULT '',
  `type` set('meteo','sondeo') NOT NULL DEFAULT '',
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `image` varchar(400) DEFAULT NULL,
  `modelo` varchar(15) DEFAULT NULL,
  `dominio` varchar(30) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_station`,`type`),
  CONSTRAINT `j4_station_products_ibfk_1` FOREIGN KEY (`id_station`) REFERENCES `j4_stations` (`id_station`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_station_products`
--

LOCK TABLES `j4_station_products` WRITE;
/*!40000 ALTER TABLE `j4_station_products` DISABLE KEYS */;
INSERT INTO `j4_station_products` VALUES ('AGU','meteo','d01_meteo',NULL,'met_aguascalientes.png','wrf',NULL,1),('AGU','sondeo','d01_termo',NULL,'sv_aguascalientes_','wrf','aguascalientes',1),('BCN','meteo','d01_meteo',NULL,'met_bcn.png','wrf',NULL,1),('BCN','sondeo','d01_termo',NULL,'sv_bcn_','wrf','bcn',1),('BCS','meteo','d01_meteo',NULL,'met_bcs.png','wrf',NULL,1),('BCS','sondeo','d01_termo',NULL,'sv_bcs_','wrf','bcs',1),('CAM','meteo','d01_meteo',NULL,'met_campeche.png','wrf',NULL,1),('CAM','sondeo','d01_termo',NULL,'sv_campeche_','wrf','campeche',1),('CDMX','meteo','d01_meteo',NULL,'met_cdmx.png','wrf',NULL,1),('CDMX','sondeo','d01_termo',NULL,'sv_cdmx_','wrf','cdmx',1),('CHH','meteo','d01_meteo',NULL,'met_chihuahua.png','wrf',NULL,1),('CHH','sondeo','d01_termo',NULL,'sv_chihuahua_','wrf','chihuahua',1),('CHP','meteo','d01_meteo',NULL,'met_chiapas.png','wrf',NULL,1),('CHP','sondeo','d01_termo',NULL,'sv_chiapas_','wrf','chiapas',1),('COA','meteo','d01_meteo',NULL,'met_coahuila.png','wrf',NULL,1),('COA','sondeo','d01_termo',NULL,'sv_coahuila_','wrf','coahuila',1),('COL','meteo','d01_meteo',NULL,'met_colima.png','wrf',NULL,1),('COL','sondeo','d01_termo',NULL,'sv_colima_','wrf','colima',1),('DUR','meteo','d01_meteo',NULL,'met_durango.png','wrf',NULL,1),('DUR','sondeo','d01_termo',NULL,'sv_durango_','wrf','durango',1),('GRO','meteo','d01_meteo',NULL,'met_guerrero.png','wrf',NULL,1),('GRO','sondeo','d01_termo',NULL,'sv_guerrero_','wrf','guerrero',1),('GUA','meteo','d01_meteo',NULL,'met_guanajuato.png','wrf',NULL,1),('GUA','sondeo','d01_termo',NULL,'sv_guanajuato_','wrf','guanajuato',1),('HID','meteo','d01_meteo',NULL,'met_hidalgo.png','wrf','hidalgo',1),('HID','sondeo','d01_termo',NULL,'sv_hidalgo_','wrf','hidalgo',1),('JAL','meteo','d01_meteo',NULL,'met_jalisco.png','wrf',NULL,1),('JAL','sondeo','d01_termo',NULL,'sv_jalisco_','wrf','jalisco',1),('MEX','meteo','d01_meteo',NULL,'met_edomex.png','wrf',NULL,1),('MEX','sondeo','d01_termo',NULL,'sv_edomex_','wrf','edomex',1),('MIC','meteo','d01_meteo',NULL,'met_michoacan.png','wrf',NULL,1),('MIC','sondeo','d01_termo',NULL,'sv_michoacan_','wrf','michoacan',1),('MOR','meteo','d01_meteo',NULL,'met_morelos.png','wrf',NULL,1),('MOR','sondeo','d01_termo',NULL,'sv_morelos_','wrf','morelos',1),('NAY','meteo','d01_meteo',NULL,'met_nayarit.png','wrf',NULL,1),('NAY','sondeo','d01_termo',NULL,'sv_nayarit_','wrf','nayarit',1),('NLE','meteo','d01_meteo',NULL,'met_nuevo_leon.png','wrf',NULL,1),('NLE','sondeo','d01_termo',NULL,'sv_nuevo_leon_','wrf','nuevo_leon',1),('OAX','meteo','d01_meteo',NULL,'met_oaxaca.png','wrf',NULL,1),('OAX','sondeo','d01_termo',NULL,'sv_oaxaca_','wrf','oaxaca',1),('PUE','meteo','d01_meteo',NULL,'met_Puebla.png','wrf',NULL,1),('PUE','sondeo','d01_termo',NULL,'sv_Puebla_','wrf','Puebla',1),('QUE','meteo','d01_meteo',NULL,'met_queretaro.png','wrf',NULL,1),('QUE','sondeo','d01_termo',NULL,'sv_queretaro_','wrf','queretaro',1),('ROO','meteo','d01_meteo',NULL,'met_quintana_roo.png','wrf',NULL,1),('ROO','sondeo','d01_termo',NULL,'sv_quintana_roo_','wrf','quintana_roo',1),('SIN','meteo','d01_meteo',NULL,'met_sinaloa.png','wrf',NULL,1),('SIN','sondeo','d01_termo',NULL,'sv_sinaloa_','wrf','sinaloa',1),('SLP','meteo','d01_meteo',NULL,'met_slp.png','wrf',NULL,1),('SLP','sondeo','d01_termo',NULL,'sv_slp_','wrf','slp',1),('SON','meteo','d01_meteo',NULL,'met_sonora.png','wrf',NULL,1),('SON','sondeo','d01_termo',NULL,'sv_sonora_','wrf','sonora',1),('TAB','meteo','d01_meteo',NULL,'met_tabasco.png','wrf',NULL,1),('TAB','sondeo','d01_termo',NULL,'sv_tabasco_','wrf','tabasco',1),('TAM','meteo','d01_meteo',NULL,'met_tamaulipas.png','wrf',NULL,1),('TAM','sondeo','d01_termo',NULL,'sv_tamaulipas_','wrf','tamaulipas',1),('TLA','meteo','d01_meteo',NULL,'met_tlaxcala.png','wrf',NULL,1),('TLA','sondeo','d01_termo',NULL,'sv_tlaxcala_','wrf','tlaxcala',1),('VER','meteo','d01_meteo',NULL,'met_veracruz.png','wrf',NULL,1),('YUC','meteo','d01_meteo',NULL,'met_yucatan.png','wrf',NULL,1),('ZAC','meteo','d01_meteo',NULL,'met_zacatecas.png','wrf',NULL,1);
/*!40000 ALTER TABLE `j4_station_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_stations`
--

DROP TABLE IF EXISTS `j4_stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_stations` (
  `id_station` varchar(5) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lat` decimal(16,12) DEFAULT NULL,
  `lon` decimal(16,12) DEFAULT NULL,
  `meteo` tinyint(1) DEFAULT NULL,
  `sondeo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_station`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_stations`
--

LOCK TABLES `j4_stations` WRITE;
/*!40000 ALTER TABLE `j4_stations` DISABLE KEYS */;
INSERT INTO `j4_stations` VALUES ('AGU','Aguascalientes',22.020000000000,-102.360000000000,1,1),('BCN','Baja California',32.660000000000,-115.460000000000,1,1),('BCS','Baja California Sur',24.140000000000,-110.310000000000,1,1),('CAM','Campeche',19.840000000000,-90.520000000000,1,1),('CDMX','Ciudad de México',19.420000000000,-99.150000000000,1,1),('CHH','Chihuahua',28.640000000000,-106.090000000000,1,1),('CHP','Chiapas',16.410000000000,-92.410000000000,1,1),('COA','Coahuila',27.300000000000,-102.040000000000,1,1),('COL','Colima',19.100000000000,-103.960000000000,1,1),('DUR','Durango',24.930000000000,-104.910000000000,1,1),('GRO','Guerrero',17.610000000000,-99.950000000000,1,1),('GUA','Guanajuato',21.020000000000,-101.260000000000,1,1),('HID','Hidalgo',20.120000000000,-98.730000000000,1,1),('JAL','Jalisco',20.640000000000,-103.390000000000,1,1),('MEX','Estado de México',19.290000000000,-99.650000000000,1,1),('MIC','Michoacán',19.700000000000,-101.270000000000,1,1),('MOR','Morelos',18.920000000000,-99.310000000000,1,1),('NAY','Nayarit',21.500000000000,-104.910000000000,1,1),('NLE','Nuevo León',25.650000000000,-100.440000000000,1,1),('OAX','Oaxaca',17.080000000000,-96.810000000000,1,1),('PUE','Puebla',19.040000000000,-98.260000000000,1,1),('QUE','Querétaro',20.610000000000,-100.480000000000,1,1),('ROO','Quintana Roo',18.520000000000,-100.440000000000,1,1),('SIN','Sinaloa',24.800000000000,-107.490000000000,1,1),('SLP','San Luis Potosí',22.130000000000,-101.020000000000,0,1),('SON','Sonora',29.080000000000,-111.130000000000,1,1),('TAB','Tabasco',17.990000000000,-93.030000000000,1,1),('TAM','Tamaulipas',23.740000000000,-99.180000000000,1,1),('TLA','Tlaxcala',19.310000000000,-98.250000000000,1,1),('VER','Veracruz',19.180000000000,-96.210000000000,0,1),('YUC','Yucatán',20.980000000000,-89.770000000000,0,1),('ZAC','Zacatecas',22.760000000000,-102.620000000000,0,1);
/*!40000 ALTER TABLE `j4_stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_tags`
--

DROP TABLE IF EXISTS `j4_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_alias` (`alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_tags`
--

LOCK TABLES `j4_tags` WRITE;
/*!40000 ALTER TABLE `j4_tags` DISABLE KEYS */;
INSERT INTO `j4_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',42,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `j4_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_template_styles`
--

DROP TABLE IF EXISTS `j4_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_template_styles`
--

LOCK TABLES `j4_template_styles` WRITE;
/*!40000 ALTER TABLE `j4_template_styles` DISABLE KEYS */;
INSERT INTO `j4_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'0','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}'),(9,'jm-0013',0,'1','jm-0013 - Default','{\"fontswitcher\":\"0\",\"fontsize\":\"12\",\"stylearea\":\"0\",\"template_color\":\"1\",\"widtharea\":\"0\",\"page_width\":\"85%\",\"logo\":\"images\\/banners\\/logo.png\",\"sitetitle\":\"\",\"sitedescription\":\"\"}');
/*!40000 ALTER TABLE `j4_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_ucm_base`
--

DROP TABLE IF EXISTS `j4_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_ucm_base`
--

LOCK TABLES `j4_ucm_base` WRITE;
/*!40000 ALTER TABLE `j4_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_ucm_content`
--

DROP TABLE IF EXISTS `j4_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_language` (`core_language`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_content_type` (`core_type_alias`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_ucm_content`
--

LOCK TABLES `j4_ucm_content` WRITE;
/*!40000 ALTER TABLE `j4_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_ucm_history`
--

DROP TABLE IF EXISTS `j4_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_ucm_history`
--

LOCK TABLES `j4_ucm_history` WRITE;
/*!40000 ALTER TABLE `j4_ucm_history` DISABLE KEYS */;
INSERT INTO `j4_ucm_history` VALUES (445,58,1,'','2017-03-15 23:45:26',293,3135,'5f7d4302a2b2d572e90b4bd2ae82908be01ffb8e','{\"id\":58,\"asset_id\":\"136\",\"title\":\"Participantes WWII\",\"alias\":\"partic-wwii\",\"introtext\":\"<p style=\\\"text-align: center;\\\"><strong>Desarrollado por:<\\/strong><\\/p>\\r\\n<p style=\\\"text-align: center;\\\">Universidad Nacional Aut\\u00f3noma de M\\u00e9xico<\\/p>\\r\\n<p style=\\\"text-align: center;\\\">Centro de Ciencias de la Atm\\u00f3sfera<\\/p>\\r\\n<p style=\\\"text-align: center;\\\">Instituto de Geof\\u00edsica<\\/p>\\r\\n<p style=\\\"text-align: center;\\\">Grupo Interacci\\u00f3n Oc\\u00e9ano-Atm\\u00f3sfera<\\/p>\\r\\n<p style=\\\"text-align: left;\\\">\\u00a0<\\/p>\\r\\n<p><strong><span style=\\\"color: #363636;\\\">Participantes:<\\/span><\\/strong><\\/p>\\r\\n<ul style=\\\"text-align: left;\\\">\\r\\n<li>Jorge Zavala Hidalgo - <a href=\\\"mailto:jzavala@atmosfera.unam.mx\\\">jzavala@atmosfera.unam.mx<\\/a><\\/li>\\r\\n<li>Rosario Romero Centeno - <a href=\\\"mailto:rosario@atmosfera.unam.mx\\\">rosario@atmosfera.unam.mx<\\/a><\\/li>\\r\\n<li>Erika Dana\\u00e9 L\\u00f3pez Espinoza - <a href=\\\"mailto:danae@atmosfera.unam.mx\\\">danae@atmosfera.unam.mx<\\/a><\\/li>\\r\\n<li>Ovel D\\u00edaz Garcia - <a href=\\\"mailto:ovel.diaz@atmosfera.unam.mx\\\">ovel.diaz@atmosfera.unam.mx<\\/a><\\/li>\\r\\n<li>M. en C. Octavio G\\u00f3mez Ramos - <a href=\\\"mailto:octavio@atmosfera.unam.mx\\\">octavio@atmosfera.unam.mx<\\/a><\\/li>\\r\\n<li>Fernando Nicolas Arellano Guerrero - <a href=\\\"mailto:farellanoguerrero@gmail.com\\\">farellanoguerrero@gmail.com<\\/a><\\/li>\\r\\n<li>Mar\\u00eda Elena Osorio Tai - <a href=\\\"mailto:tai@atmosfera.unam.mx\\\">tai@atmosfera.unam.mx<\\/a><\\/li>\\r\\n<\\/ul>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-15 22:22:50\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-03-15 23:45:26\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-15 23:11:32\",\"publish_up\":\"2017-03-15 22:22:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(446,58,1,'','2017-03-15 23:45:42',293,3142,'73354184d44783f1e6ddbd97e66cb57501d16811','{\"id\":58,\"asset_id\":\"136\",\"title\":\"Participantes WWII\",\"alias\":\"participantes-wwii\",\"introtext\":\"<p style=\\\"text-align: center;\\\"><strong>Desarrollado por:<\\/strong><\\/p>\\r\\n<p style=\\\"text-align: center;\\\">Universidad Nacional Aut\\u00f3noma de M\\u00e9xico<\\/p>\\r\\n<p style=\\\"text-align: center;\\\">Centro de Ciencias de la Atm\\u00f3sfera<\\/p>\\r\\n<p style=\\\"text-align: center;\\\">Instituto de Geof\\u00edsica<\\/p>\\r\\n<p style=\\\"text-align: center;\\\">Grupo Interacci\\u00f3n Oc\\u00e9ano-Atm\\u00f3sfera<\\/p>\\r\\n<p style=\\\"text-align: left;\\\">\\u00a0<\\/p>\\r\\n<p><strong><span style=\\\"color: #363636;\\\">Participantes:<\\/span><\\/strong><\\/p>\\r\\n<ul style=\\\"text-align: left;\\\">\\r\\n<li>Jorge Zavala Hidalgo - <a href=\\\"mailto:jzavala@atmosfera.unam.mx\\\">jzavala@atmosfera.unam.mx<\\/a><\\/li>\\r\\n<li>Rosario Romero Centeno - <a href=\\\"mailto:rosario@atmosfera.unam.mx\\\">rosario@atmosfera.unam.mx<\\/a><\\/li>\\r\\n<li>Erika Dana\\u00e9 L\\u00f3pez Espinoza - <a href=\\\"mailto:danae@atmosfera.unam.mx\\\">danae@atmosfera.unam.mx<\\/a><\\/li>\\r\\n<li>Ovel D\\u00edaz Garcia - <a href=\\\"mailto:ovel.diaz@atmosfera.unam.mx\\\">ovel.diaz@atmosfera.unam.mx<\\/a><\\/li>\\r\\n<li>M. en C. Octavio G\\u00f3mez Ramos - <a href=\\\"mailto:octavio@atmosfera.unam.mx\\\">octavio@atmosfera.unam.mx<\\/a><\\/li>\\r\\n<li>Fernando Nicolas Arellano Guerrero - <a href=\\\"mailto:farellanoguerrero@gmail.com\\\">farellanoguerrero@gmail.com<\\/a><\\/li>\\r\\n<li>Mar\\u00eda Elena Osorio Tai - <a href=\\\"mailto:tai@atmosfera.unam.mx\\\">tai@atmosfera.unam.mx<\\/a><\\/li>\\r\\n<\\/ul>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-15 22:22:50\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-03-15 23:45:42\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-15 23:45:26\",\"publish_up\":\"2017-03-15 22:22:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(447,60,1,'','2017-03-24 23:56:37',293,1887,'cdadb0a516401ab522b27e6363ca525565903905','{\"id\":60,\"asset_id\":140,\"title\":\"Construcci\\u00f3n\",\"alias\":\"construccion\",\"introtext\":\"<table>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<img src=\\\"images\\/construccion.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<td>P\\u00e1gina en Construcci\\u00f3n \\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-24 23:56:37\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-03-24 23:56:37\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-03-24 23:56:37\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(448,60,1,'','2017-03-24 23:58:33',293,1960,'1dfb4db89e5f3ccdd0717908d35f900759d1c5ef','{\"id\":60,\"asset_id\":\"140\",\"title\":\"Construcci\\u00f3n\",\"alias\":\"construccion\",\"introtext\":\"<table>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<img src=\\\"images\\/construccion.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<td>\\r\\n<h1><strong>P\\u00e1gina en Construcci\\u00f3n \\u00a0<\\/strong><\\/h1>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-24 23:56:37\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-03-24 23:58:33\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-24 23:56:37\",\"publish_up\":\"2017-03-24 23:56:37\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(449,60,1,'','2017-03-25 00:02:05',293,1979,'ee04ea45067668f1743bc69da3c221500a5edf3e','{\"id\":60,\"asset_id\":\"140\",\"title\":\"Construcci\\u00f3n\",\"alias\":\"construccion\",\"introtext\":\"<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<img src=\\\"images\\/construccion.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<td>\\r\\n<h1><strong>P\\u00e1gina en Construcci\\u00f3n \\u00a0<\\/strong><\\/h1>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-24 23:56:37\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-03-25 00:02:05\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-25 00:01:40\",\"publish_up\":\"2017-03-24 23:56:37\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(450,19,1,'','2017-03-25 00:43:05',293,2928,'e582f15f21a7da147b9642b99d6d52a91ae2a589','{\"id\":19,\"asset_id\":\"77\",\"title\":\"Periodo de altura significante y direcci\\u00f3n\",\"alias\":\"periodo-de-altura-significante-y-direccion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Periodo y direcci\\u00f3n<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Pac\\u00edfico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Golfo de M\\u00e9xico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Atl\\u00e1ntico<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/pacifico\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/gom\\\"> <img class=\\\"d2\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d2.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/atlantico\\\"> <img class=\\\"d2\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d2.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-06 17:04:51\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-03-25 00:43:05\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-25 00:41:19\",\"publish_up\":\"2015-11-06 17:04:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"28\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"28\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(451,19,1,'','2017-03-25 00:43:18',293,2929,'972d180d76e24937940091ce3c99675c39dfe791','{\"id\":19,\"asset_id\":\"77\",\"title\":\"Periodo de altura significante y direcci\\u00f3n\",\"alias\":\"periodo-de-altura-significante-y-direccion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Periodo<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Pac\\u00edfico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Golfo de M\\u00e9xico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Atl\\u00e1ntico<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/pacifico\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/gom\\\"> <img class=\\\"d2\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d2.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/atlantico\\\"> <img class=\\\"d2\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d2.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-06 17:04:51\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-03-25 00:43:18\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-25 00:43:05\",\"publish_up\":\"2015-11-06 17:04:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"28\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"28\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(452,18,1,'','2017-03-25 00:44:10',293,2850,'a8baf62dc2273b36b8419bdecf9e92cccecb71d5','{\"id\":18,\"asset_id\":\"76\",\"title\":\"Altura significante y direcci\\u00f3n\",\"alias\":\"altura-significante-y-direccion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Altura<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Pac\\u00edfico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Golfo de M\\u00e9xico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Atl\\u00e1ntico<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/altura-significante-y-direccion\\/pacifico\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_altura_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/altura-significante-y-direccion\\/gom\\\"><img class=\\\"d2\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_altura_d2.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/altura-significante-y-direccion\\/atlantico\\\"><img class=\\\"d2\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_altura_d2.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-05 21:36:20\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-03-25 00:44:10\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-25 00:43:26\",\"publish_up\":\"2015-11-05 21:36:20\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"29\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"99\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(453,17,1,'','2017-03-25 00:46:20',293,2601,'5a10ff89d9201a789abf1853b01ba6426e533afa','{\"id\":17,\"asset_id\":\"75\",\"title\":\"Oleaje\",\"alias\":\"oleaje\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Oleaje<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Altura<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Periodo<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/altura-significante-y-direccion\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_altura_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-05 05:35:05\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-03-25 00:46:20\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-25 00:45:54\",\"publish_up\":\"2015-11-05 05:35:05\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":15,\"ordering\":\"30\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"323\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(454,18,1,'','2017-03-27 19:58:13',293,2851,'5859360f56319f8adcdd6bf052d7387ad7231086','{\"id\":18,\"asset_id\":\"76\",\"title\":\"Altura significante y direcci\\u00f3n\",\"alias\":\"altura-significante-y-direccion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Altura<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Pac\\u00edfico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Golfo de M\\u00e9xico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Atl\\u00e1ntico<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/altura-significante-y-direccion\\/pacifico\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_altura_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/altura-significante-y-direccion\\/gom\\\"><img class=\\\"d2\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_altura_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/altura-significante-y-direccion\\/atlantico\\\"><img class=\\\"d2\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_altura_d2.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-05 21:36:20\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-03-27 19:58:13\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-27 19:57:32\",\"publish_up\":\"2015-11-05 21:36:20\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"29\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"116\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(455,18,1,'','2017-03-27 19:59:27',293,2649,'3ab7107543eb4d718ea35d7cbe32cdd64207f16b','{\"id\":18,\"asset_id\":\"76\",\"title\":\"Altura significante y direcci\\u00f3n\",\"alias\":\"altura-significante-y-direccion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Altura<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Pac\\u00edfico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Golfo de M\\u00e9xico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Atl\\u00e1ntico<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/altura-significante-y-direccion\\/gom\\\"><img class=\\\"d2\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_altura_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-05 21:36:20\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-03-27 19:59:27\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-27 19:58:13\",\"publish_up\":\"2015-11-05 21:36:20\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"29\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"116\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(456,18,1,'','2017-03-27 20:00:54',293,2631,'0b31731a02dc22a963b3530fd5d383694e18c4d5','{\"id\":18,\"asset_id\":\"76\",\"title\":\"Altura significante y direcci\\u00f3n\",\"alias\":\"altura-significante-y-direccion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Altura<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Pac\\u00edfico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Golfo de M\\u00e9xico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Atl\\u00e1ntico<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/altura-significante-y-direccion\\/gom\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_altura_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-05 21:36:20\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-03-27 20:00:54\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-27 19:59:27\",\"publish_up\":\"2015-11-05 21:36:20\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"29\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"118\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(457,19,1,'','2017-03-27 20:02:14',293,2911,'1b1c83238635641f3a6e751071ba3b549eaa719b','{\"id\":19,\"asset_id\":\"77\",\"title\":\"Periodo de altura significante y direcci\\u00f3n\",\"alias\":\"periodo-de-altura-significante-y-direccion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Periodo<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Pac\\u00edfico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Golfo de M\\u00e9xico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Atl\\u00e1ntico<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/pacifico\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/gom\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/atlantico\\\"> <img class=\\\"d2\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d2.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-06 17:04:51\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-03-27 20:02:14\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-27 20:01:40\",\"publish_up\":\"2015-11-06 17:04:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"28\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"31\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(458,19,1,'','2017-03-27 20:02:41',293,2865,'d0f5d91de56d24af797d88a4fe2a735d7d38459f','{\"id\":19,\"asset_id\":\"77\",\"title\":\"Periodo de altura significante y direcci\\u00f3n\",\"alias\":\"periodo-de-altura-significante-y-direccion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Periodo<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Pac\\u00edfico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Golfo de M\\u00e9xico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Atl\\u00e1ntico<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/pacifico\\\"> <img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/gom\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/atlantico\\\"> <img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-06 17:04:51\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-03-27 20:02:41\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-27 20:02:14\",\"publish_up\":\"2015-11-06 17:04:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"28\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"31\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(459,19,1,'','2017-03-27 20:03:41',293,2666,'f7c1f96215f3026d8d93efa6a4753ebabdf2662b','{\"id\":19,\"asset_id\":\"77\",\"title\":\"Periodo de altura significante y direcci\\u00f3n\",\"alias\":\"periodo-de-altura-significante-y-direccion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Periodo<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Pac\\u00edfico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Golfo de M\\u00e9xico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Atl\\u00e1ntico<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/gom\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-06 17:04:51\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-03-27 20:03:41\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-27 20:02:41\",\"publish_up\":\"2015-11-06 17:04:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"28\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"34\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(460,1,1,'','2017-03-27 20:06:00',293,4238,'f652a291c3d8ff70ad01e4eef931c6a0395ff0c5','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Inicio\",\"alias\":\"inicio\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Modelos<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Meteorolog\\u00eda<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Oleaje<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Marea de Tormenta<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/pron_met.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/pron_ole.png\\\" alt=\\\"\\\" width=\\\"160\\\" height=\\\"160\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Circulaci\\u00f3n oce\\u00e1nica<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Dispersi\\u00f3n de Cenizas<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Meteogramas<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/hycom.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/mass.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/meteogramas\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/series_tiempo.jpg\\\" alt=\\\"\\\" width=\\\"161\\\" height=\\\"146\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Sondeos<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/sondeos\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/sv_campeche_024.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\">OWGIS<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<p style=\\\"text-align: center;\\\">Pron\\u00f3stico <br \\/> meteorol\\u00f3gico<\\/p>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Pron\\u00f3sticos Globales <br \\/>GFS y HYCOM<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"http:\\/\\/pronostico.meteorologico.unam.mx\\/meteorologico\\/mapviewer\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/owgis_anim.gif\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"http:\\/\\/pronostico.meteorologico.unam.mx:8080\\/global\\/mapviewer\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/gfs_hycom.gif\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-10-30 00:10:14\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-03-27 20:06:00\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-03-27 20:05:40\",\"publish_up\":\"2015-10-30 00:10:14\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":83,\"ordering\":\"45\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1751\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(461,1,1,'','2017-04-03 21:11:30',293,4233,'1e97e3ecd0351960e963ae0fa57c498d04607025','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Inicio\",\"alias\":\"inicio\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Modelos<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Meteorolog\\u00eda<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Oleaje<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Marea de Tormenta<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/pron_met.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/pron_ole.png\\\" alt=\\\"\\\" width=\\\"160\\\" height=\\\"160\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><img class=\\\"d1\\\" src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Circulaci\\u00f3n oce\\u00e1nica<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Dispersi\\u00f3n de Cenizas<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Meteogramas<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/hycom.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/mass.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/meteogramas\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/series_tiempo.jpg\\\" alt=\\\"\\\" width=\\\"161\\\" height=\\\"146\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Sondeos<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/sondeos\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/sv_campeche_024.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\">OWGIS<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<p style=\\\"text-align: center;\\\">Pron\\u00f3stico <br \\/> meteorol\\u00f3gico<\\/p>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Pron\\u00f3sticos Globales <br \\/>GFS y HYCOM<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"http:\\/\\/pronostico.meteorologico.unam.mx\\/meteorologico\\/mapviewer\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/owgis_anim.gif\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"http:\\/\\/pronostico.meteorologico.unam.mx:8080\\/global\\/mapviewer\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/gfs_hycom.gif\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-10-30 00:10:14\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:11:30\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:10:33\",\"publish_up\":\"2015-10-30 00:10:14\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":84,\"ordering\":\"45\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1817\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(462,1,1,'','2017-04-03 21:13:05',293,4233,'88119b8180696068a82aa6f5eec89c055fcbbc81','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Inicio\",\"alias\":\"inicio\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Modelos<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/pron_met.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/pron_ole.png\\\" alt=\\\"\\\" width=\\\"160\\\" height=\\\"160\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><img class=\\\"d1\\\" src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Meteorolog\\u00eda<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Oleaje<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Marea de Tormenta<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/hycom.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/mass.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/meteogramas\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/series_tiempo.jpg\\\" alt=\\\"\\\" width=\\\"161\\\" height=\\\"146\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Circulaci\\u00f3n oce\\u00e1nica<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Dispersi\\u00f3n de Cenizas<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Meteogramas<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/sondeos\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/sv_campeche_024.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Sondeos<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\">OWGIS<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<p style=\\\"text-align: center;\\\">Pron\\u00f3stico <br \\/> meteorol\\u00f3gico<\\/p>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Pron\\u00f3sticos Globales <br \\/>GFS y HYCOM<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"http:\\/\\/pronostico.meteorologico.unam.mx\\/meteorologico\\/mapviewer\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/owgis_anim.gif\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"http:\\/\\/pronostico.meteorologico.unam.mx:8080\\/global\\/mapviewer\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/gfs_hycom.gif\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-10-30 00:10:14\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:13:05\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:11:30\",\"publish_up\":\"2015-10-30 00:10:14\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":85,\"ordering\":\"45\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1818\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(463,1,1,'','2017-04-03 21:13:39',293,4251,'47de5ff2024bbcae1a68cbe07273011ec42209ec','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Inicio\",\"alias\":\"inicio\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Modelos<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/pron_met.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/pron_ole.png\\\" alt=\\\"\\\" width=\\\"160\\\" height=\\\"160\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><img class=\\\"d1\\\" src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Meteorolog\\u00eda<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Oleaje<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Marea de Tormenta<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/hycom.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/mass.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/meteogramas\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/series_tiempo.jpg\\\" alt=\\\"\\\" width=\\\"161\\\" height=\\\"146\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Circulaci\\u00f3n oce\\u00e1nica<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Dispersi\\u00f3n de Cenizas<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Meteogramas<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/sondeos\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/sv_campeche_024.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Sondeos<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\">OWGIS<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<p style=\\\"text-align: center;\\\">Pron\\u00f3stico <br \\/> meteorol\\u00f3gico<\\/p>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Pron\\u00f3sticos Globales <br \\/>GFS y HYCOM<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"http:\\/\\/pronostico.meteorologico.unam.mx\\/meteorologico\\/mapviewer\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/owgis_anim.gif\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"http:\\/\\/pronostico.meteorologico.unam.mx:8080\\/global\\/mapviewer\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/gfs_hycom.gif\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-10-30 00:10:14\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:13:39\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:13:05\",\"publish_up\":\"2015-10-30 00:10:14\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":86,\"ordering\":\"45\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1819\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(464,2,1,'','2017-04-03 21:17:58',293,4613,'e878b9e74cfefb99f74805c73f0f3861e4cb1945','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Meteoro\",\"alias\":\"meteo-art\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Meteorolog\\u00eda<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/precipitacion-acumulada\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/Precipitacion_acumulada\\/precipitacion_d1_6.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/lineas-de-corriente\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/lineas_corriente\\/pcpcn_streamlines_s_11_010.jpg\\\" alt=\\\"\\\" width=\\\"160\\\" height=\\\"94\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/meteorologia\\/temperatura-y-prnm\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/temperatura\\/temp_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Precipitaci\\u00f3n acumulada<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">L\\u00edneas de corriente<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Temperatura y PRNM<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/meteorologia\\/temperatura-potencial-equivalente\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/temperatura\\/temperatura_potencial_d1_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/meteorologia\\/cizallamiento\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/cizallamiento\\/cizalladura_11_073.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"100\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/meteorologia\\/velocidad-vertical\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/omega\\/omega_d1_sup.jpg\\\" alt=\\\"\\\" width=\\\"160\\\" height=\\\"94\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Temperatura potencial equivalente<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Cizallamiento<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Velocidad vertical (Omega)<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/nubosidad\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/nubocidad\\/nubes_11_012.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"95\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_10m_11_005.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"94\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/agua-precipitable\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/agua\\/pwat_p_11_007.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"94\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Nubocidad<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Viento<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Agua precipitable<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/indices-de-inestabilidad\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/nubocidad\\/indices_p_11_002.png\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"95\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\u00cdndices de inestabilidad<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-10-30 23:25:29\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:17:58\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:16:47\",\"publish_up\":\"2015-10-30 23:25:29\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"0\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"0\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":84,\"ordering\":\"44\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1522\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(465,4,1,'','2017-04-03 21:20:10',293,2622,'070cae84ff05a9ecbcd879ac8c8e485d7c230d98','{\"id\":4,\"asset_id\":\"57\",\"title\":\"Precipitaci\\u00f3n acumulada\",\"alias\":\"precipitacion-acumulada\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Precipitaci\\u00f3n acumulada<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/precipitacion-acumulada\\/dominio-1\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/Precipitacion_acumulada\\/precipitacion_d1_6.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/precipitacion-acumulada\\/dominio-2\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/Precipitacion_acumulada\\/precipitacion_d1_12.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 2<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-03 18:41:39\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:20:10\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:19:41\",\"publish_up\":\"2015-11-03 18:41:39\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":20,\"ordering\":\"43\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"504\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(466,5,1,'','2017-04-03 21:21:09',293,3737,'071beea717fe6389481a81b81da739d013f29eec','{\"id\":5,\"asset_id\":\"60\",\"title\":\"L\\u00edneas de corriente y precipitaci\\u00f3n \",\"alias\":\"lineas-de-corriente-y-precipitacion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">L\\u00edneas de corriente y precipitaci\\u00f3n acumulada cada 6 horas<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/lineas-de-corriente-y-precipitacion\\/dominio-1\\/en-superficie\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/lineas_corriente\\/lineas_d1_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/lineas-de-corriente-y-precipitacion\\/dominio-1\\/panel\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/lineas_corriente\\/lineas_d1_mosaico.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Panel<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Superficie<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/lineas-de-corriente-y-precipitacion\\/dominio-2\\\"> <img class=\\\"d2\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/lineas_corriente\\/lineas_d2_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/lineas-de-corriente-y-precipitacion\\/dominio-3\\\"> <img class=\\\"d3\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/lineas_corriente\\/lineas_d2_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Dominio 2<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Dominio 3<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-03 23:10:43\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:21:09\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:20:31\",\"publish_up\":\"2015-11-03 23:10:43\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":20,\"ordering\":\"42\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"98\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(467,5,1,'','2017-04-03 21:21:32',293,3755,'029350203a02c8f98e7858e9fae0c07b6d27d6c3','{\"id\":5,\"asset_id\":\"60\",\"title\":\"L\\u00edneas de corriente y precipitaci\\u00f3n \",\"alias\":\"lineas-de-corriente-y-precipitacion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">L\\u00edneas de corriente y precipitaci\\u00f3n acumulada cada 6 horas<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/lineas-de-corriente-y-precipitacion\\/dominio-1\\/en-superficie\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/lineas_corriente\\/lineas_d1_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/lineas-de-corriente-y-precipitacion\\/dominio-1\\/panel\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/lineas_corriente\\/lineas_d1_mosaico.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Panel<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Superficie<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/lineas-de-corriente-y-precipitacion\\/dominio-2\\\"> <img class=\\\"d2\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/lineas_corriente\\/lineas_d2_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/lineas-de-corriente-y-precipitacion\\/dominio-3\\\"> <img class=\\\"d3\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/lineas_corriente\\/lineas_d2_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Dominio 2<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Dominio 3<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-03 23:10:43\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:21:32\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:21:09\",\"publish_up\":\"2015-11-03 23:10:43\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":21,\"ordering\":\"42\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"98\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(468,6,1,'','2017-04-03 21:22:03',293,2581,'d31c8a93135052e65718e6b9b829e40d0de8c253','{\"id\":6,\"asset_id\":\"61\",\"title\":\"Temperatura y PRNM\",\"alias\":\"temperatura-y-prnm\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Temperatura y Presi\\u00f3n Reducida al Nivel del Mar (PRNM)<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/temperatura-y-prnm\\/dominio-1\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/temperatura\\/temp_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/temperatura-y-prnm\\/dominio-2\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/temperatura\\/temp_d2.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 2<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-04 06:49:53\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:22:03\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:21:39\",\"publish_up\":\"2015-11-04 06:49:53\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"41\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"123\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(469,7,1,'','2017-04-03 21:24:32',293,3527,'2ea8a626d3282c2991aeae7b336b79d808d73f3e','{\"id\":7,\"asset_id\":\"62\",\"title\":\"Viento y altura geopotencial\",\"alias\":\"viento-y-altura-geopotencial\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Viento y altura geopotencial<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/viento-y-altura-geopotencial\\/dominio-1\\/en-superficie\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_d1_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/viento-y-altura-geopotencial\\/dominio-1\\/panel\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_d1_mosaico.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Panel<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Superficie<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/viento-y-altura-geopotencial\\/dominio-2\\/en-superficie\\\"> <img class=\\\"d2\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_d2_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/viento-y-altura-geopotencial\\/dominio-3\\/en-superficie\\\"> <img class=\\\"d3\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/lineas_corriente\\/lineas_d2_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Dominio 2<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Dominio 3<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-04 07:06:34\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:24:32\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:23:32\",\"publish_up\":\"2015-11-04 07:06:34\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":13,\"ordering\":\"40\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"32\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(470,7,1,'','2017-04-03 21:25:06',293,3545,'1bcc282e2f110d31853bc3dd8b0dfd504ea4431d','{\"id\":7,\"asset_id\":\"62\",\"title\":\"Viento y altura geopotencial\",\"alias\":\"viento-y-altura-geopotencial\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Viento y altura geopotencial<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/viento-y-altura-geopotencial\\/dominio-1\\/en-superficie\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_d1_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/viento-y-altura-geopotencial\\/dominio-1\\/panel\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_d1_mosaico.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Panel<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Superficie<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/viento-y-altura-geopotencial\\/dominio-2\\/en-superficie\\\"> <img class=\\\"d2\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_d2_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/viento-y-altura-geopotencial\\/dominio-3\\/en-superficie\\\"> <img class=\\\"d3\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/lineas_corriente\\/lineas_d2_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Dominio 2<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Dominio 3<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-04 07:06:34\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:25:06\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:24:37\",\"publish_up\":\"2015-11-04 07:06:34\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":15,\"ordering\":\"40\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"32\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(471,8,1,'','2017-04-03 21:26:24',293,3482,'f66c0a5b52c2bbee38b63ead243beb26677aca3e','{\"id\":8,\"asset_id\":\"63\",\"title\":\"Agua precipitable\",\"alias\":\"agua-precipitable\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Agua precipitable<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/agua-precipitable\\/dominio-1\\/toda-la-columna\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/agua\\/agua_precipitable_d1_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/agua-precipitable\\/dominio-1\\/espesor-sup-850hpa\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/agua\\/agua_precipitable_d1_850.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Toda la columna<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Espesor Sup - 850hPa<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/meteorologia\\/agua-precipitable\\/dominio-1\\/espesor-sup-700hpa\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/agua\\/agua_precipitable_d1_700.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/meteorologia\\/agua-precipitable\\/dominio-1\\/espesor-sup-500hpa\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/agua\\/agua_precipitable_d1_500.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Espesor Sup - 700hPa<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Espesor Sup - 500hPa<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-04 07:34:34\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:26:24\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:25:40\",\"publish_up\":\"2015-11-04 07:34:34\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"39\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"27\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(472,10,1,'','2017-04-03 21:27:53',293,2629,'388b54e5ea44872c42e98cae5f9d7572dc01c6bb','{\"id\":10,\"asset_id\":\"65\",\"title\":\"Humedad relativa y viento\",\"alias\":\"humedad-relativa-y-viento\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Humedad relativa y viento en superficie<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/humedad-relativa-y-viento\\/dominio-1\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/humedad\\/humedad_d1_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/humedad-relativa-y-viento\\/dominio-2\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/humedad\\/humedad_d2_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Dominio 1<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Dominio 2<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-04 18:10:36\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:27:53\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:27:29\",\"publish_up\":\"2015-11-04 18:10:36\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"37\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"72\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(473,11,1,'','2017-04-03 21:29:07',293,3272,'a5466fd25d3b9bef2474fbc641b95e64808368a1','{\"id\":11,\"asset_id\":\"66\",\"title\":\"Temperatura potencial equivalente\",\"alias\":\"temperatura-potencial-equivalente\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Temperatura potencial equivalente<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/temperatura-potencial-equivalente\\/dominio-1\\/en-superficie\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/temperatura\\/temperatura_potencial_d1_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/temperatura-potencial-equivalente\\/dominio-1\\/en-altura\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/temperatura\\/temp_pot_eq_p_11_050.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">En altura<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 2<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/temperatura-potencial-equivalente\\/dominio-2\\/en-superficie\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/temperatura\\/temperatura_potencial_d2_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Superficie<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-04 18:26:31\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:29:07\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:28:26\",\"publish_up\":\"2015-11-04 18:26:31\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"36\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"89\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(474,12,1,'','2017-04-03 21:29:48',293,2318,'67da4fa5b10644520a9c4189ec2c0443b3178246','{\"id\":12,\"asset_id\":\"67\",\"title\":\"\\u00cdndices de inestabilidad\",\"alias\":\"indices-de-inestabilidad\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">\\u00cdndices de inestabilidad<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: medium hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/indices-de-inestabilidad\\/dominio-1\\/panel\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/indices\\/indice_mosaico_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Panel<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-04 18:38:04\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:29:48\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:29:25\",\"publish_up\":\"2015-11-04 18:38:04\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"35\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"23\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(475,14,1,'','2017-04-03 21:31:44',293,3611,'6c1887fcf1d549abf6d3e16ca081b178f4dcd618','{\"id\":14,\"asset_id\":\"69\",\"title\":\"Divergencia y viento \",\"alias\":\"divergencia-y-viento\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Divergencia y viento<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/divergencia-y-viento\\/dominio-1\\/en-superficie\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/divergencia\\/divergencia_d1_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/divergencia-y-viento\\/dominio-1\\/panel\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/divergencia\\/divergencia_d1_mosaico.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Panel<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 2<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/divergencia-y-viento\\/dominio-2\\/en-superficie\\\"> <img class=\\\"d2\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/divergencia\\/divergencia_d2_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/divergencia-y-viento\\/dominio-2\\/panel\\\"> <img class=\\\"d2\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/divergencia\\/divergencia_d2_mosaico.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Panel<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-04 19:51:39\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:31:44\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:31:05\",\"publish_up\":\"2015-11-04 19:51:39\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"33\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"17\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(476,15,1,'','2017-04-03 21:40:47',293,3561,'f262f3b1281a7f15c717ca4ee7830342e2b8f859','{\"id\":15,\"asset_id\":\"70\",\"title\":\"Cizallamiento\",\"alias\":\"cizallamiento\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Cizallamiento<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/cizallamiento\\/dominio-1\\/en-superficie\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/divergencia\\/divergencia_d1_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/cizallamiento\\/dominio-1\\/panel\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/divergencia\\/divergencia_d1_mosaico.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Panel<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 2<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/cizallamiento\\/dominio-2\\/en-superficie\\\"> <img class=\\\"d2\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/divergencia\\/divergencia_d2_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/cizallamiento\\/dominio-2\\/panel\\\"> <img class=\\\"d2\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/divergencia\\/divergencia_d2_mosaico.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Panel<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-04 20:07:51\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:40:47\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:32:10\",\"publish_up\":\"2015-11-04 20:07:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"32\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"21\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(477,16,1,'','2017-04-03 21:42:11',293,3239,'0761727b46855172569a11d6c665888fcbc5df5d','{\"id\":16,\"asset_id\":\"71\",\"title\":\"Velocidad vertical (Omega)\",\"alias\":\"velocidad-vertical-omega\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Velocidad vertical (Omega)<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/velocidad-vertical\\/dominio-1\\/en-superficie\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/omega\\/omega_d1_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/velocidad-vertical\\/dominio-1\\/en-altura\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/omega\\/omega_p_11_001.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">En altura<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 2<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\/velocidad-vertical\\/dominio-2\\/en-superficie\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/omega\\/omega_d2_sup.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Superficies<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-04 20:15:39\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:42:11\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:41:23\",\"publish_up\":\"2015-11-04 20:15:39\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":12,\"ordering\":\"31\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"63\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(478,17,1,'','2017-04-03 21:50:27',293,2601,'6712b95d0227c99d20e9febfe48d34304bedaba2','{\"id\":17,\"asset_id\":\"75\",\"title\":\"Oleaje\",\"alias\":\"oleaje\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Oleaje<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/altura-significante-y-direccion\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_altura_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Altura<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Periodo<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-05 05:35:05\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:50:27\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:50:09\",\"publish_up\":\"2015-11-05 05:35:05\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":17,\"ordering\":\"30\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"368\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(479,18,1,'','2017-04-03 21:51:10',293,2631,'7a3e6cb2897714e0f7de7a5027612f19ea206e3d','{\"id\":18,\"asset_id\":\"76\",\"title\":\"Altura significante y direcci\\u00f3n\",\"alias\":\"altura-significante-y-direccion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Altura<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/altura-significante-y-direccion\\/gom\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_altura_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Pac\\u00edfico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Golfo de M\\u00e9xico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Atl\\u00e1ntico<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-05 21:36:20\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:51:10\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:50:46\",\"publish_up\":\"2015-11-05 21:36:20\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"29\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"122\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(480,19,1,'','2017-04-03 21:52:19',293,2667,'9bbc1aecc8eff84e7116238465a6d7766c249191','{\"id\":19,\"asset_id\":\"77\",\"title\":\"Periodo de altura significante y direcci\\u00f3n\",\"alias\":\"periodo-de-altura-significante-y-direccion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Periodo<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/gom\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Pac\\u00edfico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Golfo de M\\u00e9xico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Atl\\u00e1ntico<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-06 17:04:51\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:52:19\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:52:03\",\"publish_up\":\"2015-11-06 17:04:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"28\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"38\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(481,19,1,'','2017-04-03 21:52:26',293,2685,'7bda833729506f03868c2ed91aa3dfdd1cfddab5','{\"id\":19,\"asset_id\":\"77\",\"title\":\"Periodo de altura significante y direcci\\u00f3n\",\"alias\":\"periodo-de-altura-significante-y-direccion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Periodo<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/gom\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><img src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Pac\\u00edfico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Golfo de M\\u00e9xico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Atl\\u00e1ntico<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-06 17:04:51\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:52:26\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:52:19\",\"publish_up\":\"2015-11-06 17:04:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":\"28\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"38\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(482,21,1,'','2017-04-03 21:53:33',293,2586,'3bb253deb50e07eea5b6dedd3ea26dd975858156','{\"id\":21,\"asset_id\":\"79\",\"title\":\"Periodo y direcci\\u00f3n de marejada\",\"alias\":\"periodo-y-direccion-de-marejada\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Periodo y direcci\\u00f3n<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-y-direccion-de-marejada\\/pacifico\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_marejada_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-y-direccion-de-marejada\\/atlantico\\\"><img class=\\\"d2\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_marejada_d2.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Pac\\u00edfico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Atl\\u00e1ntico<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-06 17:21:00\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:53:33\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:52:53\",\"publish_up\":\"2015-11-06 17:21:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"26\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"12\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(483,22,1,'','2017-04-03 21:54:54',293,1724,'d37741a88a092183572eb5bed122f24249dd50c2','{\"id\":22,\"asset_id\":\"80\",\"title\":\"Series de tiempo\",\"alias\":\"series-de-tiempo\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-06 17:25:58\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:54:54\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:54:43\",\"publish_up\":\"2015-11-06 17:25:58\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"25\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"4\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(484,33,1,'','2017-04-03 21:57:51',293,3698,'7fee29dddc2e342d453a3d98654d3d5dbf388812','{\"id\":33,\"asset_id\":\"100\",\"title\":\"Dispersi\\u00f3n de cenizas\",\"alias\":\"dispersion-de-cenizas\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Dispersi\\u00f3n de cenizas<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/niveles-de-vuelo\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/fl100.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/cortes\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/clat.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\/concentracion-particulas\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/pm10.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Niveles de vuelo<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Cortes<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Concentraci\\u00f3n de part\\u00edculas<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\/thickness\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/thickness.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\/col-mass\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/mass.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\/load\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/load.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">THICKNESS<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Col Mass<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">LOAD<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/aod\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/aod.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/panel\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/panel.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">AOD<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Panel<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-09 09:54:55\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:57:51\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:57:07\",\"publish_up\":\"2015-11-09 09:54:55\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":15,\"ordering\":\"16\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"303\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(485,33,1,'','2017-04-03 21:58:08',293,3716,'accdc061cbf404301c29f027ddaa6b2fa9bd713c','{\"id\":33,\"asset_id\":\"100\",\"title\":\"Dispersi\\u00f3n de cenizas\",\"alias\":\"dispersion-de-cenizas\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Dispersi\\u00f3n de cenizas<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/niveles-de-vuelo\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/fl100.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/cortes\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/clat.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\/concentracion-particulas\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/pm10.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Niveles de vuelo<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Cortes<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Concentraci\\u00f3n de part\\u00edculas<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\/thickness\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/thickness.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\/col-mass\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/mass.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\/load\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/load.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">THICKNESS<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Col Mass<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">LOAD<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/aod\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/aod.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/panel\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/panel.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">AOD<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Panel<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-09 09:54:55\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:58:08\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:57:51\",\"publish_up\":\"2015-11-09 09:54:55\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":16,\"ordering\":\"16\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"303\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(486,48,1,'','2017-04-03 21:59:23',293,3288,'f8108d2053956a47b43ea48edfa378de97c8bcae','{\"id\":48,\"asset_id\":\"117\",\"title\":\"Circulaci\\u00f3n oce\\u00e1nica\",\"alias\":\"circulacion-oceanica2\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Circulaci\\u00f3n oce\\u00e1nica<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura_010.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad_003.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Temperatura<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Salinidad<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/nivel-del-mar\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/circulacion\\/nivel_017.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez_003.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Nivel del mar<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Rapidez<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-20 17:32:55\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 21:59:23\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 21:58:55\",\"publish_up\":\"2015-11-20 17:32:55\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":15,\"ordering\":\"11\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"263\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(487,30,1,'','2017-04-03 22:00:11',293,1743,'149e004d06b064c4fdb4a68fa8419a8e457bc55e','{\"id\":30,\"asset_id\":\"95\",\"title\":\"Circulaci\\u00f3n oce\\u00e1nica\",\"alias\":\"circulacion-oceanica\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-09 07:57:09\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 22:00:11\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 22:00:02\",\"publish_up\":\"2015-11-09 07:57:09\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"19\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"80\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(488,49,1,'','2017-04-03 22:02:55',293,6140,'1b5b9ec6de3683672e055872a51fb26a1cc0e04f','{\"id\":49,\"asset_id\":\"118\",\"title\":\"Temperatura\",\"alias\":\"temperatura\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Temperatura<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/superficie\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura_010.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/10m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura\\/temperatura_10.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/50m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura\\/temperatura_50.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">10m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">50m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/100m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura\\/temperatura_100.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/200m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura\\/temperatura_200.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/300m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura\\/temperatura_300.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">100m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">200m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">300m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/400m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura\\/temperatura_400.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/500m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura\\/temperatura_500.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/700m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura\\/temperatura_700.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">400m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">500m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">700m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/1000m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura\\/temperatura_1000.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/1500m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura\\/temperatura_1500.png\\\" alt=\\\"\\\" width=\\\"160\\\" height=\\\"104\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/2000m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura\\/temperatura_2000.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">1000m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">1500m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">2000m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/2500m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura\\/temperatura_2500.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/3000m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura\\/temperatura_3000.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/temperatura\\/3500m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/temperatura\\/temperatura_3500.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">2500m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">3000m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">3500m<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-20 22:57:18\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 22:02:55\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 22:01:53\",\"publish_up\":\"2015-11-20 22:57:18\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"10\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"169\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(489,34,1,'','2017-04-03 22:04:10',293,3504,'206a1f9dea077d1970c561163eb8e9afff168f7e','{\"id\":34,\"asset_id\":\"102\",\"title\":\"Niveles de vuelo\",\"alias\":\"niveles-de-vuelo\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Niveles de vuelo<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/niveles-de-vuelo\\/fl100\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/fl100.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/niveles-de-vuelo\\/fl150\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/fl150.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\/niveles-de-vuelo\\/fl200\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/fl200.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">FL100<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">FL150<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">FL200<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\/niveles-de-vuelo\\/fl250\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/fl250.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\/niveles-de-vuelo\\/fl300\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/fl300.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\/niveles-de-vuelo\\/fl350\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/fl350.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">FL250<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">FL300<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">FL350<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/niveles-de-vuelo\\/fl400\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/fl400.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">FL400<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-10 17:13:00\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 22:04:10\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 22:03:30\",\"publish_up\":\"2015-11-10 17:13:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"15\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"124\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(490,35,1,'','2017-04-03 22:04:52',293,2456,'6a77b0943bf6734d7382831dac5a55e2424a02c1','{\"id\":35,\"asset_id\":\"103\",\"title\":\"Cortes\",\"alias\":\"cortes\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Cortes<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/cortes\\/clat\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/volcan\\/clat.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/cortes\\/clon\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/volcan\\/clon.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">CLAT<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">CLON<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-10 17:25:09\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 22:04:52\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 22:04:30\",\"publish_up\":\"2015-11-10 17:25:09\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"14\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"32\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(491,36,1,'','2017-04-03 22:05:39',293,2589,'0d737f46c396acd68685969222bc5427b5e59bc8','{\"id\":36,\"asset_id\":\"104\",\"title\":\"Concentraci\\u00f3n de part\\u00edculas\",\"alias\":\"concentracion-de-particulas-2\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Concentraci\\u00f3n de part\\u00edculas<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/concentracion-particulas\\/pm10\\\"> <img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/volcan\\/pm10.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/dispersion-de-cenizas\\/concentracion-particulas\\/superficie\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/volcan\\/grnd.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">PM10<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Superficie<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-10 17:37:03\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 22:05:39\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 22:05:12\",\"publish_up\":\"2015-11-10 17:37:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"13\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"26\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(492,50,1,'','2017-04-03 22:10:14',293,6044,'79bb3188cf0a2cc71aebfe9f050c9d68ecea9f2f','{\"id\":50,\"asset_id\":\"119\",\"title\":\"Salinidad\",\"alias\":\"salinidad\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Salinidad<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/superficie\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad_003.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/10m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_10.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/50m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_50.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">10m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">50m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/100m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_100.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/200m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_200.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/300m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_300.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">100m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">200m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">300m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/400m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_400.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/500m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_500.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/700m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_700.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">400m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">500m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">700m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/1000m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_1000.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/1500m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_1500.png\\\" alt=\\\"\\\" width=\\\"160\\\" height=\\\"104\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/2000m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_2000.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">1000m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">1500m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">2000m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/2500m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_2500.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/3000m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_3000.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/3500m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_3500.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">2500m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">3000m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">3500m<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-23 22:12:38\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 22:10:14\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 22:08:28\",\"publish_up\":\"2015-11-23 22:12:38\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"9\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"63\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(493,50,1,'','2017-04-03 22:10:31',293,6062,'5d7c93a49e94fae9f056d4b2f14129d7e4db13d4','{\"id\":50,\"asset_id\":\"119\",\"title\":\"Salinidad\",\"alias\":\"salinidad\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Salinidad<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/superficie\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad_003.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/10m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_10.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/50m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_50.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">10m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">50m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/100m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_100.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/200m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_200.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/300m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_300.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">100m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">200m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">300m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/400m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_400.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/500m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_500.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/700m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_700.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">400m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">500m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">700m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/1000m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_1000.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/1500m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_1500.png\\\" alt=\\\"\\\" width=\\\"160\\\" height=\\\"104\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/2000m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_2000.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">1000m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">1500m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">2000m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/2500m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_2500.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/3000m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_3000.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/salinidad\\/3500m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/salinidad\\/salinidad_3500.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">2500m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">3000m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">3500m<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-23 22:12:38\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 22:10:31\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 22:10:14\",\"publish_up\":\"2015-11-23 22:12:38\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"9\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"63\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(494,51,1,'','2017-04-03 22:11:57',293,5950,'1da20e4fdfeddc78c1f63cd7ab81dbb8cb722804','{\"id\":51,\"asset_id\":\"120\",\"title\":\"Rapidez\",\"alias\":\"rapidez\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Rapidez<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/superficie\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez_003.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/10m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez\\/rapidez_10.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/50m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez\\/rapidez_50.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">10m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">50m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/100m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez\\/rapidez_100.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/200m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez\\/rapidez_200.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/300m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez\\/rapidez_300.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">100m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">200m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">300m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/400m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez\\/rapidez_400.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/500m\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez\\/rapidez_500.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/700m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez\\/rapidez_700.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">400m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">500m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">700m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/1000m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez\\/rapidez_1000.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/1500m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez\\/rapidez_1500.png\\\" alt=\\\"\\\" width=\\\"160\\\" height=\\\"104\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/2000m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez\\/rapidez_2000.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">1000m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">1500m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">2000m<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/2500m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez\\/rapidez_2500.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/3000m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez\\/rapidez_3000.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/circulacion-oceanica\\/rapidez\\/3500m\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/circulacion\\/rapidez\\/rapidez_3500.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">2500m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">3000m<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">3500m<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-24 17:26:33\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 22:11:57\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 22:10:40\",\"publish_up\":\"2015-11-24 17:26:33\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"8\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"65\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(495,53,1,'','2017-04-03 22:13:28',293,5740,'77cbd0041b1e51691687c6cba4affdd81a9aefc4','{\"id\":53,\"asset_id\":\"122\",\"title\":\"Viento\",\"alias\":\"viento\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Viento<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-1\\/en-superficie\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_sup_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-1\\/viento-en-superficie-y-humedad-relativa\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_hr_s_11_057.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"95\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-1\\/vien-alt-humedad-relativa\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_hr_p_11_003.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"99\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en superficie y h\\u00famedad relativa<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en altura y h\\u00famedad relativa<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-1\\/viento-en-superficie-y-divergencia\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/div_conv_s_11_002.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"96\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-1\\/viento-en-altura-y-divergencia\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/div_conv_p_11_013.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"99\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-1\\/geopotencial\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_sup_d2.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en superficie y divergencia<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en altura y divergencia<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento y altura geopotencial<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-1\\/vorticidad-relativa\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_relvor_s_11_002.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"96\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Vorticidad relativa<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 2<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en superficie y h\\u00famedad relativa<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en altura y h\\u00famedad relativa<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-2\\/en-superficie\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_10m_12_001.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"86\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-2\\/viento-en-superficie-y-humedad-relativa\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_hr_s_12_002.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"85\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-2\\/vorticidad-relativa\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_relvor_s_12_001.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"85\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-06-10 17:33:16\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 22:13:28\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 22:12:39\",\"publish_up\":\"2016-06-10 17:33:16\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":22,\"ordering\":\"7\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"138\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(496,53,1,'','2017-04-03 22:14:44',293,5740,'81f34368c5fd420b2a5fe0abae90b7732665ea23','{\"id\":53,\"asset_id\":\"122\",\"title\":\"Viento\",\"alias\":\"viento\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Viento<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-1\\/en-superficie\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_sup_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-1\\/viento-en-superficie-y-humedad-relativa\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_hr_s_11_057.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"95\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-1\\/vien-alt-humedad-relativa\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_hr_p_11_003.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"99\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en superficie y h\\u00famedad relativa<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en altura y h\\u00famedad relativa<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-1\\/viento-en-superficie-y-divergencia\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/div_conv_s_11_002.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"96\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-1\\/viento-en-altura-y-divergencia\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/div_conv_p_11_013.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"99\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-1\\/geopotencial\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_sup_d2.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en superficie y divergencia<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en altura y divergencia<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento y altura geopotencial<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-1\\/vorticidad-relativa\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_relvor_s_11_002.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"96\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Vorticidad relativa<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 2<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-2\\/en-superficie\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_10m_12_001.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"86\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-2\\/viento-en-superficie-y-humedad-relativa\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_hr_s_12_002.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"85\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/viento\\/domio-2\\/vorticidad-relativa\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/vientos\\/viento_relvor_s_12_001.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"85\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en superficie<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en superficie y h\\u00famedad relativa<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Viento en altura y h\\u00famedad relativa<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-06-10 17:33:16\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 22:14:44\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 22:14:01\",\"publish_up\":\"2016-06-10 17:33:16\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":23,\"ordering\":\"7\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"139\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(497,54,1,'','2017-04-03 22:16:14',293,3235,'6c0220b9c7dc8ceb21de2e2c3c36e5abc298c88e','{\"id\":54,\"asset_id\":\"123\",\"title\":\"Lineas de corriente\",\"alias\":\"precipitacion-acumulada-total\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">L\\u00edneas de corriente<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 1<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/lineas-de-corriente\\/domio\\/sup-1\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/lineas_corriente\\/pcpcn_streamlines_s_11_010.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"95\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/lineas-de-corriente\\/domio\\/en-altura\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/lineas_corriente\\/pcpcn_streamlines_p_11_001.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"98\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">En superficie.<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">En altura<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\\"text-align: center;\\\">Dominio 2<\\/h2>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden; text-align: center;\\\"><a href=\\\"index.php\\/meteorologia\\/lineas-de-corriente\\/dn2\\/sup\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/lineas_corriente\\/pcpcn_streamlines_s_12_014.jpg\\\" alt=\\\"\\\" width=\\\"150\\\" height=\\\"84\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">En superficie.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-06-10 20:51:33\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 22:16:14\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 22:15:45\",\"publish_up\":\"2016-06-10 20:51:33\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":\"6\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"114\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(498,19,1,'','2017-04-03 22:38:45',293,2693,'280fc23f4719917ee8955625b70582ac7fe3551a','{\"id\":19,\"asset_id\":\"77\",\"title\":\"Periodo de altura significante y direcci\\u00f3n\",\"alias\":\"periodo-de-altura-significante-y-direccion\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Periodo<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><img class=\\\"d1\\\" src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\/periodo-de-altura-significante-y-direccion\\/gom\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/oleaje\\/oleaje_periodo_d1.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><img class=\\\"d1\\\" src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Pac\\u00edfico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Golfo de M\\u00e9xico<\\/h2>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">Atl\\u00e1ntico<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-11-06 17:04:51\",\"created_by\":\"294\",\"created_by_alias\":\"\",\"modified\":\"2017-04-03 22:38:45\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-03 22:37:40\",\"publish_up\":\"2015-11-06 17:04:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":14,\"ordering\":\"28\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"39\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(499,57,1,'','2017-04-27 18:25:13',293,9066,'3ed235a17a1cb9345ccab212c03c3bb0217d5aec','{\"id\":57,\"asset_id\":\"135\",\"title\":\"WRF\",\"alias\":\"wrf\",\"introtext\":\"<div class=\\\"item-page\\\">\\r\\n<p align=\\\"justify\\\">Pron\\u00f3stico Meteorol\\u00f3gico<\\/p>\\r\\n<p align=\\\"justify\\\">El pron\\u00f3stico meteorol\\u00f3gico se realiza utilizando el modelo Weather Research and Forecasting Model (WRF) en su versi\\u00f3n la 3.5. El modelo WRF es un modelo de predicci\\u00f3n num\\u00e9rica del tiempo dise\\u00f1ado para la investigaci\\u00f3n y para aplicaciones operativas. Diversas instituciones han contribuido y siguen contribuyendo a su desarrollo, con el firme objetivo de construir el modelo de pron\\u00f3stico num\\u00e9rico de mesoescala de la siguiente generaci\\u00f3n, para lograr un avance en el entendimiento de los procesos atmosf\\u00e9ricos y en la predicci\\u00f3n de tiempo. El modelo WRF ha sido dese\\u00f1ado principalmente por el National Center for Atmospheric Research (NCAR), la National Oceanic and Atmospheric Admisntration (NOAA), el National Center for Environmental Prediciton (NCEP), el Earth System Research Laboratory (ESRL), la Air Force Weather Agengy (AFWA), el Naval Research Laboratory (NLR) el Center for Analysis an Prediction Storms (CAPS) y la Federal Aviaton Administration (FAA). El c\\u00f3digo del modelo est\\u00e1 abierto a la comunidad y ha sido optimizado de manera que puede ser adaptado tanto en supercomputadoras que trabajan en paralelo como en computadoras port\\u00e1tiles de reciente generaci\\u00f3n. El modelo es muy vers\\u00e1til, y se puede usar en una gran diversidad de aplicaciones, tales como simulaciones ideales, simulaciones reales (predicci\\u00f3n num\\u00e9rica del tiempo real), modelaci\\u00f3n de la calidad del aire y estudios de interacci\\u00f3n oc\\u00e9ano-atm\\u00f3sfera mediante el acoplamiento con modelos oce\\u00e1nicos.<\\/p>\\r\\n<p align=\\\"justify\\\">El WRF Software Infrastructure (WFS) contiene los c\\u00f3digos que incorporan la f\\u00edsica al modelo (dynamic solvers) y los paquetes f\\u00edsicos que constituyen la interfaz con los c\\u00f3digos. Tambi\\u00e9n se localizan aqu\\u00ed los c\\u00f3digos necesarios para realizar asimilaci\\u00f3n de datos y para emplear algunas opciones del modelo relacionadas con la qu\\u00edmica atmosf\\u00e9rica. Fuera del WSF, se encuentra la parte de pre-procesamiento y post-procesamiento de las simulaciones num\\u00e9ricas. El modelo cuenta con dos n\\u00facleos que resuelven su f\\u00edsica, el Advanced Research WPS (ARW) y el Nonhydrostatical Mesoscale Model (NMM). En la configuraci\\u00f3n desarrollada para este sistema se utiliza el n\\u00facleo ARW el cual se describe brevemente la versi\\u00f3n del WRF con este n\\u00facleo.<\\/p>\\r\\n<p><strong>N\\u00facleo ARW<\\/strong><\\/p>\\r\\n<p align=\\\"justify\\\">El n\\u00facleo ARW es la componente del modelo, donde se lleva a cabo la integraci\\u00f3n num\\u00e9rica del dominio principal y de los anidamientos.<\\/p>\\r\\n<p>Las caracter\\u00edsticas del n\\u00facleo ARW, son las siguientes:<\\/p>\\r\\n<ul>\\r\\n<li><strong>Ecuaciones: <\\/strong>Modelo totalmente compresible, no-hidrost\\u00e1tico, basado en flujo euleriano, con una opci\\u00f3n hidrost\\u00e1tica.<\\/li>\\r\\n<li><strong>Coordenada vertical:<\\/strong> Coordenada que sigue el terreno y que permite un estiramiento en los niveles verticales. El tope del modelo es una superficie de presi\\u00f3n constante.<\\/li>\\r\\n<li><strong>Malla horizontal:<\\/strong> Malla escalonada tipo Arakawa C.<\\/li>\\r\\n<li><strong>Integraci\\u00f3n en tiempo:<\\/strong> Runge-Kutta de 2do y 3er orden con paso de tiempo menor para ondas ac\\u00fasticas y de gravedad.<\\/li>\\r\\n<li><strong>Discretizaci\\u00f3n espacial:<\\/strong> Opcional de 2do y 6to orden en la horizontal y vertical.<\\/li>\\r\\n<li><strong>Condiciones de frontera laterales:<\\/strong> Peri\\u00f3dicas, abiertas y sim\\u00e9tricas.<\\/li>\\r\\n<li><strong>Condiciones de frontera en superficie:<\\/strong> F\\u00edsica o free-slip.<\\/li>\\r\\n<li><strong>Anidamientos:<\\/strong> Unidireccionales interactivos, bi-direccionales interactivos y movibles, estos \\u00faltimos pueden usarse a trav\\u00e9s de movimientos especificados por el usuario o con un algoritmo que sigue el movimiento de un v\\u00f3rtice.<\\/li>\\r\\n<li><strong>Malla Global:<\\/strong> Cuenta con capacidad para realizar simulaciones globales.<\\/li>\\r\\n<li><strong>Microf\\u00edsica:<\\/strong> Esquemas simplificados para simulaciones idealizadas y esquemas complejos que incorporan expl\\u00edcitamente procesos de precipitaci\\u00f3n, vapor de agua y nubes.<\\/li>\\r\\n<li><strong>Parametrizaciones de c\\u00famulus:<\\/strong> Diversos esquemas para modelos de mesoescala modificados y adaptados para el modelo.<\\/li>\\r\\n<li><strong>Capa l\\u00edmite planetaria:<\\/strong> Esquema de energ\\u00eda cin\\u00e9tica turbulenta y esquemas no locales.<\\/li>\\r\\n<\\/ul>\\r\\n<p align=\\\"justify\\\">\\u00a0<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>WRF Preprocessing System (WPS).<\\/strong> Esta componente del modelo es utilizada para simulaciones reales. Aqu\\u00ed, el usuario puede definir los dominios de la simulaci\\u00f3n, interpolar los datos terrestres a los dominios (por ejemplo topograf\\u00eda, tipo de suelo, uso de suelo, etc\\u00e9tera), as\\u00ed como decodificar e interpolar los datos meteorol\\u00f3gicos que alimentan al modelo.<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>WRF-Var.<\\/strong> Este programa es opcional y se encarga de incorporar observaciones a los an\\u00e1lisis interpolados creados por el WPS (por ejemplo datos de superficie, radiosondeos, datos de radar, etc\\u00e9tera), generando un ajuste en las condiciones iniciales del modelo.<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>Post-procesamiento y visualizaci\\u00f3n.<\\/strong> Esta componente del modelo depende totalmente del usuario pues existe una gran cantidad de herramientas gr\\u00e1ficas que pueden ser utilizadas para visualizar las simulaciones num\\u00e9ricas. Algunas de estas opciones son: NCAR Command Language (NCL), Read\\/Interpolate\\/Plot (RIP4), Grid Analysis and Display System (GrADS), Vis5D, Visualization and Analysis Platform for Ocean, Atmosphere, and Solar Researchers (VAPOR), General Equilibrium Modelling Software (GEMPAK) y MATrix LABoratory (MATLAB).<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>Parametrizaciones f\\u00edsicas<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li><strong>Esquema de Dudhia para la radiaci\\u00f3n de onda corta.<\\/strong> Representa el flujo de energ\\u00eda solar que llega a la atm\\u00f3sfera considerando la absorci\\u00f3n del vapor de agua y la absorci\\u00f3n y albedo de las nubes.<\\/li>\\r\\n<li><strong>Esquema Rapid Radiative Transfer Model (RRTM) para radiaci\\u00f3n de onda larga.<\\/strong> Este esquema utiliza valores predeterminados en tablas que representan los procesos de onda larga debidos al vapor de agua, ozono, CO2 y gases traza (si existen), considerando tambi\\u00e9n las propiedades \\u00f3pticas de la nube en funci\\u00f3n de su profundidad.<\\/li>\\r\\n<li><strong>Esquema de Kain-Fritsch para la parametrizaci\\u00f3n de c\\u00famulus.<\\/strong> Es utilizado para representar los procesos convectivos por medio de un modelo que considera las corrientes verticales de aire h\\u00famedo en ambos sentidos, adem\\u00e1s de considerar un modelo simple de microf\\u00edsica.<\\/li>\\r\\n<li><strong>Esquema Yonsei University para la capa l\\u00edmite planetaria.<\\/strong> Este esquema se encarga de representar los flujos verticales peque\\u00f1os que son resultado del transporte turbulento en toda la columna atmosf\\u00e9rica.<\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-15 00:44:09\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-27 18:25:13\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-27 18:24:15\",\"publish_up\":\"2017-03-15 00:44:09\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"14\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(500,57,1,'','2017-04-27 18:33:37',293,9068,'dfb3f553bc5632811bb90f0ffec1ab987f7d087f','{\"id\":57,\"asset_id\":\"135\",\"title\":\"WRF\",\"alias\":\"wrf\",\"introtext\":\"<div class=\\\"item-page\\\">\\r\\n<h2 align=\\\"justify\\\">Pron\\u00f3stico Meteorol\\u00f3gico<\\/h2>\\r\\n<p align=\\\"justify\\\">El pron\\u00f3stico meteorol\\u00f3gico se realiza utilizando el modelo Weather Research and Forecasting Model (WRF) en su versi\\u00f3n la 3.5. El modelo WRF es un modelo de predicci\\u00f3n num\\u00e9rica del tiempo dise\\u00f1ado para la investigaci\\u00f3n y para aplicaciones operativas. Diversas instituciones han contribuido y siguen contribuyendo a su desarrollo, con el firme objetivo de construir el modelo de pron\\u00f3stico num\\u00e9rico de mesoescala de la siguiente generaci\\u00f3n, para lograr un avance en el entendimiento de los procesos atmosf\\u00e9ricos y en la predicci\\u00f3n de tiempo. El modelo WRF ha sido dese\\u00f1ado principalmente por el National Center for Atmospheric Research (NCAR), la National Oceanic and Atmospheric Admisntration (NOAA), el National Center for Environmental Prediciton (NCEP), el Earth System Research Laboratory (ESRL), la Air Force Weather Agengy (AFWA), el Naval Research Laboratory (NLR) el Center for Analysis an Prediction Storms (CAPS) y la Federal Aviaton Administration (FAA). El c\\u00f3digo del modelo est\\u00e1 abierto a la comunidad y ha sido optimizado de manera que puede ser adaptado tanto en supercomputadoras que trabajan en paralelo como en computadoras port\\u00e1tiles de reciente generaci\\u00f3n. El modelo es muy vers\\u00e1til, y se puede usar en una gran diversidad de aplicaciones, tales como simulaciones ideales, simulaciones reales (predicci\\u00f3n num\\u00e9rica del tiempo real), modelaci\\u00f3n de la calidad del aire y estudios de interacci\\u00f3n oc\\u00e9ano-atm\\u00f3sfera mediante el acoplamiento con modelos oce\\u00e1nicos.<\\/p>\\r\\n<p align=\\\"justify\\\">El WRF Software Infrastructure (WFS) contiene los c\\u00f3digos que incorporan la f\\u00edsica al modelo (dynamic solvers) y los paquetes f\\u00edsicos que constituyen la interfaz con los c\\u00f3digos. Tambi\\u00e9n se localizan aqu\\u00ed los c\\u00f3digos necesarios para realizar asimilaci\\u00f3n de datos y para emplear algunas opciones del modelo relacionadas con la qu\\u00edmica atmosf\\u00e9rica. Fuera del WSF, se encuentra la parte de pre-procesamiento y post-procesamiento de las simulaciones num\\u00e9ricas. El modelo cuenta con dos n\\u00facleos que resuelven su f\\u00edsica, el Advanced Research WPS (ARW) y el Nonhydrostatical Mesoscale Model (NMM). En la configuraci\\u00f3n desarrollada para este sistema se utiliza el n\\u00facleo ARW el cual se describe brevemente la versi\\u00f3n del WRF con este n\\u00facleo.<\\/p>\\r\\n<p><strong>N\\u00facleo ARW<\\/strong><\\/p>\\r\\n<p align=\\\"justify\\\">El n\\u00facleo ARW es la componente del modelo, donde se lleva a cabo la integraci\\u00f3n num\\u00e9rica del dominio principal y de los anidamientos.<\\/p>\\r\\n<p>Las caracter\\u00edsticas del n\\u00facleo ARW, son las siguientes:<\\/p>\\r\\n<ul>\\r\\n<li><strong>Ecuaciones: <\\/strong>Modelo totalmente compresible, no-hidrost\\u00e1tico, basado en flujo euleriano, con una opci\\u00f3n hidrost\\u00e1tica.<\\/li>\\r\\n<li><strong>Coordenada vertical:<\\/strong> Coordenada que sigue el terreno y que permite un estiramiento en los niveles verticales. El tope del modelo es una superficie de presi\\u00f3n constante.<\\/li>\\r\\n<li><strong>Malla horizontal:<\\/strong> Malla escalonada tipo Arakawa C.<\\/li>\\r\\n<li><strong>Integraci\\u00f3n en tiempo:<\\/strong> Runge-Kutta de 2do y 3er orden con paso de tiempo menor para ondas ac\\u00fasticas y de gravedad.<\\/li>\\r\\n<li><strong>Discretizaci\\u00f3n espacial:<\\/strong> Opcional de 2do y 6to orden en la horizontal y vertical.<\\/li>\\r\\n<li><strong>Condiciones de frontera laterales:<\\/strong> Peri\\u00f3dicas, abiertas y sim\\u00e9tricas.<\\/li>\\r\\n<li><strong>Condiciones de frontera en superficie:<\\/strong> F\\u00edsica o free-slip.<\\/li>\\r\\n<li><strong>Anidamientos:<\\/strong> Unidireccionales interactivos, bi-direccionales interactivos y movibles, estos \\u00faltimos pueden usarse a trav\\u00e9s de movimientos especificados por el usuario o con un algoritmo que sigue el movimiento de un v\\u00f3rtice.<\\/li>\\r\\n<li><strong>Malla Global:<\\/strong> Cuenta con capacidad para realizar simulaciones globales.<\\/li>\\r\\n<li><strong>Microf\\u00edsica:<\\/strong> Esquemas simplificados para simulaciones idealizadas y esquemas complejos que incorporan expl\\u00edcitamente procesos de precipitaci\\u00f3n, vapor de agua y nubes.<\\/li>\\r\\n<li><strong>Parametrizaciones de c\\u00famulus:<\\/strong> Diversos esquemas para modelos de mesoescala modificados y adaptados para el modelo.<\\/li>\\r\\n<li><strong>Capa l\\u00edmite planetaria:<\\/strong> Esquema de energ\\u00eda cin\\u00e9tica turbulenta y esquemas no locales.<\\/li>\\r\\n<\\/ul>\\r\\n<p align=\\\"justify\\\">\\u00a0<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>WRF Preprocessing System (WPS).<\\/strong> Esta componente del modelo es utilizada para simulaciones reales. Aqu\\u00ed, el usuario puede definir los dominios de la simulaci\\u00f3n, interpolar los datos terrestres a los dominios (por ejemplo topograf\\u00eda, tipo de suelo, uso de suelo, etc\\u00e9tera), as\\u00ed como decodificar e interpolar los datos meteorol\\u00f3gicos que alimentan al modelo.<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>WRF-Var.<\\/strong> Este programa es opcional y se encarga de incorporar observaciones a los an\\u00e1lisis interpolados creados por el WPS (por ejemplo datos de superficie, radiosondeos, datos de radar, etc\\u00e9tera), generando un ajuste en las condiciones iniciales del modelo.<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>Post-procesamiento y visualizaci\\u00f3n.<\\/strong> Esta componente del modelo depende totalmente del usuario pues existe una gran cantidad de herramientas gr\\u00e1ficas que pueden ser utilizadas para visualizar las simulaciones num\\u00e9ricas. Algunas de estas opciones son: NCAR Command Language (NCL), Read\\/Interpolate\\/Plot (RIP4), Grid Analysis and Display System (GrADS), Vis5D, Visualization and Analysis Platform for Ocean, Atmosphere, and Solar Researchers (VAPOR), General Equilibrium Modelling Software (GEMPAK) y MATrix LABoratory (MATLAB).<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>Parametrizaciones f\\u00edsicas<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li><strong>Esquema de Dudhia para la radiaci\\u00f3n de onda corta.<\\/strong> Representa el flujo de energ\\u00eda solar que llega a la atm\\u00f3sfera considerando la absorci\\u00f3n del vapor de agua y la absorci\\u00f3n y albedo de las nubes.<\\/li>\\r\\n<li><strong>Esquema Rapid Radiative Transfer Model (RRTM) para radiaci\\u00f3n de onda larga.<\\/strong> Este esquema utiliza valores predeterminados en tablas que representan los procesos de onda larga debidos al vapor de agua, ozono, CO2 y gases traza (si existen), considerando tambi\\u00e9n las propiedades \\u00f3pticas de la nube en funci\\u00f3n de su profundidad.<\\/li>\\r\\n<li><strong>Esquema de Kain-Fritsch para la parametrizaci\\u00f3n de c\\u00famulus.<\\/strong> Es utilizado para representar los procesos convectivos por medio de un modelo que considera las corrientes verticales de aire h\\u00famedo en ambos sentidos, adem\\u00e1s de considerar un modelo simple de microf\\u00edsica.<\\/li>\\r\\n<li><strong>Esquema Yonsei University para la capa l\\u00edmite planetaria.<\\/strong> Este esquema se encarga de representar los flujos verticales peque\\u00f1os que son resultado del transporte turbulento en toda la columna atmosf\\u00e9rica.<\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-15 00:44:09\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-27 18:33:37\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-27 18:33:17\",\"publish_up\":\"2017-03-15 00:44:09\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"15\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(501,57,1,'','2017-04-27 18:34:06',293,9030,'634137a75bb2e6bf3dd7f643bc6020cf68ea44d4','{\"id\":57,\"asset_id\":\"135\",\"title\":\"WRF\",\"alias\":\"wrf\",\"introtext\":\"<h1 class=\\\"item-page\\\">Pron\\u00f3stico Meteorol\\u00f3gico<\\/h1>\\r\\n<p align=\\\"justify\\\">El pron\\u00f3stico meteorol\\u00f3gico se realiza utilizando el modelo Weather Research and Forecasting Model (WRF) en su versi\\u00f3n la 3.5. El modelo WRF es un modelo de predicci\\u00f3n num\\u00e9rica del tiempo dise\\u00f1ado para la investigaci\\u00f3n y para aplicaciones operativas. Diversas instituciones han contribuido y siguen contribuyendo a su desarrollo, con el firme objetivo de construir el modelo de pron\\u00f3stico num\\u00e9rico de mesoescala de la siguiente generaci\\u00f3n, para lograr un avance en el entendimiento de los procesos atmosf\\u00e9ricos y en la predicci\\u00f3n de tiempo. El modelo WRF ha sido dese\\u00f1ado principalmente por el National Center for Atmospheric Research (NCAR), la National Oceanic and Atmospheric Admisntration (NOAA), el National Center for Environmental Prediciton (NCEP), el Earth System Research Laboratory (ESRL), la Air Force Weather Agengy (AFWA), el Naval Research Laboratory (NLR) el Center for Analysis an Prediction Storms (CAPS) y la Federal Aviaton Administration (FAA). El c\\u00f3digo del modelo est\\u00e1 abierto a la comunidad y ha sido optimizado de manera que puede ser adaptado tanto en supercomputadoras que trabajan en paralelo como en computadoras port\\u00e1tiles de reciente generaci\\u00f3n. El modelo es muy vers\\u00e1til, y se puede usar en una gran diversidad de aplicaciones, tales como simulaciones ideales, simulaciones reales (predicci\\u00f3n num\\u00e9rica del tiempo real), modelaci\\u00f3n de la calidad del aire y estudios de interacci\\u00f3n oc\\u00e9ano-atm\\u00f3sfera mediante el acoplamiento con modelos oce\\u00e1nicos.<\\/p>\\r\\n<p align=\\\"justify\\\">El WRF Software Infrastructure (WFS) contiene los c\\u00f3digos que incorporan la f\\u00edsica al modelo (dynamic solvers) y los paquetes f\\u00edsicos que constituyen la interfaz con los c\\u00f3digos. Tambi\\u00e9n se localizan aqu\\u00ed los c\\u00f3digos necesarios para realizar asimilaci\\u00f3n de datos y para emplear algunas opciones del modelo relacionadas con la qu\\u00edmica atmosf\\u00e9rica. Fuera del WSF, se encuentra la parte de pre-procesamiento y post-procesamiento de las simulaciones num\\u00e9ricas. El modelo cuenta con dos n\\u00facleos que resuelven su f\\u00edsica, el Advanced Research WPS (ARW) y el Nonhydrostatical Mesoscale Model (NMM). En la configuraci\\u00f3n desarrollada para este sistema se utiliza el n\\u00facleo ARW el cual se describe brevemente la versi\\u00f3n del WRF con este n\\u00facleo.<\\/p>\\r\\n<p><strong>N\\u00facleo ARW<\\/strong><\\/p>\\r\\n<p align=\\\"justify\\\">El n\\u00facleo ARW es la componente del modelo, donde se lleva a cabo la integraci\\u00f3n num\\u00e9rica del dominio principal y de los anidamientos.<\\/p>\\r\\n<p>Las caracter\\u00edsticas del n\\u00facleo ARW, son las siguientes:<\\/p>\\r\\n<ul>\\r\\n<li><strong>Ecuaciones: <\\/strong>Modelo totalmente compresible, no-hidrost\\u00e1tico, basado en flujo euleriano, con una opci\\u00f3n hidrost\\u00e1tica.<\\/li>\\r\\n<li><strong>Coordenada vertical:<\\/strong> Coordenada que sigue el terreno y que permite un estiramiento en los niveles verticales. El tope del modelo es una superficie de presi\\u00f3n constante.<\\/li>\\r\\n<li><strong>Malla horizontal:<\\/strong> Malla escalonada tipo Arakawa C.<\\/li>\\r\\n<li><strong>Integraci\\u00f3n en tiempo:<\\/strong> Runge-Kutta de 2do y 3er orden con paso de tiempo menor para ondas ac\\u00fasticas y de gravedad.<\\/li>\\r\\n<li><strong>Discretizaci\\u00f3n espacial:<\\/strong> Opcional de 2do y 6to orden en la horizontal y vertical.<\\/li>\\r\\n<li><strong>Condiciones de frontera laterales:<\\/strong> Peri\\u00f3dicas, abiertas y sim\\u00e9tricas.<\\/li>\\r\\n<li><strong>Condiciones de frontera en superficie:<\\/strong> F\\u00edsica o free-slip.<\\/li>\\r\\n<li><strong>Anidamientos:<\\/strong> Unidireccionales interactivos, bi-direccionales interactivos y movibles, estos \\u00faltimos pueden usarse a trav\\u00e9s de movimientos especificados por el usuario o con un algoritmo que sigue el movimiento de un v\\u00f3rtice.<\\/li>\\r\\n<li><strong>Malla Global:<\\/strong> Cuenta con capacidad para realizar simulaciones globales.<\\/li>\\r\\n<li><strong>Microf\\u00edsica:<\\/strong> Esquemas simplificados para simulaciones idealizadas y esquemas complejos que incorporan expl\\u00edcitamente procesos de precipitaci\\u00f3n, vapor de agua y nubes.<\\/li>\\r\\n<li><strong>Parametrizaciones de c\\u00famulus:<\\/strong> Diversos esquemas para modelos de mesoescala modificados y adaptados para el modelo.<\\/li>\\r\\n<li><strong>Capa l\\u00edmite planetaria:<\\/strong> Esquema de energ\\u00eda cin\\u00e9tica turbulenta y esquemas no locales.<\\/li>\\r\\n<\\/ul>\\r\\n<p align=\\\"justify\\\">\\u00a0<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>WRF Preprocessing System (WPS).<\\/strong> Esta componente del modelo es utilizada para simulaciones reales. Aqu\\u00ed, el usuario puede definir los dominios de la simulaci\\u00f3n, interpolar los datos terrestres a los dominios (por ejemplo topograf\\u00eda, tipo de suelo, uso de suelo, etc\\u00e9tera), as\\u00ed como decodificar e interpolar los datos meteorol\\u00f3gicos que alimentan al modelo.<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>WRF-Var.<\\/strong> Este programa es opcional y se encarga de incorporar observaciones a los an\\u00e1lisis interpolados creados por el WPS (por ejemplo datos de superficie, radiosondeos, datos de radar, etc\\u00e9tera), generando un ajuste en las condiciones iniciales del modelo.<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>Post-procesamiento y visualizaci\\u00f3n.<\\/strong> Esta componente del modelo depende totalmente del usuario pues existe una gran cantidad de herramientas gr\\u00e1ficas que pueden ser utilizadas para visualizar las simulaciones num\\u00e9ricas. Algunas de estas opciones son: NCAR Command Language (NCL), Read\\/Interpolate\\/Plot (RIP4), Grid Analysis and Display System (GrADS), Vis5D, Visualization and Analysis Platform for Ocean, Atmosphere, and Solar Researchers (VAPOR), General Equilibrium Modelling Software (GEMPAK) y MATrix LABoratory (MATLAB).<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>Parametrizaciones f\\u00edsicas<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li><strong>Esquema de Dudhia para la radiaci\\u00f3n de onda corta.<\\/strong> Representa el flujo de energ\\u00eda solar que llega a la atm\\u00f3sfera considerando la absorci\\u00f3n del vapor de agua y la absorci\\u00f3n y albedo de las nubes.<\\/li>\\r\\n<li><strong>Esquema Rapid Radiative Transfer Model (RRTM) para radiaci\\u00f3n de onda larga.<\\/strong> Este esquema utiliza valores predeterminados en tablas que representan los procesos de onda larga debidos al vapor de agua, ozono, CO2 y gases traza (si existen), considerando tambi\\u00e9n las propiedades \\u00f3pticas de la nube en funci\\u00f3n de su profundidad.<\\/li>\\r\\n<li><strong>Esquema de Kain-Fritsch para la parametrizaci\\u00f3n de c\\u00famulus.<\\/strong> Es utilizado para representar los procesos convectivos por medio de un modelo que considera las corrientes verticales de aire h\\u00famedo en ambos sentidos, adem\\u00e1s de considerar un modelo simple de microf\\u00edsica.<\\/li>\\r\\n<li><strong>Esquema Yonsei University para la capa l\\u00edmite planetaria.<\\/strong> Este esquema se encarga de representar los flujos verticales peque\\u00f1os que son resultado del transporte turbulento en toda la columna atmosf\\u00e9rica.<\\/li>\\r\\n<\\/ul>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-15 00:44:09\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-27 18:34:06\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-27 18:33:37\",\"publish_up\":\"2017-03-15 00:44:09\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"16\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(502,57,1,'','2017-04-27 18:34:19',293,9048,'e95feeb82f7a3087f0cf4afebfb09792a666bdd5','{\"id\":57,\"asset_id\":\"135\",\"title\":\"WRF\",\"alias\":\"wrf\",\"introtext\":\"<h1 class=\\\"item-page\\\">Pron\\u00f3stico Meteorol\\u00f3gico<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p align=\\\"justify\\\">El pron\\u00f3stico meteorol\\u00f3gico se realiza utilizando el modelo Weather Research and Forecasting Model (WRF) en su versi\\u00f3n la 3.5. El modelo WRF es un modelo de predicci\\u00f3n num\\u00e9rica del tiempo dise\\u00f1ado para la investigaci\\u00f3n y para aplicaciones operativas. Diversas instituciones han contribuido y siguen contribuyendo a su desarrollo, con el firme objetivo de construir el modelo de pron\\u00f3stico num\\u00e9rico de mesoescala de la siguiente generaci\\u00f3n, para lograr un avance en el entendimiento de los procesos atmosf\\u00e9ricos y en la predicci\\u00f3n de tiempo. El modelo WRF ha sido dese\\u00f1ado principalmente por el National Center for Atmospheric Research (NCAR), la National Oceanic and Atmospheric Admisntration (NOAA), el National Center for Environmental Prediciton (NCEP), el Earth System Research Laboratory (ESRL), la Air Force Weather Agengy (AFWA), el Naval Research Laboratory (NLR) el Center for Analysis an Prediction Storms (CAPS) y la Federal Aviaton Administration (FAA). El c\\u00f3digo del modelo est\\u00e1 abierto a la comunidad y ha sido optimizado de manera que puede ser adaptado tanto en supercomputadoras que trabajan en paralelo como en computadoras port\\u00e1tiles de reciente generaci\\u00f3n. El modelo es muy vers\\u00e1til, y se puede usar en una gran diversidad de aplicaciones, tales como simulaciones ideales, simulaciones reales (predicci\\u00f3n num\\u00e9rica del tiempo real), modelaci\\u00f3n de la calidad del aire y estudios de interacci\\u00f3n oc\\u00e9ano-atm\\u00f3sfera mediante el acoplamiento con modelos oce\\u00e1nicos.<\\/p>\\r\\n<p align=\\\"justify\\\">El WRF Software Infrastructure (WFS) contiene los c\\u00f3digos que incorporan la f\\u00edsica al modelo (dynamic solvers) y los paquetes f\\u00edsicos que constituyen la interfaz con los c\\u00f3digos. Tambi\\u00e9n se localizan aqu\\u00ed los c\\u00f3digos necesarios para realizar asimilaci\\u00f3n de datos y para emplear algunas opciones del modelo relacionadas con la qu\\u00edmica atmosf\\u00e9rica. Fuera del WSF, se encuentra la parte de pre-procesamiento y post-procesamiento de las simulaciones num\\u00e9ricas. El modelo cuenta con dos n\\u00facleos que resuelven su f\\u00edsica, el Advanced Research WPS (ARW) y el Nonhydrostatical Mesoscale Model (NMM). En la configuraci\\u00f3n desarrollada para este sistema se utiliza el n\\u00facleo ARW el cual se describe brevemente la versi\\u00f3n del WRF con este n\\u00facleo.<\\/p>\\r\\n<p><strong>N\\u00facleo ARW<\\/strong><\\/p>\\r\\n<p align=\\\"justify\\\">El n\\u00facleo ARW es la componente del modelo, donde se lleva a cabo la integraci\\u00f3n num\\u00e9rica del dominio principal y de los anidamientos.<\\/p>\\r\\n<p>Las caracter\\u00edsticas del n\\u00facleo ARW, son las siguientes:<\\/p>\\r\\n<ul>\\r\\n<li><strong>Ecuaciones: <\\/strong>Modelo totalmente compresible, no-hidrost\\u00e1tico, basado en flujo euleriano, con una opci\\u00f3n hidrost\\u00e1tica.<\\/li>\\r\\n<li><strong>Coordenada vertical:<\\/strong> Coordenada que sigue el terreno y que permite un estiramiento en los niveles verticales. El tope del modelo es una superficie de presi\\u00f3n constante.<\\/li>\\r\\n<li><strong>Malla horizontal:<\\/strong> Malla escalonada tipo Arakawa C.<\\/li>\\r\\n<li><strong>Integraci\\u00f3n en tiempo:<\\/strong> Runge-Kutta de 2do y 3er orden con paso de tiempo menor para ondas ac\\u00fasticas y de gravedad.<\\/li>\\r\\n<li><strong>Discretizaci\\u00f3n espacial:<\\/strong> Opcional de 2do y 6to orden en la horizontal y vertical.<\\/li>\\r\\n<li><strong>Condiciones de frontera laterales:<\\/strong> Peri\\u00f3dicas, abiertas y sim\\u00e9tricas.<\\/li>\\r\\n<li><strong>Condiciones de frontera en superficie:<\\/strong> F\\u00edsica o free-slip.<\\/li>\\r\\n<li><strong>Anidamientos:<\\/strong> Unidireccionales interactivos, bi-direccionales interactivos y movibles, estos \\u00faltimos pueden usarse a trav\\u00e9s de movimientos especificados por el usuario o con un algoritmo que sigue el movimiento de un v\\u00f3rtice.<\\/li>\\r\\n<li><strong>Malla Global:<\\/strong> Cuenta con capacidad para realizar simulaciones globales.<\\/li>\\r\\n<li><strong>Microf\\u00edsica:<\\/strong> Esquemas simplificados para simulaciones idealizadas y esquemas complejos que incorporan expl\\u00edcitamente procesos de precipitaci\\u00f3n, vapor de agua y nubes.<\\/li>\\r\\n<li><strong>Parametrizaciones de c\\u00famulus:<\\/strong> Diversos esquemas para modelos de mesoescala modificados y adaptados para el modelo.<\\/li>\\r\\n<li><strong>Capa l\\u00edmite planetaria:<\\/strong> Esquema de energ\\u00eda cin\\u00e9tica turbulenta y esquemas no locales.<\\/li>\\r\\n<\\/ul>\\r\\n<p align=\\\"justify\\\">\\u00a0<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>WRF Preprocessing System (WPS).<\\/strong> Esta componente del modelo es utilizada para simulaciones reales. Aqu\\u00ed, el usuario puede definir los dominios de la simulaci\\u00f3n, interpolar los datos terrestres a los dominios (por ejemplo topograf\\u00eda, tipo de suelo, uso de suelo, etc\\u00e9tera), as\\u00ed como decodificar e interpolar los datos meteorol\\u00f3gicos que alimentan al modelo.<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>WRF-Var.<\\/strong> Este programa es opcional y se encarga de incorporar observaciones a los an\\u00e1lisis interpolados creados por el WPS (por ejemplo datos de superficie, radiosondeos, datos de radar, etc\\u00e9tera), generando un ajuste en las condiciones iniciales del modelo.<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>Post-procesamiento y visualizaci\\u00f3n.<\\/strong> Esta componente del modelo depende totalmente del usuario pues existe una gran cantidad de herramientas gr\\u00e1ficas que pueden ser utilizadas para visualizar las simulaciones num\\u00e9ricas. Algunas de estas opciones son: NCAR Command Language (NCL), Read\\/Interpolate\\/Plot (RIP4), Grid Analysis and Display System (GrADS), Vis5D, Visualization and Analysis Platform for Ocean, Atmosphere, and Solar Researchers (VAPOR), General Equilibrium Modelling Software (GEMPAK) y MATrix LABoratory (MATLAB).<\\/p>\\r\\n<p align=\\\"justify\\\"><strong>Parametrizaciones f\\u00edsicas<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li><strong>Esquema de Dudhia para la radiaci\\u00f3n de onda corta.<\\/strong> Representa el flujo de energ\\u00eda solar que llega a la atm\\u00f3sfera considerando la absorci\\u00f3n del vapor de agua y la absorci\\u00f3n y albedo de las nubes.<\\/li>\\r\\n<li><strong>Esquema Rapid Radiative Transfer Model (RRTM) para radiaci\\u00f3n de onda larga.<\\/strong> Este esquema utiliza valores predeterminados en tablas que representan los procesos de onda larga debidos al vapor de agua, ozono, CO2 y gases traza (si existen), considerando tambi\\u00e9n las propiedades \\u00f3pticas de la nube en funci\\u00f3n de su profundidad.<\\/li>\\r\\n<li><strong>Esquema de Kain-Fritsch para la parametrizaci\\u00f3n de c\\u00famulus.<\\/strong> Es utilizado para representar los procesos convectivos por medio de un modelo que considera las corrientes verticales de aire h\\u00famedo en ambos sentidos, adem\\u00e1s de considerar un modelo simple de microf\\u00edsica.<\\/li>\\r\\n<li><strong>Esquema Yonsei University para la capa l\\u00edmite planetaria.<\\/strong> Este esquema se encarga de representar los flujos verticales peque\\u00f1os que son resultado del transporte turbulento en toda la columna atmosf\\u00e9rica.<\\/li>\\r\\n<\\/ul>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-15 00:44:09\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-04-27 18:34:19\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-04-27 18:34:06\",\"publish_up\":\"2017-03-15 00:44:09\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"17\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(503,1,1,'','2017-05-03 18:03:25',293,4233,'890dd7cc800b7d4b760fe4fa339edfb0f6f0b777','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Inicio\",\"alias\":\"inicio\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Modelos<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/pron_met.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/pron_ole.png\\\" alt=\\\"\\\" width=\\\"160\\\" height=\\\"160\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><img class=\\\"d1\\\" src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Meteorolog\\u00eda<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Oleaje<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Marea de Tormenta<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/hycom.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/mass.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/meteogramas\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/series_tiempo.jpg\\\" alt=\\\"\\\" width=\\\"161\\\" height=\\\"146\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Circulaci\\u00f3n oce\\u00e1nica<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Dispersi\\u00f3n de Cenizas<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Meteogramas<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/sondeos\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/sv_campeche_024.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Sondeos<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\">OWGIS<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><a href=\\\"http:\\/\\/pronostico.meteorologico.unam.mx\\/meteorologico\\/mapviewer\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/owgis_anim.gif\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"http:\\/\\/pronostico.meteorologico.unam.mx:8080\\/global\\/mapviewer\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/gfs_hycom.gif\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<p style=\\\"text-align: center;\\\">Pron\\u00f3stico <br \\/> meteorol\\u00f3gico<\\/p>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Pron\\u00f3sticos Globales <br \\/>GFS y HYCOM<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-10-30 00:10:14\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-05-03 18:03:25\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-05-03 18:02:53\",\"publish_up\":\"2015-10-30 00:10:14\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":87,\"ordering\":\"45\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"2027\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(504,1,1,'','2017-05-03 18:03:36',293,4251,'25e73e995ea9b43ea5d938bf4470b9fa4d1a28b0','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Inicio\",\"alias\":\"inicio\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">Modelos<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/meteorologia\\\"> <img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/pron_met.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><a href=\\\"index.php\\/oleaje\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/pron_ole.png\\\" alt=\\\"\\\" width=\\\"160\\\" height=\\\"160\\\" \\/><\\/a><\\/td>\\r\\n<td style=\\\"border: hidden;\\\"><img class=\\\"d1\\\" src=\\\"images\\/construccionmini.jpg\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Meteorolog\\u00eda<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Oleaje<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Marea de Tormenta<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/circulacion-oceanica\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/hycom.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/dispersion-de-cenizas\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/volcan\\/mass.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"index.php\\/meteogramas\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/series_tiempo.jpg\\\" alt=\\\"\\\" width=\\\"161\\\" height=\\\"146\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Circulaci\\u00f3n oce\\u00e1nica<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Dispersi\\u00f3n de Cenizas<\\/td>\\r\\n<td class=\\\"texto_cell2\\\">Meteogramas<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"index.php\\/sondeos\\\"><img class=\\\"d1\\\" src=\\\"images\\/Portadas\\/sv_campeche_024.png\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">Sondeos<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\">OWGIS<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table class=\\\"T_portada\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><a href=\\\"http:\\/\\/pronostico.meteorologico.unam.mx\\/meteorologico\\/mapviewer\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/owgis_anim.gif\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<td><a href=\\\"http:\\/\\/pronostico.meteorologico.unam.mx:8080\\/global\\/mapviewer\\\"><img class=\\\"d1\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Portadas\\/gfs_hycom.gif\\\" alt=\\\"\\\" \\/><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"texto_cell2\\\">\\r\\n<p style=\\\"text-align: center;\\\">Pron\\u00f3stico <br \\/> meteorol\\u00f3gico<\\/p>\\r\\n<\\/td>\\r\\n<td class=\\\"texto_cell2\\\" style=\\\"text-align: center;\\\">Pron\\u00f3sticos Globales <br \\/>GFS y HYCOM<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-10-30 00:10:14\",\"created_by\":\"293\",\"created_by_alias\":\"\",\"modified\":\"2017-05-03 18:03:36\",\"modified_by\":\"293\",\"checked_out\":\"293\",\"checked_out_time\":\"2017-05-03 18:03:25\",\"publish_up\":\"2015-10-30 00:10:14\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":88,\"ordering\":\"45\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"2027\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0);
/*!40000 ALTER TABLE `j4_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_update_sites`
--

DROP TABLE IF EXISTS `j4_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_update_sites`
--

LOCK TABLES `j4_update_sites` WRITE;
/*!40000 ALTER TABLE `j4_update_sites` DISABLE KEYS */;
INSERT INTO `j4_update_sites` VALUES (1,'Joomla! Core','collection','https://update.joomla.org/core/list.xml',1,1504133879,''),(3,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_3.xml',1,0,''),(4,'Joomla! Update Component Update Site','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,0,''),(5,'MOD_VISITORCOUNTER','extension','https://joomla-extensions.kubik-rubik.de/scripts/update-servers/mod_visitorcounter.xml',1,0,''),(6,'Krizalys Breadcrumbs updates','extension','http://update.krizalys.com/extend/joomla/breadcrumbs.xml',1,1504133879,''),(9,'Akeeba Backup Core','extension','http://cdn.akeebabackup.com/updates/pkgakeebacore.xml',1,1504133880,''),(11,'Joomla! Update Component Update Site','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1504133880,''),(13,'FOF 3.x','extension','http://cdn.akeebabackup.com/updates/fof3.xml',1,1504133880,'');
/*!40000 ALTER TABLE `j4_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_update_sites_extensions`
--

DROP TABLE IF EXISTS `j4_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_update_sites_extensions`
--

LOCK TABLES `j4_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `j4_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `j4_update_sites_extensions` VALUES (1,700),(3,802),(4,28),(5,10002),(6,10004),(9,10012),(11,28),(13,10015);
/*!40000 ALTER TABLE `j4_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_updates`
--

DROP TABLE IF EXISTS `j4_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_updates`
--

LOCK TABLES `j4_updates` WRITE;
/*!40000 ALTER TABLE `j4_updates` DISABLE KEYS */;
INSERT INTO `j4_updates` VALUES (1,1,700,'Joomla','','joomla','file','',0,'3.7.5','','https://update.joomla.org/core/sts/extension_sts.xml','',''),(2,9,10012,'Akeeba Backup Core package','Akeeba Backup Core package','pkg_akeeba','package','',0,'5.5.2','','http://cdn.akeebabackup.com/updates/pkgakeebacore.xml','https://www.akeebabackup.com/component/ars/?view=Items&release_id=2732',''),(3,13,0,'FOF 3.x Stable','FOF 3.x Stable','lib_fof30','library','',1,'3.1.2','','http://cdn.akeebabackup.com/updates/fof3.xml','https://www.akeebabackup.com/component/ars/?view=Items&release_id=2708','');
/*!40000 ALTER TABLE `j4_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_user_keys`
--

DROP TABLE IF EXISTS `j4_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_user_keys`
--

LOCK TABLES `j4_user_keys` WRITE;
/*!40000 ALTER TABLE `j4_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_user_notes`
--

DROP TABLE IF EXISTS `j4_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_user_notes`
--

LOCK TABLES `j4_user_notes` WRITE;
/*!40000 ALTER TABLE `j4_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_user_profiles`
--

DROP TABLE IF EXISTS `j4_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_user_profiles`
--

LOCK TABLES `j4_user_profiles` WRITE;
/*!40000 ALTER TABLE `j4_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `j4_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_user_usergroup_map`
--

DROP TABLE IF EXISTS `j4_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_user_usergroup_map`
--

LOCK TABLES `j4_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `j4_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `j4_user_usergroup_map` VALUES (293,8),(294,8),(295,6),(295,7);
/*!40000 ALTER TABLE `j4_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_usergroups`
--

DROP TABLE IF EXISTS `j4_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_usergroups`
--

LOCK TABLES `j4_usergroups` WRITE;
/*!40000 ALTER TABLE `j4_usergroups` DISABLE KEYS */;
INSERT INTO `j4_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `j4_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_users`
--

DROP TABLE IF EXISTS `j4_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `idx_name` (`name`(100))
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_users`
--

LOCK TABLES `j4_users` WRITE;
/*!40000 ALTER TABLE `j4_users` DISABLE KEYS */;
INSERT INTO `j4_users` VALUES (293,'Super User','Dulce','dulce.herrera@atmosfera.unam.mx','$2y$10$Ke5CcYOQYvmRLLG/XlRhluThgjcfuQFuGHaLDiztRJClfZHSeglXq',0,1,'2015-10-26 22:01:51','2017-08-29 22:25:18','0','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0),(294,'Cuauhtemoc','Cuauhtemoc','cuauhtemoc.silvav@gmail.com','$2y$10$DoA09jIGwIfDoeErSDirBuXh0h/b8nqQJ2NPdei5eDFnNZxIj6H76',0,0,'2015-10-30 18:52:22','2017-08-30 22:57:56','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0),(295,'developer','user','olmozavala@gmail.com','$2y$10$eqbcW/Pa1P2vm1nhlXFOj.hZ5oNeqUN2afrbh3Jwy1ic7qyvMhTim',0,1,'2017-08-18 22:03:02','2017-08-29 22:25:06','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0);
/*!40000 ALTER TABLE `j4_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_utf8_conversion`
--

DROP TABLE IF EXISTS `j4_utf8_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_utf8_conversion`
--

LOCK TABLES `j4_utf8_conversion` WRITE;
/*!40000 ALTER TABLE `j4_utf8_conversion` DISABLE KEYS */;
INSERT INTO `j4_utf8_conversion` VALUES (2);
/*!40000 ALTER TABLE `j4_utf8_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_vcnt`
--

DROP TABLE IF EXISTS `j4_vcnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_vcnt` (
  `tm` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_vcnt`
--

LOCK TABLES `j4_vcnt` WRITE;
/*!40000 ALTER TABLE `j4_vcnt` DISABLE KEYS */;
INSERT INTO `j4_vcnt` VALUES (1501293634,'127.0.0.1'),(1501693977,'132.248.8.98'),(1501869647,'10.20.12.143'),(1502468507,'10.20.12.143'),(1503004785,'10.20.12.147'),(1503078887,'127.0.0.1'),(1503079595,'10.20.12.143'),(1503079633,'132.248.8.98'),(1503095549,'10.20.12.83'),(1503338262,'::1'),(1503353586,'10.20.12.83'),(1503425864,'10.20.12.143'),(1503447657,'10.20.12.254'),(1503523223,'::1'),(1503596081,'10.20.12.254'),(1503616169,'10.20.12.143'),(1503700838,'10.20.12.254'),(1503950397,'10.20.12.254'),(1504031920,'::1'),(1504044803,'10.20.12.254'),(1504129823,'10.20.12.147'),(1504133855,'10.20.12.254');
/*!40000 ALTER TABLE `j4_vcnt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_vcnt_pc`
--

DROP TABLE IF EXISTS `j4_vcnt_pc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_vcnt_pc` (
  `cnt` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_vcnt_pc`
--

LOCK TABLES `j4_vcnt_pc` WRITE;
/*!40000 ALTER TABLE `j4_vcnt_pc` DISABLE KEYS */;
INSERT INTO `j4_vcnt_pc` VALUES (380);
/*!40000 ALTER TABLE `j4_vcnt_pc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j4_viewlevels`
--

DROP TABLE IF EXISTS `j4_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j4_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j4_viewlevels`
--

LOCK TABLES `j4_viewlevels` WRITE;
/*!40000 ALTER TABLE `j4_viewlevels` DISABLE KEYS */;
INSERT INTO `j4_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',2,'[6,2,8]'),(3,'Special',3,'[6,3,8]'),(5,'Guest',1,'[9]'),(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `j4_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-30 19:39:09