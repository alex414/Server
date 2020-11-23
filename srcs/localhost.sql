-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 23, 2020 at 03:59 PM
-- Server version: 10.3.25-MariaDB-0+deb10u1
-- PHP Version: 7.3.19-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Servidor', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'alexdaiz414@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '48748', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:4:{i:2;a:4:{s:5:\"title\";s:20:\"Acerca de este sitio\";s:4:\"text\";s:108:\"Este puede ser un buen lugar para presentarte a ti mismo y a tu sitio o para incluir algunas acreditaciones.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:13:\"Encuéntranos\";s:4:\"text\";s:161:\"<strong>Dirección</strong>\nCalle Principal, 123\nMadrid, 28000\n\n<strong>Horas</strong>\nLunes a viernes: de 9:00 a 17:00 h.\nSábado y domingo: de 11:00 a 15:00 h.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:5;a:4:{s:5:\"title\";s:2:\"42\";s:4:\"text\";s:254:\"42 is a private, nonprofit and tuition-free computer programming school created and funded by French billionaire Xavier Niel with several partners including Nicolas Sadirac, Kwame Yamgnane and Florian Bucher. The school was first opened in Paris in 2013.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1621697657', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'es_ES', 'yes'),
(98, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:4;a:0:{}}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:15:{i:0;s:10:\"calendar-3\";i:1;s:8:\"search-4\";i:2;s:6:\"text-5\";i:3;s:10:\"nav_menu-3\";i:4;s:10:\"nav_menu-5\";i:5;s:10:\"archives-2\";i:6;s:6:\"meta-2\";i:7;s:8:\"search-2\";i:8;s:6:\"text-2\";i:9;s:6:\"text-3\";i:10;s:12:\"categories-2\";i:11;s:14:\"recent-posts-2\";i:12;s:17:\"recent-comments-2\";i:13;s:13:\"media_audio-3\";i:14;s:13:\"media_audio-4\";}s:9:\"sidebar-1\";a:1:{i:0;s:10:\"nav_menu-6\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1606149355;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1606149630;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1606174830;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1606174834;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606174836;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606232374;a:1:{s:26:\"importer_scheduled_cleanup\";a:1:{s:32:\"a62f2e612393a7fc399274410b3ac2d6\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:78;}}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(107, 'widget_media_audio', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:10:{s:7:\"preload\";s:4:\"none\";s:4:\"loop\";b:0;s:3:\"mp3\";s:0:\"\";s:3:\"ogg\";s:0:\"\";s:4:\"flac\";s:0:\"\";s:3:\"m4a\";s:0:\"\";s:3:\"wav\";s:0:\"\";s:13:\"attachment_id\";i:0;s:3:\"url\";s:0:\"\";s:5:\"title\";s:14:\"lññlñklñkl\";}i:4;a:10:{s:7:\"preload\";s:4:\"none\";s:4:\"loop\";b:0;s:3:\"mp3\";s:0:\"\";s:3:\"ogg\";s:0:\"\";s:4:\"flac\";s:0:\"\";s:3:\"m4a\";s:0:\"\";s:3:\"wav\";s:0:\"\";s:13:\"attachment_id\";i:0;s:3:\"url\";s:0:\"\";s:5:\"title\";s:9:\"asffasafs\";}}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:4:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:5:\"LOGIN\";s:8:\"nav_menu\";i:5;}i:5;a:2:{s:5:\"title\";s:4:\"Loin\";s:8:\"nav_menu\";i:5;}i:6;a:2:{s:5:\"title\";s:5:\"LOGIN\";s:8:\"nav_menu\";i:5;}}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(135, 'theme_mods_twentytwenty', 'a:15:{s:18:\"custom_css_post_id\";i:49;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:0;s:8:\"expanded\";i:0;s:6:\"social\";i:0;}s:16:\"background_color\";s:6:\"1e73be\";s:11:\"retina_logo\";b:0;s:24:\"accent_accessible_colors\";a:2:{s:7:\"content\";a:5:{s:4:\"text\";s:7:\"#ffffff\";s:6:\"accent\";s:7:\"#fcf2f4\";s:10:\"background\";s:7:\"#1e73be\";s:7:\"borders\";s:7:\"#2a8adf\";s:9:\"secondary\";s:7:\"#ffffff\";}s:13:\"header-footer\";a:5:{s:4:\"text\";s:7:\"#000000\";s:6:\"accent\";s:7:\"#e22658\";s:10:\"background\";s:7:\"#ffffff\";s:7:\"borders\";s:7:\"#dbdbdb\";s:9:\"secondary\";s:7:\"#6d6d6d\";}}s:30:\"header_footer_background_color\";s:7:\"#ffffff\";s:20:\"enable_header_search\";b:0;s:15:\"show_author_bio\";b:0;s:12:\"blog_content\";s:4:\"full\";s:31:\"cover_template_fixed_background\";b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1606147007;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:15:{i:0;s:10:\"calendar-3\";i:1;s:8:\"search-4\";i:2;s:6:\"text-5\";i:3;s:10:\"nav_menu-3\";i:4;s:10:\"nav_menu-5\";i:5;s:10:\"archives-2\";i:6;s:6:\"meta-2\";i:7;s:8:\"search-2\";i:8;s:6:\"text-2\";i:9;s:6:\"text-3\";i:10;s:12:\"categories-2\";i:11;s:14:\"recent-posts-2\";i:12;s:17:\"recent-comments-2\";i:13;s:13:\"media_audio-3\";i:14;s:13:\"media_audio-4\";}s:9:\"sidebar-1\";a:1:{i:0;s:10:\"nav_menu-6\";}s:9:\"sidebar-2\";a:0:{}}}s:17:\"accent_hue_active\";s:7:\"default\";s:10:\"accent_hue\";i:344;s:30:\"cover_template_overlay_opacity\";i:40;s:39:\"cover_template_overlay_background_color\";s:7:\"#ffe5e5\";}', 'yes'),
(136, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:9:\"localhost\";s:8:\"username\";s:6:\"alex414\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(142, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(163, 'current_theme', 'Twenty Seventeen', 'yes'),
(164, 'theme_mods_draco', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1583587461;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}}}}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(175, 'db_upgraded', '', 'yes'),
(188, 'theme_mods_twentyseventeen', 'a:6:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:6:\"social\";i:0;}s:21:\"external_header_video\";s:0:\"\";s:12:\"header_image\";s:20:\"random-default-image\";s:16:\"header_textcolor\";s:6:\"ff2861\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1606145707;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:13:\"media_audio-3\";i:9;s:13:\"media_audio-4\";}s:9:\"sidebar-1\";a:1:{i:0;s:10:\"nav_menu-6\";}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(191, 'theme_switched_via_customizer', '', 'yes'),
(192, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(209, 'recently_activated', 'a:0:{}', 'yes'),
(217, '_site_transient_timeout_theme_roots', '1606148801', 'no'),
(218, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(222, '_site_transient_timeout_php_check_3a2d9985cedb197b672d242e982a58e6', '1606750342', 'no'),
(223, '_site_transient_php_check_3a2d9985cedb197b672d242e982a58e6', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(224, '_transient_health-check-site-status-result', '{\"good\":\"15\",\"recommended\":\"4\",\"critical\":\"1\"}', 'yes'),
(225, 'disallowed_keys', '', 'no'),
(226, 'comment_previously_approved', '1', 'yes'),
(227, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(228, 'finished_updating_comment_type', '1', 'yes'),
(232, '_site_transient_timeout_browser_127ed807c83bddfe23771a7ab852f4ee', '1606750458', 'no'),
(233, '_site_transient_browser_127ed807c83bddfe23771a7ab852f4ee', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.106\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(234, '_transient_timeout_dash_v2_c05853b002c443ec8e57ff884f56cdde', '1606188858', 'no'),
(235, '_transient_dash_v2_c05853b002c443ec8e57ff884f56cdde', '<div class=\"rss-widget\"><p><strong>Error de RSS:</strong> XML or PCRE extensions not loaded!</p></div><div class=\"rss-widget\"><p><strong>Error de RSS:</strong> XML or PCRE extensions not loaded!</p></div>', 'no'),
(236, 'can_compress_scripts', '1', 'no'),
(237, '_site_transient_timeout_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', '1606188859', 'no'),
(238, '_site_transient_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}s:6:\"events\";a:3:{i:0;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp México Online\";s:3:\"url\";s:33:\"https://mexico.wordcamp.org/2020/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-11-25 09:30:00\";s:8:\"end_date\";s:19:\"2020-11-28 00:00:00\";s:20:\"start_unix_timestamp\";i:1606318200;s:18:\"end_unix_timestamp\";i:1606543200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"MX\";s:8:\"latitude\";d:19.3842176;s:9:\"longitude\";d:-99.1290812;}}i:1;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:73:\"Herramientas físicas y mentales para plantear un proyecto de diseño web\";s:3:\"url\";s:70:\"https://www.meetup.com/Torrelodones-WordPress-Meetup/events/274387878/\";s:6:\"meetup\";s:29:\"Torrelodones WordPress Meetup\";s:10:\"meetup_url\";s:53:\"https://www.meetup.com/Torrelodones-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-12-02 18:00:00\";s:8:\"end_date\";s:19:\"2020-12-02 20:00:00\";s:20:\"start_unix_timestamp\";i:1606928400;s:18:\"end_unix_timestamp\";i:1606935600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:40.590000152588;s:9:\"longitude\";d:-3.9400000572205;}}i:2;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:32:\"WordCamp Sevilla, Spain (online)\";s:3:\"url\";s:34:\"https://sevilla.wordcamp.org/2020/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-12-26 00:00:00\";s:8:\"end_date\";s:19:\"2020-12-29 00:00:00\";s:20:\"start_unix_timestamp\";i:1608937200;s:18:\"end_unix_timestamp\";i:1609196400;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:37.3896172;s:9:\"longitude\";d:-5.9978005;}}}}', 'no'),
(241, 'widget_ct-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(242, 'theme_mods_catch-revolution', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(251, '_site_transient_timeout_browser_fcca28686d5df34c44055cfe766bf77f', '1606750597', 'no'),
(252, '_site_transient_browser_fcca28686d5df34c44055cfe766bf77f', 'a:10:{s:4:\"name\";s:7:\"unknown\";s:7:\"version\";s:0:\"\";s:8:\"platform\";s:0:\"\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(253, '_site_transient_timeout_popular_importers_21b0136ce0c74b4633d462583043654a', '1606318742', 'no'),
(254, '_site_transient_popular_importers_21b0136ce0c74b4633d462583043654a', 'a:2:{s:9:\"importers\";a:7:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}', 'no'),
(256, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.5.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1606145959;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(257, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1606145960;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.7\";s:9:\"hello.php\";s:5:\"1.7.2\";s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(258, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1606145960;s:7:\"checked\";a:4:{s:16:\"catch-revolution\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:16:\"catch-revolution\";a:6:{s:5:\"theme\";s:16:\"catch-revolution\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/catch-revolution/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/catch-revolution.1.0.zip\";s:8:\"requires\";s:3:\"5.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(259, 'category_children', 'a:0:{}', 'yes'),
(265, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(144, 38, '_wp_attached_file', '2020/03/descarga-8.png'),
(145, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:199;s:6:\"height\";i:199;s:4:\"file\";s:22:\"2020/03/descarga-8.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 38, '_wp_attachment_is_custom_background', 'twentytwenty'),
(147, 40, '_wp_attached_file', '2020/03/libft.png'),
(148, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:206;s:6:\"height\";i:170;s:4:\"file\";s:17:\"2020/03/libft.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 41, '_wp_attached_file', '2020/03/libft-1.png'),
(150, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:206;s:6:\"height\";i:170;s:4:\"file\";s:19:\"2020/03/libft-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 42, '_wp_attached_file', '2020/03/printf.png'),
(152, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:204;s:6:\"height\";i:169;s:4:\"file\";s:18:\"2020/03/printf.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 43, '_wp_attached_file', '2020/03/exam.png'),
(154, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:202;s:6:\"height\";i:172;s:4:\"file\";s:16:\"2020/03/exam.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 59, '_menu_item_type', 'custom'),
(172, 59, '_menu_item_menu_item_parent', '0'),
(173, 59, '_menu_item_object_id', '59'),
(174, 59, '_menu_item_object', 'custom'),
(175, 59, '_menu_item_target', ''),
(176, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(177, 59, '_menu_item_xfn', ''),
(178, 59, '_menu_item_url', 'https://localhost/phpmyadmin/'),
(179, 60, '_menu_item_type', 'custom'),
(180, 60, '_menu_item_menu_item_parent', '0'),
(181, 60, '_menu_item_object_id', '60'),
(182, 60, '_menu_item_object', 'custom'),
(183, 60, '_menu_item_target', ''),
(184, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 60, '_menu_item_xfn', ''),
(186, 60, '_menu_item_url', 'http://localhost/wordpress/wp-login.php'),
(203, 68, '_edit_lock', '1606146975:1'),
(212, 76, '_wp_trash_meta_status', 'publish'),
(213, 76, '_wp_trash_meta_time', '1606145707'),
(214, 77, '_wp_trash_meta_status', 'publish'),
(215, 77, '_wp_trash_meta_time', '1606145743'),
(218, 38, '_wp_attachment_is_custom_background', 'twentytwenty'),
(219, 79, '_menu_item_type', 'custom'),
(220, 79, '_menu_item_menu_item_parent', '0'),
(221, 79, '_menu_item_object_id', '79'),
(222, 79, '_menu_item_object', 'custom'),
(223, 79, '_menu_item_target', ''),
(224, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(225, 79, '_menu_item_xfn', ''),
(226, 79, '_menu_item_url', 'https://localhost/phpmyadmin/'),
(227, 80, '_menu_item_type', 'custom'),
(228, 80, '_menu_item_menu_item_parent', '0'),
(229, 80, '_menu_item_object_id', '80'),
(230, 80, '_menu_item_object', 'custom'),
(231, 80, '_menu_item_target', ''),
(232, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(233, 80, '_menu_item_xfn', ''),
(234, 80, '_menu_item_url', 'http://localhost/wordpress/wp-login.php'),
(235, 81, '_wp_trash_meta_status', 'publish'),
(236, 81, '_wp_trash_meta_time', '1606147039');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(38, 1, '2020-03-07 00:04:25', '2020-03-07 00:04:25', '', 'descarga-8', '', 'inherit', 'open', 'closed', '', 'descarga-8', '', '', '2020-03-07 00:04:25', '2020-03-07 00:04:25', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/03/descarga-8.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2020-03-07 00:07:10', '2020-03-07 00:07:10', '', 'libft', '', 'inherit', 'open', 'closed', '', 'libft', '', '', '2020-03-07 00:07:10', '2020-03-07 00:07:10', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/03/libft.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2020-03-07 00:07:21', '2020-03-07 00:07:21', '', 'libft-1', '', 'inherit', 'open', 'closed', '', 'libft-1', '', '', '2020-03-07 00:07:21', '2020-03-07 00:07:21', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/03/libft-1.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2020-03-07 00:07:39', '2020-03-07 00:07:39', '', 'printf', '', 'inherit', 'open', 'closed', '', 'printf', '', '', '2020-03-07 00:07:39', '2020-03-07 00:07:39', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/03/printf.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2020-03-07 00:07:46', '2020-03-07 00:07:46', '', 'exam', '', 'inherit', 'open', 'closed', '', 'exam', '', '', '2020-03-07 00:07:46', '2020-03-07 00:07:46', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/03/exam.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2020-03-07 13:25:48', '2020-03-07 13:25:48', '', 'twentytwenty', '', 'publish', 'closed', 'closed', '', 'twentytwenty', '', '', '2020-03-07 13:25:48', '2020-03-07 13:25:48', '', 0, 'http://localhost/wordpress/?p=49', 0, 'custom_css', '', 0),
(50, 1, '2020-03-07 13:25:48', '2020-03-07 13:25:48', '', 'twentytwenty', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2020-03-07 13:25:48', '2020-03-07 13:25:48', '', 49, 'http://localhost/wordpress/?p=50', 0, 'revision', '', 0),
(59, 1, '2020-04-05 21:08:24', '2020-04-05 21:08:24', '', 'phpMyAdmin', '', 'publish', 'closed', 'closed', '', 'phpmyadmin', '', '', '2020-04-05 21:08:24', '2020-04-05 21:08:24', '', 0, 'http://localhost/wordpress/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2020-04-05 21:08:25', '2020-04-05 21:08:25', '', 'WordPress', '', 'publish', 'closed', 'closed', '', 'wordpress', '', '', '2020-04-05 21:08:25', '2020-04-05 21:08:25', '', 0, 'http://localhost/wordpress/?p=60', 2, 'nav_menu_item', '', 0),
(68, 1, '2020-04-05 21:22:11', '2020-04-05 21:22:11', '<hr />\n<p><span style=\"color: #000000;\"><i>Rápido y dinamico !</i></span></p>\n<hr />\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '¿FT_SERVER?', '', 'publish', 'open', 'open', '', 'ft_server', '', '', '2020-11-23 15:58:38', '2020-11-23 15:58:38', '', 0, 'http://localhost/wordpress/?p=68', 0, 'post', '', 0),
(69, 1, '2020-04-05 21:21:22', '2020-04-05 21:21:22', '<h3 class=\"rich-text block-editor-rich-text__editable has-text-align-center\" role=\"textbox\" contenteditable=\"true\" aria-multiline=\"true\" aria-label=\"Escribe el encabezado…\"><span style=\"color: #333399;\"><strong>Esta evaluación tiene como objetivo hacerle descubrir la administración de sistemas y concienciarle de la importancia que tiene el uso de scripts para la automatización de sus tareas. Para ello, vamos a hacerle descubrir la tecnología \"Docker\"para que pueda instalar un servidor web completo, capaz de hacer funcionar varios servicios como Wordpress, Phpmyadmin y una base de datos.</strong></span></h3>', '¿FT_SERVER?', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-04-05 21:21:22', '2020-04-05 21:21:22', '', 68, 'https://localhost/wordpress/?p=69', 0, 'revision', '', 0),
(70, 1, '2020-04-05 21:22:11', '2020-04-05 21:22:11', '<h3 class=\"rich-text block-editor-rich-text__editable has-text-align-center\" role=\"textbox\" contenteditable=\"true\" aria-multiline=\"true\" aria-label=\"Escribe el encabezado…\"><em><span style=\"color: #000000;\"><strong>Esta evaluación tiene como objetivo hacerle descubrir la administración de sistemas y concienciarle de la importancia que tiene el uso de scripts para la automatización de sus tareas. Para ello, vamos a hacerle descubrir la tecnología \"Docker\"para que pueda instalar un servidor web completo, capaz de hacer funcionar varios servicios como Wordpress, Phpmyadmin y una base de datos.</strong></span></em></h3>', '¿FT_SERVER?', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-04-05 21:22:11', '2020-04-05 21:22:11', '', 68, 'https://localhost/wordpress/?p=70', 0, 'revision', '', 0),
(72, 1, '2020-04-05 21:25:18', '2020-04-05 21:25:18', '<h3 class=\"rich-text block-editor-rich-text__editable has-text-align-center\" style=\"text-align: left;\" role=\"textbox\" contenteditable=\"true\" aria-multiline=\"true\" aria-label=\"Escribe el encabezado…\"><em><span style=\"color: #000000;\">Esta evaluación tiene como objetivo hacerle descubrir la administración de sistemas y concienciarle de la importancia que tiene el uso de scripts para la automatización de sus tareas. Para ello, vamos a hacerle descubrir la tecnología \"Docker\"para que pueda instalar un servidor web completo, capaz de hacer funcionar varios servicios como Wordpress, Phpmyadmin y una base de datos.</span></em></h3>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '¿FT_SERVER?', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-04-05 21:25:18', '2020-04-05 21:25:18', '', 68, 'https://localhost/wordpress/?p=72', 0, 'revision', '', 0),
(74, 1, '2020-04-05 21:30:31', '2020-04-05 21:30:31', '<hr />\n<p><em><span style=\"color: #000000;\">Esta evaluación tiene como objetivo hacerle descubrir la administración de sistemas y concienciarle de la importancia que tiene el uso de scripts para la automatización de sus tareas. Para ello, vamos a hacerle descubrir la tecnología \"Docker\"para que pueda instalar un servidor web completo, capaz de hacer funcionar varios servicios como Wordpress, Phpmyadmin y una base de datos.</span></em></p>\n<hr />\n<p> </p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '¿FT_SERVER?', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-04-05 21:30:31', '2020-04-05 21:30:31', '', 68, 'https://localhost/wordpress/?p=74', 0, 'revision', '', 0),
(75, 1, '2020-11-23 15:34:18', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-11-23 15:34:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=75', 0, 'post', '', 0),
(76, 1, '2020-11-23 15:35:07', '2020-11-23 15:35:07', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"archives-2\",\n                \"meta-2\",\n                \"search-2\",\n                \"text-2\",\n                \"text-3\",\n                \"categories-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"media_audio-3\",\n                \"media_audio-4\"\n            ],\n            \"sidebar-1\": [\n                \"nav_menu-6\"\n            ],\n            \"sidebar-2\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-23 15:35:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f251edc0-69c4-403e-8b30-070e9d2a1e4d', '', '', '2020-11-23 15:35:07', '2020-11-23 15:35:07', '', 0, 'http://localhost/wordpress/?p=76', 0, 'customize_changeset', '', 0),
(77, 1, '2020-11-23 15:35:43', '2020-11-23 15:35:43', '{\n    \"blogname\": {\n        \"value\": \"Servidor\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-23 15:35:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7e20e5ea-5c98-43be-90f2-2b12be487f55', '', '', '2020-11-23 15:35:43', '2020-11-23 15:35:43', '', 0, 'http://localhost/wordpress/?p=77', 0, 'customize_changeset', '', 0),
(79, 1, '2020-11-23 15:39:46', '2020-11-23 15:39:46', '', 'phpMyAdmin', '', 'publish', 'closed', 'closed', '', 'phpmyadmin-2', '', '', '2020-11-23 15:39:46', '2020-11-23 15:39:46', '', 0, 'http://localhost/wordpress/?p=79', 1, 'nav_menu_item', '', 0),
(80, 1, '2020-11-23 15:39:46', '2020-11-23 15:39:46', '', 'WordPress', '', 'publish', 'closed', 'closed', '', 'wordpress-2', '', '', '2020-11-23 15:39:46', '2020-11-23 15:39:46', '', 0, 'http://localhost/wordpress/?p=80', 2, 'nav_menu_item', '', 0),
(81, 1, '2020-11-23 15:57:19', '2020-11-23 15:57:19', '{\n    \"twentyseventeen::external_header_video\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-23 15:57:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5cec9e05-678a-40f8-97fa-1ae9b5ce05be', '', '', '2020-11-23 15:57:19', '2020-11-23 15:57:19', '', 0, 'http://localhost/wordpress/?p=81', 0, 'customize_changeset', '', 0),
(82, 1, '2020-11-23 15:58:38', '2020-11-23 15:58:38', '<hr />\n<p><span style=\"color: #000000;\"><i>Rápido y dinamico !</i></span></p>\n<hr />\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '¿FT_SERVER?', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-11-23 15:58:38', '2020-11-23 15:58:38', '', 68, 'http://localhost/wordpress/?p=82', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(5, 'LOGIN', 'login', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(59, 5, 0),
(60, 5, 0),
(68, 1, 0),
(79, 5, 0),
(80, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'alex414'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '75'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=upload'),
(20, 1, 'wp_user-settings-time', '1606147052'),
(21, 1, 'session_tokens', 'a:1:{s:64:\"74fa24da3e94b0fab544a074410c089d5af223b8cfb2f72ddfead15c2e3fd726\";a:4:{s:10:\"expiration\";i:1606318454;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36\";s:5:\"login\";i:1606145654;}}'),
(22, 1, 'nav_menu_recently_edited', '5'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'alex414', '$P$BL64INgT6qfOvqlpuSO/0Y75dFpyov0', 'alex414', 'alexdaiz414@gmail.com', '', '2020-03-06 23:40:27', '', 0, 'alex414');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
