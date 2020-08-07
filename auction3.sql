-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 07, 2020 at 09:28 PM
-- Server version: 5.7.31-0ubuntu0.18.04.1
-- PHP Version: 7.2.32-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auction3`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(11) NOT NULL,
  `sub_title` varchar(500) DEFAULT NULL,
  `description` longtext,
  `title_section2` varchar(1000) DEFAULT NULL,
  `description_section2` varchar(1000) DEFAULT NULL,
  `title_section3` varchar(1000) DEFAULT NULL,
  `description_section3` varchar(1000) DEFAULT NULL,
  `title_section4` varchar(1000) DEFAULT NULL,
  `description_section4` varchar(1000) DEFAULT NULL,
  `title_section5` varchar(1000) DEFAULT NULL,
  `description_section5` varchar(1000) DEFAULT NULL,
  `title_section6` varchar(1000) DEFAULT NULL,
  `description_section6` varchar(1000) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `sub_title`, `description`, `title_section2`, `description_section2`, `title_section3`, `description_section3`, `title_section4`, `description_section4`, `title_section5`, `description_section5`, `title_section6`, `description_section6`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor\r\nincididunt ut labore et dolore magna', '<p>BidChamp is one of the top online shopping deals portal in India. We provide some of the hottest selling merchandise and render tempting and cash efficient deals here. We procure thousands of deals with roughly over 200 retail merchants to furnish some of the best shopping plans each day. The deals on display are at par with the Great Indian Online Shopping Festival. Yes, we maximize our efforts to get you, &ldquo;The Best Value for Money&rdquo; offer. We take our customer satisfaction and retention policy very seriously and that keeps our team up and moving</p>', 'BidChamp Editorial Pledge', '<p>We, at BidChamp guarantee our customer that products displayed on our site will always meet high quality standards and the accompanying deals will be the best present in the online shopping space.</p>', 'Salient features of BidChamp Guarantee :', '  <ul class=\"_lists\">\r\n                        <li>Thorough research on products and stores, quality falls and negative feedback of the store automatically results in severing of ties with the store</li>\r\n                        <li>We don’t amp up any product price in exchange of advertisement favors from the store</li>\r\n                        <li>We showcase Best Offers Period irrespective of our internal alliance with the vendor.</li>\r\n                    </ul>\r\n                    <p class=\"_text-white\">BidChamp does not succumb to any external pressure from any source. We list deals that are conducive to our customers which in turn help us retain a long term relationship with them. Our customer satisfaction meter is high and we are obligated to maintain that.</p>', 'Other Cool Features', '<ul>\r\n	<li>We keep our customers in the curve about the latest deals through e-mail alerts. If a high tech gadget is available at a throw away price. We will let you know first.</li>\r\n	<li>Subscription to our newsletter is another easy way to keep you updated on the shopping deals and offers. We will make sure that the best deal of the day is in your inbox, just in case you miss it.</li>\r\n	<li>Web Coupons are a staple on our site. Coupons may be big or a small day but they will still have that word free or discount attached to it.</li>\r\n</ul>', 'Careers at BidChamp', '<p>Willing to join a young and growing start-up? Drop in your CV at&nbsp;<a href=\"mailto:career@bidchamp.in\">career@bidchamp.in</a></p>', 'Queries and Information', '<p>If you have any queries or want to know more details about us, please check our&nbsp;<a href=\"/faq\">FAQ</a>&nbsp;section.</p>', NULL, '2020-05-28 16:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `advertisement_cms`
--

CREATE TABLE `advertisement_cms` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement_cms`
--

INSERT INTO `advertisement_cms` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Advertise with us and Win 10 thousand', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, '2020-05-29 16:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `advertisments`
--

CREATE TABLE `advertisments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `type` int(10) UNSIGNED DEFAULT NULL COMMENT '1=default,2=segmented',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisments`
--

INSERT INTO `advertisments` (`id`, `title`, `sub_title`, `code`, `is_active`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Let\'s Play + Winners Page - AD Block', 'Paste Adsense Code (OR) Custom Code Disable 0 <br>The Leaderboard (728x90)', '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script> <!-- Homepage Leaderboard --> <ins class=\"adsbygoogle\" style=\"display:inline-block;width:728px;height:90px\" data-ad-client=\"ca-pub-1234567890123456\" data-ad-slot=\"1234567890\"></ins> <script> (adsbygoogle = window.adsbygoogle || []).push({}); </script>', 1, 1, '2020-02-25 06:30:55', '2020-02-28 06:46:35'),
(2, 'Live Auction View Page - AD Block 1', 'Waste Adsense Code (OR) Custom Code Large Rectangle (336x280)', 'sadasggtrwttt', 1, 1, '2020-02-25 06:30:55', '2020-02-28 06:46:35'),
(3, 'Live Auction View Page - AD Block 2', 'Waste Adsense Code (OR) Custom Code Large Rectangle (336x280)', 'hhhh', 1, 1, '2020-02-25 06:30:55', '2020-02-28 06:46:35'),
(4, 'Live Auction View Page - AD Block 3', 'Waste Adsense Code (OR) Custom Code Large Rectangle (336x280) ', 'test code', 1, 1, '2020-02-25 06:30:55', '2020-02-28 06:46:35'),
(5, 'Starter Member - After Login', 'Auto Pop Up Advertisement', 'dddddddd', 0, 2, '2020-02-25 06:30:55', '2020-02-26 05:26:03'),
(6, 'Basic Member- After Login', 'Auto Pop Up Advertisement', NULL, 1, 2, '2020-02-25 06:30:55', '2020-02-26 05:26:03'),
(7, 'Advance Member - After Login', 'Auto Pop Up Advertisement', NULL, 1, 2, '2020-02-25 06:30:55', '2020-02-26 05:26:03'),
(8, 'Premium Member (PM 1) - After Login', 'Auto Pop Up Advertisement', NULL, 1, 2, '2020-02-25 06:30:55', '2020-02-26 05:26:03'),
(9, 'Premium Member (PM 3) - After Login', 'Auto Pop Up Advertisement', NULL, 1, 2, '2020-02-25 06:30:55', '2020-02-26 05:26:03'),
(10, 'Premium Member (PM 6) - After Login', 'Auto Pop Up Advertisement', NULL, 1, 2, '2020-02-25 06:30:55', '2020-02-26 05:26:03'),
(11, 'Premium Member (PM 12) - After Login', 'Auto Pop Up Advertisement', NULL, 1, 2, '2020-02-25 06:30:55', '2020-02-26 05:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `analytic_logs`
--

CREATE TABLE `analytic_logs` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `login_date_time` datetime DEFAULT NULL,
  `logout_date_time` datetime DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analytic_logs`
--

INSERT INTO `analytic_logs` (`id`, `user_id`, `login_date_time`, `logout_date_time`, `user_agent`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-06-13 10:41:22', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '::1', '2020-06-13 10:41:22', '2020-06-13 10:41:22'),
(2, 1, '2020-06-13 17:25:25', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '::1', '2020-06-13 17:25:25', '2020-06-13 17:25:25'),
(3, 1, '2020-06-15 12:28:03', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '::1', '2020-06-15 12:28:03', '2020-06-15 12:28:03'),
(4, 1, '2020-06-15 17:46:23', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '::1', '2020-06-15 17:46:23', '2020-06-15 17:46:23'),
(5, 1, '2020-06-20 19:43:56', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '::1', '2020-06-20 19:43:56', '2020-06-20 19:43:56'),
(6, 1, '2020-07-22 23:08:42', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '127.0.0.1', '2020-07-22 23:08:42', '2020-07-22 23:08:42'),
(7, 1, '2020-07-23 23:02:10', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '127.0.0.1', '2020-07-23 23:02:10', '2020-07-23 23:02:10'),
(8, 1, '2020-07-25 05:21:30', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '127.0.0.1', '2020-07-25 05:21:30', '2020-07-25 05:21:30'),
(9, 1, '2020-07-25 17:59:33', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '127.0.0.1', '2020-07-25 17:59:33', '2020-07-25 17:59:33'),
(10, 1, '2020-07-26 05:24:41', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '127.0.0.1', '2020-07-26 05:24:41', '2020-07-26 05:24:41'),
(11, 1, '2020-07-26 11:37:01', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '127.0.0.1', '2020-07-26 11:37:01', '2020-07-26 11:37:01'),
(12, 1, '2020-07-27 05:29:26', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '127.0.0.1', '2020-07-27 05:29:26', '2020-07-27 05:29:26'),
(13, 1, '2020-07-27 21:10:23', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '127.0.0.1', '2020-07-27 21:10:23', '2020-07-27 21:10:23'),
(14, 1, '2020-07-28 12:36:41', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '127.0.0.1', '2020-07-28 12:36:41', '2020-07-28 12:36:41'),
(15, 1, '2020-07-29 05:13:04', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '127.0.0.1', '2020-07-29 05:13:04', '2020-07-29 05:13:04'),
(16, 1, '2020-07-29 20:20:51', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '127.0.0.1', '2020-07-29 20:20:51', '2020-07-29 20:20:51'),
(17, 1, '2020-07-30 05:12:54', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '127.0.0.1', '2020-07-30 05:12:54', '2020-07-30 05:12:54'),
(18, 1, '2020-07-30 11:41:38', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '127.0.0.1', '2020-07-30 11:41:38', '2020-07-30 11:41:38'),
(19, 1, '2020-08-06 19:14:30', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', '127.0.0.1', '2020-08-06 19:14:30', '2020-08-06 19:14:30'),
(20, 1, '2020-08-07 05:46:24', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', '127.0.0.1', '2020-08-07 05:46:24', '2020-08-07 05:46:24'),
(21, 1, '2020-08-07 08:23:27', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', '127.0.0.1', '2020-08-07 08:23:27', '2020-08-07 08:23:27');

-- --------------------------------------------------------

--
-- Table structure for table `auctions`
--

CREATE TABLE `auctions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '1 = publish ,0=draft,2=upcoming,3=live,4=end',
  `count_down_timer` int(11) DEFAULT '10',
  `new_amount` tinyint(4) NOT NULL DEFAULT '1',
  `auction_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_link` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_value` decimal(10,2) DEFAULT NULL,
  `value_in_coins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auction_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_auction_fee` decimal(10,2) DEFAULT NULL,
  `default_auction_time` time DEFAULT NULL,
  `auction_fee_after_discount` decimal(10,2) DEFAULT NULL,
  `product_winner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_up_level1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_up_level2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_in_cash_winner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_in_cash_up_level1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_in_cash_up_level2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_in_coin_winner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_in_coin_up_level1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_in_coin_up_level2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bid_start_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_bid_coins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_advance_auto_bid_allow_upto` decimal(10,2) DEFAULT NULL,
  `premium_auto_bid_allow_upto` decimal(10,2) DEFAULT NULL,
  `premium_plus_bid_allow_upto` decimal(10,2) DEFAULT NULL,
  `last_bid_accepted` decimal(10,2) DEFAULT NULL COMMENT 'Last Bid will be Accepted',
  `new_bidder_allow_upto` decimal(10,2) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auctions`
--

INSERT INTO `auctions` (`id`, `status`, `count_down_timer`, `new_amount`, `auction_code`, `product_name`, `product_link`, `product_category`, `product_value`, `value_in_coins`, `desc`, `product_image`, `product_image_link`, `auction_date`, `default_auction_fee`, `default_auction_time`, `auction_fee_after_discount`, `product_winner`, `product_up_level1`, `product_up_level2`, `value_in_cash_winner`, `value_in_cash_up_level1`, `value_in_cash_up_level2`, `value_in_coin_winner`, `value_in_coin_up_level1`, `value_in_coin_up_level2`, `bid_start_from`, `per_bid_coins`, `basic_advance_auto_bid_allow_upto`, `premium_auto_bid_allow_upto`, `premium_plus_bid_allow_upto`, `last_bid_accepted`, `new_bidder_allow_upto`, `note`, `brand`, `product_code`, `created_at`, `updated_at`) VALUES
(1, 2, 10, 1, 'eryety', 'dfsgfg', 'dgfg', '[\"Electronic\"]', '365.00', '565', '<p>gfdg</p>', NULL, NULL, '2020-06-16', '46.00', '05:00:00', '436.00', '36436', '56356', '5465', '5465', '56454', '54654', '456546', '56454', '54656', '0.00', '0.20', '300.00', '500.00', '800.00', '1000.00', '200.00', '<p>jkhjkhjkjk</p>', NULL, NULL, '2020-06-20 14:16:12', '2020-06-20 14:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `auction_claims`
--

CREATE TABLE `auction_claims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `winner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_winner_claimed` tinyint(1) DEFAULT '0',
  `is_uplevel1_claimed` tinyint(1) DEFAULT '0',
  `is_uplevel2_claimed` tinyint(1) DEFAULT '0',
  `winner_claimed` varchar(1) DEFAULT '0' COMMENT '0=not claimed,1=product,2=cash,3=coin',
  `uplevel1_claimed` varchar(1) DEFAULT '0' COMMENT 'claimed,1=product,2=cash,3=coin',
  `uplevel2_claimed` varchar(1) DEFAULT '0' COMMENT 'claimed,1=product,2=cash,3=coin',
  `winner_claimed_success` tinyint(1) DEFAULT '0',
  `uplevel1_claimed_success` tinyint(1) DEFAULT '0',
  `uplevel2_claimed_success` tinyint(1) DEFAULT '0',
  `winner_order_id` varchar(255) DEFAULT '0',
  `level1_order_id` varchar(255) DEFAULT '0',
  `level2_order_id` varchar(255) DEFAULT '0',
  `winner_transaction_id` varchar(255) DEFAULT '0',
  `level1_transaction_id` varchar(255) DEFAULT '0',
  `level2_transaction_id` varchar(255) DEFAULT '0',
  `winner_status` int(11) DEFAULT NULL COMMENT '1=pending,2=processed,3=settled,4=Not Eligible',
  `level1_status` int(11) DEFAULT NULL COMMENT '1=pending,2=processed,3=settled,4=Not Eligible',
  `level2_status` int(11) DEFAULT NULL COMMENT '1=pending,2=processed,3=settled,4=Not Eligible',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `claimed_on` datetime DEFAULT NULL,
  `claimed_uplink1` datetime DEFAULT NULL,
  `claimed_uplink2` datetime DEFAULT NULL,
  `status_date` datetime DEFAULT NULL,
  `status_date_uplink1` datetime DEFAULT NULL,
  `status_date_uplink2` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `play_auction_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `auction_id` bigint(20) UNSIGNED NOT NULL,
  `bid_amount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `experience`, `salary`, `location`, `description`, `created_at`, `updated_at`) VALUES
(1, 'UX/UI Graphics Designer', '3-5 Years', '16,00,000-30,00,000 PA', 'West Bengal, Kolkata', 'We are Looking for a graphics designer (UIUX) having 3 to 5 years- experience in design.', NULL, NULL),
(2, 'Accounts & Finance Executive', '3-5 Years', '6,00,000-30,00,000 PA', 'West Bengal, Kolkata', 'We are Looking for a graphics designer (UIUX) having 3 to 5 years- experience in design.', NULL, NULL),
(3, 'Tech Lead - Java Front End', '3-5 Years', '16,00,000-30,00,000 PA\r\n', '\r\n16,00,000-30,00,000 PA\r\n', 'We are Looking for a graphics designer (UIUX) having 3 to 5 years- experience in design.', NULL, NULL),
(4, 'Software Engineer1', '3-5 Years', '16,00,000-30,00,000 PA\r\n', '\r\n16,00,000-30,00,000 PA\r\n', 'We are Looking for a graphics designer (UIUX) having 3 to 5 years- experience in design.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coin_packages`
--

CREATE TABLE `coin_packages` (
  `id` bigint(20) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `package_original_price` decimal(10,2) DEFAULT NULL,
  `package_price` decimal(10,2) DEFAULT NULL,
  `total_coins` int(11) DEFAULT NULL,
  `p_member_pay` decimal(10,2) DEFAULT '0.00',
  `value_coin` int(11) DEFAULT NULL,
  `extra_coin` int(11) DEFAULT NULL,
  `p_member_get_extra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `you_can_save` decimal(10,2) DEFAULT NULL,
  `you_saved` decimal(10,2) DEFAULT NULL,
  `is_first` tinyint(1) DEFAULT '0',
  `is_p_member` tinyint(1) DEFAULT '0',
  `p_member_validity` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coin_packages`
--

INSERT INTO `coin_packages` (`id`, `package_name`, `package_original_price`, `package_price`, `total_coins`, `p_member_pay`, `value_coin`, `extra_coin`, `p_member_get_extra`, `you_can_save`, `you_saved`, `is_first`, `is_p_member`, `p_member_validity`, `created_at`, `updated_at`) VALUES
(1, 'Trial 150', '150.00', '150.00', NULL, '0.00', 1250, NULL, NULL, NULL, NULL, 1, 0, NULL, '2020-04-15 10:44:47', '2020-04-15 10:44:47'),
(2, 'Trail 250', '250.00', '235.00', NULL, '0.00', 2000, NULL, NULL, NULL, NULL, 1, 0, NULL, '2020-04-15 10:47:49', '2020-04-15 10:47:49'),
(3, 'Trail  500', '500.00', '450.00', NULL, '0.00', 4000, NULL, NULL, NULL, NULL, 1, 0, NULL, '2020-04-15 10:48:22', '2020-04-15 10:48:22'),
(4, 'Trial 1000', '1000.00', '900.00', NULL, '0.00', 8000, NULL, NULL, NULL, NULL, 1, 0, NULL, '2020-04-15 10:48:56', '2020-04-15 10:48:56'),
(5, 'Trial 5000', '5000.00', '4500.00', NULL, '0.00', 40000, NULL, NULL, NULL, NULL, 1, 0, NULL, '2020-04-15 10:49:39', '2020-04-15 10:49:39'),
(6, 'Mini Tester', '150.00', '150.00', 600, '135.00', 300, 300, '90', '37.50', NULL, 0, 0, NULL, '2020-04-15 10:51:28', '2020-04-15 10:51:28'),
(7, 'Tester', '250.00', '240.00', 1200, '216.00', 500, 700, '180', '60.00', NULL, 0, 0, NULL, '2020-04-15 10:52:59', '2020-04-15 10:52:59'),
(8, 'Bronze', '500.00', '480.00', 3000, '432.00', 1200, 1800, '450', '120.00', NULL, 0, 0, NULL, '2020-04-15 10:53:40', '2020-04-15 10:53:40'),
(9, 'Silver', '1000.00', '940.00', 7500, '846.00', 2000, 5500, '1125', '235.00', NULL, 0, 0, NULL, '2020-04-15 10:54:14', '2020-04-15 10:54:14'),
(10, 'Gold', '2500.00', '2300.00', 19000, '2070.00', 5000, 14000, '2850', '575.00', NULL, 0, 0, NULL, '2020-04-15 10:54:52', '2020-04-15 10:54:52'),
(11, 'Value', '5000.00', '4500.00', 37200, '4050.00', 12000, 25200, '5580', '1125.00', NULL, 0, 0, NULL, '2020-04-15 10:55:53', '2020-04-15 10:55:53'),
(12, 'Super Value', '10000.00', '9000.00', 80000, '8100.00', 25000, 55000, '12000', '2250.00', NULL, 0, 0, NULL, '2020-04-15 10:57:13', '2020-04-15 10:57:13'),
(13, 'Gainer', '20000.00', '17600.00', 166400, '15840.00', 52000, 114400, '24960', '4400.00', NULL, 0, 0, NULL, '2020-04-15 10:58:03', '2020-04-15 10:58:03'),
(14, 'Super Gainer', '30000.00', '26400.00', 25600, '23760.00', 80000, 176000, '38400', '6600.00', NULL, 0, 0, NULL, '2020-04-15 10:58:57', '2020-04-15 10:58:57'),
(15, 'Winner', '50000.00', '44000.00', 435400, '39600.00', 140000, 295400, '65310', '11000.00', NULL, 0, 0, NULL, '2020-04-15 10:59:55', '2020-04-15 10:59:55'),
(16, 'Mini Tester', '150.00', '150.00', 660, '135.00', 300, 300, '60', '30.00', NULL, 0, 1, 1, '2020-04-15 11:01:36', '2020-04-15 11:01:36'),
(17, 'Tester', '250.00', '240.00', 1320, '216.00', 500, 700, '120', '48.00', NULL, 0, 1, 1, '2020-04-15 11:03:00', '2020-04-15 11:03:00'),
(18, 'Bronze', '500.00', '480.00', 3300, '432.00', 1200, 1800, '300', '96.00', NULL, 0, 1, 1, '2020-04-15 11:03:50', '2020-04-15 11:03:50'),
(19, 'Silver', '1000.00', '940.00', 8250, '846.00', 2000, 5500, '750', '188.00', NULL, 0, 1, 1, '2020-04-15 11:04:38', '2020-04-15 11:04:38'),
(20, 'Gold', '2500.00', '2300.00', 20900, '2070.00', 5000, 14000, '1900', '460.00', NULL, 0, 1, 1, '2020-04-15 11:05:45', '2020-04-15 11:05:45'),
(21, 'Value', '5000.00', '4500.00', 40920, '4050.00', 12000, 25200, '3720', '900.00', NULL, 0, 1, 1, '2020-04-15 11:06:29', '2020-04-15 11:06:29'),
(22, 'Super Value', '10000.00', '9000.00', 88000, '8100.00', 25000, 55000, '8000', '1800.00', NULL, 0, 1, 1, '2020-04-15 11:07:19', '2020-04-15 11:07:19'),
(23, 'Gainer', '20000.00', '17600.00', 183040, '15840.00', 52000, 114400, '16640', '3520.00', NULL, 0, 1, 1, '2020-04-15 11:08:17', '2020-04-15 11:08:17'),
(24, 'Super Gainer', '30000.00', '26400.00', 281600, '23760.00', 80000, 176000, '25600', '5280.00', NULL, 0, 1, 1, '2020-04-15 11:09:14', '2020-04-15 11:09:14'),
(25, 'Winner', '50000.00', '44000.00', 478940, '39600.00', 140000, 295400, '43540', '8800.00', NULL, 0, 1, 1, '2020-04-15 11:10:36', '2020-04-15 11:10:36'),
(26, 'Mini Tester', '150.00', '150.00', 660, '135.00', 300, 300, '60', '30.00', NULL, 0, 1, 3, '2020-04-15 11:12:06', '2020-04-15 11:12:06'),
(27, 'Tester', '250.00', '240.00', 1320, '216.00', 500, 700, '120', '48.00', NULL, 0, 1, 3, '2020-04-15 11:12:42', '2020-04-15 11:12:42'),
(28, 'Bronze', '500.00', '480.00', 3300, '432.00', 1200, 1800, '300', '96.00', NULL, 0, 1, 3, '2020-04-15 11:13:17', '2020-04-15 11:13:17'),
(29, 'Silver', '1000.00', '940.00', 8250, '846.00', 2000, 5500, '750', '188.00', NULL, 0, 1, 3, '2020-04-15 11:14:11', '2020-04-15 11:14:11'),
(30, 'Gold', '2500.00', '2300.00', 20900, '2070.00', 5000, 14000, '1900', '460.00', NULL, 0, 1, 3, '2020-04-15 11:15:44', '2020-04-15 11:15:44'),
(31, 'Value', '5000.00', '4500.00', 40920, '4050.00', 12000, 25200, '3720', '900.00', NULL, 0, 1, 3, '2020-04-15 11:16:38', '2020-04-15 11:16:38'),
(32, 'Super Value', '10000.00', '9000.00', 88000, '8100.00', 25000, 55000, '8000', '1800.00', NULL, 0, 1, 3, '2020-04-15 11:17:19', '2020-04-15 11:17:19'),
(33, 'Gainer', '20000.00', '17600.00', 183040, '15840.00', 52000, 114400, '16640', '3520.00', NULL, 0, 1, 3, '2020-04-15 11:18:07', '2020-04-15 11:18:07'),
(34, 'Super Gainer', '30000.00', '26400.00', 281600, '23760.00', 80000, 176000, '25600', '5280.00', NULL, 0, 1, 3, '2020-04-15 11:19:38', '2020-04-15 11:19:38'),
(35, 'Winner', '50000.00', '44000.00', 478940, '39600.00', 140000, 295400, '43540', '8800.00', NULL, 0, 1, 3, '2020-04-15 11:20:38', '2020-04-15 11:20:38'),
(36, 'Mini Tester', '150.00', '150.00', 672, '135.00', 300, 300, '72', '33.00', NULL, 0, 1, 6, '2020-04-15 11:21:36', '2020-04-15 11:21:36'),
(37, 'Tester', '250.00', '240.00', 1344, '216.00', 500, 700, '144', '53.00', NULL, 0, 1, 6, '2020-04-15 11:22:11', '2020-04-15 11:22:11'),
(38, 'Bronze', '500.00', '480.00', 3360, '432.00', 1200, 1800, '360', '106.00', NULL, 0, 1, 6, '2020-04-15 11:23:13', '2020-04-15 11:23:13'),
(39, 'Silver', '1000.00', '940.00', 8400, '846.00', 2000, 5500, '900', '207.00', NULL, 0, 1, 6, '2020-04-15 11:23:53', '2020-04-15 11:23:53'),
(40, 'Gold', '2500.00', '2300.00', 21280, '2070.00', 5000, 14000, '2280', '506.00', NULL, 0, 1, 6, '2020-04-15 11:24:34', '2020-04-15 11:24:34'),
(41, 'Value', '5000.00', '4500.00', 41664, '4050.00', 12000, 25200, '4464', '990.00', NULL, 0, 1, 6, '2020-04-15 11:25:17', '2020-04-15 11:25:17'),
(42, 'Super Value', '10000.00', '9000.00', 89600, '8100.00', 25000, 55000, '9600', '1980.00', NULL, 0, 1, 6, '2020-04-15 11:26:02', '2020-04-15 11:26:02'),
(43, 'Gainer', '20000.00', '17600.00', 186368, '15840.00', 52000, 114400, '19968', '3872.00', NULL, 0, 1, 6, '2020-04-15 11:26:57', '2020-04-15 11:26:57'),
(44, 'Super Gainer', '30000.00', '26400.00', 286720, '23760.00', 80000, 176000, '30720', '5808.00', NULL, 0, 1, 6, '2020-04-15 11:28:08', '2020-04-15 11:28:08'),
(45, 'Winner', '50000.00', '44000.00', 478940, '39600.00', 140000, 295400, '52248', '9680.00', NULL, 0, 1, 6, '2020-04-15 11:29:27', '2020-04-15 11:29:27'),
(46, 'Mini Tester', '150.00', '150.00', 690, '135.00', 300, 300, '90', '37.50', NULL, 0, 1, 12, '2020-04-15 11:30:32', '2020-04-15 11:30:32'),
(47, 'Tester', '250.00', '240.00', 1380, '216.00', 500, 700, '180', '60.00', NULL, 0, 1, 12, '2020-04-15 11:31:06', '2020-04-15 11:31:06'),
(48, 'Bronze', '500.00', '480.00', 3450, '432.00', 1200, 1800, '450', '120.00', NULL, 0, 1, 12, '2020-04-15 11:31:43', '2020-04-15 11:31:43'),
(49, 'Silver', '1000.00', '940.00', 8625, '846.00', 2000, 5500, '1125', '235.00', NULL, 0, 1, 12, '2020-04-15 11:38:32', '2020-04-15 11:38:32'),
(50, 'Gold', '2500.00', '2300.00', 21850, '2070.00', 5000, 14000, '2850', '575.00', NULL, 0, 1, 12, '2020-04-15 11:39:15', '2020-04-15 11:39:15'),
(51, 'Value', '5000.00', '4500.00', 42780, '4050.00', 12000, 25200, '5580', '1125.00', NULL, 0, 1, 12, '2020-04-15 11:40:14', '2020-04-15 11:40:14'),
(52, 'Super Value', '10000.00', '9000.00', 92000, '8100.00', 25000, 55000, '12000', '2250.00', NULL, 0, 1, 12, '2020-04-15 11:40:56', '2020-04-15 11:40:56'),
(53, 'Gainer', '20000.00', '17600.00', 191360, '15840.00', 52000, 114400, '24960', '4400.00', NULL, 0, 1, 12, '2020-04-15 11:41:45', '2020-04-15 11:41:45'),
(54, 'Super Gainer', '30000.00', '26400.00', 294400, '23760.00', 80000, 176000, '38400', '6600.00', NULL, 0, 1, 12, '2020-04-15 11:43:26', '2020-04-15 11:43:26'),
(55, 'Winner', '50000.00', '44000.00', 500710, '39600.00', 140000, 295400, '65310', '11000.00', NULL, 0, 1, 12, '2020-04-15 11:44:13', '2020-04-15 11:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_no` varchar(13) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `custom_coin_packages`
--

CREATE TABLE `custom_coin_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `per_bid_coins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discounted_coin_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `faq_category_id` int(11) DEFAULT NULL,
  `title` varchar(180) DEFAULT NULL,
  `description` text,
  `is_public` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_category_id`, `title`, `description`, `is_public`, `created_at`, `updated_at`) VALUES
(1, 1, 'Am i eligable to join bid ?', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quinostrud exercitation.</p>', 1, '2020-04-24 12:56:26', '2020-04-23 19:38:48'),
(2, 1, 'Am i eligable to join bid ?', '<p>&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit sed eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quinostrud exercitation.&nbsp;</p>', 1, '2020-04-24 12:56:29', '2020-04-23 19:39:46'),
(3, 2, 'Am i eligable to join bid ?', '<p>&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit sed eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quinostrud exercitation.&nbsp;</p>', 0, '2020-04-23 19:40:02', '2020-04-23 19:40:02'),
(4, 2, 'Am i eligable to join bid ?', '<p>&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit sed eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quinostrud exercitation.&nbsp;</p>', 0, '2020-04-23 19:40:20', '2020-04-23 19:40:20');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(180) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Step1', '2020-04-23 14:07:08', '2020-04-23 14:07:08'),
(2, 'Step 2', '2020-04-23 14:07:13', '2020-04-23 14:07:13'),
(3, 'Step 3', '2020-04-23 14:07:23', '2020-04-23 14:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` int(11) NOT NULL,
  `title` varchar(180) DEFAULT NULL,
  `description` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Terms & Condition', '<p>njected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Where can I get some? There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. 5 paragraphs words bytes lists Start with &#39;Lorem ipsum dolor sit amet...&#39;</p>', '2020-03-04 12:21:31', '2020-03-04 06:51:31'),
(2, 'Privacy Policy', '                        <div class=\"_cont-Wrapper\">\r\n                            <div class=\"_textBlock\">\r\n                                <p class=\"_title-3\">Introduction</p>\r\n                                <p>We value the trust you place in us. That\'s why we insist upon the highest standards for secure transactions and customer information privacy. Please read the following statement to learn about our information gathering and dissemination practices.</p>\r\n                                <p>Note: Our privacy policy is subject to change at any time without notice. To make sure you are aware of any changes, please review this policy periodically.</p>\r\n                                <p>By visiting this Website or mobile application you agree to be bound by the terms and conditions of this Privacy Policy. If you do not agree please do not use or access our Website.</p>\r\n                                <p>By mere use of the Website, you expressly consent to our use and disclosure of your personal information in accordance with this Privacy Policy. This Privacy Policy is incorporated into and subject to the Terms of Use.</p>\r\n                            </div>\r\n                            <div class=\"_textwrapper-gray\">\r\n                                <div class=\"_textBlock\">\r\n                                    <p class=\"_title-3\">1. Collection of Personally Identifiable Information and other Information</p>\r\n                                    <p>When you use our Website, we collect and store your personal information which is provided by you from time to time. Our primary goal in doing so is to provide you a safe, efficient, smooth and customized experience. This allows us to provide services and features that most likely meet your needs, and to customize our Website to make your experience safer and easier. More importantly, while doing so we collect personal information from you that we consider necessary for achieving this purpose.</p>\r\n                                    <p>In general, you can browse the Website without telling us who you are or revealing any personal information about yourself. Once you give us your personal information, you are not anonymous to us. Where possible, we indicate which fields are required and which fields are optional. You always have the option to not provide information by choosing not to use a particular service or feature on the Website. We may automatically track certain information about you based upon your behaviour on our Website. We use this information to do internal research on our users\' demographics, interests, and behaviour to better understand, protect and serve our users. This information is compiled and analysed on an aggregated basis. This information may include the URL that you just came from (whether this URL is on our Website or not), which URL you next go to (whether this URL is on our Website or not), your computer browser information, and your IP address.</p>\r\n                                    <p>We use data collection devices such as \"cookies\" on certain pages of the Website to help analyse our web page flow, measure promotional effectiveness, and promote trust and safety. \"Cookies\" are small files placed on your hard drive that assist us in providing our services. We offer certain features that are only available through the use of a \"cookie\". We also use cookies to allow you to enter your password less frequently during a session. Cookies can also help us provide information that is targeted to your interests. Most cookies are \"session cookies,\" meaning that they are automatically deleted from your hard drive at the end of a session. You are always free to decline our cookies if your browser permits, although in that case you may not be able to use certain features on the Website and you may be required to re-enter your password more frequently during a session.</p>\r\n                                    <p>Additionally, you may encounter \"cookies\" or other similar devices on certain pages of the Website that are placed by third parties. We do not control the use of cookies by third parties</p>\r\n                                    <p>If you choose to buy on the Website, we collect information about your buying behaviour, preferences, and other such information that you choose to provide.</p>\r\n                                    <p>If you transact with us, we collect some additional information, such as a billing address, a credit / debit card number and a credit / debit card expiration date and/ or other payment instrument details and tracking information from cheques or money orders.</p>\r\n                                    <p>If you choose to post messages on our message boards, chat rooms or other message areas or leave feedback or if you use voice commands to shop on the Website, we will collect that information you provide to us. We retain this information as necessary to resolve disputes, provide customer support and troubleshoot problems as permitted by law.</p>\r\n                                    <p>If you send us personal correspondence, such as emails or letters, or if other users or third parties send us correspondence about your activities or postings on the Website, we may collect such information into a file specific to you.</p>\r\n                                    <p>We collect personally identifiable information (email address, name, phone number, credit card / debit card / other payment instrument details, etc.) from you when you set up a free account with us. While you can browse some sections of our Website without being a registered member, certain activities (such as placing an order) do require registration. We do use your contact information to send you offers based on your previous orders and your interests</p>\r\n                                </div>\r\n                                <div class=\"_textBlock\">\r\n                                    <p class=\"_title-3\">2. Use of Demographic / Profile Data / Your Information</p>\r\n                                    <p>We use personal information to provide the services you request. To the extent we use your personal information to market to you, we will provide you the ability to opt-out of such uses. We use your personal information to assist sellers in handling and fulfilling orders, enhancing customer experience, resolve disputes; troubleshoot problems; help promote a safe service; collect money; measure consumer interest in our products and services, inform you about online and offline offers, products, services, and updates; customize and enhance your experience; detect and protect us against error, fraud and other criminal activity; enforce our terms and conditions; and as otherwise described to you at the time of collection.</p>\r\n                                    <p>With your consent, we will have access to your SMS, contacts in your directory, location and device information and we may request you to provide your PAN and Know-Your-Customer (KYC) details to check your eligibility for certain products/services including but not limited to credit and payment products etc., to enhance your experience on the platform and provide you access to the services being offered by us, our affiliates or lending partners. Access, storage and use of this data will be in consonance with applicable laws. You understand that your access to these products/services may be affected in the event consent is withdrawn.</p>\r\n                                    <p>In our efforts to continually improve our product and service offerings, we and our affiliates collect and analyse demographic and profile data about our users\' activity on our Website.</p>\r\n                                    <p>We identify and use your IP address to help diagnose problems with our server, and to administer our Website. Your IP address is also used to help identify you and to gather broad demographic information.</p>\r\n                                    <p>We will occasionally ask you to complete optional online surveys. These surveys may ask you for personal information, contact information, date of birth, demographic information (like zip code, age, or income level), attributes such as your interests, household or lifestyle information, your purchasing behaviour or history, preferences, and other such information that you may choose to provide.. We use this data to tailor your experience at our Website, providing you with content that we think you might be interested in and to display content according to your preferences.</p>\r\n                                </div>\r\n                                <div class=\"_textBlock\">\r\n                                    <p class=\"_title-3\">3. Sharing of personal information</p>\r\n                                    <p>We may share personal information with our other corporate entities and affiliates. These entities and affiliates may market to you as a result of such sharing unless you explicitly opt-out.</p>\r\n                                    <p>We may disclose personal information to third parties. This disclosure may be required for us to provide you access to our Services, for fulfillment of your orders, or for enhancing your experience, or to comply with our legal obligations, to enforce our User Agreement, to facilitate our marketing and advertising activities, or to prevent, detect, mitigate, and investigate fraudulent or illegal activities related to our Services. We do not disclose your personal information to third parties for their marketing and advertising purposes without your explicit consent.</p>\r\n                                    <p>We may disclose personal information if required to do so by law or in the good faith belief that such disclosure is reasonably necessary to respond to subpoenas, court orders, or other legal process. We may disclose personal information to law enforcement offices, third party rights owners, or others in the good faith belief that such disclosure is reasonably necessary to: enforce our Terms or Privacy Policy; respond to claims that an advertisement, posting or other content violates the rights of a third party; or protect the rights, property or personal safety of our users or the general public.</p>\r\n                                    <p>We and our affiliates will share / sell some or all of your personal information with another business entity should we (or our assets) plan to merge with, or be acquired by that business entity, or re-organization, amalgamation, restructuring of business. Should such a transaction occur that other business entity (or the new combined entity) will be required to follow this privacy policy with respect to your personal information.</p>\r\n                                </div>                                                         \r\n                            </div>\r\n                            <div class=\"_textBlock\">\r\n                                <p class=\"_title-3\">4. Links to Other Sites</p>\r\n                                <p>Our Website links to other websites that may collect personally identifiable information about you. bidchamp.com is not responsible for the privacy practices or the content of those linked websites.</p>\r\n                            </div>     \r\n                            <div class=\"_textBlock\">\r\n                                <p class=\"_title-3\">5. Security Precautions</p>\r\n                                <p>Our Website has stringent security measures in place to protect the loss, misuse, and alteration of the information under our control. Whenever you change or access your account information, we offer the use of a secure server. Once your information is in our possession we adhere to strict security guidelines, protecting it against unauthorized access.</p>\r\n                            </div> \r\n                            <div class=\"_textBlock\">\r\n                                <p class=\"_title-3\">6. Choice/Opt-Out</p>\r\n                                <p>We provide all users with the opportunity to opt-out of receiving non-essential (promotional, marketing-related) communications from us on behalf of our partners, and from us in general, after setting up an account.</p>\r\n                                <p>If you want to remove your contact information from all bidchamp.com lists and newsletters, please visit unsubscribe</p>\r\n                            </div> \r\n                            <div class=\"_textBlock\">\r\n                                <p class=\"_title-3\">7. Advertisements on Flipkart.com</p>\r\n                                <p>We use third-party advertising companies to serve ads when you visit our Website. These companies may use information (not including your name, address, email address, or telephone number) about your visits to this and other websites in order to provide advertisements about goods and services of interest to you.</p>\r\n                            </div>\r\n                            <div class=\"_textBlock\">\r\n                                <p class=\"_title-3\">8. Your Consent</p>\r\n                                <p>By using the Website and/ or by providing your information, you consent to the collection and use of the information you disclose on the Website in accordance with this Privacy Policy, including but not limited to Your consent for sharing your information as per this privacy policy. . If you disclose any personal information relating to other people to us, you represent that you have the authority to do so and to permit us to use the information in accordance with this Privacy Policy.</p>\r\n                                <p>If we decide to change our privacy policy, we will post those changes on this page so that you are always aware of what information we collect, how we use it, and under what circumstances we disclose it.</p>\r\n                            </div> \r\n                            <div class=\"_textBlock\">\r\n                                <p class=\"_title-3\">9. Grievance Officer</p>\r\n                                <p>In accordance with Information Technology Act 2000 and rules made there under, the name and contact details of the Grievance Officer are provided below:</p>\r\n                                <p>[info@bidchamp.com]</p>\r\n                                <p>Please contact us regarding any questions regarding this statement.</p>\r\n                            </div>', '2020-05-28 13:44:24', '2020-05-28 13:40:50'),
(3, 'Refund Policy', '                        <div class=\"_cont-Wrapper\">\r\n                            <div class=\"_textBlock\">\r\n                               <p>Returns is a scheme provided by respective sellers directly under this policy in terms of which the option of exchange, replacement and/ or refund is offered by the respective sellers to you. All products listed under a particular category may not have the same returns policy. For all products, the policy on the product page shall prevail over the general returns policy. Do refer the respective item\'s applicable return policy on the product page for any exceptions to the table below.</p>\r\n                               <p>The return policy is divided into three parts; Do read all sections carefully to understand the conditions and cases under which returns will be accepted.</p>\r\n                            </div>\r\n                            <div class=\"table-responsive\">\r\n                                <table class=\"table _prTable\">\r\n                                    <tr>\r\n                                        <td colspan=\"2\" class=\"_td-title\" style=\"background: #37c482;color: #fff\">Part 1 – Category, Return Window and Actions possible</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>Category</td>\r\n                                        <td>Returns Window, Actions Possible and Conditions (if any)</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>Lifestyle: Clothing, Footwear, Watches, Sunglasses, Fashion Accessories</td>\r\n                                        <td>30 days <br> Refund, replacement or exchange</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>\r\n                                            Lifestyle: Sport & Fitness Equipment,, Baby Care, Jewellery, Footwear Accessories, Travel Accessories, Lingerie (top-wear)<br>\r\n                                            Home:  Home décor, Furnishing, Home Improvement Tools, Household Items, and Pet Supplies; <br>\r\n                                            Books & More: Books, Music Instruments, Office Supply, School Supply and Toys<br>\r\n                                            Automotive: All automotive spare parts, accessories\r\n                                        </td>\r\n                                        <td>\r\n                                            10 days<br>\r\n                                            Refund or replacement\r\n                                        </td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>\r\n                                            All Electronics, Furniture and Large appliances other than Apple / Beats and Google Products \r\n                                        </td>\r\n                                        <td>\r\n                                            10 days<br>\r\n                                            Replacement only<br>\r\n                                            For products requiring installation, returns shall be eligible only when such products are installed by the brand\'s authorized personnel.<br>\r\n                                            In order to help you resolve issues with your product, we may troubleshoot your product either through online tools, over the phone, and/or through an in-person technical visit.<br>\r\n                                            If a defect is determined within the Returns Window, a replacement of the same model will be provided at no additional cost. If no defect is confirmed or the issue is not diagnosed within 10 days of delivery or Installation wherever applicable, you will be directed to a brand service centre to resolve any subsequent issues.<br>\r\n                                            In any case, only one replacement shall be provided.\r\n                                        </td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>Grocery</td>\r\n                                        <td>\r\n                                            10 days<br>\r\n                                            Refund only<br>\r\n                                            Fruits and Vegetables ordered would be delivered only in the first attempt. In order to ensure that you get fresh fruits and vegetables, we will not be making reattempts to deliver your fruits and veggies in case you miss your slot. Rest of grocery items from Supermart would be delivered through reattempt in case you miss your slot.\r\n                                        </td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>No Returns categories  </td>\r\n                                        <td>\r\n                                            Some products in the above categories are not returnable due to their nature or other reasons. For all products, the policy on the product page shall prevail.<br>\r\n                                            You can view the complete list of non-returnable products here.\r\n                                        </td>\r\n                                    </tr>\r\n                                </table>\r\n                            </div>                           \r\n                            <div class=\"_textBlock\">\r\n                                <p>The field executive will refuse to accept the return if any of the above conditions are not met.</p>\r\n                                <p>For any products for which a refund is to be given, the refund will be processed once the returned product has been received by the seller.</p>\r\n                            </div>     \r\n                            <div class=\"_textBlock\">                            \r\n                                <p class=\"_title-3\">Part 2 - General Rules for a successful Return</p>\r\n                                <ul class=\"_textLists\">\r\n                                    <li>In certain cases where the seller is unable to process a replacement for any reason whatsoever, a refund will be given.</li>\r\n                                    <li>During open box deliveries, while accepting your order, if you received a different or a damaged product, you will be given a refund (on the spot refunds for cash-on-delivery orders). Once you have accepted an open box delivery, no return request will be processed, except for manufacturing defects. In such cases, this category-specific replacement/return general conditions will be applicable. Click here to know more about Open Box Delivery.</li>\r\n                                    <li>For products where installation is provided by Flipkart\'s service partners, do not open the product packaging by yourself. Flipkart authorised personnel shall help in unboxing and installation of the product.</li>\r\n                                    <li>For Furniture, any product related issues will be checked by an authorised service personnel (free of cost) and attempted to be resolved by replacing the faulty/ defective part of the product. Full replacement will be provided only in cases where the service personnel opines that replacing the faulty/defective part will not resolve the issue.</li>\r\n                                </ul>\r\n                            </div>\r\n                        </div>', '2020-05-28 14:00:23', '2020-05-28 13:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `homepages`
--

CREATE TABLE `homepages` (
  `id` int(11) NOT NULL,
  `title_section1` varchar(1000) DEFAULT NULL,
  `description_section1` varchar(1000) DEFAULT NULL,
  `title_section2` varchar(1000) DEFAULT NULL,
  `you_section2` varchar(1000) DEFAULT NULL,
  `level1_section2` varchar(1000) DEFAULT NULL,
  `level2_section2` varchar(1000) DEFAULT NULL,
  `note_section2` varchar(1000) DEFAULT NULL,
  `title_section3` varchar(1000) DEFAULT NULL,
  `description_section3_first` varchar(1000) DEFAULT NULL,
  `description_section3_second` varchar(1000) DEFAULT NULL,
  `description_section3_third` varchar(1000) DEFAULT NULL,
  `description_section3_fourth` varchar(1000) DEFAULT NULL,
  `description_section3_five` varchar(1000) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homepages`
--

INSERT INTO `homepages` (`id`, `title_section1`, `description_section1`, `title_section2`, `you_section2`, `level1_section2`, `level2_section2`, `note_section2`, `title_section3`, `description_section3_first`, `description_section3_second`, `description_section3_third`, `description_section3_fourth`, `description_section3_five`, `created_at`, `updated_at`) VALUES
(1, 'Play & Win1', '<ul>\r\n	<li>1. Sign Up Bonus 500 Coins</li>\r\n	<li>2. Refund Bonus Coins (Get Refund Coins, If You Can&rsquo;t Win)&nbsp;*T&amp;C Apply</li>\r\n	<li>3. Referral Sign Up Bonus up to 2 Level</li>\r\n	<li>4. Referral first coin purchase bonus commission&nbsp;*T&amp;C Apply</li>\r\n	<li>5. Referral Winning Product bonus commission&nbsp;*T&amp;C Apply</li>\r\n</ul>', 'Signup & Referral Bonus', 'Signup Bonus 500 + R. Bonus 500 + R. Bonus 250 = 1250 coins', '500 C Signup Bonus 500 + R. Bonus 500 = 1000 coins', '250 C Signup Bonus 500 coins', 'Referral Bonus will be from Level – 1 = 500 coins & Level – 2 = 250 coins', 'How It Works', '<p><strong>Signup And Get 500GDB Coins</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>', '<p><strong>Start Bidding</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>', '<p><span class=\"marker\"><strong>Start Bidding</strong></span></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>', '<p>Start Bidding</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>', '<p>Start Bidding</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamcoghghgh</p>', NULL, '2020-06-02');

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coins` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `name`, `coins`, `created_at`, `updated_at`) VALUES
(1, 'Starter', '500', '2020-01-07 04:28:09', '2020-01-07 04:28:09'),
(2, 'Basic', '1000', '2020-01-07 04:28:09', '2020-01-07 04:28:09'),
(3, 'Advanced', '1500', '2020-01-07 04:28:09', '2020-01-07 04:28:09'),
(4, 'Premium', '2000', '2020-01-07 04:28:09', '2020-01-07 04:28:09'),
(5, 'Premium+', '3000', '2020-01-07 04:28:09', '2020-01-07 04:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `membership_packages`
--

CREATE TABLE `membership_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MONTH',
  `price_per_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `benefit` decimal(10,2) NOT NULL,
  `discount_coins_price` int(180) DEFAULT NULL,
  `extra_coin` int(11) NOT NULL,
  `original_price` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_recommended` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `membership_packages`
--

INSERT INTO `membership_packages` (`id`, `name`, `validity`, `price_per_month`, `benefit`, `discount_coins_price`, `extra_coin`, `original_price`, `price`, `is_recommended`, `created_at`, `updated_at`) VALUES
(1, '1000/Month', '1', '1000', '1000.00', 10, 10, '1000.00', '1000.00', 0, '2020-04-13 06:39:45', '2020-04-13 06:54:31'),
(2, '800/Month', '3', '1000', '2400.00', 10, 10, '3000.00', '800.00', 0, '2020-04-13 06:45:20', '2020-04-13 06:55:53'),
(3, '600/Month', '6', '800', '3600.00', 10, 12, '6000.00', '600.00', 1, '2020-04-13 06:49:42', '2020-04-13 06:49:42'),
(4, '500/Month', '12', '1000', '6000.00', 10, 15, '12000.00', '500.00', 0, '2020-04-13 06:53:34', '2020-04-13 06:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_17_062643_create_roles_table', 1),
(2, '2019_12_18_070024_create_users_table', 1),
(3, '2019_12_18_082948_create_products_table', 1),
(4, '2019_12_18_084122_create_product_categories_table', 1),
(5, '2019_12_19_105602_create_memberships_table', 1),
(6, '2019_12_20_044948_create_packages-table', 1),
(7, '2019_12_24_082836_create_transactions_table', 1),
(8, '2019_12_24_102409_create_wallets_table', 1),
(9, '2019_12_27_061335_create_settings_table', 1),
(10, '2019_12_28_072318_create_membership_packages_table', 1),
(11, '2019_12_30_123846_create_auctions_table', 1),
(12, '2020_01_01_124556_create_normal_coin_packs_table', 1),
(13, '2020_01_01_134810_create_premium_coin_packs_table', 1),
(14, '2020_01_01_160741_create_special_trial_coin_packages_table', 1),
(15, '2020_01_01_162932_create_custom_coin_packages_table', 1),
(16, '2020_01_06_185216_create_winners_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `normal_coin_packs`
--

CREATE TABLE `normal_coin_packs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pack_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_after_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_member_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_coins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_coins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_coins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_member_extra_coins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `you_can_save` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_now` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `notification_category_id` int(11) DEFAULT NULL,
  `notification_sub_category_id` int(11) DEFAULT NULL,
  `dashboard_notification` text,
  `email_subject` varchar(255) DEFAULT NULL,
  `email_description` text,
  `type` int(11) DEFAULT NULL COMMENT '1=default,2=segmented',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notification_category_id`, `notification_sub_category_id`, `dashboard_notification`, `email_subject`, `email_description`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '<p>dsfsdf</p>', 'dsfdsf', NULL, 1, '2020-06-15 18:18:17', '2020-06-15 18:18:17'),
(2, 6, 28, '<p>dsfdsfdsfds</p>', 'dfsfdsf', '<p>dsfdsfdsf</p>', 2, '2020-06-15 18:18:38', '2020-06-15 18:18:38'),
(3, 2, 4, '<p>asdasd</p>', 'asdasd', NULL, NULL, '2020-06-15 18:21:47', '2020-06-15 18:21:47'),
(4, 3, 12, '<p>sdfdsf</p>', 'dsfdsfds', '<p>dsfdsfdsf</p>', 1, '2020-06-15 18:23:04', '2020-06-15 18:23:04'),
(5, 5, 27, '<p>fdsfdsfdsf</p>', 'dsfdsfdsf', NULL, 1, '2020-06-15 18:23:21', '2020-06-15 18:23:21'),
(6, 5, 27, '<p>dfgdfgf</p>', 'fdgdfg', NULL, 2, '2020-06-15 18:25:17', '2020-06-15 18:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `notification_categories`
--

CREATE TABLE `notification_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1=default,2=segmented',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_categories`
--

INSERT INTO `notification_categories` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Welcome &amp; Congratulation – Notification', 1, NULL, NULL),
(2, 'Profile Notification', 1, NULL, NULL),
(3, 'Suspend, Deactivate &amp; Delete', 1, NULL, NULL),
(4, 'Transactional Message', 1, NULL, NULL),
(5, 'Premium Membership Pack Expiry Notification', 2, NULL, NULL),
(6, 'Coin Balance Low – Notification', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_sub_categories`
--

CREATE TABLE `notification_sub_categories` (
  `id` int(11) NOT NULL,
  `notification_category_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1=default,2=segmented',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_sub_categories`
--

INSERT INTO `notification_sub_categories` (`id`, `notification_category_id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'Welcome Message - After Sign-up / Registration &amp; Email\n	Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(2, 1, 'Auction Winning Confirmation &amp; Email Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(3, 1, 'Referral / Downline Auction Winning Confirmation &amp; Email\n	Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(4, 2, 'Verify your Mobile Number', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(5, 2, 'Verify your Email Address', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(6, 2, 'Complete your Address to get Product Delivery', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(7, 2, 'Complete your Profile &amp; Payment Details', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(8, 2, 'Password Reset Notification &amp; Email Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(9, 2, 'Change Mobile Number Notification &amp; Email Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(10, 2, 'Change Email Address Notification &amp; Email Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(11, 3, 'Suspend – During Live Auction', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(12, 3, 'Suspend for few days – Full Access Disable &amp; Email\n	Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(13, 3, 'Fully Suspend / Deactivate – Full Access Disable &amp; Email\n	Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(14, 4, 'Signup Bonus with Transaction ID &amp; Email Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(15, 4, 'Referral Signup Bonus (Level 1) with Transaction ID &amp; Email\n	Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(16, 4, 'Referral Signup Bonus (Level 2) with Transaction ID &amp; Email\n	Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(17, 4, 'Referral First Coin Purchase Bonus with Transaction ID &amp; Email\n	Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(18, 4, 'Refund Bonus with Transaction ID', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(19, 4, 'Winning Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(20, 4, 'Winning Claim Product Settlement with Transaction ID &amp; Email\n	Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(21, 4, 'Winning Claim Cash Settlement with Transaction ID &amp; Email\n	Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(22, 4, 'Referral Winning Bonus Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(23, 4, 'Referral Winning Claim Bonus as Coin Settlement with\n	Transaction ID &amp; Email Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(24, 4, 'Referral Winning Claim Bonus as Cash Settlement with\n	Transaction ID &amp; Email Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(25, 4, 'Admin Coin Gift Transaction with Transaction ID &amp; Email\n	Notification', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(26, 4, 'User to User Coin Gift Transaction with Transaction ID', 1, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(27, 5, 'Premium Membership Expire – Auto Notification &amp; Email\n	Notification', 2, '2020-02-25 12:45:07', '2020-02-25 12:45:07'),
(28, 6, 'Coin Balance Low – When the User’s coin balance is below 200\n	coins', 2, '2020-02-25 12:45:07', '2020-02-25 12:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `otp_verifications`
--

CREATE TABLE `otp_verifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `otp` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp_verifications`
--

INSERT INTO `otp_verifications` (`id`, `user_id`, `otp`, `created_at`, `updated_at`) VALUES
(3, 2, 7570, '2020-07-26 07:54:16', '2020-07-26 07:54:16'),
(4, 2, 79080, '2020-07-26 07:55:22', '2020-07-26 07:55:22'),
(5, 2, 44108, '2020-07-26 07:58:01', '2020-07-26 07:58:01'),
(6, 2, 4386, '2020-07-26 07:58:37', '2020-07-26 07:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coins` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `identify` varchar(180) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `slug`, `identify`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'can_view_coin_gift', 'Coin Gift', 'Can View Coin Gift', NULL, '2020-03-18 15:01:11', NULL),
(2, 'can_search_user_coin_gift', 'Coin Gift', 'Can Seach User Coin Gift ', NULL, '2020-03-18 15:01:17', NULL),
(3, 'can_send_coin_coin_gift', 'Coin Gift', 'Can Send Coin Coin Gift', NULL, '2020-03-18 15:01:20', NULL),
(4, 'can_transaction_filter_coin_gift', 'Coin Gift', 'Can Transaction  Filter Coin Gift', NULL, '2020-03-18 15:01:24', NULL),
(5, 'can_transaction_search_coin_gift', 'Coin Gift', 'Can Transaction Search Coin Gift', NULL, '2020-03-18 15:01:28', NULL),
(6, 'can_transaction_export_coin_gift', 'Coin Gift', 'Can Transaction Export Coin Gift', NULL, '2020-03-18 15:01:31', NULL),
(7, 'can_view_coin_deduct', 'Coin Deduct', 'Can View Coin Deduct', NULL, '2020-03-18 15:01:45', NULL),
(8, 'can_search_user_coin_deduct', 'Coin Deduct', 'Can Search User Coin Deduct', NULL, '2020-03-18 15:01:48', NULL),
(9, 'can_send_coin_coin_deduct', 'Coin Deduct', 'Can Send Coin Deduct', NULL, '2020-03-18 15:01:51', NULL),
(10, 'can_transaction_filter_coin_deduct', 'Coin Deduct', 'Can Transaction  Filter Coin Deduct	', NULL, '2020-03-18 15:01:55', NULL),
(11, 'can_transaction_search_coin_deduct', 'Coin Deduct', 'Can Transaction Search Coin Deduct', NULL, '2020-03-18 15:01:59', NULL),
(12, 'can_transaction_export_coin_deduct', 'Coin Deduct', 'Can Transaction Export Coin Deduct ', NULL, '2020-03-18 15:02:02', NULL),
(14, 'can_view_sub_admin', 'SubAdmin', 'Can View SubAdmin', NULL, '2020-03-19 10:39:17', NULL),
(15, 'can_delete_sub_admin', 'SubAdmin', 'Can Delete SubAdmin', NULL, '2020-03-19 10:28:51', NULL),
(16, 'can_add_sub_admin', 'SubAdmin', 'Can Add SubAdmin', NULL, '2020-03-18 00:00:00', NULL),
(17, 'can_permission_sub_admin', 'SubAdmin', 'Can Permission SubAdmin', NULL, '2020-03-18 00:00:00', NULL),
(18, 'can_edit_sub_admin', 'SubAdmin', 'Can Edit SubAdmin', NULL, '2020-03-19 10:38:20', NULL),
(45, 'can_show_member', 'member', 'Can Show Member', NULL, '2020-03-27 12:54:08', NULL),
(46, 'can_change_status_member', 'member', 'Can Change Status Member', NULL, '2020-03-27 12:54:24', NULL),
(47, 'can_create_member', 'Member', 'Can Create User', NULL, '2020-03-23 16:29:07', NULL),
(48, 'can_view_member', 'Member', 'Can View User', NULL, '2020-03-23 17:10:01', NULL),
(49, 'can_edit_member', 'Member', 'Can Edit User', NULL, '2020-03-23 17:10:10', NULL),
(50, 'can_delete_member', 'Member', 'Can Delete User', NULL, '2020-03-23 17:10:26', NULL),
(51, 'can_create_membership_package', 'Membership Package', 'Can Create Membership Package', NULL, '2020-03-24 11:45:49', NULL),
(52, 'can_view_membership_package', 'Membership Package', 'Can View Membership Package', NULL, '2020-03-24 11:46:18', NULL),
(53, 'can_edit_membership_package', 'Membership Package', 'Can Edit Membership Package', NULL, '2020-03-24 11:46:24', NULL),
(54, 'can_delete_membership_package', 'Membership Package', 'Can Delete Membership Package', NULL, '2020-03-24 11:46:30', NULL),
(55, 'can_create_coin_package', 'Coin Package', 'Can Create Coin Package', NULL, '2020-03-24 13:29:11', NULL),
(56, 'can_view_coin_package', 'Coin Package', 'Can View Coin Package', NULL, '2020-03-24 13:33:43', NULL),
(57, 'can_edit_coin_package', 'Coin Package', 'Can Edit Coin Package', NULL, '2020-03-24 13:29:42', NULL),
(58, 'can_delete_coin_package', 'Coin Package', 'Can Delete Coin Package', NULL, '2020-03-24 13:29:57', NULL),
(59, 'can_view_all_auction_claim_all', 'All Auction Claim', 'Can View All Auction Claim', NULL, '2020-03-24 15:49:15', NULL),
(60, 'can_pending_auction_claim', 'All Auction Claim', 'Can Pending Auction Claim', NULL, '2020-03-24 15:49:35', NULL),
(63, 'can_settle_auction_claim', 'All Auction Claim', 'Can Settle Auction Claim', NULL, '2020-03-24 15:49:55', NULL),
(64, 'can_export_auction_claim', 'All Auction Claim', 'Can Export Auction Claim', NULL, '2020-03-24 15:50:07', NULL),
(65, 'can_view_all_auction_claim_pending', 'Pending Auction Claim', 'Can View Pending Auction Claim', NULL, '2020-03-24 16:33:19', NULL),
(66, 'can_search_auction_claim_pending', 'Pending Auction Claim', 'Can Search Pending Auction Claim', NULL, '2020-03-24 16:33:30', NULL),
(67, 'can_date_filter_auction_claim_pending', 'Pending Auction Claim', 'Can DateFilter Pending Auction Claim', NULL, '2020-03-24 16:33:40', NULL),
(68, 'can_export_auction_claim_pending', 'Pending Auction Claim', 'Can Export Pending Auction Claim', NULL, '2020-03-24 16:33:50', NULL),
(69, 'can_view_all_auction_claim_settled', 'Settled Auction Claim', 'Can View Settled Auction Claim', NULL, '2020-03-24 17:34:51', NULL),
(70, 'can_search_auction_claim_settled', 'Settled Auction Claim', 'Can Search Settled Auction Claim\r\n', NULL, '2020-03-24 17:43:43', NULL),
(71, 'can_date_filter_auction_claim_settled', 'Settled Auction Claim', 'Can DateFilter Settled Auction Claim\r\n', NULL, '2020-03-24 17:44:27', NULL),
(72, 'can_export_auction_claim_settled', 'Settled Auction Claim', 'Can  Export Settled Auction Claim', NULL, '2020-03-26 15:30:45', NULL),
(73, 'can_view_all_default_notification', 'Default Notification', 'Can View  Default Notification', NULL, '2020-03-25 13:13:11', NULL),
(74, 'can_add_default_notification', 'Default Notification', 'Can Add Default Notification', NULL, '2020-03-25 13:13:22', NULL),
(75, 'can_view_default_notification', 'Default Notification', 'Can AnyView Default Notification', NULL, '2020-03-25 13:13:35', NULL),
(76, 'can_edit_default_notification', 'Default Notification', 'Can Edit  Default Notification', NULL, '2020-03-25 13:13:46', NULL),
(77, 'can_delete_default_notification', 'Default Notification', 'Can Delete  Default Notification', NULL, '2020-03-25 13:13:52', NULL),
(78, 'can_view_all_segmented_notification', 'Segmented Notification', 'Can View  Segmented Notification', NULL, '2020-03-27 11:17:19', NULL),
(79, 'can_add_segmented_notification', 'Segmented Notification', 'Can Add Segmented Notification', NULL, '2020-03-25 15:22:03', NULL),
(80, 'can_view_segmented_notification', 'Segmented Notification', 'Can AnyView Segmented Notification', NULL, '2020-03-25 13:44:37', NULL),
(81, 'can_edit_segmented_notification', 'Segmented Notification', 'Can Edit  Segmented Notification', NULL, '2020-03-25 13:44:41', NULL),
(82, 'can_delete_segmented_notification', 'Segmented Notification', 'Can Delete  Segmented Notification', NULL, '2020-03-25 13:44:46', NULL),
(83, 'can_do_default_ad_block_advertisements_management', 'Advertisements Management', 'Can Edit Deafut Ad Block Advertisments Management', NULL, '2020-03-25 16:48:53', NULL),
(84, 'can_do_segmented_pop_up_ad_block_advertisements_management', 'Advertisements Management', 'Can Edit Pop Up Ad Block Advertisments Management', NULL, '2020-03-25 16:49:58', NULL),
(85, 'can_view_auction', 'auction', 'Can View Auction', NULL, '2020-03-26 15:34:57', NULL),
(86, 'can_create_auction', 'auction', 'Can Create Auction', NULL, '2020-03-26 15:34:57', NULL),
(87, 'can_edit_auction', 'auction', 'Can Edit Auction', NULL, '2020-03-26 15:34:57', NULL),
(88, 'can_show_auction', 'auction', 'Can Show Detail Auction', NULL, '2020-03-26 15:34:57', NULL),
(89, 'can_create_faq', 'faq', 'Can Create Faq', NULL, '2020-03-26 17:38:20', NULL),
(90, 'can_view_faq', 'faq', 'Can View Faq', NULL, '2020-03-26 17:38:12', NULL),
(91, 'can_edit_faq', 'faq', 'Can Edit Faq', NULL, '2020-03-26 17:38:05', NULL),
(92, 'can_delete_faq', 'faq', 'Can Delete Faq', NULL, '2020-03-26 17:37:56', NULL),
(93, 'can_create_faq_catgory', 'faq_catgory', 'Can Create Faq Catgory', NULL, '2020-03-26 17:37:48', NULL),
(94, 'can_view_faq_category', 'faq_catgory', 'Can View Faq Catgory', NULL, '2020-03-26 18:16:49', NULL),
(95, 'can_edit_faq_category', 'faq_catgory', 'Can Edit Faq Catgory', NULL, '2020-03-26 18:16:55', NULL),
(96, 'can_delete_faq_category', 'faq_catgory', 'Can Delete Faq Catgory', NULL, '2020-03-26 18:16:59', NULL),
(97, 'can_view_analytic_active_inactive', 'analytic', 'Can View Analytic Active Inactive', NULL, '2020-03-26 17:37:08', NULL),
(98, 'can_view_analytic_login_history', 'analytic', 'Can View Analytic Login History', NULL, '2020-03-26 18:21:26', NULL),
(99, 'can_view_homepage', 'cms', 'can_view_homepage', NULL, '2020-03-26 18:55:24', NULL),
(100, 'can_view_about_us', 'cms', 'can_view_about_us', NULL, '2020-03-26 18:55:24', NULL),
(101, 'can_view_how_it_work', 'cms', 'can_view_how_it_work', NULL, '2020-03-26 18:55:24', NULL),
(102, 'can_view_term_and_condition', 'cms', 'can_view_term_and_condition', NULL, '2020-03-26 18:55:24', NULL),
(103, 'can_view_privacy_policy', 'cms', 'can_view_privacy_policy', NULL, '2020-03-26 18:55:24', NULL),
(104, 'can_view_refund_policy', 'cms', 'can_view_refund_policy', NULL, '2020-03-26 18:55:24', NULL),
(105, 'can_view_social_policy', 'cms', 'can_view_social_policy', NULL, '2020-03-26 18:55:24', NULL),
(106, 'can_view_refer_and_earn_policy', 'cms', 'can_view_refe_and_earn_policy', NULL, '2020-03-26 18:55:24', NULL),
(107, 'can_delete_auction', 'auction', 'Can Delete Auction', NULL, '2020-06-13 00:00:00', NULL),
(108, 'can_show_auction_claim', 'All Auction Claim', 'Can Show Auction Claim', NULL, '2020-06-13 00:00:00', '2020-06-13 00:00:00'),
(109, 'can_view_advertise_with_us_policy', 'cms', 'Can Advertise with Us', NULL, '2020-06-13 00:00:00', '2020-06-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `play_auctions`
--

CREATE TABLE `play_auctions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `auction_id` bigint(20) UNSIGNED NOT NULL,
  `autobid_reserve_amount` decimal(10,2) DEFAULT '0.00',
  `auto_bid_start` tinyint(1) DEFAULT '0',
  `delay` int(11) DEFAULT NULL,
  `is_winner` tinyint(1) DEFAULT '0',
  `is_closed` tinyint(1) DEFAULT '0',
  `auction_fee` decimal(10,2) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `block_user_when` int(11) NOT NULL DEFAULT '0',
  `return_coins` int(11) NOT NULL DEFAULT '0',
  `is_return_coin_checked` tinyint(1) NOT NULL DEFAULT '0',
  `is_transfered` tinyint(1) NOT NULL DEFAULT '0',
  `whenBlock` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `premium_coin_packs`
--

CREATE TABLE `premium_coin_packs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pack_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_after_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_member_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_coins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_coins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_coins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_member_extra_coins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `you_can_save` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_now` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direct_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_in_coins` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Electronic', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `refer_earns`
--

CREATE TABLE `refer_earns` (
  `id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `subtitle` varchar(280) DEFAULT NULL,
  `signup_bonus` longtext,
  `purchase_bonus` longtext,
  `winning_bonus` longtext,
  `invite_friend` longtext,
  `free_join` longtext,
  `purchase_coin` longtext,
  `win_auction` longtext,
  `terms_condition` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `refer_earns`
--

INSERT INTO `refer_earns` (`id`, `title`, `subtitle`, `signup_bonus`, `purchase_bonus`, `winning_bonus`, `invite_friend`, `free_join`, `purchase_coin`, `win_auction`, `terms_condition`, `created_at`, `updated_at`) VALUES
(1, 'Earn Unlimited Coins by Referring your friends', 'Refer/Invite - Share the referral URL/Code with your friends', ' <p class=\"_title-1 _text-yellow\">Referral Signup Bonus</p>\r\n                                <p class=\"_text-white\">When any member Joins us through your Referral/Invitation Code, then he/she will get</p>\r\n                                <ul class=\"_bonasLists\">\r\n                                    <li class=\"wow _fadeInLeft\" data-wow-delay=\"0s\">\r\n                                        <div class=\"_b-div clearfix\"><span class=\"_level\">500 Coins</span>Signup Bonus</div>\r\n                                        <p>& You will get Referral Signup Bonus</p>\r\n                                    </li>\r\n                                    <li class=\"wow _fadeInLeft\" data-wow-delay=\"0.1s\">\r\n                                        <div class=\"_b-div clearfix\"><span class=\"_level\">500 Coins</span> <span>From Level - 1</span></div>\r\n                                    </li>\r\n                                    <li class=\"wow _fadeInLeft\" data-wow-delay=\"0.2s\">\r\n                                        <div class=\"_b-div  clearfix\"><span class=\"_level\">500 Coins</span> <span>From Level - 2</span> </div>\r\n                                    </li>\r\n                                </ul>', '  <p class=\"_title-1 _text-yellow\">First Coin Purchase Bonus</p>\r\n                                <p class=\"_text-white\">When your referred member purchased his/her first coin pack, then you will get your First Coin Purchase Bonus </p>\r\n                                <ul class=\"_bonasLists\">                                   \r\n                                    <li class=\"wow _fadeInLeft\" data-wow-delay=\"0.1s\">\r\n                                        <div class=\"_b-div clearfix\"><span class=\"_level\">30%</span> <span>From Level - 1</span></div>\r\n                                    </li>\r\n                                    <li class=\"wow _fadeInLeft\" data-wow-delay=\"0.2s\">\r\n                                        <div class=\"_b-div  clearfix\"><span class=\"_level\">10%</span> <span>From Level - 2</span> </div>\r\n                                    </li>\r\n                                </ul>', '  <p class=\"_title-1 _text-yellow\">Referral Winning Bonus</p>\r\n                                <p class=\"_text-white\">When your referred member win any auction and claimed the auction (As Product or Coins or Cash, as per his/her eligibility), then you will get\r\n                                your Referral Winning Bonus (As Coin or Cash Reward, as per your eligibility)</p>\r\n                                <ul class=\"_bonasLists\">                                    \r\n                                    <li class=\"wow _fadeInLeft\" data-wow-delay=\"0.1s\">\r\n                                        <div class=\"_b-div clearfix\"><span class=\"_level\">Upto 40%</span> <span>From Level - 1</span></div>\r\n                                    </li>\r\n                                    <li class=\"wow _fadeInLeft\" data-wow-delay=\"0.2s\">\r\n                                        <div class=\"_b-div  clearfix\"><span class=\"_level\">Upto 20%</span> <span>From Level - 2</span> </div>\r\n                                    </li>\r\n                                </ul>', ' <h4 class=\"_title-2\">Invite Your Friend & Get Unlimited Benefits</h4>\r\n                                <p>Who Likes Auctions. Play & Win</p>', '<h4 class=\"_title-2\">Your Friends Join <br> Us Free</h4>\r\n                                <p>Your Friend will get 500coinsSign Up Bonus & You will get Referral Bonus of 500coins from Level -1 &250coins from Level - 2</p>', ' <h4 class=\"_title-2\">When Your Friend Purchase<br>Coins First time</h4>\r\n                                <p>Your Friend will get big discount on his first coin purchase and when he completed the purchase, then You will get commission of 30% from Level – 1 & 10% from Level - 2</p>', ' <h4 class=\"_title-2\">When Your Friend Win<br>Any Auctions</h4>\r\n                                <p>When Your Friend wins any auctions, then again you will get Referral Winning Bonus benefits upto 40% from Level - 1 & 20% from Level - 2</p>', ' <div class=\"_heading text-center _mB-30\">\r\n                        <h2 class=\"_title\">Term & Conditions</h2>\r\n                        <p>You needs to follow some requisite Conditions for referring.</p>\r\n                        <p>*** Both users should have authentic accounts. If we find the account to be the same then we will :-</p>\r\n                    </div>\r\n                    <ul class=\"_list-block\">\r\n                        <li><strong class=\"_text-indigo\">a) Ban both accounts</strong></li>\r\n                        <li><strong class=\"_text-indigo\">(b) Ban coins.</strong></li>\r\n                        <li><strong class=\"_text-indigo\">c) Suspend both users from future benefits and will<br>\r\n                        also stop all pending gift process.</strong></li>\r\n                    </ul>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '2020-01-07 04:28:09', '2020-01-07 04:28:09'),
(2, 'Sub Admin', '2020-01-07 04:28:09', '2020-01-07 04:28:09'),
(3, 'Users', '2020-01-07 04:28:09', '2020-01-07 04:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `s` int(11) NOT NULL,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`s`, `id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
(131, 'hVHIHP5uBkFWuKIXfdYlb4URXAYluZsYc72OSBSQ', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoib0tEa2RSZHJZamxvY2NOSHc5S0hJWFh1c1gxejNqRzRBOW5CbHNzTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi90cmFuc2FjdGlvbi91c2VyLWNvaW4tc3BlbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjE2OiJsYXN0QWN0aXZpdHlUaW1lIjtpOjE1OTY3NjE0MzE7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1596761431),
(133, '6EqisIir5h4MM3wniISRs2nW97XFBp9NsLL6lgGr', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQkh6emNvbFhZd0lsYU9yZFFOTk43bGZ0RUM1MzFMV2VVZTZvWldJQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi90cmFuc2FjdGlvbi91c2VyLWNvaW4tc3BlbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjE2OiJsYXN0QWN0aXZpdHlUaW1lIjtpOjE1OTY3NzA2MDg7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1596770608);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_coins` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money_recieved` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Customer Pay to Company',
  `total_money` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Company Earn total money',
  `referral_user_bonus` bigint(20) DEFAULT NULL,
  `referral_uplink1` bigint(20) DEFAULT NULL,
  `referral_uplink2` bigint(20) DEFAULT NULL,
  `first_coin_purchase_upline1` int(11) NOT NULL,
  `first_coin_purchase_upline2` int(11) NOT NULL,
  `winner_claim_product` int(11) NOT NULL,
  `winner_claim_coin` int(11) NOT NULL,
  `winner_claim_cash` int(11) NOT NULL,
  `uplevel1_claim_product` int(11) NOT NULL,
  `uplevel1_claim_coin` int(11) NOT NULL,
  `uplevel1_claim_cash` int(11) NOT NULL,
  `uplevel2_claim_product` int(11) NOT NULL,
  `uplevel2_claim_cash` int(11) NOT NULL,
  `uplevel2_claim_coin` int(11) NOT NULL,
  `coin_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `total_coins`, `money_recieved`, `total_money`, `referral_user_bonus`, `referral_uplink1`, `referral_uplink2`, `first_coin_purchase_upline1`, `first_coin_purchase_upline2`, `winner_claim_product`, `winner_claim_coin`, `winner_claim_cash`, `uplevel1_claim_product`, `uplevel1_claim_coin`, `uplevel1_claim_cash`, `uplevel2_claim_product`, `uplevel2_claim_cash`, `uplevel2_claim_coin`, `coin_price`, `created_at`, `updated_at`) VALUES
(1, '100000', NULL, NULL, 500, 500, 250, 30, 10, 100, 125, 90, 30, 40, 20, 15, 10, 20, '0.12', NULL, '2020-07-30 00:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `name` varchar(180) DEFAULT NULL,
  `link` varchar(2800) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `link`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'https://www.facebook.com/campaign/landing.php?campaign_id=1653993517&extra_1=s%7Cc%7C318504235904%7Ce%7Cfacebook%20%27%7C&placement=&creative=318504235904&keyword=facebook%20%27&partner_id=googlesem&extra_2=campaignid%3D1653993517%26adgroupid%3D63066387003%26matchtype%3De%26network%3Dg%26source%3Dnotmobile%26search_or_content%3Ds%26device%3Dc%26devicemodel%3D%26adposition%3D%26target%3D%26targetid%3Dkwd-360705453827%26loc_physical_ms%3D9061812%26loc_interest_ms%3D%26feeditemid%3D%26param1%3D%26param2%3D&gclid=EAIaIQobChMI95mP2OaA6AIV16iWCh3otATWEAAYASAAEgLIsvD_BwE', 'images/fb.png', '2020-04-10 09:26:17', '2020-03-04 06:48:39'),
(2, 'Pinterest', 'https://in.pinterest.com/', 'images/pin.png', '2020-04-10 12:44:02', NULL),
(3, 'Instagram', 'instagram.com', 'images/instagram.png', '2020-04-10 09:26:17', NULL),
(4, 'Youtube', 'https://youtub.com/', 'images/youtube.png', '2020-04-10 09:28:05', NULL),
(5, 'Twitter', 'https://twitter.com/home', 'images/twiiter.png', '2020-04-10 09:27:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `special_trial_coin_packages`
--

CREATE TABLE `special_trial_coin_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_after_discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_coins` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` int(11) NOT NULL,
  `support_category_id` int(11) DEFAULT NULL,
  `message` text,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `support_category_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'vgdfgfdg', NULL, '2020-05-25 10:31:24', '2020-05-25 10:31:24'),
(2, 2, 'vgdfgfdg', 118, '2020-05-25 10:32:11', '2020-05-25 10:32:11'),
(3, 2, 'sgfjdhsf', 118, '2020-05-25 10:46:56', '2020-05-25 10:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `support_categories`
--

CREATE TABLE `support_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `support_categories`
--

INSERT INTO `support_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Support 1', NULL, NULL),
(2, 'Support 2', NULL, NULL),
(3, 'Support 3', NULL, NULL),
(4, 'Support 4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(10) UNSIGNED DEFAULT NULL,
  `txnId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(10) UNSIGNED DEFAULT NULL,
  `membership_package_id` int(10) UNSIGNED DEFAULT NULL,
  `auction_id` bigint(20) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `upline1` int(11) DEFAULT NULL,
  `upline2` int(11) DEFAULT NULL,
  `coin_transfer_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coins` bigint(20) DEFAULT NULL,
  `bid_coin` decimal(10,2) DEFAULT NULL,
  `real_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_amount_status` bigint(20) DEFAULT NULL,
  `trans` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Debit/Credit',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transaction_id`, `type`, `txnId`, `package_id`, `membership_package_id`, `auction_id`, `user_id`, `upline1`, `upline2`, `coin_transfer_id`, `name`, `description`, `coins`, `bid_coin`, `real_amount`, `last_amount_status`, `trans`, `created_at`, `updated_at`) VALUES
(1, '10012007250110000', 0, NULL, 4, NULL, NULL, 2, NULL, NULL, NULL, NULL, 'Coin Purchage', 8000, NULL, '900', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 05:45:57'),
(2, '10022007250110000', 0, NULL, 5, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Coin Purchage', 40000, NULL, '4500', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 05:50:58'),
(3, '10032007250110000', 0, NULL, 7, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Coin Purchage', 500, NULL, '240', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 05:52:18'),
(4, '10042007250110000', 0, NULL, 7, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Coin Purchage', 500, NULL, '240', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 05:53:11'),
(5, '10052007250110000', 0, NULL, 12, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Coin Purchage', 25000, NULL, '9000', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 05:53:25'),
(6, '10062007250110000', 0, NULL, 10, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Coin Purchage', 5000, NULL, '2300', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 05:53:37'),
(7, '10072007250110000', 0, NULL, 8, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Coin Purchage', 1200, NULL, '480', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 05:53:49'),
(8, '10082007250110000', 0, NULL, 4, NULL, NULL, 4, NULL, NULL, NULL, NULL, 'Coin Purchage', 8000, NULL, '900', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-24 18:30:00'),
(9, '10092007250110000', 0, NULL, 5, NULL, NULL, 5, NULL, NULL, NULL, NULL, 'Coin Purchage', 40000, NULL, '4500', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-24 18:30:00'),
(10, '10082007250210000', 0, NULL, NULL, 1, NULL, 3, NULL, NULL, NULL, NULL, 'Premium Package Purchase', NULL, NULL, '1000.00', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 06:07:03'),
(11, '10092007250110000', 0, NULL, 20, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Coin Purchage', 5000, NULL, '2070', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 06:08:02'),
(12, '100102007250110000', 0, NULL, 17, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Coin Purchage', 500, NULL, '216', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 06:08:49'),
(13, '100112007250110000', 0, NULL, 27, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Coin Purchage', 500, NULL, '216', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 06:12:52'),
(14, '100122007250110000', 0, NULL, 26, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Coin Purchage', 300, NULL, '135', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 06:13:04'),
(15, '100132007250110000', 0, NULL, 38, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Coin Purchage', 1200, NULL, '432', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 06:13:35'),
(16, '100142007250110000', 0, NULL, 39, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Coin Purchage', 2000, NULL, '846', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 06:13:48'),
(17, '100152007250110000', 0, NULL, 52, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Coin Purchage', 25000, NULL, '8100', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 06:14:14'),
(18, '100162007250110000', 0, NULL, 54, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Coin Purchage', 80000, NULL, '23760', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 06:14:27'),
(19, '10012007250210000', 0, NULL, NULL, 3, NULL, 3, NULL, NULL, NULL, NULL, 'Premium Package Purchase', NULL, NULL, '3600.00', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 18:03:40'),
(20, '10022007250210000', 0, NULL, NULL, 1, NULL, 3, NULL, NULL, NULL, NULL, 'Premium Package Purchase', NULL, NULL, '1000.00', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 18:04:39'),
(21, '10032007250210000', 0, NULL, NULL, 1, NULL, 3, NULL, NULL, NULL, NULL, 'Premium Package Purchase', NULL, NULL, '1000.00', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 18:05:35'),
(22, '10042007250210000', 0, NULL, NULL, 2, NULL, 3, NULL, NULL, NULL, NULL, 'Premium Package Purchase', NULL, NULL, '2400.00', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 18:06:12'),
(23, '10052007250210000', 0, NULL, NULL, 2, NULL, 3, NULL, NULL, NULL, NULL, 'Premium Package Purchase', NULL, NULL, '2400.00', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 18:06:44'),
(24, '10062007250210000', 0, NULL, NULL, 3, NULL, 3, NULL, NULL, NULL, NULL, 'Premium Package Purchase', NULL, NULL, '3600.00', NULL, 'CR', '2020-07-24 05:45:57', '2020-07-25 18:07:11'),
(25, '10072007250210000', 0, NULL, NULL, 4, NULL, 3, NULL, NULL, NULL, NULL, 'Premium Package Purchase', NULL, NULL, '6000.00', NULL, 'CR', '2020-06-24 05:45:57', '2020-07-25 18:07:39'),
(26, '10012007250310000', 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 'Sign up Bonus', 500, NULL, NULL, NULL, 'CR', '2020-07-23 18:30:00', '2020-07-23 18:30:00'),
(27, '10022007250310000', 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Sign up Bonus', 500, NULL, NULL, NULL, 'CR', '2020-07-24 18:30:00', '2020-07-24 18:30:00'),
(28, '10032007250310000', 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 'Sign up Bonus', 500, NULL, NULL, NULL, 'CR', '2020-07-24 18:30:00', '2020-07-24 18:30:00'),
(29, '10012007260310000', 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 'Sign up Bonus', 500, NULL, NULL, NULL, 'CR', '2020-07-26 06:13:23', '2020-07-26 06:13:23'),
(30, '10022007260310000', 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 'Sign up Bonus', 500, NULL, NULL, NULL, 'CR', '2020-07-26 06:15:00', '2020-07-26 06:15:00'),
(31, '10032007260410000', 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'Referral bonus step 1', 500, NULL, NULL, NULL, 'CR', '2020-07-26 06:15:00', '2020-07-26 06:15:00'),
(32, '10042007260510000', 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 'Referral bonus step 2', 250, NULL, NULL, NULL, 'CR', '2020-07-26 06:15:00', '2020-07-26 06:15:00'),
(33, '10052007260110000', 0, NULL, 5, NULL, NULL, 6, NULL, NULL, NULL, NULL, 'Coin Purchage', 40000, NULL, '4500', NULL, 'CR', '2020-07-26 06:15:56', '2020-07-26 06:15:56'),
(44, '10012007291610000', 16, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 'abc', 'Coin Gift', 200, NULL, NULL, 670, 'CR', '2020-07-29 03:02:27', '2020-07-29 03:02:27'),
(45, '10022007291610000', 16, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 'abcd', 'Coin Gift', 200, NULL, NULL, 670, 'CR', '2020-07-29 03:02:27', '2020-07-29 03:02:27'),
(46, '10032007291610000', 16, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 'aditya', 'Coin Gift', 300, NULL, NULL, 508370, 'CR', '2020-07-29 03:02:40', '2020-07-29 03:02:40'),
(47, '10042007291610000', 16, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 'demo1', 'Coin Gift', 300, NULL, NULL, 41070, 'CR', '2020-07-29 03:02:40', '2020-07-29 03:02:40'),
(49, '10052007291710000', 17, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 'abc', 'Coin Deduct', 10, NULL, NULL, 850, 'DR', '2020-07-29 15:41:48', '2020-07-29 15:41:48'),
(50, '10012007301710000', 17, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 'aditya', 'Coin Deduct', 50, NULL, NULL, 508670, 'DR', '2020-07-30 00:07:18', '2020-07-30 00:07:18'),
(51, '10012007300610000', 6, NULL, 4, NULL, NULL, 2, 1, NULL, NULL, NULL, 'first_coin_purchase_bonus_ul1', 2400, NULL, NULL, NULL, 'CR', '2020-07-24 05:45:57', '2020-07-24 05:45:57'),
(52, '10022007300610000', 6, NULL, 5, NULL, NULL, 3, 2, NULL, NULL, NULL, 'first_coin_purchase_bonus_ul1', 12000, NULL, NULL, NULL, 'CR', '2020-07-24 05:45:57', '2020-07-24 05:45:57'),
(53, '10012007300710000', 7, NULL, 5, NULL, NULL, 3, NULL, 1, NULL, NULL, 'first_coin_purchase_bonus_ul2', 4000, NULL, NULL, NULL, 'CR', '2020-07-29 18:30:00', '2020-07-29 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_types`
--

CREATE TABLE `transaction_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `s_no` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_types`
--

INSERT INTO `transaction_types` (`id`, `s_no`, `slug`) VALUES
(0, 0, 'Non Of The Above'),
(1, 1, 'coin_pack_sold'),
(2, 2, 'p_membership_pack_sold'),
(3, 3, 'sign_up_bonus'),
(4, 4, 'referral_signup_bonus_ul1'),
(5, 5, 'referral_signup_bonus_ul2'),
(6, 6, 'first_coin_purchase_bonus_ul1'),
(7, 7, 'first_coin_purchase_bonus_ul2'),
(8, 8, 'refund_bonus'),
(9, 9, 'winning_claim_product'),
(10, 10, 'winning_claim_coin'),
(11, 11, 'winning_claim_cash'),
(12, 12, 'winning_referral_bonus_ul1_cash'),
(13, 13, 'winning_referral_bonus_ul1_coin'),
(14, 14, 'winning_referral_bonus_ul2_cash'),
(15, 15, 'winning_referral_bonus_ul2_coin'),
(16, 16, 'admin_coin_gift'),
(17, 17, 'admin_coin_deduction'),
(18, 18, 'user_to_user_coin_gift'),
(19, 19, 'claim_fee'),
(20, 20, 'auction_fee'),
(21, 21, 'user_coin_spen_in_auction');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(13) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT '3',
  `remember_token` varchar(100) DEFAULT NULL,
  `membership_id` bigint(20) UNSIGNED DEFAULT '1',
  `package_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token` varchar(191) DEFAULT NULL,
  `referral_token` varchar(191) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_suspended` tinyint(1) DEFAULT NULL,
  `uplink1` bigint(20) UNSIGNED DEFAULT NULL,
  `uplink2` bigint(20) UNSIGNED DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `optional_address` varchar(255) DEFAULT NULL,
  `optional_address2` varchar(255) DEFAULT NULL,
  `optional_pincode` varchar(6) DEFAULT NULL,
  `optional_city` varchar(255) DEFAULT NULL,
  `optional_state` varchar(255) DEFAULT NULL,
  `optional_country` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `mobile_number_verified_at` datetime DEFAULT NULL,
  `is_received_bonus` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` date DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `name`, `email`, `mobile_number`, `role_id`, `remember_token`, `membership_id`, `package_id`, `api_token`, `referral_token`, `password`, `is_active`, `is_suspended`, `uplink1`, `uplink2`, `gender`, `address`, `address2`, `city`, `pincode`, `state`, `country`, `optional_address`, `optional_address2`, `optional_pincode`, `optional_city`, `optional_state`, `optional_country`, `avatar`, `email_verified_at`, `mobile_number_verified_at`, `is_received_bonus`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'Admin', 'admin@admin.com', '8005562145', 1, NULL, 1, NULL, NULL, NULL, '$2y$10$Ofx9BiGQ5gZX0.NciG01UuMqXcmV2of6YKWTov4V1iO/WRgcTAPg6', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-06-13', '2020-06-13 00:00:00', NULL),
(2, 'aditya', 'aditya', 'developerlaravel5@gmail.com', '6200193911', 3, NULL, 2, NULL, '6jJJSab7hwKj5ItQBITx0TwXQM0ceCpfoEx0ER5P5hg8fcfFvgaIIWwV58lmOCFdxyLIxwOAgwCU94dIXXiYKgsiS0TfQ38FItnc8VMTtbxeSxMH2Xad9qu86FgJdTwwPUGe382JmBi9QpBa92PTRAuG046iJKViVimlJuQCmU2kT0TkX41Far1JRjL6NyE', NULL, '$2y$10$Ofx9BiGQ5gZX0.NciG01UuMqXcmV2of6YKWTov4V1iO/WRgcTAPg6', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-25 00:00:00', 0, '2020-06-15', '2020-07-26 07:54:12', NULL),
(3, 'reena', 'reena', 'reena@gmail.com', '1234567890', 3, NULL, 4, 4, '6jJJSab7hwKj5ItQBITx0TwXQM0ceCpfoEx0ER5P5hg8fcfFvgaIIWwV58lmOCFdxyLIxwOAgwCU94dIXXiYKgsiS0TfQ38FItnc8VMTtbxeSxMH2Xad9qu86FgJdTwwPUGe382JmBi9QpBa92PTRAuG046iJKViVimlJuQCmU2kT0TkX41Far1JRjL6NyG', NULL, '$2y$10$Ofx9BiGQ5gZX0.NciG01UuMqXcmV2of6YKWTov4V1iO/WRgcTAPg6', 1, NULL, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-25 00:00:00', '2020-07-25 00:00:00', 0, '2020-07-20', '2020-07-25 18:07:39', NULL),
(4, 'abc', 'abc', 'abc@gmail.com', NULL, 3, NULL, 1, NULL, 'dfdsfsdfdfdsfdsfdsfds4wttreghfdhdfh', NULL, NULL, 1, NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-07-14', '2020-07-19 00:00:00', NULL),
(5, 'abcd', 'abcd', 'abcd@gmail.com', NULL, 3, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-07-20', '2020-07-12 00:00:00', NULL),
(6, 'demo1', 'Demo1', 'demo1@gmail.com', '8005562189', 3, NULL, 2, NULL, 'fsdfdsfdsfdsfdsfdsfdsf435gdfg53e65gfddfy35', NULL, '$2y$10$Ofx9BiGQ5gZX0.NciG01UuMqXcmV2of6YKWTov4V1iO/WRgcTAPg6', 1, NULL, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-26 06:00:15', '2020-07-26 06:22:13', 1, '2020-07-13', '2020-07-26 06:15:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_emails`
--

CREATE TABLE `user_emails` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_emails`
--

INSERT INTO `user_emails` (`id`, `user_id`, `email`, `created_at`, `updated_at`) VALUES
(1, 2, 'developerlaravel5@gmail.com', '2020-07-26 07:54:12', '2020-07-26 07:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_membership_packages`
--

CREATE TABLE `user_membership_packages` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `membership_package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_mode` varchar(191) DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `txn` varchar(255) DEFAULT NULL,
  `validity` int(11) DEFAULT NULL,
  `is_expired` tinyint(1) NOT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_membership_packages`
--

INSERT INTO `user_membership_packages` (`id`, `user_id`, `membership_package_id`, `payment_mode`, `transaction_id`, `txn`, `validity`, `is_expired`, `start_at`, `end_at`) VALUES
(1, 3, 1, 'Razorpay', 10, 'pay_FIX64K0Sq7XAlw', 1, 0, '2020-07-25 06:07:03', '2020-08-25 06:07:03'),
(2, 3, 3, 'Razorpay', 19, 'pay_FIjJ2cJxa5gcrX', 6, 0, '2020-07-25 18:03:40', '2021-01-25 18:03:40'),
(3, 3, 1, 'Razorpay', 20, 'pay_FIjK7H9BqrZbpV', 1, 0, '2020-07-25 18:04:39', '2020-08-25 18:04:39'),
(4, 3, 1, 'Razorpay', 21, 'pay_FIjKwQTHSYMIGj', 1, 0, '2020-07-25 18:05:35', '2020-08-25 18:05:35'),
(5, 3, 2, 'Razorpay', 22, 'pay_FIjLipUMk8FLg9', 3, 0, '2020-07-25 18:06:12', '2020-10-25 18:06:12'),
(6, 3, 2, 'Razorpay', 23, 'pay_FIjMIvYYNYX51A', 3, 0, '2020-07-25 18:06:44', '2020-10-25 18:06:44'),
(7, 3, 3, 'Razorpay', 24, 'pay_FIjMmPqQiGIp1I', 6, 0, '2020-07-25 18:07:11', '2021-01-25 18:07:11'),
(8, 3, 4, 'Razorpay', 25, 'pay_FIjNGf5fKuhhpO', 12, 0, '2020-07-25 18:07:39', '2021-07-25 18:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_mobile_numbers`
--

CREATE TABLE `user_mobile_numbers` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_mobile_numbers`
--

INSERT INTO `user_mobile_numbers` (`id`, `user_id`, `mobile_number`, `created_at`, `updated_at`) VALUES
(1, 6, '8005562189', '2020-07-26 06:12:42', '2020-07-26 06:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_payment_details`
--

CREATE TABLE `user_payment_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(2, 1, 2, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(3, 1, 3, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(4, 1, 4, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(5, 1, 5, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(6, 1, 6, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(7, 1, 7, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(8, 1, 8, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(9, 1, 9, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(10, 1, 10, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(11, 1, 11, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(12, 1, 12, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(13, 1, 14, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(14, 1, 15, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(15, 1, 16, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(16, 1, 17, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(17, 1, 18, '2020-06-13 18:26:17', '2020-06-13 18:26:17'),
(18, 1, 45, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(19, 1, 46, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(20, 1, 47, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(21, 1, 48, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(22, 1, 49, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(23, 1, 50, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(24, 1, 51, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(25, 1, 52, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(26, 1, 53, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(27, 1, 54, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(28, 1, 55, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(29, 1, 56, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(30, 1, 57, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(31, 1, 58, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(32, 1, 59, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(33, 1, 60, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(34, 1, 63, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(35, 1, 64, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(36, 1, 65, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(37, 1, 66, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(38, 1, 67, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(39, 1, 68, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(40, 1, 69, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(41, 1, 70, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(42, 1, 71, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(43, 1, 72, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(44, 1, 73, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(45, 1, 74, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(46, 1, 75, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(47, 1, 76, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(48, 1, 77, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(49, 1, 78, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(50, 1, 79, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(51, 1, 80, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(52, 1, 81, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(53, 1, 82, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(54, 1, 83, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(55, 1, 84, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(56, 1, 85, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(57, 1, 86, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(58, 1, 87, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(59, 1, 88, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(60, 1, 89, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(61, 1, 90, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(62, 1, 91, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(63, 1, 92, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(64, 1, 93, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(65, 1, 94, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(66, 1, 95, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(67, 1, 96, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(68, 1, 97, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(69, 1, 98, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(70, 1, 99, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(71, 1, 100, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(72, 1, 101, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(73, 1, 102, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(74, 1, 103, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(75, 1, 104, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(76, 1, 105, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(77, 1, 106, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(78, 1, 107, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(79, 1, 108, '2020-06-13 18:26:18', '2020-06-13 18:26:18'),
(80, 1, 109, '2020-06-13 18:26:18', '2020-06-13 18:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coins` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid_coin` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `coins`, `bid_coin`, `created_at`, `updated_at`) VALUES
(1, 2, '508620', '0.00', NULL, '2020-07-30 00:07:18'),
(2, 3, '617260', '0.00', NULL, '2020-07-26 06:15:00'),
(3, 4, '840', '0.00', NULL, '2020-07-29 15:41:48'),
(4, 5, '870', '0.00', NULL, '2020-07-29 03:02:27'),
(5, 6, '41370', '0.00', NULL, '2020-07-29 03:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `auction_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `sub_title` text,
  `description` longtext,
  `description2` longtext,
  `description3` longtext,
  `description4` longtext,
  `description5` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `sub_title`, `description`, `description2`, `description3`, `description4`, `description5`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor\r\nincididunt ut labore et dolore magna', '<p class=\"_w-title _title-2\">Signup And Get 500GDB Coins</p>\r\n                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>', '<p class=\"_w-title _title-2\">Start Bidding</p>\r\n                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>', '  <p class=\"_w-title _title-2  _text-white\">Involve Auto Bid manager</p>\r\n                                        <p class=\"_text-white\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>', '  <p class=\"_w-title _title-2\">Skillful Play And Win</p>\r\n                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>', '  <p class=\"_w-title _title-2  _text-white\">Involve Auto Bid manager</p>\r\n                                        <p class=\"_text-white\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisement_cms`
--
ALTER TABLE `advertisement_cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisments`
--
ALTER TABLE `advertisments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analytic_logs`
--
ALTER TABLE `analytic_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auctions`
--
ALTER TABLE `auctions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auction_claims`
--
ALTER TABLE `auction_claims`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auction_id` (`auction_id`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `play_auction_id` (`play_auction_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `auction_id` (`auction_id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coin_packages`
--
ALTER TABLE `coin_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_coin_packages`
--
ALTER TABLE `custom_coin_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faq_category_id` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepages`
--
ALTER TABLE `homepages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_packages`
--
ALTER TABLE `membership_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `normal_coin_packs`
--
ALTER TABLE `normal_coin_packs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_category_id` (`notification_category_id`),
  ADD KEY `notification_sub_category_id` (`notification_sub_category_id`);

--
-- Indexes for table `notification_categories`
--
ALTER TABLE `notification_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_sub_categories`
--
ALTER TABLE `notification_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `play_auctions`
--
ALTER TABLE `play_auctions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `premium_coin_packs`
--
ALTER TABLE `premium_coin_packs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refer_earns`
--
ALTER TABLE `refer_earns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`s`),
  ADD UNIQUE KEY `sessions_id_unique` (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_trial_coin_packages`
--
ALTER TABLE `special_trial_coin_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_categories`
--
ALTER TABLE `support_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `transaction_types`
--
ALTER TABLE `transaction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `membership_id` (`membership_id`);

--
-- Indexes for table `user_emails`
--
ALTER TABLE `user_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_membership_packages`
--
ALTER TABLE `user_membership_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `membership_package_id` (`membership_package_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `user_mobile_numbers`
--
ALTER TABLE `user_mobile_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_payment_details`
--
ALTER TABLE `user_payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `winners_ibfk_1` (`user_id`),
  ADD KEY `auction_id` (`auction_id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisement_cms`
--
ALTER TABLE `advertisement_cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisments`
--
ALTER TABLE `advertisments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `analytic_logs`
--
ALTER TABLE `analytic_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `auctions`
--
ALTER TABLE `auctions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auction_claims`
--
ALTER TABLE `auction_claims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coin_packages`
--
ALTER TABLE `coin_packages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_coin_packages`
--
ALTER TABLE `custom_coin_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `homepages`
--
ALTER TABLE `homepages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `membership_packages`
--
ALTER TABLE `membership_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `normal_coin_packs`
--
ALTER TABLE `normal_coin_packs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notification_categories`
--
ALTER TABLE `notification_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notification_sub_categories`
--
ALTER TABLE `notification_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `play_auctions`
--
ALTER TABLE `play_auctions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `premium_coin_packs`
--
ALTER TABLE `premium_coin_packs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `refer_earns`
--
ALTER TABLE `refer_earns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `s` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `special_trial_coin_packages`
--
ALTER TABLE `special_trial_coin_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_categories`
--
ALTER TABLE `support_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `transaction_types`
--
ALTER TABLE `transaction_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_emails`
--
ALTER TABLE `user_emails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_membership_packages`
--
ALTER TABLE `user_membership_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_mobile_numbers`
--
ALTER TABLE `user_mobile_numbers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_payment_details`
--
ALTER TABLE `user_payment_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analytic_logs`
--
ALTER TABLE `analytic_logs`
  ADD CONSTRAINT `analytic_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`notification_category_id`) REFERENCES `notification_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`notification_sub_category_id`) REFERENCES `notification_sub_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`type`) REFERENCES `transaction_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `user_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
