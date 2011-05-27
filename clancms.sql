-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2011 at 11:51 PM
-- Server version: 5.5.8
-- PHP Version: 5.2.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clancms`
--

-- --------------------------------------------------------

--
-- Table structure for table `clancms_alerts`
--

CREATE TABLE IF NOT EXISTS `clancms_alerts` (
  `alert_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `alert_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alert_link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alert_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`alert_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `clancms_alerts`
--


-- --------------------------------------------------------

--
-- Table structure for table `clancms_articles`
--

CREATE TABLE IF NOT EXISTS `clancms_articles` (
  `article_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `squad_id` bigint(20) NOT NULL DEFAULT '0',
  `article_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `article_slug` varchar(100) CHARACTER SET utf8 NOT NULL,
  `article_content` text CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `article_comments` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `article_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `article_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `clancms_articles`
--

INSERT INTO `clancms_articles` (`article_id`, `squad_id`, `article_title`, `article_slug`, `article_content`, `article_comments`, `user_id`, `article_date`, `article_status`) VALUES
(1, 0, 'Welcome to Clan CMS!', '1-Welcome-to-Clan-CMS', '[size=200][b]또감사 야구단 홧탱!!!![/b][/size]', 1, 1, '2010-10-10 10:10:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clancms_article_comments`
--

CREATE TABLE IF NOT EXISTS `clancms_article_comments` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment_title` text CHARACTER SET utf8 NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `clancms_article_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `clancms_group_permissions`
--

CREATE TABLE IF NOT EXISTS `clancms_group_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `permission_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `permission_value` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `clancms_group_permissions`
--

INSERT INTO `clancms_group_permissions` (`permission_id`, `permission_title`, `permission_slug`, `permission_value`) VALUES
(1, 'Can manage settings?', 'settings', 1),
(2, 'Can manage news articles?', 'articles', 2),
(3, 'Can manage matches?', 'matches', 4),
(4, 'Can manage squads?', 'squads', 8),
(5, 'Can manage sponsors?', 'sponsors', 16),
(6, 'Can manage users?', 'users', 32),
(7, 'Can manage usergroups?', 'usergroups', 64),
(8, 'Can manage pages?', 'pages', 128),
(9, 'Can manage polls?', 'polls', 256),
(10, 'Can manage opponents?', 'opponents', 512),
(11, 'Can manage widgets?', 'widgets', 1024);

-- --------------------------------------------------------

--
-- Table structure for table `clancms_matches`
--

CREATE TABLE IF NOT EXISTS `clancms_matches` (
  `match_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `squad_id` bigint(20) NOT NULL DEFAULT '0',
  `match_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `opponent_id` bigint(20) NOT NULL DEFAULT '0',
  `match_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `match_players` bigint(20) NOT NULL DEFAULT '0',
  `match_score` int(10) NOT NULL DEFAULT '0',
  `match_opponent_score` int(10) NOT NULL DEFAULT '0',
  `match_maps` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `match_report` text COLLATE utf8_unicode_ci NOT NULL,
  `match_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `match_comments` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`match_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `clancms_matches`
--

INSERT INTO `clancms_matches` (`match_id`, `squad_id`, `match_slug`, `opponent_id`, `match_type`, `match_players`, `match_score`, `match_opponent_score`, `match_maps`, `match_report`, `match_date`, `match_comments`) VALUES
(1, 1, '1-Default-vs-Twins', 1, '', 0, 8, 13, '', '', '2011-05-21 15:30:00', 1),
(2, 1, '2-Default-vs-70s', 2, 'AWAY', 0, 9, 5, '', '', '2011-04-02 15:30:00', 1),
(3, 1, '3-Default-vs-B-BEARS', 3, 'AWAY', 0, 20, 5, '', '', '2011-04-09 18:00:00', 1),
(4, 1, '4-Default-vs-RAIZA', 4, 'AWAY', 0, 11, 1, '', '', '2011-04-16 21:00:00', 1),
(5, 1, '5-Default-vs-OC-Giants', 5, 'AWAY', 0, 15, 14, '', '', '2011-04-23 23:00:00', 1),
(6, 1, '6-Default-vs-', 6, 'HOME', 0, 9, 5, '', '', '2011-04-30 20:30:00', 1),
(7, 1, '7-Default-vs-', 7, 'HOME', 0, 15, 5, '', '', '2011-05-07 18:30:00', 1),
(8, 1, '8-Default-vs-FOTOBY', 8, 'HOME', 0, 24, 10, '', '', '2011-05-14 15:30:00', 1),
(9, 1, '9-Default-vs-Titans', 9, 'AWAY', 0, 0, 0, '', '', '2011-06-04 15:00:00', 1),
(10, 1, '10-Default-vs-K9NERS', 10, 'AWAY', 0, 0, 0, 'SHERY HIGH- A FIELD', '', '2011-06-11 18:00:00', 1),
(11, 1, '11-Default-vs-HUSTLERS', 11, 'AWAY', 0, 0, 0, 'SHERY HIGH- B FIELD', '', '2011-06-18 08:00:00', 1),
(12, 1, '12-Default-vs-RAIDERS', 12, 'AWAY', 0, 0, 0, 'SHERY HIGH- A FIELD', '', '2011-06-25 23:00:00', 1),
(13, 1, '13-Default-vs-S11', 13, 'AWAY', 0, 0, 0, 'SHERY HIGH- A FIELD', '', '2011-07-09 15:00:00', 1),
(14, 1, '14-Default-vs-', 14, 'AWAY', 0, 0, 0, 'SHERY HIGH- B FIELD', '', '2011-07-16 18:00:00', 1),
(15, 1, '15-Default-vs-70s', 2, 'AWAY', 0, 0, 0, 'SHERY HIGH- B FIELD', '', '2011-07-23 15:00:00', 1),
(16, 1, '16-Default-vs-B-BEARS', 3, 'AWAY', 0, 0, 0, 'SHERY HIGH- A FIELD', '', '2011-07-30 18:00:00', 1),
(17, 1, '17-Default-vs-RAIZA', 4, 'AWAY', 0, 0, 0, 'SHERY HIGH- B FIELD', '', '2011-08-06 20:00:00', 1),
(18, 1, '18-Default-vs-', 15, 'AWAY', 0, 0, 0, 'SHERY HIGH- A FIELD', '', '2011-08-20 23:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clancms_match_comments`
--

CREATE TABLE IF NOT EXISTS `clancms_match_comments` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `match_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment_title` text CHARACTER SET utf8 NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `clancms_match_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `clancms_match_opponents`
--

CREATE TABLE IF NOT EXISTS `clancms_match_opponents` (
  `opponent_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `opponent_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `opponent_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `opponent_link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `opponent_tag` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`opponent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `clancms_match_opponents`
--

INSERT INTO `clancms_match_opponents` (`opponent_id`, `opponent_title`, `opponent_slug`, `opponent_link`, `opponent_tag`) VALUES
(1, 'Twins', '1-Twins', '', ''),
(2, '70''s', '2-70s', '', ''),
(3, 'B BEARS', '3-B-BEARS', '', ''),
(4, 'RAIZA', '4-RAIZA', '', ''),
(5, 'OC Giants', '5-OC-Giants', '', ''),
(6, '영락교회', '6-', '', ''),
(7, '오합지존', '7-', '', ''),
(8, 'FOTOBY', '8-FOTOBY', '', ''),
(9, 'Titans', '9-Titans', '', ''),
(10, 'K9NERS', '10-K9NERS', '', ''),
(11, 'HUSTLERS', '11-HUSTLERS', '', ''),
(12, 'RAIDERS', '12-RAIDERS', '', ''),
(13, 'S11', '13-S11', '', ''),
(14, '치까마까', '14-', '', ''),
(15, '사랑의교회', '15-', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `clancms_match_players`
--

CREATE TABLE IF NOT EXISTS `clancms_match_players` (
  `player_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `match_id` bigint(20) NOT NULL DEFAULT '0',
  `member_id` bigint(20) NOT NULL DEFAULT '0',
  `player_pa` int(10) DEFAULT '0',
  `player_1b` int(10) DEFAULT '0',
  `player_2b` int(10) DEFAULT NULL,
  `player_3b` int(10) DEFAULT NULL,
  `player_hr` int(10) DEFAULT NULL,
  `player_rbi` int(10) DEFAULT NULL,
  `player_r` int(10) DEFAULT NULL,
  `player_sac` int(10) DEFAULT NULL,
  `player_bb` int(10) DEFAULT NULL,
  `player_sol` int(10) DEFAULT NULL,
  `player_sos` int(10) DEFAULT NULL,
  `player_hp` int(10) DEFAULT NULL,
  `player_obe` int(10) DEFAULT NULL,
  `player_sb` int(10) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `clancms_match_players`
--

INSERT INTO `clancms_match_players` (`player_id`, `match_id`, `member_id`, `player_pa`, `player_1b`, `player_2b`, `player_3b`, `player_hr`, `player_rbi`, `player_r`, `player_sac`, `player_bb`, `player_sol`, `player_sos`, `player_hp`, `player_obe`, `player_sb`) VALUES
(1, 1, 1, 3, 1, 0, 0, 0, 1, NULL, 0, 1, 0, 0, 0, 0, 0),
(2, 8, 1, 2, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0),
(3, 7, 1, 3, 1, 0, 0, 0, 1, NULL, 0, 0, 0, 0, 0, 0, 0),
(4, 6, 1, 3, 1, 0, 0, 0, 0, NULL, 0, 0, 1, 0, 1, 0, 0),
(5, 5, 1, 4, 2, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(6, 4, 1, 3, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 3, 1, 4, 1, 0, NULL, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `clancms_pages`
--

CREATE TABLE IF NOT EXISTS `clancms_pages` (
  `page_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `page_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `page_content` text COLLATE utf8_unicode_ci NOT NULL,
  `page_priority` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `clancms_pages`
--

INSERT INTO `clancms_pages` (`page_id`, `page_title`, `page_slug`, `page_content`, `page_priority`) VALUES
(1, 'About Us', 'aboutus', 'Put your clan description here.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clancms_polls`
--

CREATE TABLE IF NOT EXISTS `clancms_polls` (
  `poll_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `poll_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `poll_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `clancms_polls`
--


-- --------------------------------------------------------

--
-- Table structure for table `clancms_poll_options`
--

CREATE TABLE IF NOT EXISTS `clancms_poll_options` (
  `option_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `poll_id` bigint(20) NOT NULL DEFAULT '0',
  `option_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `option_priority` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `clancms_poll_options`
--


-- --------------------------------------------------------

--
-- Table structure for table `clancms_poll_votes`
--

CREATE TABLE IF NOT EXISTS `clancms_poll_votes` (
  `vote_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `poll_id` bigint(20) NOT NULL DEFAULT '0',
  `option_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `clancms_poll_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `clancms_sessions`
--

CREATE TABLE IF NOT EXISTS `clancms_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clancms_sessions`
--

INSERT INTO `clancms_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('e858b8e17604af2cee2c59a0eb804baa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/534.24 (K', 1306504140, 'a:5:{s:8:"previous";s:7:"matches";s:7:"current";s:31:"matches/view/1-Default-vs-Twins";s:7:"user_id";s:1:"1";s:8:"username";s:5:"admin";s:8:"password";s:40:"fe86a86bdb303312be425fd202c08ba56e79d9b5";}');

-- --------------------------------------------------------

--
-- Table structure for table `clancms_settings`
--

CREATE TABLE IF NOT EXISTS `clancms_settings` (
  `setting_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL DEFAULT '0',
  `setting_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `setting_slug` varchar(100) CHARACTER SET utf8 NOT NULL,
  `setting_value` longtext CHARACTER SET utf8 NOT NULL,
  `setting_type` enum('text','timezone','select','textarea') CHARACTER SET utf8 NOT NULL DEFAULT 'text',
  `setting_options` text CHARACTER SET utf8 NOT NULL,
  `setting_description` text CHARACTER SET utf8 NOT NULL,
  `setting_rules` varchar(200) CHARACTER SET utf8 NOT NULL,
  `setting_priority` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `clancms_settings`
--

INSERT INTO `clancms_settings` (`setting_id`, `category_id`, `setting_title`, `setting_slug`, `setting_value`, `setting_type`, `setting_options`, `setting_description`, `setting_rules`, `setting_priority`) VALUES
(1, 1, 'Clan Name', 'clan_name', 'THMC', 'text', '', 'Put your clan name here.', 'trim|required', 1),
(2, 2, 'Theme', 'theme', 'default', 'text', '', 'The name of the theme folder you want to use.', 'trim|required', 1),
(3, 3, 'Default Timezone', 'default_timezone', 'UM8', 'timezone', '', 'The default timezone for entire site', 'trim|required', 1),
(4, 1, 'Site Email', 'site_email', 'hodong.kwak@gmail.com', 'text', '', 'The site''s main email', 'trim|required|valid_email', 4),
(5, 3, 'Daylight Savings', 'daylight_savings', '1', 'select', '1=Yes|0=No', 'Is it daylight savings?', 'trim|required', 2),
(6, 1, 'Forum Link', 'forum_link', '', 'text', '', 'The link to your forums', 'trim', 3),
(7, 1, 'Clan Slogan', 'clan_slogan', '', 'text', '', 'Put your clan slogan here', 'trim', 2),
(8, 2, 'Theme Logo', 'logo', '1', 'select', '1=Yes|0=No|2=Text', 'Use the logo image? Otherwise it will use text', 'trim|required', 2),
(9, 2, 'Sponsor Image Width', 'sponsor_width', '209', 'text', '', 'The width of sponsor images in pixels', 'trim|required|numeric', 3),
(10, 4, 'Allow Registration', 'allow_registration', '0', 'select', '1=Yes|0=No', 'Allow users to register on the site?', 'trim|required', 1),
(11, 4, 'CAPTCHA Words', 'captcha_words', 'THMC ???', 'textarea', '', 'Word Bank for CAPTCHA. Seperate each word on a new line.', 'trim|required', 2);

-- --------------------------------------------------------

--
-- Table structure for table `clancms_setting_categories`
--

CREATE TABLE IF NOT EXISTS `clancms_setting_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category_priority` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `clancms_setting_categories`
--

INSERT INTO `clancms_setting_categories` (`category_id`, `category_title`, `category_priority`) VALUES
(1, 'General Settings', 1),
(2, 'Theme Settings', 2),
(3, 'Time Settings', 3),
(4, 'Registration Settings', 4);

-- --------------------------------------------------------

--
-- Table structure for table `clancms_sponsors`
--

CREATE TABLE IF NOT EXISTS `clancms_sponsors` (
  `sponsor_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sponsor_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sponsor_link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sponsor_description` text COLLATE utf8_unicode_ci NOT NULL,
  `sponsor_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sponsor_priority` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sponsor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `clancms_sponsors`
--


-- --------------------------------------------------------

--
-- Table structure for table `clancms_squads`
--

CREATE TABLE IF NOT EXISTS `clancms_squads` (
  `squad_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `squad_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `squad_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `squad_tag` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `squad_tag_position` tinyint(1) NOT NULL DEFAULT '0',
  `squad_status` tinyint(1) NOT NULL DEFAULT '0',
  `squad_priority` int(10) NOT NULL,
  PRIMARY KEY (`squad_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `clancms_squads`
--

INSERT INTO `clancms_squads` (`squad_id`, `squad_title`, `squad_slug`, `squad_tag`, `squad_tag_position`, `squad_status`, `squad_priority`) VALUES
(1, 'Default', '1-Default', '', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clancms_squad_members`
--

CREATE TABLE IF NOT EXISTS `clancms_squad_members` (
  `member_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `squad_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `member_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `member_role` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `member_priority` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `clancms_squad_members`
--

INSERT INTO `clancms_squad_members` (`member_id`, `squad_id`, `user_id`, `member_title`, `member_role`, `member_priority`) VALUES
(1, 1, 1, '곽호동', 'C', 1),
(2, 1, 5, '김강', 'P, 3B', 2),
(3, 1, 6, '심형준', 'CF', 3),
(4, 1, 7, '이재학', 'SS, P', 4),
(5, 1, 9, '이종서', '2B, DH', 5),
(6, 1, 10, '김광식', '3B', 6),
(7, 1, 11, '김경현', 'RF', 7),
(8, 1, 12, '박노아', 'RF', 8),
(9, 1, 13, '홍승표', 'LF', 9),
(10, 1, 14, '임사이몬', '2B', 10),
(11, 1, 16, '이일섭', '1B', 11),
(12, 1, 17, '김영호', 'LF', 12);

-- --------------------------------------------------------

--
-- Table structure for table `clancms_users`
--

CREATE TABLE IF NOT EXISTS `clancms_users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL DEFAULT '0',
  `user_notes` text CHARACTER SET utf8 NOT NULL,
  `user_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_salt` varchar(32) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_timezone` varchar(10) NOT NULL,
  `user_daylight_savings` tinyint(1) NOT NULL DEFAULT '0',
  `user_ipaddress` varchar(50) NOT NULL,
  `user_joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_avatar` varchar(200) NOT NULL,
  `user_activation` varchar(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `clancms_users`
--

INSERT INTO `clancms_users` (`user_id`, `group_id`, `user_notes`, `user_name`, `user_password`, `user_salt`, `user_email`, `user_timezone`, `user_daylight_savings`, `user_ipaddress`, `user_joined`, `user_avatar`, `user_activation`) VALUES
(1, 2, 'GO THMC!!', 'admin', 'fe86a86bdb303312be425fd202c08ba56e79d9b5', 'v6bueoyjjuPmWDiUc0TYTOLaSMME0YkM', 'hodong.kwak@gmail.com', 'UM8', 2, '127.0.0.1', '2011-05-23 18:02:21', '2e20991dc8ab0c9df70fe6b8eb81c7ec.gif', '1'),
(2, 3, '', 'chris_moon', 'f7cdcdba8c585ea50cd224a26865985642e9db3b', 'OnTwFnWPyAgnUuu4Nj7BgE8VqbikYQWO', 'bluem4j@gmail.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:08:25', '', '1'),
(3, 3, '', 'danny_kwon', '0ab4fa18519b05e39eb8fb79dbc6dc1f1a274655', 'dNPza0M6gquYzhTLOWxhc2ap1itYRSu0', 'phigh71@hotmail.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:09:04', '', '1'),
(4, 3, '', 'felix_lee', '77dc0bbdf0fe7a6f51cc2c49b8683943e3f96128', 'B3USnIa35w8B2ZfHbH6j7rydNWLJ9iKn', 'felixylee@gmail.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:09:34', '', '1'),
(5, 3, '', 'gang_kim', '5e67790fbf1e3e079b900eb76455606c1c90d4be', 'ZTplgffZbyADLme4qKjmbPq3sFCc0TIe', 'garykim6792@hotmail.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:10:04', '', '1'),
(6, 3, '', 'jun_shim', '619406719af9953bea37436cef0bbec67db49c7b', 'l0ew9PzSaBSUSGdKzXGaQgeZi2OmUf23', 'junshim1203@gmail.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:11:27', '', '1'),
(7, 3, '', 'jaehak_lee', '976caac97b32a204e058b51580b0828a25a64910', 'VM1pnagg6wzWbl3sn6aO5c4X4hp6mmrM', 'joanna.j0021@hotmail.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:11:57', '', '1'),
(8, 3, '', 'james_kang', '8742c5be7f22f6f4ce481fbd3a0d04ef526baa66', 'kqB6yNvyzVHWL3fZOVVjFvM88ancFCzf', 'jameskang@hotmail.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:12:31', '', '1'),
(9, 3, '', 'jongseo_lee', '4a9ee4bcb14079bd65526c2e0c98d0523654ce2d', 'zXpgeVVn1knU4ipj052R08guSIERGxkE', 'jongseo64@gmail.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:13:04', '', '1'),
(10, 3, '', 'kwangshik_kim', 'a366805764286c1e9fbcae5749e4c26bb3eda0d5', '9zp6lmh4d3ACSFLU7bgQaKxWZ8lHVbhJ', 'kkshik@gmail.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:13:41', '', '1'),
(11, 3, '', 'kyunghyun_kim', '501e9e655b8d8cc6d535cd01e495e8c124d2f491', 'yYKobGTJMy4LV9Twu9fVbiR7uBOGYDf4', 'kpyinc2009@yahoo.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:14:15', '', '1'),
(12, 3, '', 'noah_park', '751ea634292a6d96852838abfaf5e5de7ba3ea6f', 'UKRa35SxHrJaAlQjlMszDTaUEfsRifMr', 'noahprk@hotmail.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:14:47', '', '1'),
(13, 3, '', 'seungpyo_hong', '7c54a2f9957bda19f0a6f3fe8fd862727646448f', 'w7XfwSG7e0uHFQo3hTLX486INJcgs55W', 'alwaysseungpyo@hanmail.net', 'UM8', 2, '127.0.0.1', '2011-05-23 12:15:16', '', '1'),
(14, 3, '', 'simon_lim', '7d34e6641a7c5c9ec105ed2bdef6617fe714442c', 'sKjcHV5HE4a9GRJWgdt6iTjbCpulyhJn', 'goonin@gmail.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:15:46', '', '1'),
(15, 3, '', 'timothy_koo', '213899999f1bc1a3559cff158ccbf78d4385a5a3', 'x14MaiEWH207vq78G72ZxKZbZMZncaZe', 'timothykoo9@gmail.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:16:14', '', '1'),
(16, 3, '', 'tommy_lee', 'f0fe805059f1327bce95bd2d3f0d00117373ba54', 'aZ699WkxCesk3l07woLbdxtd3NCWUc9o', 'tlee@chlkcpa.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:16:46', '', '1'),
(17, 3, '', 'youngho_kim', 'be1446d77c0163e750ccd892075ab87b7bdbe40c', 'TwpWARTmNHHvG6Cl0m2ynECFQFA8BmOT', 'YounghoKim68@gmail.com', 'UM8', 2, '127.0.0.1', '2011-05-23 12:17:12', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `clancms_user_groups`
--

CREATE TABLE IF NOT EXISTS `clancms_user_groups` (
  `group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `group_user_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `group_default` tinyint(1) NOT NULL DEFAULT '0',
  `group_administrator` tinyint(1) NOT NULL DEFAULT '0',
  `group_clan` tinyint(1) NOT NULL DEFAULT '0',
  `group_banned` tinyint(1) NOT NULL DEFAULT '0',
  `group_permissions` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `clancms_user_groups`
--

INSERT INTO `clancms_user_groups` (`group_id`, `group_title`, `group_user_title`, `group_default`, `group_administrator`, `group_clan`, `group_banned`, `group_permissions`) VALUES
(1, 'Registered Users', 'Registered User', 1, 0, 0, 0, 0),
(2, 'Administrators', 'Administrator', 1, 1, 1, 0, 2047),
(3, 'Team Members', 'Team Member', 1, 0, 1, 0, 0),
(4, 'Banned Users', 'Banned', 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `clancms_widgets`
--

CREATE TABLE IF NOT EXISTS `clancms_widgets` (
  `widget_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area_id` bigint(20) NOT NULL DEFAULT '0',
  `widget_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `widget_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `widget_settings` text COLLATE utf8_unicode_ci NOT NULL,
  `widget_priority` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`widget_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `clancms_widgets`
--

INSERT INTO `clancms_widgets` (`widget_id`, `area_id`, `widget_title`, `widget_slug`, `widget_settings`, `widget_priority`) VALUES
(1, 1, 'Login', 'login', 'b:0;', 0),
(3, 1, 'Matches', 'matches', 'a:2:{s:12:"matches_type";s:1:"0";s:14:"matches_number";s:2:"10";}', 2),
(4, 1, 'Sponsors', 'sponsors', 'b:0;', 3),
(5, 1, 'Users Online', 'users_online', 'b:0;', 4),
(6, 2, 'Articles', 'articles', 'b:0;', 0),
(7, 3, 'Admin CP Login', 'login', 'b:0;', 0),
(8, 3, 'Site Stats', 'site_stats', 'b:0;', 1),
(9, 3, 'Admin CP Users Online', 'users_online', 'b:0;', 2),
(10, 4, 'Admin CP Alerts', 'administrator_alerts', 'b:0;', 0),
(11, 5, 'Pages', 'pages', 'b:0;', 0),
(12, 6, 'New Users', 'new_users', 'b:0;', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clancms_widget_areas`
--

CREATE TABLE IF NOT EXISTS `clancms_widget_areas` (
  `area_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `area_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `clancms_widget_areas`
--

INSERT INTO `clancms_widget_areas` (`area_id`, `area_title`, `area_slug`) VALUES
(1, 'Sidebar', 'sidebar'),
(2, 'Header', 'header'),
(3, 'Admin CP Sidebar', 'admincp_sidebar'),
(4, 'Admin CP Header', 'admincp_header'),
(5, 'Navigation', 'navigation'),
(6, 'Dashboard', 'dashboard');
