-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2011 at 01:21 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `angrytank`
--

-- --------------------------------------------------------  

--
-- Table structure for table `an_cacheinfo`
--

CREATE TABLE `an_cacheinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_url` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `an_cacheinfo`
--


-- --------------------------------------------------------

--
-- Table structure for table `an_cms`
--

CREATE TABLE `an_cms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `body` text NOT NULL,
  `active` varchar(10) NOT NULL,
  `meta_description` tinytext NOT NULL,
  `meta_keyword` tinytext NOT NULL,
  `page_title` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `an_cms`
--


-- --------------------------------------------------------

--
-- Table structure for table `an_config`
--

CREATE TABLE `an_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cnfig_key` varchar(100) NOT NULL,
  `cnfig_value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `an_config`
--

INSERT INTO `an_config` VALUES(19, 'paypal_api_signature', 'A2Ucufe94aDUYq5YJCa.dEVUH6RwAH3R7fVJIWwVWOUXV1Os9O-dHKCc');
INSERT INTO `an_config` VALUES(18, 'paypal_api_pass', '3XS348A8NFZFJZP2');
INSERT INTO `an_config` VALUES(7, 'page_suffix', '.html');
INSERT INTO `an_config` VALUES(17, 'paypal_api_username', 'roni_api1.cybernetikz.com');
INSERT INTO `an_config` VALUES(9, 'invalid_page', '404');
INSERT INTO `an_config` VALUES(10, 'auth_key', '4');
INSERT INTO `an_config` VALUES(11, 'auth_value', '6');
INSERT INTO `an_config` VALUES(16, 'debug_mode', '1');
INSERT INTO `an_config` VALUES(14, 'site_name', 'Angry Tank');
INSERT INTO `an_config` VALUES(13, 'save', 'Save');
INSERT INTO `an_config` VALUES(20, 'paypal_api_sbncode', '');
INSERT INTO `an_config` VALUES(21, 'paypal_api_usesandbox', '1');
INSERT INTO `an_config` VALUES(22, 'paypal_api_proxyhost', '12');
INSERT INTO `an_config` VALUES(23, 'paypal_api_proxyport', '');
INSERT INTO `an_config` VALUES(24, 'paypal_api_useproxy', '0');
INSERT INTO `an_config` VALUES(25, 'paypal_api_return', 'http://localhost:8888/amarboimela/checkout/books/paypalfinalize');
INSERT INTO `an_config` VALUES(26, 'paypal_api_cancel', 'http://localhost:8888/amarboimela/cart.php');
INSERT INTO `an_config` VALUES(27, 'paypal_api_currency', 'USD');
INSERT INTO `an_config` VALUES(28, 'date_format', 'mm-dd-yy');
INSERT INTO `an_config` VALUES(29, 'per_page', '20');
INSERT INTO `an_config` VALUES(30, 'admin_name', 'Roni Alam');
INSERT INTO `an_config` VALUES(31, 'admin_email', 'testadmin@test.com');
INSERT INTO `an_config` VALUES(32, 'smtp_host', 'mail.testhost.com');
INSERT INTO `an_config` VALUES(33, 'fauth_key', 'fauth');
INSERT INTO `an_config` VALUES(34, 'fauth_value', 'rauth');
INSERT INTO `an_config` VALUES(35, 'user_role', '2');
INSERT INTO `an_config` VALUES(36, 'default_user_role', '1');
INSERT INTO `an_config` VALUES(37, 'site_url', 'http://localhost:8888/AngryTank/');
INSERT INTO `an_config` VALUES(38, 'facebook_url', 'http://www.facebook.com/annanovas');
INSERT INTO `an_config` VALUES(39, 'flicker_url', 'http://www.flickr.com/photos/annanovas');
INSERT INTO `an_config` VALUES(40, 'twitter_url', 'http://twitter.com/annanovas');
INSERT INTO `an_config` VALUES(41, 'paypal_user_name', 'saro_1278593380_biz@test.com');
INSERT INTO `an_config` VALUES(42, 'paypal_url', 'https://www.sandbox.paypal.com/cgi-bin/webscr');
INSERT INTO `an_config` VALUES(43, 'youtube_api_key', 'AI39si6Y2bHfMRgWirAmJz_tQdY7IKexMi69AooFcebMtGyJXk7nkZ_nCC9Rz4lhqS1qVrpveOOVXJVEUZnF89LLFrMh4C31fQ');
INSERT INTO `an_config` VALUES(44, 'youtube_user', 'shahrasel');

-- --------------------------------------------------------

--
-- Table structure for table `an_homepage`
--

CREATE TABLE `an_homepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `imagefile` varchar(255) NOT NULL,
  `date_created` bigint(20) NOT NULL,
  `date_modified` varchar(20) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `an_homepage`
--

INSERT INTO `an_homepage` VALUES(6, 'title', '<p>dklsfjads fkljads klf</p>', '1300451183_JP 3904.jpg', 1300384800, '1300384800', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `an_logchange`
--

CREATE TABLE `an_logchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vno` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `changelog` text NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `an_logchange`
--


-- --------------------------------------------------------

--
-- Table structure for table `an_modulemanager`
--

CREATE TABLE `an_modulemanager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `aboutus` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=121 ;

--
-- Dumping data for table `an_modulemanager`
--

INSERT INTO `an_modulemanager` VALUES(18, 'userrole', '');
INSERT INTO `an_modulemanager` VALUES(36, 'cms', '');
INSERT INTO `an_modulemanager` VALUES(46, 'user', '');
INSERT INTO `an_modulemanager` VALUES(89, 'logchange', '');
INSERT INTO `an_modulemanager` VALUES(100, 'userinfo', '');
INSERT INTO `an_modulemanager` VALUES(108, '', '');
INSERT INTO `an_modulemanager` VALUES(111, '', '<p>ads fadsf adsf ds amar naam rasel</p>');
INSERT INTO `an_modulemanager` VALUES(112, 'cartype', '');
INSERT INTO `an_modulemanager` VALUES(113, 'mapaddress', '');
INSERT INTO `an_modulemanager` VALUES(114, 'cartimage', '');
INSERT INTO `an_modulemanager` VALUES(115, 'carimage', '');
INSERT INTO `an_modulemanager` VALUES(116, 'homepage', '');
INSERT INTO `an_modulemanager` VALUES(117, 'videoupload', '');
INSERT INTO `an_modulemanager` VALUES(118, 'saveid', '');
INSERT INTO `an_modulemanager` VALUES(119, 'moregames', '');
INSERT INTO `an_modulemanager` VALUES(120, 'news', '');

-- --------------------------------------------------------

--
-- Table structure for table `an_moregames`
--

CREATE TABLE `an_moregames` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `imagefile` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `created_at` int(11) NOT NULL,
  `active` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `an_moregames`
--

INSERT INTO `an_moregames` VALUES(2, 'test 1', '1319116679_3_l.jpg', 'test 1 description', 'http://www.google.com', 1319115955, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `an_news`
--

CREATE TABLE `an_news` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `created_at` int(11) NOT NULL,
  `active` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `an_news`
--

INSERT INTO `an_news` VALUES(3, 'new 11', 'news description1', 'http://www.test.com', 1319116949, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `an_page`
--

CREATE TABLE `an_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_name` varchar(250) NOT NULL,
  `filter` mediumtext NOT NULL,
  `template` varchar(250) NOT NULL,
  `is_cache` tinyint(4) NOT NULL,
  `default` tinyint(4) NOT NULL,
  `active` varchar(10) NOT NULL,
  `is_ajax` tinyint(4) NOT NULL,
  `page_title` varchar(250) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `navigation_name` varchar(250) NOT NULL,
  `page_bottom` text NOT NULL,
  `is_secure` tinyint(4) NOT NULL,
  `is_navigate` tinyint(4) NOT NULL,
  `navigation_order` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=128 ;

--
-- Dumping data for table `an_page`
--

INSERT INTO `an_page` VALUES(86, 'index', 'user_userlogin', 'flogin.php', 0, 0, 'Active', 0, 'index', 'Log In Page', 'Log In Page', 'index', '', 0, 1, 2);
INSERT INTO `an_page` VALUES(126, 'newsplist', 'cms_newsplist', 'newsplist.php', 0, 0, 'Active', 0, 'newsplist', 'newsplist', 'newsplist', 'newsplist', '', 0, 1, 0);
INSERT INTO `an_page` VALUES(127, 'moregamesplist', 'cms_moregamesplist', 'moregamesplist.php', 0, 0, 'Active', 0, 'moregamesplist', 'moregamesplist', 'moregamesplist', 'moregamesplist', '', 0, 1, 0);
INSERT INTO `an_page` VALUES(125, 'saveudid', 'saveid_saveudid', 'saveudid.php', 0, 0, 'Active', 0, 'saveudid', 'saveudid', 'saveudid', 'saveudid', '', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `an_saveid`
--

CREATE TABLE `an_saveid` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `udid` varchar(255) NOT NULL,
  `created_at` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `an_saveid`
--

INSERT INTO `an_saveid` VALUES(8, '232', 1319106834);
INSERT INTO `an_saveid` VALUES(4, '235', 1319106289);
INSERT INTO `an_saveid` VALUES(3, '786', 1319106275);
INSERT INTO `an_saveid` VALUES(7, '234', 1319106826);
INSERT INTO `an_saveid` VALUES(10, '238', 1319181335);
INSERT INTO `an_saveid` VALUES(11, '2150918d eba35200 d7263a56 43700b0c d0d7e5e2 4bdecd39 0269749e 545c0889', 1319540598);
INSERT INTO `an_saveid` VALUES(12, '2150918d eba35200 d7263a56 43700b0c d0d7e5e2 4bdecd39 0269749e 545c0889', 1319540600);

-- --------------------------------------------------------

--
-- Table structure for table `an_user`
--

CREATE TABLE `an_user` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL,
  `login_password` varchar(100) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dateofbirth` varchar(100) NOT NULL,
  `country` varchar(255) NOT NULL,
  `newssubscribe` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_name` (`login_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=27 ;

--
-- Dumping data for table `an_user`
--

INSERT INTO `an_user` VALUES(20, 'superadmin', 'roni@annanovas.com', '17c4520f6cfd1ab53d8745e84681eb49', 1, '', '', '', '0', 'Active', '0000-00-00');
INSERT INTO `an_user` VALUES(1, 'admin', 'roni@1annanovas.com', '21232f297a57a5a743894a0e4a801fc3', 3, '', '', '', '', 'Active', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `an_userforgot`
--

CREATE TABLE `an_userforgot` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `recover_value` varchar(250) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=46 ;

--
-- Dumping data for table `an_userforgot`
--

INSERT INTO `an_userforgot` VALUES(45, 8, '3a41205be86a09118cdc7e502ef1c360', 'Active');
INSERT INTO `an_userforgot` VALUES(44, 1, 'da40ddcc9e8dd72051d7e0f01a9e488a', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `an_userrole`
--

CREATE TABLE `an_userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `an_userrole`
--

INSERT INTO `an_userrole` VALUES(1, 'admin', 'Active');
INSERT INTO `an_userrole` VALUES(3, 'backend', 'Active');
INSERT INTO `an_userrole` VALUES(6, 'student', 'Active');
INSERT INTO `an_userrole` VALUES(7, 'teacher', 'Active');
