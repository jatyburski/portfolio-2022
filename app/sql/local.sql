-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-03-29 15:09:59','2021-03-29 15:09:59','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://portfolio-2022.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://portfolio-2022.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Joseph Tyburski','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Visual Designer in Baltimore','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','j.tyburski@yahoo.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:137:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"graphql/?$\";s:22:\"index.php?graphql=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:42:\"action_monitor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"action_monitor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"action_monitor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"action_monitor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"action_monitor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"action_monitor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"action_monitor/([^/]+)/embed/?$\";s:47:\"index.php?action_monitor=$matches[1]&embed=true\";s:35:\"action_monitor/([^/]+)/trackback/?$\";s:41:\"index.php?action_monitor=$matches[1]&tb=1\";s:43:\"action_monitor/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?action_monitor=$matches[1]&paged=$matches[2]\";s:50:\"action_monitor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?action_monitor=$matches[1]&cpage=$matches[2]\";s:39:\"action_monitor/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?action_monitor=$matches[1]&page=$matches[2]\";s:31:\"action_monitor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"action_monitor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"action_monitor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"action_monitor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"action_monitor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"action_monitor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:68:\"gatsby_action_ref_node_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?gatsby_action_ref_node_type=$matches[1]&feed=$matches[2]\";s:63:\"gatsby_action_ref_node_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?gatsby_action_ref_node_type=$matches[1]&feed=$matches[2]\";s:44:\"gatsby_action_ref_node_type/([^/]+)/embed/?$\";s:60:\"index.php?gatsby_action_ref_node_type=$matches[1]&embed=true\";s:56:\"gatsby_action_ref_node_type/([^/]+)/page/?([0-9]{1,})/?$\";s:67:\"index.php?gatsby_action_ref_node_type=$matches[1]&paged=$matches[2]\";s:38:\"gatsby_action_ref_node_type/([^/]+)/?$\";s:49:\"index.php?gatsby_action_ref_node_type=$matches[1]\";s:68:\"gatsby_action_ref_node_dbid/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?gatsby_action_ref_node_dbid=$matches[1]&feed=$matches[2]\";s:63:\"gatsby_action_ref_node_dbid/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?gatsby_action_ref_node_dbid=$matches[1]&feed=$matches[2]\";s:44:\"gatsby_action_ref_node_dbid/([^/]+)/embed/?$\";s:60:\"index.php?gatsby_action_ref_node_dbid=$matches[1]&embed=true\";s:56:\"gatsby_action_ref_node_dbid/([^/]+)/page/?([0-9]{1,})/?$\";s:67:\"index.php?gatsby_action_ref_node_dbid=$matches[1]&paged=$matches[2]\";s:38:\"gatsby_action_ref_node_dbid/([^/]+)/?$\";s:49:\"index.php?gatsby_action_ref_node_dbid=$matches[1]\";s:66:\"gatsby_action_ref_node_id/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?gatsby_action_ref_node_id=$matches[1]&feed=$matches[2]\";s:61:\"gatsby_action_ref_node_id/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?gatsby_action_ref_node_id=$matches[1]&feed=$matches[2]\";s:42:\"gatsby_action_ref_node_id/([^/]+)/embed/?$\";s:58:\"index.php?gatsby_action_ref_node_id=$matches[1]&embed=true\";s:54:\"gatsby_action_ref_node_id/([^/]+)/page/?([0-9]{1,})/?$\";s:65:\"index.php?gatsby_action_ref_node_id=$matches[1]&paged=$matches[2]\";s:36:\"gatsby_action_ref_node_id/([^/]+)/?$\";s:47:\"index.php?gatsby_action_ref_node_id=$matches[1]\";s:59:\"gatsby_action_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?gatsby_action_type=$matches[1]&feed=$matches[2]\";s:54:\"gatsby_action_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?gatsby_action_type=$matches[1]&feed=$matches[2]\";s:35:\"gatsby_action_type/([^/]+)/embed/?$\";s:51:\"index.php?gatsby_action_type=$matches[1]&embed=true\";s:47:\"gatsby_action_type/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?gatsby_action_type=$matches[1]&paged=$matches[2]\";s:29:\"gatsby_action_type/([^/]+)/?$\";s:40:\"index.php?gatsby_action_type=$matches[1]\";s:66:\"gatsby_action_stream_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?gatsby_action_stream_type=$matches[1]&feed=$matches[2]\";s:61:\"gatsby_action_stream_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?gatsby_action_stream_type=$matches[1]&feed=$matches[2]\";s:42:\"gatsby_action_stream_type/([^/]+)/embed/?$\";s:58:\"index.php?gatsby_action_stream_type=$matches[1]&embed=true\";s:54:\"gatsby_action_stream_type/([^/]+)/page/?([0-9]{1,})/?$\";s:65:\"index.php?gatsby_action_stream_type=$matches[1]&paged=$matches[2]\";s:36:\"gatsby_action_stream_type/([^/]+)/?$\";s:47:\"index.php?gatsby_action_stream_type=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=15&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:6:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:23:\"wp-gatsby/wp-gatsby.php\";i:3;s:33:\"wp-graphql-acf/wp-graphql-acf.php\";i:4;s:25:\"wp-graphql/wp-graphql.php\";i:5;s:23:\"wp-smushit/wp-smush.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','-4','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','portfolio','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','portfolio','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','15','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1632582599','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:5:{i:1618272600;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1618283400;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1618326600;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618327368;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','h?g*>..#Ky|tJ+DY_kBWBL%hpP.*ip3fAZ^{rxdi=8j(momKA*5yQiKS7~=W*1[[','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','qBFq?<pJ-p[NVATDD5%35d4r<kb4|,4nJNoZ00Y?:#!C1l52aph:-9j$~(xIv#~s','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617465499;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1618240201;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (129,'bedrock_autoloader','a:2:{s:7:\"plugins\";a:0:{}s:5:\"count\";i:0;}','no');
INSERT INTO `wp_options` VALUES (130,'secure_auth_key','x8U$ycYHd+)91O&4}%<!ZE-Ju`;i*Hga7,gHfvd}I2!Ed=y)G:0qcn?up}GPEjcJ','no');
INSERT INTO `wp_options` VALUES (131,'secure_auth_salt','uE2$6]E>hz%D2{+zE0>38HO6i]Z>Og,w7t0ue^6)cRUniQwcFj2Po^1DNEs]]&a$','no');
INSERT INTO `wp_options` VALUES (132,'logged_in_key','4hm=S^*M-QHN^hTNfDTJ&P~7Iz;y^{!JO~6muN~DL*mNoMf2KyWfj]P@7]53VL<3','no');
INSERT INTO `wp_options` VALUES (133,'logged_in_salt','JHL<7IlWKh #yu?-ZSJ08GuW,5#pV(tJq$dT45<&FLh$;:Hh k CWR/A8h.7<.,N','no');
INSERT INTO `wp_options` VALUES (141,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (152,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (158,'wp_graphql_version','1.3.3','yes');
INSERT INTO `wp_options` VALUES (159,'wpgatsby_settings','a:1:{s:18:\"preview_jwt_secret\";s:50:\"aU++XdDyqHfiuDNQfawlxIVSg+5QYpJY4la0SzrfRJ5pRddxyV\";}','yes');
INSERT INTO `wp_options` VALUES (160,'_gatsby_tracked_post_types','a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";}','yes');
INSERT INTO `wp_options` VALUES (161,'_gatsby_tracked_taxonomies','a:3:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";}','yes');
INSERT INTO `wp_options` VALUES (162,'graphql_general_settings','a:11:{s:16:\"graphql_endpoint\";s:7:\"graphql\";s:17:\"telemetry_enabled\";s:3:\"off\";s:16:\"graphiql_enabled\";s:2:\"on\";s:31:\"show_graphiql_link_in_admin_bar\";s:2:\"on\";s:25:\"delete_data_on_deactivate\";s:2:\"on\";s:18:\"debug_mode_enabled\";s:2:\"on\";s:15:\"tracing_enabled\";s:3:\"off\";s:17:\"tracing_user_role\";s:13:\"administrator\";s:18:\"query_logs_enabled\";s:3:\"off\";s:19:\"query_log_user_role\";s:13:\"administrator\";s:28:\"public_introspection_enabled\";s:3:\"off\";}','yes');
INSERT INTO `wp_options` VALUES (165,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (168,'auth_key','MtL24iOVzBh!>7GgZ~@L!:b(S@R4E=OPP.+?y{m34tTi`PF?Ab5JHLrI>n6}}!;F','no');
INSERT INTO `wp_options` VALUES (169,'auth_salt','5GqnzDD>EUc3y#<0CM@-$]mO-b3GXa:rtRxI#5|Vq~jQ@k*Q5.q9i(AczumBF, a','no');
INSERT INTO `wp_options` VALUES (176,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (229,'acf_version','5.9.5','yes');
INSERT INTO `wp_options` VALUES (232,'wp-smush-settings','a:22:{s:4:\"auto\";b:1;s:5:\"lossy\";b:0;s:10:\"strip_exif\";b:1;s:6:\"resize\";b:0;s:9:\"detection\";b:0;s:8:\"original\";b:0;s:6:\"backup\";b:0;s:10:\"png_to_jpg\";b:0;s:7:\"nextgen\";b:0;s:2:\"s3\";b:0;s:9:\"gutenberg\";b:0;s:10:\"js_builder\";b:0;s:3:\"cdn\";b:0;s:11:\"auto_resize\";b:0;s:4:\"webp\";b:1;s:5:\"usage\";b:0;s:17:\"accessible_colors\";b:0;s:9:\"keep_data\";b:1;s:9:\"lazy_load\";b:1;s:17:\"background_images\";b:1;s:16:\"rest_api_support\";b:0;s:8:\"webp_mod\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (233,'wp-smush-install-type','existing','no');
INSERT INTO `wp_options` VALUES (234,'wp-smush-version','3.8.4','no');
INSERT INTO `wp_options` VALUES (237,'wdev-frash','a:3:{s:7:\"plugins\";a:1:{s:23:\"wp-smushit/wp-smush.php\";i:1617078843;}s:5:\"queue\";a:2:{s:32:\"7de3619981caadc55f30a002bfb299f6\";a:4:{s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:4:\"type\";s:5:\"email\";s:7:\"show_at\";i:1617078843;s:6:\"sticky\";b:1;}s:32:\"fc50097023d0d34c5a66f6cddcf77694\";a:3:{s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:4:\"type\";s:4:\"rate\";s:7:\"show_at\";i:1618358398;}}s:4:\"done\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (238,'wpmudev_recommended_plugins_registered','a:1:{s:23:\"wp-smushit/wp-smush.php\";a:1:{s:13:\"registered_at\";i:1617078843;}}','no');
INSERT INTO `wp_options` VALUES (254,'smush_global_stats','a:9:{s:11:\"size_before\";i:0;s:10:\"size_after\";i:0;s:7:\"percent\";d:0;s:5:\"human\";s:5:\"0.0 B\";s:5:\"bytes\";i:0;s:12:\"total_images\";i:0;s:12:\"resize_count\";i:0;s:14:\"resize_savings\";i:0;s:18:\"conversion_savings\";i:0;}','no');
INSERT INTO `wp_options` VALUES (256,'dir_smush_stats','a:2:{s:9:\"dir_smush\";a:2:{s:5:\"total\";i:0;s:9:\"optimised\";i:0;}s:14:\"combined_stats\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (257,'wp-smush-lazy_load','a:9:{s:6:\"format\";a:5:{s:4:\"jpeg\";b:1;s:3:\"png\";b:1;s:3:\"gif\";b:1;s:3:\"svg\";b:1;s:6:\"iframe\";b:1;}s:6:\"output\";a:4:{s:7:\"content\";b:1;s:7:\"widgets\";b:1;s:10:\"thumbnails\";b:1;s:9:\"gravatars\";b:1;}s:9:\"animation\";a:4:{s:8:\"selected\";s:6:\"fadein\";s:6:\"fadein\";a:2:{s:8:\"duration\";i:400;s:5:\"delay\";i:0;}s:7:\"spinner\";a:2:{s:8:\"selected\";i:1;s:6:\"custom\";a:0:{}}s:11:\"placeholder\";a:3:{s:8:\"selected\";i:1;s:6:\"custom\";a:0:{}s:5:\"color\";s:7:\"#F3F3F3\";}}s:7:\"include\";a:7:{s:9:\"frontpage\";b:1;s:4:\"home\";b:1;s:4:\"page\";b:1;s:6:\"single\";b:1;s:7:\"archive\";b:1;s:8:\"category\";b:1;s:3:\"tag\";b:1;}s:13:\"exclude-pages\";a:0:{}s:15:\"exclude-classes\";a:0:{}s:6:\"footer\";b:1;s:6:\"native\";b:0;s:8:\"noscript\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (258,'skip-smush-setup','1','yes');
INSERT INTO `wp_options` VALUES (269,'_transient_health-check-site-status-result','{\"good\":\"17\",\"recommended\":\"1\",\"critical\":\"2\"}','yes');
INSERT INTO `wp_options` VALUES (741,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618240205;s:7:\"checked\";a:2:{s:9:\"portfolio\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (742,'template_root','/themes','yes');
INSERT INTO `wp_options` VALUES (743,'stylesheet_root','/themes','yes');
INSERT INTO `wp_options` VALUES (744,'current_theme','','yes');
INSERT INTO `wp_options` VALUES (745,'theme_mods_portfolio','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:33;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (746,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (802,'options_socialMedia_0_icons','linkedin-in','no');
INSERT INTO `wp_options` VALUES (803,'_options_socialMedia_0_icons','field_606b21be2e7aa','no');
INSERT INTO `wp_options` VALUES (804,'options_socialMedia_0_url','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://www.linkedin.com/in/joseph-tyburski/\";s:6:\"target\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (805,'_options_socialMedia_0_url','field_606b21eb2e7ab','no');
INSERT INTO `wp_options` VALUES (806,'options_socialMedia_1_icons','dribbble','no');
INSERT INTO `wp_options` VALUES (807,'_options_socialMedia_1_icons','field_606b21be2e7aa','no');
INSERT INTO `wp_options` VALUES (808,'options_socialMedia_1_url','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:30:\"https://dribbble.com/jtyburski\";s:6:\"target\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (809,'_options_socialMedia_1_url','field_606b21eb2e7ab','no');
INSERT INTO `wp_options` VALUES (810,'options_socialMedia_2_icons','behance','no');
INSERT INTO `wp_options` VALUES (811,'_options_socialMedia_2_icons','field_606b21be2e7aa','no');
INSERT INTO `wp_options` VALUES (812,'options_socialMedia_2_url','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.behance.net/\";s:6:\"target\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (813,'_options_socialMedia_2_url','field_606b21eb2e7ab','no');
INSERT INTO `wp_options` VALUES (814,'options_socialMedia_3_icons','github','no');
INSERT INTO `wp_options` VALUES (815,'_options_socialMedia_3_icons','field_606b21be2e7aa','no');
INSERT INTO `wp_options` VALUES (816,'options_socialMedia_3_url','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:29:\"https://github.com/jatyburski\";s:6:\"target\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (817,'_options_socialMedia_3_url','field_606b21eb2e7ab','no');
INSERT INTO `wp_options` VALUES (818,'options_socialMedia_4_icons','codepen','no');
INSERT INTO `wp_options` VALUES (819,'_options_socialMedia_4_icons','field_606b21be2e7aa','no');
INSERT INTO `wp_options` VALUES (820,'options_socialMedia_4_url','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:29:\"https://codepen.io/jatyburski\";s:6:\"target\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (821,'_options_socialMedia_4_url','field_606b21eb2e7ab','no');
INSERT INTO `wp_options` VALUES (822,'options_socialMedia_5_icons','medium-m','no');
INSERT INTO `wp_options` VALUES (823,'_options_socialMedia_5_icons','field_606b21be2e7aa','no');
INSERT INTO `wp_options` VALUES (824,'options_socialMedia_5_url','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:35:\"https://medium.com/@joseph_tyburski\";s:6:\"target\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (825,'_options_socialMedia_5_url','field_606b21eb2e7ab','no');
INSERT INTO `wp_options` VALUES (826,'options_socialMedia','6','no');
INSERT INTO `wp_options` VALUES (827,'_options_socialMedia','field_606b20d2e1dad','no');
INSERT INTO `wp_options` VALUES (839,'_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce','1618410137','no');
INSERT INTO `wp_options` VALUES (840,'_site_transient_php_check_12edeb5890095749089987982a1404ce','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (915,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (950,'options_socialMedia_0_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (951,'_options_socialMedia_0_link','field_606b21eb2e7ab','no');
INSERT INTO `wp_options` VALUES (952,'options_socialMedia_1_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (953,'_options_socialMedia_1_link','field_606b21eb2e7ab','no');
INSERT INTO `wp_options` VALUES (954,'options_socialMedia_2_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (955,'_options_socialMedia_2_link','field_606b21eb2e7ab','no');
INSERT INTO `wp_options` VALUES (956,'options_socialMedia_3_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (957,'_options_socialMedia_3_link','field_606b21eb2e7ab','no');
INSERT INTO `wp_options` VALUES (958,'options_socialMedia_4_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (959,'_options_socialMedia_4_link','field_606b21eb2e7ab','no');
INSERT INTO `wp_options` VALUES (960,'options_socialMedia_5_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (961,'_options_socialMedia_5_link','field_606b21eb2e7ab','no');
INSERT INTO `wp_options` VALUES (984,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (985,'new_admin_email','j.tyburski@yahoo.com','yes');
INSERT INTO `wp_options` VALUES (1040,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1618269635;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"wp-smushit/wp-smush.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/wp-smushit\";s:4:\"slug\";s:10:\"wp-smushit\";s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:11:\"new_version\";s:5:\"3.8.4\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/wp-smushit/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-smushit.3.8.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/wp-smushit/assets/icon-256x256.gif?rev=2263432\";s:2:\"1x\";s:63:\"https://ps.w.org/wp-smushit/assets/icon-128x128.gif?rev=2263431\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-smushit/assets/banner-1544x500.png?rev=1863697\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-smushit/assets/banner-772x250.png?rev=1863697\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"wp-gatsby/wp-gatsby.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/wp-gatsby\";s:4:\"slug\";s:9:\"wp-gatsby\";s:6:\"plugin\";s:23:\"wp-gatsby/wp-gatsby.php\";s:11:\"new_version\";s:5:\"1.0.8\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wp-gatsby/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wp-gatsby.1.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/wp-gatsby/assets/icon-256x256.png?rev=2336725\";s:2:\"1x\";s:62:\"https://ps.w.org/wp-gatsby/assets/icon-128x128.png?rev=2336725\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:25:\"wp-graphql/wp-graphql.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/wp-graphql\";s:4:\"slug\";s:10:\"wp-graphql\";s:6:\"plugin\";s:25:\"wp-graphql/wp-graphql.php\";s:11:\"new_version\";s:5:\"1.3.5\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/wp-graphql/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-graphql.1.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/wp-graphql/assets/icon-256x256.png?rev=2482884\";s:2:\"1x\";s:63:\"https://ps.w.org/wp-graphql/assets/icon-128x128.png?rev=2482884\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-graphql/assets/banner-1544x500.png?rev=2482884\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-graphql/assets/banner-772x250.png?rev=2482884\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (1077,'_transient_timeout_acf_plugin_updates','1618413005','no');
INSERT INTO `wp_options` VALUES (1078,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.5\";}}','no');
INSERT INTO `wp_options` VALUES (1079,'_site_transient_timeout_theme_roots','1618242005','no');
INSERT INTO `wp_options` VALUES (1080,'_site_transient_theme_roots','a:2:{s:9:\"portfolio\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:88:\"/Users/josephtyburski/Desktop/Builds/portfolio-2022/app/bedrock/web/wp/wp-content/themes\";}','no');
INSERT INTO `wp_options` VALUES (1090,'_site_transient_timeout_browser_5a98cafdc23ddafd89dd1b6162509499','1618874338','no');
INSERT INTO `wp_options` VALUES (1091,'_site_transient_browser_5a98cafdc23ddafd89dd1b6162509499','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"89.0.4389.114\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (11,10,'referenced_node_status','update_non_node_root_field');
INSERT INTO `wp_postmeta` VALUES (12,10,'referenced_node_single_name','updateNonNodeRootField');
INSERT INTO `wp_postmeta` VALUES (13,10,'referenced_node_plural_name','updateNonNodeRootField');
INSERT INTO `wp_postmeta` VALUES (14,1,'_edit_lock','1617212962:1');
INSERT INTO `wp_postmeta` VALUES (15,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (16,14,'referenced_node_status','none');
INSERT INTO `wp_postmeta` VALUES (17,14,'referenced_node_single_name','none');
INSERT INTO `wp_postmeta` VALUES (18,14,'referenced_node_plural_name','none');
INSERT INTO `wp_postmeta` VALUES (19,12,'_edit_lock','1617466903:1');
INSERT INTO `wp_postmeta` VALUES (20,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (21,15,'_edit_lock','1617466578:1');
INSERT INTO `wp_postmeta` VALUES (28,19,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (32,19,'_edit_lock','1617466586:1');
INSERT INTO `wp_postmeta` VALUES (33,22,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (37,22,'_edit_lock','1617466592:1');
INSERT INTO `wp_postmeta` VALUES (38,25,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (39,25,'_edit_lock','1617466599:1');
INSERT INTO `wp_postmeta` VALUES (40,27,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (44,27,'_edit_lock','1617466613:1');
INSERT INTO `wp_postmeta` VALUES (45,30,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (49,30,'_edit_lock','1617466643:1');
INSERT INTO `wp_postmeta` VALUES (50,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (51,3,'_wp_trash_meta_time','1617466795');
INSERT INTO `wp_postmeta` VALUES (52,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (53,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (54,2,'_wp_trash_meta_time','1617466795');
INSERT INTO `wp_postmeta` VALUES (55,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (59,25,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (60,25,'_wp_trash_meta_time','1617466801');
INSERT INTO `wp_postmeta` VALUES (61,25,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (63,36,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (64,36,'_wp_trash_meta_time','1617466835');
INSERT INTO `wp_postmeta` VALUES (68,39,'referenced_node_status','trash');
INSERT INTO `wp_postmeta` VALUES (69,39,'referenced_node_single_name','mediaItem');
INSERT INTO `wp_postmeta` VALUES (70,39,'referenced_node_plural_name','mediaItems');
INSERT INTO `wp_postmeta` VALUES (71,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (72,45,'_edit_lock','1618272066:1');
INSERT INTO `wp_postmeta` VALUES (73,52,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (74,52,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (75,52,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (76,52,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (77,52,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (78,52,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (79,52,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (80,52,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (82,53,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (83,53,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (84,53,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (85,53,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (86,53,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (87,53,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (88,53,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (89,53,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (91,54,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (92,54,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (93,54,'_menu_item_object_id','27');
INSERT INTO `wp_postmeta` VALUES (94,54,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (95,54,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (96,54,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (97,54,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (98,54,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (100,55,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (101,55,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (102,55,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (103,55,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (104,55,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (105,55,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (106,55,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (107,55,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (109,56,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (110,56,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (111,56,'_menu_item_object_id','30');
INSERT INTO `wp_postmeta` VALUES (112,56,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (113,56,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (114,56,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (115,56,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (116,56,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (118,57,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (119,57,'referenced_node_single_name','menu');
INSERT INTO `wp_postmeta` VALUES (120,57,'referenced_node_plural_name','menus');
INSERT INTO `wp_postmeta` VALUES (121,58,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (122,58,'referenced_node_single_name','menuItem');
INSERT INTO `wp_postmeta` VALUES (123,58,'referenced_node_plural_name','menuItems');
INSERT INTO `wp_postmeta` VALUES (124,59,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (125,59,'referenced_node_single_name','menuItem');
INSERT INTO `wp_postmeta` VALUES (126,59,'referenced_node_plural_name','menuItems');
INSERT INTO `wp_postmeta` VALUES (127,60,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (128,60,'referenced_node_single_name','menuItem');
INSERT INTO `wp_postmeta` VALUES (129,60,'referenced_node_plural_name','menuItems');
INSERT INTO `wp_postmeta` VALUES (130,61,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (131,61,'referenced_node_single_name','menuItem');
INSERT INTO `wp_postmeta` VALUES (132,61,'referenced_node_plural_name','menuItems');
INSERT INTO `wp_postmeta` VALUES (133,62,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (134,62,'referenced_node_single_name','menuItem');
INSERT INTO `wp_postmeta` VALUES (135,62,'referenced_node_plural_name','menuItems');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-03-29 15:09:59','2021-03-29 15:09:59','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-03-29 15:09:59','2021-03-29 15:09:59','',0,'http://portfolio-2022.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-03-29 15:09:59','2021-03-29 15:09:59','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://portfolio-2022.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2021-04-03 16:19:55','2021-04-03 16:19:55','',0,'http://portfolio-2022.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-03-29 15:09:59','2021-03-29 15:09:59','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://portfolio-2022.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2021-04-03 16:19:55','2021-04-03 16:19:55','',0,'http://portfolio-2022.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-03-30 04:31:49','2021-03-30 04:31:49','{\"action_type\":\"NON_NODE_ROOT_FIELDS\",\"title\":\"Update Setting:  gmt_offset\",\"node_id\":\"update_non_node_root_field\",\"relay_id\":\"update_non_node_root_field\",\"graphql_single_name\":\"update_non_node_root_field\",\"graphql_plural_name\":\"update_non_node_root_field\",\"status\":\"update_non_node_root_field\"}','Update Setting:  gmt_offset','','publish','closed','closed','','update-setting-active_plugins-1617078709','','','2021-04-10 15:54:19','2021-04-10 19:54:19','',0,'https://portfolio-2022.local/action_monitor/update-setting-active_plugins-1617078709/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-03-31 16:11:51','2021-03-31 16:11:51','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','Test excerpt','inherit','closed','closed','','1-autosave-v1','','','2021-03-31 16:11:51','2021-03-31 16:11:51','',1,'https://portfolio-2022.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-04-03 15:50:29','2021-04-03 15:50:29','a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:15:\"show_in_graphql\";i:1;s:18:\"graphql_field_name\";s:7:\"acfTest\";}','Test','test','publish','closed','closed','','group_60688e141af4a','','','2021-04-03 16:24:05','2021-04-03 16:24:05','',0,'https://portfolio-2022.local/?post_type=acf-field-group&#038;p=12',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-04-03 15:50:29','2021-04-03 15:50:29','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Test','test','publish','closed','closed','','field_60688ead1dd1b','','','2021-04-03 15:50:29','2021-04-03 15:50:29','',12,'https://portfolio-2022.local/?post_type=acf-field&p=13',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-04-03 15:50:29','2021-04-03 15:50:29','{\"title\":\"Update ACF Field Group\",\"node_id\":\"none\",\"relay_id\":\"none\",\"graphql_single_name\":\"none\",\"graphql_plural_name\":\"none\",\"status\":\"none\",\"action_type\":\"DIFF_SCHEMAS\"}','Update ACF Field Group','','publish','closed','closed','','update-acf-field-group-1617465029','','','2021-04-08 13:13:26','2021-04-08 13:13:26','',0,'https://portfolio-2022.local/action_monitor/update-acf-field-group-1617465029/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-04-03 16:18:40','2021-04-03 16:18:40','','Home','','publish','closed','closed','','home','','','2021-04-03 16:18:40','2021-04-03 16:18:40','',0,'https://portfolio-2022.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-04-03 16:18:40','2021-04-03 16:18:40','','Home','','inherit','closed','closed','','15-revision-v1','','','2021-04-03 16:18:40','2021-04-03 16:18:40','',15,'https://portfolio-2022.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-04-03 16:18:49','2021-04-03 16:18:49','','About','','publish','closed','closed','','about','','','2021-04-03 16:18:49','2021-04-03 16:18:49','',0,'https://portfolio-2022.local/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-04-03 16:18:49','2021-04-03 16:18:49','','About','','inherit','closed','closed','','19-revision-v1','','','2021-04-03 16:18:49','2021-04-03 16:18:49','',19,'https://portfolio-2022.local/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-04-03 16:18:54','2021-04-03 16:18:54','','Process','','publish','closed','closed','','process','','','2021-04-03 16:18:54','2021-04-03 16:18:54','',0,'https://portfolio-2022.local/?page_id=22',0,'page','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-04-03 16:18:54','2021-04-03 16:18:54','','Process','','inherit','closed','closed','','22-revision-v1','','','2021-04-03 16:18:54','2021-04-03 16:18:54','',22,'https://portfolio-2022.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-04-03 16:20:01','2021-04-03 16:20:01','','Case Studies','','trash','closed','closed','','__trashed','','','2021-04-03 16:20:01','2021-04-03 16:20:01','',0,'https://portfolio-2022.local/?page_id=25',0,'page','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-04-03 16:19:00','2021-04-03 16:19:00','','Case Studies','','inherit','closed','closed','','25-revision-v1','','','2021-04-03 16:19:00','2021-04-03 16:19:00','',25,'https://portfolio-2022.local/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-04-03 16:19:16','2021-04-03 16:19:16','','Contact','','publish','closed','closed','','contact','','','2021-04-03 16:19:16','2021-04-03 16:19:16','',0,'https://portfolio-2022.local/?page_id=27',0,'page','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-04-03 16:19:16','2021-04-03 16:19:16','','Contact','','inherit','closed','closed','','27-revision-v1','','','2021-04-03 16:19:16','2021-04-03 16:19:16','',27,'https://portfolio-2022.local/?p=29',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-04-03 16:19:37','2021-04-03 16:19:37','','Technology','','publish','closed','closed','','technology','','','2021-04-03 16:19:37','2021-04-03 16:19:37','',0,'https://portfolio-2022.local/?page_id=30',0,'page','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-04-03 16:19:37','2021-04-03 16:19:37','','Technology','','inherit','closed','closed','','30-revision-v1','','','2021-04-03 16:19:37','2021-04-03 16:19:37','',30,'https://portfolio-2022.local/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-04-03 16:19:55','2021-04-03 16:19:55','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://portfolio-2022.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2021-04-03 16:19:55','2021-04-03 16:19:55','',3,'https://portfolio-2022.local/?p=33',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-04-03 16:19:55','2021-04-03 16:19:55','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://portfolio-2022.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-04-03 16:19:55','2021-04-03 16:19:55','',2,'https://portfolio-2022.local/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-04-03 16:20:35','2021-04-03 16:20:35','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-03 16:20:35\"\n    },\n    \"page_on_front\": {\n        \"value\": \"15\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-03 16:20:35\"\n    }\n}','','','trash','closed','closed','','e4798c75-11e8-4784-94b9-68b857163b6b','','','2021-04-03 16:20:35','2021-04-03 16:20:35','',0,'https://portfolio-2022.local/e4798c75-11e8-4784-94b9-68b857163b6b/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-04-05 04:14:44','2021-04-05 04:14:44','{\"action_type\":\"DELETE\",\"title\":\"advanced-custom-fields-pro (1).zip\",\"status\":\"trash\",\"node_id\":38,\"relay_id\":\"cG9zdDozOA==\",\"graphql_single_name\":\"mediaItem\",\"graphql_plural_name\":\"mediaItems\",\"skip_webhook\":true}','advanced-custom-fields-pro (1).zip','','publish','closed','closed','','advanced-custom-fields-pro-1-zip-1617596084','','','2021-04-05 04:14:45','2021-04-05 04:14:45','',0,'https://portfolio-2022.local/action_monitor/advanced-custom-fields-pro-1-zip-1617596084/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-04-05 14:41:40','2021-04-05 14:41:40','a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"theme-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:15:\"show_in_graphql\";i:1;s:18:\"graphql_field_name\";s:11:\"socialIcons\";}','Theme Options','theme-options','publish','closed','closed','','group_606b20c6de333','','','2021-04-08 13:13:26','2021-04-08 13:13:26','',0,'https://portfolio-2022.local/?post_type=acf-field-group&#038;p=45',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-04-05 14:41:40','2021-04-05 14:41:40','a:11:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:15:\"show_in_graphql\";i:1;s:9:\"collapsed\";s:19:\"field_606b21be2e7aa\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}','Social Media','socialMedia','publish','closed','closed','','field_606b20d2e1dad','','','2021-04-05 14:43:36','2021-04-05 14:43:36','',45,'https://portfolio-2022.local/?post_type=acf-field&#038;p=46',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-04-05 14:43:36','2021-04-05 14:43:36','a:14:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:15:\"show_in_graphql\";i:1;s:7:\"choices\";a:6:{s:11:\"linkedin-in\";s:8:\"LinkedIn\";s:8:\"dribbble\";s:8:\"Dribbble\";s:7:\"behance\";s:8:\"Bēhance\";s:6:\"github\";s:6:\"GitHub\";s:7:\"codepen\";s:7:\"CodePen\";s:8:\"medium-m\";s:6:\"Medium\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"array\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Icons','icons','publish','closed','closed','','field_606b21be2e7aa','','','2021-04-05 14:44:56','2021-04-05 14:44:56','',46,'https://portfolio-2022.local/?post_type=acf-field&#038;p=49',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-04-05 14:43:36','2021-04-05 14:43:36','a:7:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:15:\"show_in_graphql\";i:1;s:13:\"return_format\";s:3:\"url\";}','Url','link','publish','closed','closed','','field_606b21eb2e7ab','','','2021-04-08 13:13:26','2021-04-08 13:13:26','',46,'https://portfolio-2022.local/?post_type=acf-field&#038;p=50',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-04-07 14:22:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-04-07 14:22:30','0000-00-00 00:00:00','',0,'https://portfolio-2022.local/?p=51',0,'post','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-04-08 19:40:53','2021-04-08 19:40:49',' ','','','publish','closed','closed','','52','','','2021-04-08 19:40:53','2021-04-08 19:40:53','',0,'https://portfolio-2022.local/?p=52',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-04-08 19:40:53','2021-04-08 19:40:49',' ','','','publish','closed','closed','','53','','','2021-04-08 19:40:53','2021-04-08 19:40:53','',0,'https://portfolio-2022.local/?p=53',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-04-08 19:40:53','2021-04-08 19:40:49',' ','','','publish','closed','closed','','54','','','2021-04-08 19:40:53','2021-04-08 19:40:53','',0,'https://portfolio-2022.local/?p=54',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-04-08 19:40:53','2021-04-08 19:40:49',' ','','','publish','closed','closed','','55','','','2021-04-08 19:40:53','2021-04-08 19:40:53','',0,'https://portfolio-2022.local/?p=55',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-04-08 19:40:53','2021-04-08 19:40:49',' ','','','publish','closed','closed','','56','','','2021-04-08 19:40:53','2021-04-08 19:40:53','',0,'https://portfolio-2022.local/?p=56',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-04-08 19:40:53','2021-04-08 19:40:53','{\"action_type\":\"UPDATE\",\"title\":\"Primary\",\"status\":\"publish\",\"node_id\":33,\"relay_id\":\"dGVybTozMw==\",\"graphql_single_name\":\"menu\",\"graphql_plural_name\":\"menus\"}','Primary','','publish','closed','closed','','primary-1617910853','','','2021-04-08 19:40:53','2021-04-08 19:40:53','',0,'https://portfolio-2022.local/action_monitor/primary-1617910853/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-04-08 19:40:53','2021-04-08 19:40:53','{\"action_type\":\"UPDATE\",\"title\":\"\",\"status\":\"publish\",\"node_id\":52,\"relay_id\":\"cG9zdDo1Mg==\",\"graphql_single_name\":\"menuItem\",\"graphql_plural_name\":\"menuItems\"}','','','publish','closed','closed','','1617910853','','','2021-04-08 19:40:53','2021-04-08 19:40:53','',0,'https://portfolio-2022.local/action_monitor/1617910853/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-04-08 19:40:53','2021-04-08 19:40:53','{\"action_type\":\"UPDATE\",\"title\":\"\",\"status\":\"publish\",\"node_id\":53,\"relay_id\":\"cG9zdDo1Mw==\",\"graphql_single_name\":\"menuItem\",\"graphql_plural_name\":\"menuItems\"}','','','publish','closed','closed','','1617910853-2','','','2021-04-08 19:40:53','2021-04-08 19:40:53','',0,'https://portfolio-2022.local/action_monitor/1617910853-2/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-04-08 19:40:53','2021-04-08 19:40:53','{\"action_type\":\"UPDATE\",\"title\":\"\",\"status\":\"publish\",\"node_id\":54,\"relay_id\":\"cG9zdDo1NA==\",\"graphql_single_name\":\"menuItem\",\"graphql_plural_name\":\"menuItems\"}','','','publish','closed','closed','','1617910853-3','','','2021-04-08 19:40:53','2021-04-08 19:40:53','',0,'https://portfolio-2022.local/action_monitor/1617910853-3/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-04-08 19:40:53','2021-04-08 19:40:53','{\"action_type\":\"UPDATE\",\"title\":\"\",\"status\":\"publish\",\"node_id\":55,\"relay_id\":\"cG9zdDo1NQ==\",\"graphql_single_name\":\"menuItem\",\"graphql_plural_name\":\"menuItems\"}','','','publish','closed','closed','','1617910853-4','','','2021-04-08 19:40:53','2021-04-08 19:40:53','',0,'https://portfolio-2022.local/action_monitor/1617910853-4/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-04-08 19:40:53','2021-04-08 19:40:53','{\"action_type\":\"UPDATE\",\"title\":\"\",\"status\":\"publish\",\"node_id\":56,\"relay_id\":\"cG9zdDo1Ng==\",\"graphql_single_name\":\"menuItem\",\"graphql_plural_name\":\"menuItems\"}','','','publish','closed','closed','','1617910853-5','','','2021-04-08 19:40:53','2021-04-08 19:40:53','',0,'https://portfolio-2022.local/action_monitor/1617910853-5/',0,'action_monitor','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_smush_dir_images`
--

DROP TABLE IF EXISTS `wp_smush_dir_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_smush_dir_images` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `path_hash` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resize` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lossy` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_size` int(10) unsigned DEFAULT NULL,
  `orig_size` int(10) unsigned DEFAULT NULL,
  `file_time` int(10) unsigned DEFAULT NULL,
  `last_scan` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text COLLATE utf8mb4_unicode_520_ci,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `path_hash` (`path_hash`),
  KEY `image_size` (`image_size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_smush_dir_images`
--

LOCK TABLES `wp_smush_dir_images` WRITE;
/*!40000 ALTER TABLE `wp_smush_dir_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_smush_dir_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (10,2,0);
INSERT INTO `wp_term_relationships` VALUES (10,3,0);
INSERT INTO `wp_term_relationships` VALUES (10,4,0);
INSERT INTO `wp_term_relationships` VALUES (10,5,0);
INSERT INTO `wp_term_relationships` VALUES (10,6,0);
INSERT INTO `wp_term_relationships` VALUES (14,6,0);
INSERT INTO `wp_term_relationships` VALUES (14,7,0);
INSERT INTO `wp_term_relationships` VALUES (14,8,0);
INSERT INTO `wp_term_relationships` VALUES (14,9,0);
INSERT INTO `wp_term_relationships` VALUES (14,10,0);
INSERT INTO `wp_term_relationships` VALUES (39,6,0);
INSERT INTO `wp_term_relationships` VALUES (39,29,0);
INSERT INTO `wp_term_relationships` VALUES (39,30,0);
INSERT INTO `wp_term_relationships` VALUES (39,31,0);
INSERT INTO `wp_term_relationships` VALUES (39,32,0);
INSERT INTO `wp_term_relationships` VALUES (52,33,0);
INSERT INTO `wp_term_relationships` VALUES (53,33,0);
INSERT INTO `wp_term_relationships` VALUES (54,33,0);
INSERT INTO `wp_term_relationships` VALUES (55,33,0);
INSERT INTO `wp_term_relationships` VALUES (56,33,0);
INSERT INTO `wp_term_relationships` VALUES (57,6,0);
INSERT INTO `wp_term_relationships` VALUES (57,14,0);
INSERT INTO `wp_term_relationships` VALUES (57,34,0);
INSERT INTO `wp_term_relationships` VALUES (57,35,0);
INSERT INTO `wp_term_relationships` VALUES (57,36,0);
INSERT INTO `wp_term_relationships` VALUES (58,6,0);
INSERT INTO `wp_term_relationships` VALUES (58,14,0);
INSERT INTO `wp_term_relationships` VALUES (58,37,0);
INSERT INTO `wp_term_relationships` VALUES (58,38,0);
INSERT INTO `wp_term_relationships` VALUES (58,39,0);
INSERT INTO `wp_term_relationships` VALUES (59,6,0);
INSERT INTO `wp_term_relationships` VALUES (59,14,0);
INSERT INTO `wp_term_relationships` VALUES (59,38,0);
INSERT INTO `wp_term_relationships` VALUES (59,40,0);
INSERT INTO `wp_term_relationships` VALUES (59,41,0);
INSERT INTO `wp_term_relationships` VALUES (60,6,0);
INSERT INTO `wp_term_relationships` VALUES (60,14,0);
INSERT INTO `wp_term_relationships` VALUES (60,38,0);
INSERT INTO `wp_term_relationships` VALUES (60,42,0);
INSERT INTO `wp_term_relationships` VALUES (60,43,0);
INSERT INTO `wp_term_relationships` VALUES (61,6,0);
INSERT INTO `wp_term_relationships` VALUES (61,14,0);
INSERT INTO `wp_term_relationships` VALUES (61,38,0);
INSERT INTO `wp_term_relationships` VALUES (61,44,0);
INSERT INTO `wp_term_relationships` VALUES (61,45,0);
INSERT INTO `wp_term_relationships` VALUES (62,6,0);
INSERT INTO `wp_term_relationships` VALUES (62,14,0);
INSERT INTO `wp_term_relationships` VALUES (62,38,0);
INSERT INTO `wp_term_relationships` VALUES (62,46,0);
INSERT INTO `wp_term_relationships` VALUES (62,47,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'gatsby_action_ref_node_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'gatsby_action_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'gatsby_action_stream_type','',0,9);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'gatsby_action_ref_node_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'gatsby_action_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'gatsby_action_ref_node_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'gatsby_action_type','',0,8);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'gatsby_action_ref_node_type','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'gatsby_action_type','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (22,22,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (23,23,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (24,24,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (25,25,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (26,26,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (27,27,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (28,28,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (29,29,'gatsby_action_type','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (30,30,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (31,31,'gatsby_action_ref_node_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (32,32,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (33,33,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (34,34,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (35,35,'gatsby_action_ref_node_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (36,36,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (37,37,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (38,38,'gatsby_action_ref_node_type','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (39,39,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (40,40,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (41,41,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (42,42,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (43,43,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (44,44,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (45,45,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (46,46,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (47,47,'gatsby_action_ref_node_id','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'update_non_node_root_field','update_non_node_root_field',0);
INSERT INTO `wp_terms` VALUES (3,'update_non_node_root_field','update_non_node_root_field',0);
INSERT INTO `wp_terms` VALUES (4,'update_non_node_root_field','update_non_node_root_field',0);
INSERT INTO `wp_terms` VALUES (5,'NON_NODE_ROOT_FIELDS','non_node_root_fields',0);
INSERT INTO `wp_terms` VALUES (6,'CONTENT','content',0);
INSERT INTO `wp_terms` VALUES (7,'none','none',0);
INSERT INTO `wp_terms` VALUES (8,'none','none',0);
INSERT INTO `wp_terms` VALUES (9,'none','none',0);
INSERT INTO `wp_terms` VALUES (10,'DIFF_SCHEMAS','diff_schemas',0);
INSERT INTO `wp_terms` VALUES (11,'1','1',0);
INSERT INTO `wp_terms` VALUES (12,'user','user',0);
INSERT INTO `wp_terms` VALUES (13,'dXNlcjox','dxnlcjox',0);
INSERT INTO `wp_terms` VALUES (14,'UPDATE','update',0);
INSERT INTO `wp_terms` VALUES (15,'15','15',0);
INSERT INTO `wp_terms` VALUES (16,'page','page',0);
INSERT INTO `wp_terms` VALUES (17,'cG9zdDoxNQ==','cg9zddoxnq',0);
INSERT INTO `wp_terms` VALUES (18,'CREATE','create',0);
INSERT INTO `wp_terms` VALUES (19,'19','19',0);
INSERT INTO `wp_terms` VALUES (20,'cG9zdDoxOQ==','cg9zddoxoq',0);
INSERT INTO `wp_terms` VALUES (21,'22','22',0);
INSERT INTO `wp_terms` VALUES (22,'cG9zdDoyMg==','cg9zddoymg',0);
INSERT INTO `wp_terms` VALUES (23,'27','27',0);
INSERT INTO `wp_terms` VALUES (24,'cG9zdDoyNw==','cg9zddoynw',0);
INSERT INTO `wp_terms` VALUES (25,'30','30',0);
INSERT INTO `wp_terms` VALUES (26,'cG9zdDozMA==','cg9zddozma',0);
INSERT INTO `wp_terms` VALUES (27,'2','2',0);
INSERT INTO `wp_terms` VALUES (28,'cG9zdDoy','cg9zddoy',0);
INSERT INTO `wp_terms` VALUES (29,'DELETE','delete',0);
INSERT INTO `wp_terms` VALUES (30,'38','38',0);
INSERT INTO `wp_terms` VALUES (31,'mediaItem','mediaitem',0);
INSERT INTO `wp_terms` VALUES (32,'cG9zdDozOA==','cg9zddozoa',0);
INSERT INTO `wp_terms` VALUES (33,'Primary','primary',0);
INSERT INTO `wp_terms` VALUES (34,'33','33',0);
INSERT INTO `wp_terms` VALUES (35,'menu','menu',0);
INSERT INTO `wp_terms` VALUES (36,'dGVybTozMw==','dgvybtozmw',0);
INSERT INTO `wp_terms` VALUES (37,'52','52',0);
INSERT INTO `wp_terms` VALUES (38,'menuItem','menuitem',0);
INSERT INTO `wp_terms` VALUES (39,'cG9zdDo1Mg==','cg9zddo1mg',0);
INSERT INTO `wp_terms` VALUES (40,'53','53',0);
INSERT INTO `wp_terms` VALUES (41,'cG9zdDo1Mw==','cg9zddo1mw',0);
INSERT INTO `wp_terms` VALUES (42,'54','54',0);
INSERT INTO `wp_terms` VALUES (43,'cG9zdDo1NA==','cg9zddo1na',0);
INSERT INTO `wp_terms` VALUES (44,'55','55',0);
INSERT INTO `wp_terms` VALUES (45,'cG9zdDo1NQ==','cg9zddo1nq',0);
INSERT INTO `wp_terms` VALUES (46,'56','56',0);
INSERT INTO `wp_terms` VALUES (47,'cG9zdDo1Ng==','cg9zddo1ng',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','jatyburski');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"ac41a4aa84c4b05c9013ce1956e282fb1aedf0e23f010875f524f4a073b30342\";a:4:{s:10:\"expiration\";i:1618442338;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1618269538;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','51');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'acf_to_rest_api_donation_version','3.3.2');
INSERT INTO `wp_usermeta` VALUES (20,1,'closedpostboxes_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_post','a:5:{i:0;s:13:\"trackbacksdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_dashboard','a:3:{i:0;s:18:\"dashboard_activity\";i:1;s:21:\"dashboard_quick_press\";i:2;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'meta-box-order_dashboard','a:4:{s:6:\"normal\";s:40:\"dashboard_site_health,dashboard_activity\";s:4:\"side\";s:59:\"dashboard_quick_press,dashboard_primary,dashboard_right_now\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'jatyburski','$2y$10$f5J8DJ2CuImJkK1o6ZC4b.3VGVRynY7YHda2/D1y57XSQaj5f44oS','jatyburski','j.tyburski@yahoo.com','http://portfolio-2022.local','2021-03-29 15:09:59','',0,'jatyburski');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-15  9:32:31
