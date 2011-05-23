DROP TABLE IF EXISTS `__DBPREFIX__alerts`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__alerts` (
  `alert_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `alert_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alert_link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alert_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`alert_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__articles`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__articles` (
  `article_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `squad_id` bigint(20) NOT NULL DEFAULT '0',
  `article_title` varchar(100) NOT NULL,
  `article_slug` varchar(100) NOT NULL,
  `article_content` text NOT NULL,
  `article_comments` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `article_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `article_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;
-- command split --
INSERT INTO `__DBPREFIX__articles` (`article_id`, `squad_id`, `article_title`, `article_slug`, `article_content`, `article_comments`, `user_id`, `article_date`, `article_status`) VALUES
(1, 0, 'Welcome to Clan CMS!', '1-Welcome-to-Clan-CMS', 'Welcome to your new Clan CMS brought to you by Xcel Gaming!\n\nIf you are seeing this message then you have installed Clan CMS successfully!\n\nPlease take some time to familiarize yourself with the Admin CP to take advantage of all the aspects that Clan CMS has to offer! \n\nThank you & Good Luck,\nXcel Gaming\nhttp://www.xcelgaming.com', 1, 1, '2010-10-10 10:10:10', 1);
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__article_comments`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__article_comments` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment_title` text NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__group_permissions`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__group_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `permission_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `permission_value` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;
-- command split --
INSERT INTO `__DBPREFIX__group_permissions` (`permission_id`, `permission_title`, `permission_slug`, `permission_value`) VALUES
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
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__matches`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__matches` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__match_comments`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__match_comments` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `match_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment_title` text NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__match_opponents`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__match_opponents` (
  `opponent_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `opponent_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `opponent_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `opponent_link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `opponent_tag` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`opponent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__match_players`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__match_players` (
  `player_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `match_id` bigint(20) NOT NULL DEFAULT '0',
  `member_id` bigint(20) NOT NULL DEFAULT '0',
  `player_kills` int(10) NOT NULL DEFAULT '0',
  `player_deaths` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`player_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__pages`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__pages` (
  `page_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `page_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `page_content` text COLLATE utf8_unicode_ci NOT NULL,
  `page_priority` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;
-- command split --
INSERT INTO `__DBPREFIX__pages` (`page_id`, `page_title`, `page_slug`, `page_content`, `page_priority`) VALUES
(1, 'About Us', 'aboutus', 'Put your clan description here.', 1);
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__polls`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__polls` (
  `poll_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `poll_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `poll_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__poll_options`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__poll_options` (
  `option_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `poll_id` bigint(20) NOT NULL DEFAULT '0',
  `option_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `option_priority` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__poll_votes`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__poll_votes` (
  `vote_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `poll_id` bigint(20) NOT NULL DEFAULT '0',
  `option_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__sessions`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__settings`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__settings` (
  `setting_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL DEFAULT '0',
  `setting_title` varchar(100) NOT NULL,
  `setting_slug` varchar(100) NOT NULL,
  `setting_value` longtext NOT NULL,
  `setting_type` enum('text','timezone','select','textarea') NOT NULL DEFAULT 'text',
  `setting_options` text NOT NULL,
  `setting_description` text NOT NULL,
  `setting_rules` varchar(200) NOT NULL,
  `setting_priority` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;
-- command split --
INSERT INTO `__DBPREFIX__settings` (`setting_id`, `category_id`, `setting_title`, `setting_slug`, `setting_value`, `setting_type`, `setting_options`, `setting_description`, `setting_rules`, `setting_priority`) VALUES
(1, 1, 'Clan Name', 'clan_name', '__CLANNAME__', 'text', '', 'Put your clan name here.', 'trim|required', 1),
(2, 2, 'Theme', 'theme', 'default', 'text', '', 'The name of the theme folder you want to use.', 'trim|required', 1),
(3, 3, 'Default Timezone', 'default_timezone', '__TIMEZONE__', 'timezone', '', 'The default timezone for entire site', 'trim|required', 1),
(4, 1, 'Site Email', 'site_email', '__SITEEMAIL__', 'text', '', 'The site''s main email', 'trim|required|valid_email', 4),
(5, 3, 'Daylight Savings', 'daylight_savings', '__DAYLIGHTSAVINGS__', 'select', '1=Yes|0=No', 'Is it daylight savings?', 'trim|required', 2),
(6, 1, 'Forum Link', 'forum_link', '', 'text', '', 'The link to your forums', 'trim', 3),
(7, 1, 'Clan Slogan', 'clan_slogan', '', 'text', '', 'Put your clan slogan here', 'trim', 2),
(8, 2, 'Theme Logo', 'logo', '1', 'select', '1=Yes|0=No|2=Text', 'Use the logo image? Otherwise it will use text', 'trim|required', 2),
(9, 2, 'Sponsor Image Width', 'sponsor_width', '209', 'text', '', 'The width of sponsor images in pixels', 'trim|required|numeric', 3),
(10, 4, 'Allow Registration', 'allow_registration', '1', 'select', '1=Yes|0=No', 'Allow users to register on the site?', 'trim|required', 1),
(11, 4, 'CAPTCHA Words', 'captcha_words', 'Xcel Gaming', 'textarea', '', 'Word Bank for CAPTCHA. Seperate each word on a new line.', 'trim|required', 2);
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__setting_categories`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__setting_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category_priority` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;
-- command split --
INSERT INTO `__DBPREFIX__setting_categories` (`category_id`, `category_title`, `category_priority`) VALUES
(1, 'General Settings', 1),
(2, 'Theme Settings', 2),
(3, 'Time Settings', 3),
(4, 'Registration Settings', 4);
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__sponsors`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__sponsors` (
  `sponsor_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sponsor_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sponsor_link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sponsor_description` text COLLATE utf8_unicode_ci NOT NULL,
  `sponsor_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sponsor_priority` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sponsor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__squads`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__squads` (
  `squad_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `squad_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `squad_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `squad_tag` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `squad_tag_position` tinyint(1) NOT NULL DEFAULT '0',
  `squad_status` tinyint(1) NOT NULL DEFAULT '0',
  `squad_priority` int(10) NOT NULL,
  PRIMARY KEY (`squad_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__squad_members`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__squad_members` (
  `member_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `squad_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `member_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `member_role` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `member_priority` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__users`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL DEFAULT '0',
  `user_notes` text NOT NULL,
  `user_name` varchar(200) NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
-- command split --
INSERT INTO `__DBPREFIX__users` (`user_id`, `group_id`, `user_notes`, `user_name`, `user_password`, `user_salt`, `user_email`, `user_timezone`, `user_daylight_savings`, `user_ipaddress`, `user_joined`, `user_avatar`, `user_activation`) VALUES
(1, '2', '', '__USERNAME__', '__USERPASSWORD__', '__USERSALT__', '__USEREMAIL__', '__USERTIMEZONE__', '__USERDAYLIGHTSAVINGS__', '__USERIPADDRESS__', '__USERJOINED__', '', '1');
-- command split --
DROP TABLE IF EXISTS `__DBPREFIX__user_groups`;
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__user_groups` (
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
-- command split --
INSERT INTO `__DBPREFIX__user_groups` (`group_id`, `group_title`, `group_user_title`, `group_default`, `group_administrator`, `group_clan`, `group_banned`, `group_permissions`) VALUES
(1, 'Registered Users', 'Registered User', 1, 0, 0, 0, 0),
(2, 'Administrators', 'Administrator', 1, 1, 1, 0, 2047),
(3, 'Team Members', 'Team Member', 1, 0, 1, 0, 0),
(4, 'Banned Users', 'Banned', 1, 0, 0, 1, 0);
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__widgets` (
  `widget_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area_id` bigint(20) NOT NULL DEFAULT '0',
  `widget_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `widget_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `widget_settings` text COLLATE utf8_unicode_ci NOT NULL,
  `widget_priority` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`widget_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
-- command split --
INSERT INTO `ClanCMS_widgets` (`widget_id`, `area_id`, `widget_title`, `widget_slug`, `widget_settings`, `widget_priority`) VALUES
(1, 1, 'Login', 'login', 'b:0;', 0),
(2, 1, 'Poll', 'polls', 'b:0;', 1),
(3, 1, 'Matches', 'matches', 'a:2:{s:12:"matches_type";s:1:"0";s:14:"matches_number";s:1:"5";}', 2),
(4, 1, 'Sponsors', 'sponsors', 'b:0;', 3),
(5, 1, 'Users Online', 'users_online', 'b:0;', 4),
(6, 2, 'Articles', 'articles', 'b:0;', 0),
(7, 3, 'Admin CP Login', 'login', 'b:0;', 0),
(8, 3, 'Site Stats', 'site_stats', 'b:0;', 1),
(9, 3, 'Admin CP Users Online', 'users_online', 'b:0;', 2),
(10, 4, 'Admin CP Alerts', 'administrator_alerts', 'b:0;', 0),
(11, 5, 'Pages', 'pages', 'b:0;', 0),
(12, 6, 'New Users', 'new_users', 'b:0;', 0);
-- command split --
CREATE TABLE IF NOT EXISTS `__DBPREFIX__widget_areas` (
  `area_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `area_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
-- command split --
INSERT INTO `__DBPREFIX__widget_areas` (`area_id`, `area_title`, `area_slug`) VALUES
(1, 'Sidebar', 'sidebar'),
(2, 'Header', 'header'),
(3, 'Admin CP Sidebar', 'admincp_sidebar'),
(4, 'Admin CP Header', 'admincp_header'),
(5, 'Navigation', 'navigation'),
(6, 'Dashboard', 'dashboard');
