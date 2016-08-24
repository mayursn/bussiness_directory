-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 24, 2016 at 03:27 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business_directory_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bd_blog`
--

CREATE TABLE `bd_blog` (
  `id` int(11) NOT NULL,
  `type` char(30) NOT NULL,
  `featured_img` char(200) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bd_blog`
--

INSERT INTO `bd_blog` (`id`, `type`, `featured_img`, `title`, `description`, `created_by`, `create_time`, `status`) VALUES
(1, 'blog', '2013-chevrolet-express-cargo-van-steel-wheels-980x4761.jpg', '{"ar":"hello world","bn":"","en":"Demo blog post en","es":"","fr":"","nl":"","pt":"","ru":"Demo blog post ru"}', '{"ar":"<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.<\\/p>\\r\\n<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.<\\/p>","bn":"","en":"<p>en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.<\\/p>\\r\\n<p>en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.<\\/p>","es":"","fr":"","nl":"","pt":"","ru":"<p>ru demo blog post content.<\\/p>"}', 4, 1423740705, 0),
(2, 'article', 'iphone42.jpg', '{"ar":"","bn":"","en":"Lorem ipsum doller sit amet","es":"","fr":"","nl":"","pt":"","ru":""}', '{"ar":"","bn":"","en":"<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit amet<\\/p>","es":"","fr":"","nl":"","pt":"","ru":""}', 4, 1424087935, 0),
(3, 'news', '2013-chevrolet-express-cargo-van-steel-wheels-980x4763.jpg', '{"ar":"","bn":"","en":"Lorem ipsum doller sit ametLorem ipsum doller sit amet","es":"","fr":"","nl":"","pt":"","ru":""}', '{"ar":"","bn":"","en":"<p>Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet<\\/p>\\r\\n<p>Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet<\\/p>","es":"","fr":"","nl":"","pt":"","ru":""}', 4, 1424087980, 0),
(4, 'blog', 'jewelry.jpg', '{"en":"My Blog","ru":"","ar":""}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>","ru":"","ar":""}', 1, 1424348525, 1),
(5, 'blog', 'University_main_building.jpg', '{"en":"Second Blog","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<ul style=\\"list-style-type: undefined;\\">\\n<li><strong>Aliquam vel egestas turpis<\\/strong>. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverr<\\/li>\\n<li>\\n<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverr<\\/p>\\n<\\/li>\\n<li>\\n<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverr<\\/p>\\n<\\/li>\\n<li>\\n<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverr<\\/p>\\n<\\/li>\\n<\\/ul>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1471356320, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bd_blog_meta`
--

CREATE TABLE `bd_blog_meta` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `key` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bd_categories`
--

CREATE TABLE `bd_categories` (
  `id` int(11) NOT NULL,
  `title` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `featured_img` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `show_menu` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `create_time` int(15) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_categories`
--

INSERT INTO `bd_categories` (`id`, `title`, `fa_icon`, `featured_img`, `show_menu`, `created_by`, `create_time`, `status`) VALUES
(1, 'airport', 'fa-plane', 'airport1.jpg', 0, 1, 1425378600, 1),
(2, 'cafe', 'fa-coffee', 'cafe.jpg', 0, 1, 1425378640, 1),
(3, 'cinemas', 'fa-ticket', 'cinemas.jpg', 0, 1, 1425378732, 1),
(4, 'hotels_and_resorts', 'fa-building-o', 'resort1.jpg', 0, 1, 1425378851, 1),
(5, 'libraries', 'fa-book', 'library.jpg', 0, 1, 1425378937, 1),
(6, 'night_clubs', 'fa-glass', 'night_club1.jpg', 0, 1, 1425379043, 1),
(7, 'offices', 'fa-briefcase', 'office.png', 0, 1, 1425379116, 1),
(8, 'restaurants', 'fa-cutlery', 'restaurant.jpg', 0, 1, 1425379224, 1),
(9, 'shops', 'fa-shopping-cart', 'shop.jpg', 0, 1, 1425379268, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bd_emailtmpl`
--

CREATE TABLE `bd_emailtmpl` (
  `id` int(11) NOT NULL,
  `email_name` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `values` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_emailtmpl`
--

INSERT INTO `bd_emailtmpl` (`id`, `email_name`, `values`, `status`) VALUES
(1, 'confirmation_email', '{"subject":"Confirmation email","body":"Hi #username,\\r\\nYour signup is successful. Please follow the below link for activating your account:\\r\\n \\r\\n#activationlink\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\nThanks\\r\\n#webadmin","avl_vars":"#username,#useremail,#activationlink,#webadmin"}', 1),
(2, 'recovery_email', '{"subject":"Recovery email","body":"Hi #username,\\r\\nWe have received an account recovery request from your email. Please follow the below link for setting new password \\r\\n\\r\\n#recoverylink\\r\\n\\r\\nThanks\\r\\n#webadmin","avl_vars":"#username,#recoverylink,#webadmin"}', 1),
(3, 'payment_confirmation_email', '{"subject":"Confirmation email","body":"Hi #username,\\r\\nYou decided to make a payment. You can resume the payment from the following link\\r\\n\\r\\n#resumelink\\r\\n\\r\\nThanks\\r\\n#webadmin","avl_vars":"#username,#resumelink,#webadmin"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bd_faq`
--

CREATE TABLE `bd_faq` (
  `id` int(11) NOT NULL,
  `faq_question` text NOT NULL,
  `faq_answer` longtext NOT NULL,
  `faq_status` enum('0','1') NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bd_locations`
--

CREATE TABLE `bd_locations` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `parent_country` int(11) NOT NULL,
  `name` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_locations`
--

INSERT INTO `bd_locations` (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES
(1, 0, 0, 'USA', 'country', 1),
(2, 0, 0, ' Canada', 'country', 1),
(3, 0, 0, ' UK', 'country', 1),
(4, 0, 0, ' Mexico', 'country', 1),
(5, 1, 1, 'Alabama', 'state', 1),
(6, 1, 1, ' Alaska', 'state', 1),
(7, 1, 1, ' Arizona', 'state', 1),
(8, 1, 1, ' Arkansas', 'state', 1),
(9, 1, 1, ' California', 'state', 1),
(10, 1, 1, ' Colorado', 'state', 1),
(11, 1, 1, ' Connecticut', 'state', 1),
(12, 1, 1, ' Delaware', 'state', 1),
(13, 1, 1, ' Florida', 'state', 1),
(14, 1, 1, ' Georgia', 'state', 1),
(15, 1, 1, ' Hawaii', 'state', 1),
(16, 1, 1, ' Idaho', 'state', 1),
(17, 1, 1, ' Illinois', 'state', 1),
(18, 1, 1, ' Indiana', 'state', 1),
(19, 1, 1, ' Iowa', 'state', 1),
(20, 1, 1, ' Kansas', 'state', 1),
(21, 1, 1, ' Kentucky', 'state', 1),
(22, 1, 1, ' Louisiana', 'state', 1),
(23, 1, 1, ' Maine', 'state', 1),
(24, 1, 1, ' Maryland', 'state', 1),
(25, 1, 1, ' Massachusetts', 'state', 1),
(26, 1, 1, ' Michigan', 'state', 1),
(27, 1, 1, ' Minnesota', 'state', 1),
(28, 1, 1, ' Mississippi', 'state', 1),
(29, 1, 1, ' Missouri', 'state', 1),
(30, 1, 1, ' Montana', 'state', 1),
(31, 1, 1, ' Nebraska', 'state', 1),
(32, 1, 1, ' Nevada', 'state', 1),
(33, 1, 1, ' New Hampshire', 'state', 1),
(34, 1, 1, ' New Jersey', 'state', 1),
(35, 1, 1, ' New Mexico', 'state', 1),
(36, 1, 1, ' New York', 'state', 1),
(37, 1, 1, ' North Carolina', 'state', 1),
(38, 1, 1, ' North Dakota', 'state', 1),
(39, 1, 1, ' Ohio', 'state', 1),
(40, 1, 1, ' Oklahoma', 'state', 1),
(41, 1, 1, ' Oregon', 'state', 1),
(42, 1, 1, ' Pennsylvania', 'state', 1),
(43, 1, 1, ' Rhode Island', 'state', 1),
(44, 1, 1, ' South Carolina', 'state', 1),
(45, 1, 1, ' South Dakota', 'state', 1),
(46, 1, 1, ' Tennessee', 'state', 1),
(47, 1, 1, ' Texas', 'state', 1),
(48, 1, 1, ' Utah', 'state', 1),
(49, 1, 1, ' Vermont', 'state', 1),
(50, 1, 1, ' Virginia', 'state', 1),
(51, 1, 1, ' Washington', 'state', 1),
(52, 1, 1, ' West Virginia', 'state', 1),
(53, 1, 1, ' Wisconsin', 'state', 1),
(54, 1, 1, ' Wyoming', 'state', 1),
(55, 2, 2, 'Alberta', 'state', 1),
(56, 2, 2, ' British Columbia', 'state', 1),
(57, 2, 2, ' Manitoba', 'state', 1),
(58, 2, 2, ' New Brunswick', 'state', 1),
(59, 2, 2, ' Newfoundland', 'state', 1),
(60, 2, 2, ' Northwest Territories', 'state', 1),
(61, 2, 2, ' Nova Scotia', 'state', 1),
(62, 2, 2, ' Nunavut', 'state', 1),
(63, 2, 2, ' Ontario', 'state', 1),
(64, 2, 2, ' Prince Edward Island', 'state', 1),
(65, 2, 2, ' Quebec', 'state', 1),
(66, 2, 2, ' Saskatchewan', 'state', 1),
(67, 2, 2, ' Yukon', 'state', 1),
(68, 9, 1, 'Los Angeles', 'city', 1),
(69, 9, 1, 'San Diego', 'city', 1),
(70, 9, 1, 'Palm Sprigs', 'city', 1),
(71, 9, 1, 'San Francisco', 'city', 1),
(72, 9, 1, 'Long Beach', 'city', 1),
(73, 5, 1, 'Florence', 'city', 1),
(74, 5, 1, 'Northport', 'city', 1),
(75, 5, 1, 'Columbiana', 'city', 1),
(76, 13, 1, 'Miami', 'city', 1),
(77, 32, 1, 'Las Vegas', 'city', 1),
(78, 7, 1, 'Phoenix', 'city', 1),
(79, 35, 1, 'Albuquerque', 'city', 1),
(80, 7, 1, 'Tucson', 'city', 1),
(81, 10, 1, 'Denver', 'city', 1),
(82, 35, 1, 'Santa Fe', 'city', 1),
(83, 36, 1, 'New York', 'city', 1),
(84, 42, 1, 'Philadelphia', 'city', 1),
(85, 13, 1, 'Jacksonville', 'city', 1),
(86, 13, 1, 'maime', 'city', 1),
(88, 50, 1, 'Alexandria', 'city', 1),
(89, 15, 1, 'Honolulu', 'city', 1),
(90, 36, 1, 'Brooklyn', 'city', 1),
(91, 14, 1, 'Atlanta', 'city', 1),
(92, 9, 1, 'san jose', 'city', 1),
(93, 9, 1, 'California', 'city', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bd_media`
--

CREATE TABLE `bd_media` (
  `id` int(10) NOT NULL,
  `media_name` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `media_url` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bd_options`
--

CREATE TABLE `bd_options` (
  `id` int(11) NOT NULL,
  `key` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `values` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_options`
--

INSERT INTO `bd_options` (`id`, `key`, `values`, `status`) VALUES
(1, 'site_settings', '{"site_title":"Searchnative Business Classified","footer_text":"Thesepp 2016, all rights reserved","site_logo":"imgpsh_fullsize.png","site_lang":"en","site_direction":"ltr","site_direction_rules":"required","per_page":"10","default_layout":"1","ga_tracking_code":"","meta_description":"Airport,Cafe,cinemas,hotels,resots.libraries,night clubs,business classified,easy,cms,installation,best","key_words":"Airport,Cafe,cinemas,hotels,resots.libraries,night clubs,business classified,easy,cms,installation,best","crawl_after":"3"}', 1),
(2, 'active_theme', 'default', 1),
(3, 'positions', '[{"name":"home_page","status":1,"widgets":["category_main","category_counter","featured_posts_main","recent_posts_main","adsense_full_width","top_locations_home"]},{"name":"right_bar_home","status":1,"widgets":["plain_search_widget","top_posts","category_sidebar","fb_likebox","featured_post","recent_post","top_users","adsense_sidebar","top_locations_sidebar"]},{"name":"right_bar_detail","status":1,"widgets":["plain_search_widget","recent_post","top_locations_sidebar"]},{"name":"right_bar_all_users","status":1,"widgets":["plain_search_widget","featured_post","top_locations_sidebar","category_sidebar","recent_post"]},{"name":"right_bar_locations","status":1,"widgets":["plain_search_widget","recent_post","top_locations_sidebar","category_sidebar","featured_post","adsense_sidebar"]},{"name":"right_bar_categories","status":1,"widgets":["plain_search_widget","recent_post","adsense_sidebar","fb_likebox","top_locations_sidebar","category_featured_post"]},{"name":"right_bar_search_page","status":1,"widgets":false},{"name":"right_bar_general","status":1,"widgets":["plain_search_widget","featured_post","top_locations_sidebar","category_sidebar"]},{"name":"right_bar_blog_posts","status":1,"widgets":["plain_search_widget","top_locations_sidebar","featured_post"]},{"name":"footer_first_column","status":1,"widgets":["contact_text"]},{"name":"footer_second_column","status":1,"widgets":["follow_us"]},{"name":"footer_third_column","status":1,"widgets":["short_description"]}]', 1),
(4, 'top_menu', '[{"id":"1","parent":0},{"id":"10","parent":0},{"id":"2","parent":0},{"id":"13","parent":0},{"id":"14","parent":0},{"id":"3","parent":0},{"id":"6","parent":0},{"id":"4","parent":0},{"id":"11","parent":0}]', 1),
(5, 'purchase_key', '', 1),
(6, 'item_id', '', 1),
(7, 'paypal_settings', '{"enable_sandbox_mode":"Yes","enable_sandbox_mode_rules":"required","item_name":"Publish Business","item_name_rules":"required","email":"seller@paypalsandbox.com","email_rules":"required","currency":"USD","currency_rules":"required","finish_url":"user\\/payment\\/finish_url","finish_url_rules":"required","cancel_url":"user\\/payment\\/cancel_url","cancel_url_rules":"required"}', 1),
(8, 'banner_settings', '{"top_bar_bg_color":"#fdfdfd","menu_bg_color":"#ffffff","menu_text_color":"#666","active_menu_text_color":"#c00207","banner_type":"Layer Slider","search_panel_bg_color":"#9fee9b","show_bg_image":false,"search_bg":"vacation_house_interior-wallpaper-1920x1200-1920x664.jpg","map_latitude":"34.0204989","map_longitude":"-118.4117325","map_zoom":"7"}', 1),
(9, 'webadmin_email', '{"contact_email":"support@yourdomain.com","webadmin_name":"Webadmin","webadmin_email":"support@yourdomain.com"}', 1),
(10, 'smtp_settings', '{"smtp_email":"Enable","smtp_email_rules":"required","smtp_host":"ssl:\\/\\/smtp.googlemail.com","smtp_host_rules":"required","smtp_port":"465","smtp_port_rules":"required","smtp_timeout":"30","smtp_timeout_rules":"required","smtp_user":"test@example.com","smtp_user_rules":"required|valid_email","smtp_pass":"1234","smtp_pass_rules":"required","char_set":"utf-8","char_set_rules":"required","new_line":"\\\\r\\\\n","new_line_rules":"required","mail_type":"html","mail_type_rules":"required"}', 1),
(11, 'business_settings', '{"publish_directly":"Yes","publish_directly_rules":"required","system_currency":"ALL","system_currency_type":"0","system_currency_rules":"required","enable_signup":"Yes","enable_signup_rules":"required","hide_posts_if_expired":"No","hide_posts_if_expired_rules":"required","show_admin_agent":"Yes","show_admin_agent_rules":"required","show_street_view":"Yes","show_street_view_rules":"required","show_state_province":"yes","show_state_province_rules":"required","show_distance_in":"miles","show_distance_in_rules":"required","posts_per_page":"6","posts_per_page_rules":"required","currency_placing":"before_with_no_gap","currency_placing_rules":"required","enable_fb_login":"No","enable_fb_login_rules":"required","fb_app_id":"","fb_app_id_rules":"","fb_secret_key":"","fb_secret_key_rules":"","enable_comment":"No","enable_comment_rules":"required","fb_comment_app_id":"","fb_comment_app_id_rules":"","disqus_shortname":"","disqus_shortname_rules":""}', 1),
(12, 'package_settings', '{"enable_pricing":"Yes","enable_pricing_rules":"required","enable_paypal_transfer":"Yes","enable_paypal_transfer_rules":"required","enable_bank_transfer":"Yes","enable_bank_transfer_rules":"required","bank_transfer_instruction_for_posts":"Please mention your transaction id while making bank transfer\\nAccount no : #**********\\nBank name : ABC Bank","bank_transfer_instruction_for_posts_rules":"required","enable_featured_pricing":"Yes","enable_featured_pricing_rules":"required","enable_featured_paypal_transfer":"Yes","enable_featured_paypal_transfer_rules":"required","enable_featured_bank_transfer":"Yes","enable_featured_bank_transfer_rules":"required","bank_transfer_instruction_for_featured_posts":"Please mention your transaction id while making bank transfer\\nAccount no : #**********\\nBank name : ABC Bank","bank_transfer_instruction_for_featured_posts_rules":"required","bank_currency":"use_paypal","bank_currency_rules":"required"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bd_packages`
--

CREATE TABLE `bd_packages` (
  `id` int(11) NOT NULL,
  `type` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post_package',
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `expiration_time` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_packages`
--

INSERT INTO `bd_packages` (`id`, `type`, `title`, `description`, `price`, `expiration_time`, `status`) VALUES
(1, 'featured_package', 'Free', 'Free for 15 days', '0.00', 15, 1),
(2, 'post_package', 'Normal', '', '10.00', 60, 1),
(3, 'post_package', 'Free', 'Free for 30 days', '0.00', 30, 1),
(4, 'featured_package', 'Ultimate', 'Featured for 60 days', '5.00', 60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bd_pages`
--

CREATE TABLE `bd_pages` (
  `id` int(11) NOT NULL,
  `alias` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `show_in_menu` int(1) NOT NULL DEFAULT '1',
  `layout` int(1) NOT NULL,
  `content_from` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Manual',
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` char(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sidebar` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `seo_settings` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` int(20) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `editable` int(1) NOT NULL DEFAULT '1',
  `parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_pages`
--

INSERT INTO `bd_pages` (`id`, `alias`, `show_in_menu`, `layout`, `content_from`, `title`, `url`, `content`, `sidebar`, `seo_settings`, `create_time`, `status`, `editable`, `parent`) VALUES
(1, 'home', 1, 1, 'Url', '[home]', '', '', '', '{"meta_description":"classified buy sell. real estates electronics pets vehicles matrimonial jobs community services fashion search and post your ad Top Featured Posts categories","key_words":"sale,rent,buy,classified,cms,SN,electronics,real estate,pets,fashion","crawl_after":"3"}', 1424346356, 1, 0, 0),
(2, 'advanced_search', 1, 1, 'Url', '[advanced_search]', 'results', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 2147483647, 1, 0, 0),
(3, 'about', 1, 1, 'Manual', '[about]', 'page/about', '<p>About Us:</p>\r\n<p>Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet.</p>\r\n<p>Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet.</p>', '<p>Phone : +34534223434</p>\r\n<p>Mail : webheliosteam@gmail.com</p>', '{"meta_description":"","key_words":"","crawl_after":""}', 2147483647, 1, 0, 0),
(4, 'contact', 1, 1, 'Url', '[contact]', 'contact', '', '', '{"meta_description":"contact us page for sN, this meta will be read by search engine","key_words":"classified,buy,sale","crawl_after":"3"}', 1471610602, 1, 1, 0),
(5, 'users', 1, 0, 'Url', '[users]', 'users', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 2147483647, 0, 1, 0),
(6, 'blog', 1, 1, 'Url', '[blog]', 'blog-posts', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1471433854, 1, 1, 0),
(7, 'news', 1, 0, 'Url', '[news]', 'news-posts', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1424339480, 0, 1, 0),
(8, 'articles', 1, 0, 'Url', '[articles]', 'article-posts', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1424339485, 0, 1, 0),
(9, 'pages', 1, 0, 'Url', '[pages]', '#', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 2147483647, 0, 1, 0),
(10, 'list_business', 1, 0, 'Url', '[list_business]', 'list-business', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1471610590, 1, 1, 0),
(11, 'locations', 1, 2, 'Url', '[locations]', 'locations', '', '', '{"meta_description":"city, state, country","key_words":"city, state, country","crawl_after":"3"}', 1471613676, 2, 1, 0),
(12, 'terms_and_conditions', 0, 2, 'Manual', '[terms_and_conditions]', 'page/terms_and_conditions', '<h2>Terms and conditions</h2>\r\n<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.</p>\r\n<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.</p>', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1429350671, 1, 1, 0),
(13, 'services', 1, 2, 'Url', 'Services', 'show/services', '', '', '{"meta_description":"services","key_words":"services","crawl_after":""}', 1471416387, 1, 1, 0),
(14, 'products', 1, 0, 'Url', 'Products', 'show/products', '', '', '{"meta_description":"products","key_words":"products","crawl_after":""}', 1471426291, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bd_posts`
--

CREATE TABLE `bd_posts` (
  `id` int(11) NOT NULL,
  `unique_id` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `rating` decimal(2,1) NOT NULL DEFAULT '0.0',
  `category` int(11) NOT NULL DEFAULT '0',
  `price_range` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `founded` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `zip_code` char(15) NOT NULL,
  `latitude` decimal(11,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `featured_img` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `video_url` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `opening_hour` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `additional_features` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `food_menu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL,
  `create_time` int(20) NOT NULL DEFAULT '0',
  `publish_time` int(20) NOT NULL DEFAULT '0',
  `last_update_time` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `activation_date` date DEFAULT NULL,
  `expirtion_date` date DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT '0',
  `featured_expiration_date` date DEFAULT NULL,
  `report` int(11) NOT NULL DEFAULT '0',
  `total_view` int(10) NOT NULL DEFAULT '0',
  `search_meta` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_posts`
--

INSERT INTO `bd_posts` (`id`, `unique_id`, `title`, `description`, `tags`, `rating`, `category`, `price_range`, `address`, `phone_no`, `website`, `founded`, `email`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `opening_hour`, `additional_features`, `food_menu`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES
(1, '54f5920b0b99e', '{"en":"Demo Airport","ar":"Demo Airport"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":""}', 'airport, plane, airlines', '0.0', 1, '', 'San Francisco International Airport', '333-100-9900', 'www.test-air.org', '1960', 'airport@example.com', 1, 9, 71, '94128', '37.61420831', '-122.39440492', 'air1.jpg', '', '[]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"saturday","closed":0,"start_time":"Closed","close_time":"Closed"},{"day":"sunday","closed":0,"start_time":"Closed","close_time":"Closed"}]', '[]', NULL, 1, 1425379851, 1425379851, 1425563554, 1, '2015-03-03', '2015-04-02', 0, NULL, 0, 10, 'Airport USA  California San Francisco 94128 San Francisco International Airport Demo Airport Demo Airport airport, plane, airlines '),
(2, '54f593af839fa', '{"en":"Night Club","ar":"Night Club"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":""}', 'nightlife, club, party, place, dj', '0.0', 6, '200$ - 1800$', '219 King St', '212-992-0091', 'www.test-night.com', '2002', 'night@example.com', 1, 50, 88, '22314', '38.80459730', '-77.04204040', 'oro-nightclub.jpg', '', '[]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"saturday","closed":0,"start_time":"Closed","close_time":"Closed"},{"day":"sunday","closed":0,"start_time":"Closed","close_time":"Closed"}]', '["Best Dj","Awesome Party","Sexy Girls"]', NULL, 1, 1425380271, 1425380272, 1425563450, 1, '2015-03-03', '2015-04-02', 0, NULL, 0, 2, 'Night Clubs USA  Virginia Alexandria 22314 219 King St Night Club Night Club nightlife, club, party, place, dj '),
(3, '54f595875cce9', '{"en":"Best Resort","ar":"Best Resort"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":""}', 'resort, vacation, travel, relax, family', '0.0', 4, '300$-25000$', '2169 Kalia Rd.', '212-992-0091', 'www.test-hotel.com', '1978', 'hotel@example.com', 1, 15, 89, '96815', '21.27864110', '-157.83258750', 'resort11.jpg', '', '["7172953627_ecd4e2277f_b.jpg","3601132112_8d00490483_b.jpg","10466694366_e9db09a762_b.jpg"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"saturday","closed":0,"start_time":"Closed","close_time":"Closed"},{"day":"sunday","closed":0,"start_time":"Closed","close_time":"Closed"}]', '[]', NULL, 1, 1425380743, 1425380743, 1425557153, 1, '2015-03-03', '2015-04-02', 0, '2015-03-25', 0, 5, 'Hotels & Resorts USA  Hawaii Honolulu 96815 2169 Kalia Rd. Best Resort Best Resort resort, vacation, travel, relax, family '),
(4, '54f5971764a0e', '{"en":"Test Restaurant"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":""}', '', '0.0', 8, '', '109 Montrose Ave', '222-333-1331', '', '', 'restau@example.com', 1, 36, 90, '11206', '40.70720287', '-73.94492523', 'restaurant1.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1425381143, 1425381143, 1425381143, 1, '2015-03-03', '2015-04-02', 0, NULL, 0, 2, 'restaurants  USA  New York Brooklyn 11206  109 Montrose Ave Test Restaurant  '),
(5, '54f598d994ec0', '{"en":"Hot Cofee"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":""}', 'cafe, coffee, hangout, tea ', '4.0', 2, '', '5633 Hollywood Blvd', '333-100-9900', 'www.cafetest.com', '1978', 'sooncafe@example.com', 1, 9, 68, '90028', '34.10228719', '-118.31228648', 'cafe1.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1425381593, 1425381594, 1425381594, 1, '2015-03-03', '2015-04-02', 0, '2015-03-25', 0, 9, 'cafe 1978 USA  California Los Angeles 90028  5633 Hollywood Blvd Hot Cofee cafe, coffee, hangout, tea  '),
(6, '54f59a2baf959', '{"en":"New Cinema"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":""}', 'movie, blockbuster, art, cinema', '5.0', 3, '', '3708 Las Vegas Blvd S', '333-100-9900', 'www.westcoocinemas.net', '1930', 'cinema@example.com', 1, 32, 77, '89109', '36.10925167', '-115.17348636', 'cinemas1.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1425381931, 1425381934, 1425381934, 1, '2015-03-03', '2015-04-02', 0, NULL, 0, 7, 'cinemas 1930 USA  Nevada Las Vegas 89109 3708 Las Vegas Blvd S New Cinema movie, blockbuster, art, cinema '),
(7, '54f59c2d0b040', '{"en":"Best Shop"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":""}', 'shop, clothes, buy, trial', '0.0', 9, '', '1935 Peachtree Rd NE', '333-100-9900', 'www.nwrr.com', '1990', 'shopzww@example.com', 1, 14, 91, '30309', '33.80150513', '-84.39262651', 'shop1.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1425382445, 1425382446, 1425382446, 1, '2015-03-03', '2015-04-02', 0, NULL, 0, 16, 'shops 1990 USA  Georgia Atlanta 30309 1935 Peachtree Rd NE Best Shop shop, clothes, buy, trial '),
(8, '54f59efd337e4', '{"en":"Aryan Club","ar":"Aryan Club"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":""}', 'night, club, party, girls', '0.0', 6, '', '550 South Flower Street', '333-100-9900', 'www.test-night.com', '2009', 'night@example.com', 1, 9, 68, '90069', '34.05010715', '-118.25732902', 'night_club11.jpg', 'https://www.youtube.com/watch?v=D2WHIMlPAKc', '[]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"saturday","closed":0,"start_time":"Closed","close_time":"Closed"},{"day":"sunday","closed":0,"start_time":"Closed","close_time":"Closed"}]', '[]', NULL, 1, 1425383165, 1425383165, 1425559801, 1, '2015-03-03', '2015-04-02', 0, '2015-03-25', 0, 10, 'Night Clubs USA  California Los Angeles 90069 550 South Flower Street Aryan Club Aryan Club night, club, party, girls '),
(9, '54f5a06e62f7a', '{"en":"Indian Food","ar":"Indian Food"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":""}', 'desi, indian, food, taste', '0.0', 8, '', '9822 N 7th St', '333-100-9900', '', '', 'food@example.com', 1, 7, 78, '85020', '33.57631313', '-112.06517878', 'restaurant2.jpg', 'https://www.youtube.com/watch?v=rCfjYBYOJyY', '[]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"05:00 PM"},{"day":"saturday","closed":0,"start_time":"Closed","close_time":"Closed"},{"day":"sunday","closed":0,"start_time":"Closed","close_time":"Closed"}]', '[]', NULL, 1, 1425383534, 1425383534, 1425559895, 1, '2015-03-03', '2015-04-02', 0, NULL, 0, 9, 'Restaurants USA  Arizona Phoenix 85020 9822 N 7th St Indian Food Indian Food desi, indian, food, taste '),
(10, '57a881e906d3d', '{"en":"sdfg","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p>sdfg<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '', '0.0', 1, '', '1 wallstreet, ', '123-123-1234', '', '', 'tejas.patel@searchnative.in', 1, 9, 92, '95131', '37.29172030', '-121.84249450', 'Desert.jpg', NULL, NULL, NULL, NULL, NULL, 2, 1470661097, 1470661097, 1470661097, 3, NULL, NULL, 0, NULL, 0, 0, 'Airport  USA California san jose 95131 1 wallstreet,  sdfg            '),
(11, '57b2b3a20efc8', '{"en":"Searchnative India","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p>Searchnative India<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '', '0.0', 9, '100', '55 East 52nd Street  21st Floor', '9725506680', 'http://searchnative.in', '1970', 'mayur.panchal@searchnative.in', 1, 36, 83, '90001', '40.75907770', '-73.97361480', '15_(4).jpg', NULL, NULL, NULL, NULL, NULL, 3, 1471329186, 1471329186, 1471329186, 1, '2016-08-16', '2016-09-15', 0, NULL, 0, 2, 'Shops 1970 USA New York New York 90001 55 East 52nd Street  21st Floor Searchnative India            '),
(12, '57b405890caf1', '{"en":"Hotel Rems","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p>Hotel Rems<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 'hotel,rems', '0.0', 1, '100$-800$', 'Old W Dr', '7777777777', 'http://google.com', '1970', 'mayur.panchal@searchnative.in', 1, 9, 93, '90001', '38.63374130', '-121.50313580', 'University_main_building1.jpg', NULL, NULL, NULL, NULL, NULL, 3, 1471415689, 1471415689, 1471415689, 1, '2016-08-17', '2016-09-16', 0, NULL, 0, 1, 'Airport 1970 USA California California 90001 Old W Dr Hotel Rems           hotel,rems ');

-- --------------------------------------------------------

--
-- Table structure for table `bd_post_meta`
--

CREATE TABLE `bd_post_meta` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `key` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_post_meta`
--

INSERT INTO `bd_post_meta` (`id`, `post_id`, `key`, `value`, `status`) VALUES
(1, 3, 'facebook_profile', '', 1),
(2, 3, 'twitter_profile', '', 1),
(3, 3, 'linkedin_profile', '', 1),
(4, 3, 'pinterest_profile', '', 1),
(5, 3, 'googleplus_profile', '', 1),
(6, 3, 'business_logo', 'no-image.png', 1),
(7, 8, 'facebook_profile', '', 1),
(8, 8, 'twitter_profile', '', 1),
(9, 8, 'linkedin_profile', '', 1),
(10, 8, 'pinterest_profile', '', 1),
(11, 8, 'googleplus_profile', '', 1),
(12, 8, 'business_logo', 'no-image.png', 1),
(13, 9, 'facebook_profile', '', 1),
(14, 9, 'twitter_profile', '', 1),
(15, 9, 'linkedin_profile', '', 1),
(16, 9, 'pinterest_profile', '', 1),
(17, 9, 'googleplus_profile', '', 1),
(18, 9, 'business_logo', 'no-image.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bd_post_package`
--

CREATE TABLE `bd_post_package` (
  `id` int(11) NOT NULL,
  `unique_id` char(100) NOT NULL,
  `post_id` int(15) NOT NULL,
  `package_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `request_date` date NOT NULL,
  `activation_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `is_active` int(1) NOT NULL COMMENT '0=no,2=pending,1=active',
  `status` int(1) NOT NULL COMMENT '0=deleted,1=active',
  `payment_medium` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'paypal',
  `payment_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `response_log` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_post_package`
--

INSERT INTO `bd_post_package` (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES
(1, '57a881e934f90', 10, 2, '10.00', '2016-08-08', NULL, NULL, 2, 1, 'paypal', 'post', NULL),
(2, '57b2b3a23efd0', 11, 3, '0.00', '2016-08-16', '2016-08-16', '2016-09-15', 1, 1, 'paypal', 'post', 'Free package'),
(3, '57b40589cba5b', 12, 3, '0.00', '2016-08-17', '2016-08-17', '2016-09-16', 1, 1, 'paypal', 'post', 'Free package');

-- --------------------------------------------------------

--
-- Table structure for table `bd_products`
--

CREATE TABLE `bd_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quality` varchar(255) NOT NULL,
  `guarantee` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `make` varchar(255) NOT NULL,
  `model` text NOT NULL,
  `price` varchar(10) NOT NULL,
  `after_sales_service` varchar(10) NOT NULL,
  `product_status` enum('1','0') NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_file` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_products`
--

INSERT INTO `bd_products` (`product_id`, `product_name`, `quality`, `guarantee`, `color`, `size`, `capacity`, `make`, `model`, `price`, `after_sales_service`, `product_status`, `user_id`, `product_file`, `product_description`, `created_date`) VALUES
(1, 'shirt', 'high', '24 months', '#FF0000', 'Large', '1500', '100%', '1980', '500', 'Yes', '1', 1, '19082016084542.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '2016-08-24 10:49:16'),
(2, 'shirt', 'high', '24 months', '#FF0000', 'Large', '1500', '100%', '1980', '500', 'Yes', '1', 1, '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '2016-08-24 10:49:16'),
(3, 'Shirt', 'high', '24 months', '#FF0000', 'Large', '1500', '100%', '1980', '500', 'Yes', '1', 1, '24082016105243.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '2016-08-24 10:49:16'),
(4, 'shirt', 'high', '24 months', '#FF0000', 'Large', '1500', '100%', '1980', '500', 'Yes', '1', 1, '24082016105335.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '2016-08-24 10:49:16'),
(5, 'watch', 'high', '24 months', '#FF0000', 'Large', '1500', '100%', '1980', '500', 'Yes', '1', 1, '24082016110934.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '2016-08-24 10:49:16'),
(6, 'watch', 'high', '24 months', '#FF0000', 'Large', '1500', '100%', '1980', '500', 'Yes', '1', 1, '24082016110956.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '2016-08-24 10:49:16'),
(7, 'watch', 'high', '24 months', '#FF0000', 'Large', '1500', '57%', '1980', '400', 'Yes', '1', 1, '19082016085519.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '2016-08-24 10:49:16'),
(8, 'watch', 'high', '24 months', '#FF0000', 'Large', '1500', '2012', '2012', '500', 'Yes', '1', 1, '23082016014324.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '2016-08-24 10:49:16'),
(9, 'footwear', 'high', '24 months', '#FF0000', 'Large', '1500', '2016', '2016', '500', 'Yes', '1', 1, '24082016113519.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '2016-08-24 10:49:16'),
(10, 'footwear', 'high', '24 months', '#FF0000', 'Large', '1500', '2016', '2016', '500', 'Yes', '1', 1, '24082016113611.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '2016-08-24 10:49:16'),
(11, 'footwear', 'high', '24 months', '#FF0000', 'Large', '1500', '2016', '2016', '500', 'Yes', '1', 1, '24082016113638.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '2016-08-24 10:49:16'),
(12, 'footwear', 'high', '24 months', '#FF0000', 'Large', '1500', '2016', '2016', '500', 'Yes', '1', 1, '24082016113702.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '2016-08-24 10:49:16'),
(13, 'footwear', 'high', '24 months', '#FF0000', 'Large', '1500', '2016', '2016', '500', 'Yes', '1', 1, '24082016113703.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '2016-08-24 10:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `bd_review`
--

CREATE TABLE `bd_review` (
  `id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `rating` int(2) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `create_time` int(20) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bd_review`
--

INSERT INTO `bd_review` (`id`, `comment`, `rating`, `post_id`, `created_by`, `create_time`, `status`) VALUES
(1, 'Test', 4, 17, 1, 1424952821, 1),
(2, 'Test 2', 3, 17, 1, 1424952937, 1),
(3, 'Test 3', 4, 17, 1, 1424954535, 1),
(4, 'Test  5 starts', 5, 17, 1, 1424954563, 1),
(5, 'Test  5 starts', 5, 17, 1, 1424954563, 1),
(6, 'Naaah', 2, 17, 1, 1425109213, 1),
(7, 'Naaah', 2, 17, 1, 1425109216, 1),
(8, 'Naaah', 2, 17, 1, 1425109216, 1),
(9, 'hahahah', 3, 17, 1, 1425116940, 1),
(10, 'hahahha', 3, 17, 1, 1425117032, 1),
(11, 'Really Had a good time.', 4, 17, 2, 1425294530, 1),
(12, 'Good place to get together...!!!!', 3, 19, 2, 1425295400, 1),
(13, 'good hot coffeet', 4, 5, 2, 1470661826, 1),
(14, 'rfredg', 5, 6, 1, 1471341546, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bd_services`
--

CREATE TABLE `bd_services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `quality` varchar(10) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `opening_hours` int(255) NOT NULL,
  `services_cost` int(10) NOT NULL,
  `warranty_given` int(255) NOT NULL,
  `follow_up` varchar(10) NOT NULL,
  `service_status` enum('1','0') NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `service_file` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `service_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_services`
--

INSERT INTO `bd_services` (`service_id`, `service_name`, `quality`, `duration`, `opening_hours`, `services_cost`, `warranty_given`, `follow_up`, `service_status`, `user_id`, `created_date`, `updated_date`, `service_file`, `location`, `category`, `contact`, `service_description`) VALUES
(2, 'Hotel', 'high', '24 hours', 24, 100, 100, 'Yes', '1', 1, '2016-08-19 10:17:01', '0000-00-00 00:00:00', '19082016121701.jpg', 'Mumbai', 'Restaurants', '(91) 1234 5678 091', ''),
(3, 'auto care', 'high', '24 hours', 24, 5000, 100, 'Yes', '1', 1, '2016-08-22 07:25:55', '0000-00-00 00:00:00', '22082016092555.jpg', 'Ahmedabad', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(4, 'Courier', 'high', '24 hours', 24, 150, 100, 'Yes', '1', 1, '2016-08-22 07:27:55', '0000-00-00 00:00:00', '22082016092755.jpg', 'Vadodara', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(5, 'hospital', 'high', '24 hours', 24, 100, 100, 'Yes', '1', 1, '2016-08-22 08:17:05', '0000-00-00 00:00:00', '22082016101705.jpg', 'Ahmedabad', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(7, 'auto care', 'low', '24 hours', 12, 100, 100, 'No', '1', 1, '2016-08-22 13:04:23', '0000-00-00 00:00:00', '22082016030423.jpg', 'Ahmedabad', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(8, 'Hospital', 'high', '24 hours', 24, 5000, 100, 'Yes', '1', 1, '2016-08-23 04:55:39', '0000-00-00 00:00:00', '23082016065539.jpg', 'Ahmedabad', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(9, 'Hotel', 'high', '24 hours', 24, 6500, 100, 'Yes', '1', 1, '2016-08-23 04:58:26', '0000-00-00 00:00:00', '23082016065826.jpg', 'Jaipur', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(10, 'Auto care', 'high', '24 hours', 24, 2500, 100, 'Yes', '1', 1, '2016-08-23 05:00:58', '0000-00-00 00:00:00', '23082016070058.jpg', 'Vadodara', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(11, 'currior', 'high', '24 hours', 24, 500, 100, 'Yes', '1', 1, '2016-08-23 05:02:09', '0000-00-00 00:00:00', '23082016070209.jpg', 'Rajkot', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(12, 'Real Estate', 'high', '24 hours', 24, 500, 100, 'Yes', '1', 1, '2016-08-23 05:07:03', '0000-00-00 00:00:00', '23082016070703.jpg', 'Ahmedabad', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(13, 'auto care', 'high', '24 hours', 24, 500, 100, 'Yes', '1', 1, '2016-08-23 08:22:43', '0000-00-00 00:00:00', '23082016102242.jpg', 'Ahmedabad', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(14, 'auto care', 'high', '24 hours', 24, 500, 100, 'Yes', '1', 1, '2016-08-23 08:23:29', '0000-00-00 00:00:00', '23082016102329.jpg', 'Vadodara', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(15, 'currior', 'high', '24 hours', 24, 5000, 100, 'Yes', '1', 1, '2016-08-24 09:01:37', '0000-00-00 00:00:00', '', 'Ahmedabad', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(16, 'hotel', 'high', '24 hours', 24, 5000, 100, 'Yes', '1', 1, '2016-08-24 09:05:28', '0000-00-00 00:00:00', '24082016110548.jpg', 'Ahmedabad', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(17, 'Real Estate', 'high', '24 hours', 24, 5000, 100, 'Yes', '1', 1, '2016-08-24 09:06:59', '0000-00-00 00:00:00', '24082016110659.jpeg', 'Ahmedabad', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(18, 'currior', 'high', '24 hours', 24, 24, 100, 'Yes', '1', 1, '2016-08-24 10:16:44', '0000-00-00 00:00:00', '24082016121644.png', 'Ahmedabad', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(19, 'Courier', 'high', '24 hours', 24, 5000, 100, 'Yes', '1', 1, '2016-08-24 10:17:38', '0000-00-00 00:00:00', '24082016121738.jpg', 'Ahmedabad', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(20, 'hospital', 'high', '24 hours', 24, 5000, 100, 'Yes', '1', 1, '2016-08-24 11:19:57', '0000-00-00 00:00:00', '24082016011957.jpg', 'Ahmedabad', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
(21, 'Hospital', 'high', '24 hours', 24, 5000, 100, 'Yes', '1', 1, '2016-08-24 11:22:19', '0000-00-00 00:00:00', '24082016012219.jpeg', 'Ahmedabad', 'Auto care', '(91) 1234 5678 091', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters');

-- --------------------------------------------------------

--
-- Table structure for table `bd_sessions`
--

CREATE TABLE `bd_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bd_slider`
--

CREATE TABLE `bd_slider` (
  `id` int(11) NOT NULL,
  `slide_order` int(11) NOT NULL DEFAULT '0',
  `featured_img` char(200) NOT NULL,
  `title` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bd_slider`
--

INSERT INTO `bd_slider` (`id`, `slide_order`, `featured_img`, `title`, `description`, `created_by`, `create_time`, `status`) VALUES
(1, 2, 'img1.png', ' Easy management', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 4, 1424069935, 1),
(2, 3, 'img3.png', 'New iMac', 'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 1424352448, 1),
(3, 1, 'img2.png', 'Buy DSLR', 'When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.', 1, 1424352413, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bd_users`
--

CREATE TABLE `bd_users` (
  `id` int(10) NOT NULL,
  `user_type` int(3) NOT NULL,
  `first_name` char(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` char(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `profile_photo` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_name` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_key` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recovery_key` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirmation_key` char(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirmed` int(1) NOT NULL DEFAULT '1',
  `confirmed_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL DEFAULT '0',
  `banned` int(11) NOT NULL DEFAULT '0',
  `banned_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `banned_till` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_users`
--

INSERT INTO `bd_users` (`id`, `user_type`, `first_name`, `last_name`, `gender`, `profile_photo`, `user_name`, `user_email`, `password`, `remember_me_key`, `recovery_key`, `confirmation_key`, `confirmed`, `confirmed_date`, `status`, `banned`, `banned_date`, `banned_till`) VALUES
(1, 1, 'admin', 'patel', 'male', 'nophoto-male.jpg', 'admin', 'tejas.patel@searchnative.in', '8cb2237d0679ca88db6464eac60da96345513964', '', '', '', 1, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 'tejas', 'patel', 'male', '', 'tejas', 'tejashmca@gmail.com', 'a9fee7621fec9b97c4a994c94ba51bc65409a1e4', '', '', '', 1, '2016-08-08 02:55:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 'mayur', 'panchal', 'male', 'nophoto-male.jpg', 'mayursn', 'mayur.panchal@searchnative.in', '8cb2237d0679ca88db6464eac60da96345513964', '', '', '57b2b2157e62f', 1, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bd_usertype`
--

CREATE TABLE `bd_usertype` (
  `id` int(3) NOT NULL,
  `name` char(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_usertype`
--

INSERT INTO `bd_usertype` (`id`, `name`, `status`) VALUES
(1, 'admin', 1),
(2, 'business', 1),
(3, 'individual', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bd_user_meta`
--

CREATE TABLE `bd_user_meta` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` char(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_user_meta`
--

INSERT INTO `bd_user_meta` (`id`, `user_id`, `key`, `value`, `status`) VALUES
(1, 2, 'company_name', 'searchnative', 1),
(2, 2, 'phone', '123-123-1234', 1),
(3, 2, 'about_me', '', 1),
(4, 2, 'fb_profile', '', 1),
(5, 2, 'twitter_profile', '', 1),
(6, 2, 'li_profile', '', 1),
(7, 2, 'gp_profile', '', 1),
(8, 3, 'company_name', 'Searchnative India Pvt ltd', 1),
(9, 3, 'phone', '1234567890', 1),
(10, 3, 'about_me', '', 1),
(11, 3, 'fb_profile', '', 1),
(12, 3, 'twitter_profile', '', 1),
(13, 3, 'li_profile', '', 1),
(14, 3, 'gp_profile', '', 1),
(15, 3, 'hide_email', '0', 1),
(16, 3, 'hide_phone', '0', 1),
(17, 1, 'company_name', '', 1),
(18, 1, 'phone', '', 1),
(19, 1, 'about_me', '', 1),
(20, 1, 'fb_profile', '', 1),
(21, 1, 'twitter_profile', '', 1),
(22, 1, 'li_profile', '', 1),
(23, 1, 'gp_profile', '', 1),
(24, 1, 'hide_email', '0', 1),
(25, 1, 'hide_phone', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bd_widgets`
--

CREATE TABLE `bd_widgets` (
  `id` int(11) NOT NULL,
  `name` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alias` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(1) NOT NULL,
  `editable` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bd_widgets`
--

INSERT INTO `bd_widgets` (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES
(1, 'Facebook like box', 'fb_likebox', '', 1, 1),
(2, 'Contact text', 'contact_text', '', 1, 1),
(3, 'Follow us', 'follow_us', '', 1, 1),
(4, 'Short Description', 'short_description', '', 1, 1),
(5, 'Adsense full width', 'adsense_full_width', '', 1, 1),
(6, 'Adsense Sidebar', 'adsense_sidebar', '', 1, 1),
(7, 'Plain Search Widget', 'plain_search_widget', '', 1, 1),
(8, 'Adv Search Widget', 'advance_search_widget', '', 1, 1),
(9, 'Recent Posts Main', 'recent_posts_main', '', 1, 1),
(10, 'Category Main', 'category_main', '', 1, 1),
(11, 'Top Bar', 'top_bar', NULL, 1, 1),
(12, 'Top Bar Social', 'top_bar_social', NULL, 1, 1),
(13, 'Footer Links', 'footer_links', NULL, 1, 1),
(14, 'Top Posts', 'top_posts', NULL, 1, 1),
(15, 'Category Counter', 'category_counter', NULL, 1, 1),
(16, 'Tag Cloud', 'tag_cloud', NULL, 1, 1),
(17, 'Recent Post', 'recent_post', NULL, 1, 1),
(18, 'Category Featured Post', 'category_featured_post', NULL, 1, 1),
(19, 'Category Sidebar', 'category_sidebar', NULL, 1, 1),
(20, 'Social Media Cloud', 'social_media_cloud', NULL, 1, 1),
(21, 'Featured Posts Main', 'featured_posts_main', NULL, 1, 1),
(22, 'Top Locations Home', 'top_locations_home', NULL, 1, 1),
(23, 'Featured Post', 'featured_post', NULL, 1, 1),
(24, 'Top Locations Sidebar', 'top_locations_sidebar', NULL, 1, 1),
(25, 'Top Users', 'top_users', NULL, 1, 1),
(26, 'Login Page Description', 'login_page_description', NULL, 1, 1),
(27, 'Register Page Description', 'register_page_description', NULL, 1, 1),
(28, 'Blog post', 'blog_post', NULL, 1, 1),
(29, 'Article post', 'article_post', NULL, 1, 1),
(30, 'News post', 'news_post', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_products`
--

CREATE TABLE `db_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quality` varchar(255) NOT NULL,
  `guarantee` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(50) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `make` text NOT NULL,
  `model` text NOT NULL,
  `price` varchar(10) NOT NULL,
  `after_sales_service` varchar(10) NOT NULL,
  `product_status` enum('1','0') NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bd_blog`
--
ALTER TABLE `bd_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_blog_meta`
--
ALTER TABLE `bd_blog_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_categories`
--
ALTER TABLE `bd_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_emailtmpl`
--
ALTER TABLE `bd_emailtmpl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_locations`
--
ALTER TABLE `bd_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_media`
--
ALTER TABLE `bd_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_options`
--
ALTER TABLE `bd_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_packages`
--
ALTER TABLE `bd_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_pages`
--
ALTER TABLE `bd_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD UNIQUE KEY `alias_2` (`alias`);

--
-- Indexes for table `bd_posts`
--
ALTER TABLE `bd_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`);

--
-- Indexes for table `bd_post_meta`
--
ALTER TABLE `bd_post_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_post_package`
--
ALTER TABLE `bd_post_package`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`);

--
-- Indexes for table `bd_products`
--
ALTER TABLE `bd_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `bd_review`
--
ALTER TABLE `bd_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_services`
--
ALTER TABLE `bd_services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `bd_sessions`
--
ALTER TABLE `bd_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `bd_slider`
--
ALTER TABLE `bd_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_users`
--
ALTER TABLE `bd_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_usertype`
--
ALTER TABLE `bd_usertype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_user_meta`
--
ALTER TABLE `bd_user_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_widgets`
--
ALTER TABLE `bd_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_products`
--
ALTER TABLE `db_products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bd_blog`
--
ALTER TABLE `bd_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `bd_blog_meta`
--
ALTER TABLE `bd_blog_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bd_categories`
--
ALTER TABLE `bd_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `bd_emailtmpl`
--
ALTER TABLE `bd_emailtmpl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bd_locations`
--
ALTER TABLE `bd_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `bd_media`
--
ALTER TABLE `bd_media`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bd_options`
--
ALTER TABLE `bd_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `bd_packages`
--
ALTER TABLE `bd_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bd_pages`
--
ALTER TABLE `bd_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `bd_posts`
--
ALTER TABLE `bd_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `bd_post_meta`
--
ALTER TABLE `bd_post_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `bd_post_package`
--
ALTER TABLE `bd_post_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bd_products`
--
ALTER TABLE `bd_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `bd_review`
--
ALTER TABLE `bd_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `bd_services`
--
ALTER TABLE `bd_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `bd_slider`
--
ALTER TABLE `bd_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bd_users`
--
ALTER TABLE `bd_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bd_usertype`
--
ALTER TABLE `bd_usertype`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bd_user_meta`
--
ALTER TABLE `bd_user_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `bd_widgets`
--
ALTER TABLE `bd_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `db_products`
--
ALTER TABLE `db_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
