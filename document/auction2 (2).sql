-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 20, 2020 at 02:13 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auction2`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(11) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<p>cvgdsjhdsfkjdhbkjdf\\fdfhjfdfjg\\f;dlfgmdlf;gdf dfgkflg;mfg fgfg;fg fgkfg fkgf gkfg fgkfg fkgf gfg fgkmf gf gfg fg fgf gf gfg fmg f&#39;g fg￼</p>', '2020-03-03 06:45:33', '2020-03-03 01:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `advertisments`
--

CREATE TABLE `advertisments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
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
(4, 35, '2020-03-18 19:08:04', '2020-03-18 19:08:32', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-18 19:08:04', '2020-03-18 19:08:32'),
(5, 36, '2020-03-18 19:08:43', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-18 19:08:43', '2020-03-18 19:08:43'),
(6, 43, '2020-03-18 19:10:54', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-18 19:10:54', '2020-03-18 19:10:54'),
(7, 39, '2020-03-18 19:11:12', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-18 19:11:12', '2020-03-18 19:11:12'),
(8, 40, '2020-03-19 10:22:48', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-19 10:22:48', '2020-03-19 10:22:48'),
(9, 41, '2020-03-19 10:49:32', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-19 10:49:32', '2020-03-19 10:49:32'),
(10, 42, '2020-03-19 10:50:27', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-19 10:50:27', '2020-03-19 10:50:27'),
(11, 39, '2020-03-19 10:51:20', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-19 10:51:20', '2020-03-19 10:51:20'),
(12, 40, '2020-03-19 10:53:57', '2020-03-19 10:54:42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-19 10:53:57', '2020-03-19 10:54:42'),
(13, 43, '2020-03-19 10:54:52', '2020-03-19 10:55:21', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-19 10:54:52', '2020-03-19 10:55:21'),
(14, 42, '2020-03-19 10:58:36', '2020-03-19 10:58:40', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-19 10:58:36', '2020-03-19 10:58:40'),
(15, 40, '2020-03-19 10:58:45', '2020-03-19 11:01:41', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-19 10:58:45', '2020-03-19 11:01:41'),
(16, 35, '2020-03-19 11:02:25', '2020-03-19 11:03:15', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-19 11:02:25', '2020-03-19 11:03:15'),
(17, 36, '2020-03-19 11:03:51', '2020-03-19 11:04:21', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-19 11:03:51', '2020-03-19 11:04:21'),
(18, 37, '2020-03-19 11:09:03', '2020-03-19 11:28:41', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-19 11:09:03', '2020-03-19 11:28:41'),
(19, 38, '2020-03-19 11:28:54', '2020-03-19 11:29:20', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-19 11:28:54', '2020-03-19 11:29:20'),
(20, 39, '2020-03-19 11:29:30', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-19 11:29:30', '2020-03-19 11:29:30'),
(21, 18, '2020-03-19 11:55:11', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '192.168.0.138', '2020-03-19 11:55:11', '2020-03-19 11:55:11'),
(22, 18, '2020-03-19 13:59:47', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '192.168.0.138', '2020-03-19 13:59:47', '2020-03-19 13:59:47'),
(23, 18, '2020-03-19 16:20:01', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '192.168.0.138', '2020-03-19 16:20:01', '2020-03-19 16:20:01'),
(24, 18, '2020-03-20 10:20:39', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '::1', '2020-03-20 10:20:39', '2020-03-20 10:20:39'),
(25, 18, '2020-03-20 10:45:03', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '::1', '2020-03-20 10:45:03', '2020-03-20 10:45:03'),
(26, 57, '2020-03-20 10:45:58', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '::1', '2020-03-20 10:45:58', '2020-03-20 10:45:58'),
(27, 18, '2020-03-20 14:09:09', '2020-03-20 14:17:30', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '::1', '2020-03-20 14:09:09', '2020-03-20 14:17:30'),
(28, 57, '2020-03-20 14:17:48', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '::1', '2020-03-20 14:17:48', '2020-03-20 14:17:48'),
(29, 18, '2020-03-20 14:18:10', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '::1', '2020-03-20 14:18:10', '2020-03-20 14:18:10'),
(30, 57, '2020-03-20 15:43:37', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '::1', '2020-03-20 15:43:37', '2020-03-20 15:43:37'),
(31, 18, '2020-03-20 16:24:39', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '::1', '2020-03-20 16:24:39', '2020-03-20 16:24:39'),
(32, 18, '2020-03-20 16:29:44', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '::1', '2020-03-20 16:29:44', '2020-03-20 16:29:44'),
(33, 18, '2020-03-20 16:44:36', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '::1', '2020-03-20 16:44:36', '2020-03-20 16:44:36'),
(34, 18, '2020-03-20 17:11:02', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', '192.168.0.133', '2020-03-20 17:11:02', '2020-03-20 17:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `auctions`
--

CREATE TABLE `auctions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '1 = publish ,0=draft,2=upcoming,3=live,4=end',
  `auction_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_link` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_value` decimal(10,2) DEFAULT NULL,
  `value_in_coins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auction_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_auction_fee` decimal(10,2) DEFAULT NULL,
  `default_auction_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auctions`
--

INSERT INTO `auctions` (`id`, `status`, `auction_code`, `product_name`, `product_link`, `product_category`, `product_value`, `value_in_coins`, `desc`, `product_image`, `product_image_link`, `auction_date`, `default_auction_fee`, `default_auction_time`, `auction_fee_after_discount`, `product_winner`, `product_up_level1`, `product_up_level2`, `value_in_cash_winner`, `value_in_cash_up_level1`, `value_in_cash_up_level2`, `value_in_coin_winner`, `value_in_coin_up_level1`, `value_in_coin_up_level2`, `bid_start_from`, `per_bid_coins`, `basic_advance_auto_bid_allow_upto`, `premium_auto_bid_allow_upto`, `premium_plus_bid_allow_upto`, `last_bid_accepted`, `new_bidder_allow_upto`, `note`, `brand`, `product_code`, `created_at`, `updated_at`) VALUES
(1, 4, '123456789', 'Redmi Note 8 Pro (Shadow Black, 64 GB)  (6 GB RAM)', 'https://www.flipkart.com/redmi-note-8-pro-shadow-black-64-gb/p/itm3dc87f8221660', '[\"Electronic\"]', '14505.00', '1450.50', '<p><br></p>', 'auction/product/QqBkkbAsKBE81uungUqdQae2xvPNHeIB3llFh6Kl.png', NULL, '2020-02-26', '20.00', '13:30', '15.00', '10000', '10000', '15000', '5000', '2000', '5000', '2000', '2000', '2000', '0', '0.20', '27.00', '35.00', '40.00', '1000.00', '40.00', '<p><br></p>', NULL, NULL, '2020-02-26 05:52:37', '2020-03-05 08:08:12'),
(2, 3, 'Samsung 198', 'Samsung 198 L Direct Cool Single Door 5 Star', 'https://www.flipkart.com/samsung-198-l-direct-cool-single-door-5-star-2020-refrigerator-base-drawer/p/itm1f53955cd314c?pid=RFRFNDEEWBH9CJWV&lid=LSTRFRFNDEEWBH9CJWVVGEOGD&marketplace=FLIPKART&srno=b_1_1&otracker=browse&fm=organic&iid=517577e6-a172-4e4e-a631-97c59976ce13.RFRFNDEEWBH9CJWV.SEARCH&ssid=ifcnghsa8w0000001582801363455', '[\"Electronic\"]', '17490.00', '1749.00', '<p><br></p><h4><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 14px;\">This </span></font><b style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Samsung</b><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 14px;\"> Direct Cool fridge is </span></font><i style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">ideal</i><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 14px;\"> for you. It is energy-efficient, which also makes it pocket-friendly. Additionally, it boasts the smart inverted&nbsp;compressor, which intelligently tracks cooling needs and provides efficient cooling to every corner of this fridge. Furthermore, you can keep your food fresh even during power cuts as it can easily work with your home inverted.</span></font></h4>', 'auction/product/2gWwwUItNkcaeY6VvOSRqrxc9KMU5HG0zID32iyF.jpeg', NULL, '2020-02-27', '15.00', '18:00', '10.00', '10000', '10000', '15000', '5000', '2000', '5000', '2000', '2000', '2000', '0', '0.10', '27.00', '35.00', '40.00', '50.00', '30.00', '<p>Nothing for note</p>', NULL, NULL, '2020-02-27 11:08:53', '2020-02-27 12:18:19'),
(3, 3, 'Magicook MW 20 BC, Black', 'Whirlpool 20 L Convection Microwave Oven', 'https://www.flipkart.com/whirlpool-20-l-convection-microwave-oven/p/itmfy2h4g89k38jn?pid=MRCEY2WVPZCKUDRS&lid=LSTMRCEY2WVPZCKUDRSH5ENRE&marketplace=FLIPKART&srno=b_1_1&otracker=browse&fm=organic&iid=en_pA1cEdEIxV4gGGtb82pek64T3%2FqOF0ot0fvusjATtpx8XDc1ieYCbIVXyCXI6TFvoNjQ3DjXXCoyo9QAVCtjAw%3D%3D&ssid=jh1ufvmlqo0000001582866016139', '[\"Electronic\"]', '7585.00', '758', '<p><br></p><p><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">From <b>pizzas</b> to grilled <b>chicken</b>, cook delicious dishes at home with this Whirlpool Convection Microwave Oven. With its zero oil cooking option, you can cook <b>healthy</b> and tasty dishes without using a drop of oil. You can also cook <b>2-minute</b> recipes at times when you get late for office or a meeting.</span><br></p>', 'auction/product/vyuzdNwF5sk1GeaVcknCqf7imKtO3SJCoeb9oDLG.jpeg', NULL, '2020-02-28', '20.00', '15:00', '15.00', '500', '500', '500', '300', '300', '300', '200', '200', '200', '0', '0.15', '20.00', '30.00', '40.00', '50.00', '35.00', '<p><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">We highly recommend that you get the product installed by the brand/Flipkart authorized service engineers to prevent the warranty from getting void. To avoid any physical damage to the product while unboxing, please ensure that only an authorised Flipkart delivery/service executive or brand personnel opens the packaging.</span><br></p>', 'Whirlpool', 'MW 20', '2020-02-28 05:05:13', '2020-02-28 05:05:13'),
(4, 2, 'C2', 'Realme', 'https://www.flipkart.com/realme-c2-diamond-blue-32-gb/p/itmfgwba8kmejqpe?gclid=CjwKCAiA-vLyBRBWEiwAzOkGVNzkMZGgJrYezrckxMG0STHtujzs0sG14QciRQQy6YbPP-aH889RMxoClvIQAvD_BwE&pid=MOBFHBZ4ZQB3CTZW&lid=LSTMOBFHBZ4ZQB3CTZWUFZDQI&marketplace=FLIPKART&cmpid=content_mobile_662447220_g_8965229628_gmc_pla&tgi=sem,1,G,11214002,g,search,,400988978322,,,,c,,,,,,,&ef_id=CjwKCAiA-vLyBRBWEiwAzOkGVNzkMZGgJrYezrckxMG0STHtujzs0sG14QciRQQy6YbPP-aH889RMxoClvIQAvD_BwE:G:s&s_kwcid=AL!739!3!400988978322!!!g!818212785733!', '[\"Electronic\"]', '5999.00', '599.90', '<p><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Say hello to the Realme C2 smartphone whose stylish design encompasses plenty of features, such as a 13 MP + 2 MP rear camera, a 5 MP front camera, and a 4000 mAh battery to make your life simpler</span><br></p>', 'auction/product/HnEghEk4tfmx0qj7kEKs7wZlXn6C1JP9hWf9RnZi.jpeg', NULL, '2020-03-04', '20.00', '02:00 AM', '15.00', '1000', '1000', '1000', '500', '500', '500', '200', '200', '200', '0', '1', '30.00', '40.00', '50.00', '400.00', '200.00', '<p><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Say hello&nbsp;</span><br></p>', 'Realme', 'C2', '2020-03-02 10:34:35', '2020-03-02 10:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `auction_claims`
--

CREATE TABLE `auction_claims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `winner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_winner_claimed` tinyint(1) DEFAULT 0,
  `is_uplevel1_claimed` tinyint(1) DEFAULT 0,
  `is_uplevel2_claimed` tinyint(1) DEFAULT 0,
  `winner_claimed` enum('1','2','3','') DEFAULT '1' COMMENT '1=product,2=cash,3=coin',
  `uplevel1_claimed` enum('1','2','3','') DEFAULT '1' COMMENT '1=product,2=cash,3=coin',
  `uplevel2_claimed` enum('1','2','3','') DEFAULT '1' COMMENT '1=product,2=cash,3=coin',
  `winner_claimed_success` tinyint(1) DEFAULT 0,
  `uplevel1_claimed_success` tinyint(1) DEFAULT 0,
  `uplevel2_claimed_success` tinyint(1) DEFAULT 0,
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
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auction_claims`
--

INSERT INTO `auction_claims` (`id`, `auction_id`, `winner_id`, `is_winner_claimed`, `is_uplevel1_claimed`, `is_uplevel2_claimed`, `winner_claimed`, `uplevel1_claimed`, `uplevel2_claimed`, `winner_claimed_success`, `uplevel1_claimed_success`, `uplevel2_claimed_success`, `winner_order_id`, `level1_order_id`, `level2_order_id`, `winner_transaction_id`, `level1_transaction_id`, `level2_transaction_id`, `winner_status`, `level1_status`, `level2_status`, `created_at`, `updated_at`) VALUES
(1, 1, 40, 1, 0, 0, '1', '1', '1', 0, 1, 1, '0', '0', '0', '0', '1049', '1050', NULL, NULL, NULL, '2020-03-02 00:00:00', '2020-03-03 18:53:03');

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

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `play_auction_id`, `user_id`, `auction_id`, `bid_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 35, 1, '0.20', '2020-02-26 16:09:02', '2020-02-26 16:09:02'),
(2, 1, 35, 1, '0.20', '2020-02-26 16:09:04', '2020-02-26 16:09:04'),
(3, 1, 35, 1, '0.20', '2020-02-26 16:09:06', '2020-02-26 16:09:06'),
(4, 2, 36, 1, '0.20', '2020-02-26 16:13:35', '2020-02-26 16:13:35'),
(5, 2, 36, 1, '0.20', '2020-02-26 16:13:36', '2020-02-26 16:13:36'),
(6, 2, 36, 1, '0.20', '2020-02-26 16:13:38', '2020-02-26 16:13:38'),
(7, 2, 36, 1, '0.20', '2020-02-26 16:13:58', '2020-02-26 16:13:58'),
(8, 2, 36, 1, '0.20', '2020-02-26 16:16:01', '2020-02-26 16:16:01'),
(9, 2, 36, 1, '0.20', '2020-02-26 16:17:12', '2020-02-26 16:17:12'),
(10, 1, 35, 1, '0.20', '2020-02-26 16:17:14', '2020-02-26 16:17:14'),
(11, 2, 36, 1, '0.20', '2020-02-26 16:17:17', '2020-02-26 16:17:17'),
(12, 2, 36, 1, '0.20', '2020-02-26 16:17:19', '2020-02-26 16:17:19'),
(13, 1, 35, 1, '0.20', '2020-02-26 16:17:21', '2020-02-26 16:17:21'),
(14, 2, 36, 1, '0.20', '2020-02-26 16:17:23', '2020-02-26 16:17:23'),
(15, 1, 35, 1, '0.20', '2020-02-26 16:17:26', '2020-02-26 16:17:26'),
(16, 2, 36, 1, '0.20', '2020-02-26 16:17:29', '2020-02-26 16:17:29'),
(17, 1, 35, 1, '0.20', '2020-02-26 16:17:32', '2020-02-26 16:17:32'),
(18, 2, 36, 1, '0.20', '2020-02-26 16:17:35', '2020-02-26 16:17:35'),
(19, 1, 35, 1, '0.20', '2020-02-26 16:17:38', '2020-02-26 16:17:38'),
(20, 2, 36, 1, '0.20', '2020-02-26 16:17:40', '2020-02-26 16:17:40'),
(21, 1, 35, 1, '0.20', '2020-02-26 16:17:43', '2020-02-26 16:17:43'),
(22, 2, 36, 1, '0.20', '2020-02-26 16:17:47', '2020-02-26 16:17:47'),
(23, 1, 35, 1, '0.20', '2020-02-26 16:17:51', '2020-02-26 16:17:51'),
(24, 2, 36, 1, '0.20', '2020-02-26 16:17:53', '2020-02-26 16:17:53'),
(25, 1, 35, 1, '0.20', '2020-02-26 16:17:55', '2020-02-26 16:17:55'),
(26, 2, 36, 1, '0.20', '2020-02-26 16:17:57', '2020-02-26 16:17:57'),
(27, 1, 35, 1, '0.20', '2020-02-26 16:17:58', '2020-02-26 16:17:58'),
(28, 2, 36, 1, '0.20', '2020-02-26 16:17:59', '2020-02-26 16:17:59'),
(29, 1, 35, 1, '0.20', '2020-02-26 16:18:00', '2020-02-26 16:18:00'),
(30, 2, 36, 1, '0.20', '2020-02-26 16:18:02', '2020-02-26 16:18:02'),
(31, 1, 35, 1, '0.20', '2020-02-26 16:18:03', '2020-02-26 16:18:03'),
(32, 2, 36, 1, '0.20', '2020-02-26 16:18:05', '2020-02-26 16:18:05'),
(33, 1, 35, 1, '0.20', '2020-02-26 16:18:05', '2020-02-26 16:18:05'),
(34, 2, 36, 1, '0.20', '2020-02-26 16:18:06', '2020-02-26 16:18:06'),
(35, 2, 36, 1, '0.20', '2020-02-26 16:18:06', '2020-02-26 16:18:06'),
(36, 1, 35, 1, '0.20', '2020-02-26 16:21:03', '2020-02-26 16:21:03'),
(37, 1, 35, 1, '0.20', '2020-02-26 17:48:16', '2020-02-26 17:48:16'),
(38, 1, 35, 1, '0.20', '2020-02-26 17:48:25', '2020-02-26 17:48:25'),
(39, 1, 35, 1, '0.40', '2020-02-26 17:54:11', '2020-02-26 17:54:11'),
(40, 1, 35, 1, '0.60', '2020-02-26 17:54:12', '2020-02-26 17:54:12'),
(41, 1, 35, 1, '0.80', '2020-02-26 17:54:14', '2020-02-26 17:54:14'),
(42, 1, 35, 1, '1.00', '2020-02-26 17:54:15', '2020-02-26 17:54:15'),
(43, 1, 35, 1, '1.20', '2020-02-26 17:54:19', '2020-02-26 17:54:19'),
(44, 1, 35, 1, '1.40', '2020-02-26 17:54:21', '2020-02-26 17:54:21'),
(45, 1, 35, 1, '1.60', '2020-02-26 17:54:24', '2020-02-26 17:54:24'),
(46, 1, 35, 1, '1.80', '2020-02-26 17:54:26', '2020-02-26 17:54:26'),
(47, 1, 35, 1, '2.00', '2020-02-26 17:54:28', '2020-02-26 17:54:28'),
(48, 1, 35, 1, '2.20', '2020-02-26 17:54:32', '2020-02-26 17:54:32'),
(49, 1, 35, 1, '2.40', '2020-02-26 17:54:36', '2020-02-26 17:54:36'),
(50, 1, 35, 1, '2.60', '2020-02-26 17:54:40', '2020-02-26 17:54:40'),
(51, 1, 35, 1, '2.80', '2020-02-26 17:54:42', '2020-02-26 17:54:42'),
(52, 1, 35, 1, '3.00', '2020-02-26 17:54:44', '2020-02-26 17:54:44'),
(53, 1, 35, 1, '3.20', '2020-02-26 17:54:45', '2020-02-26 17:54:45'),
(54, 1, 35, 1, '3.40', '2020-02-26 17:54:46', '2020-02-26 17:54:46'),
(55, 1, 35, 1, '3.60', '2020-02-26 17:54:48', '2020-02-26 17:54:48'),
(56, 1, 35, 1, '3.80', '2020-02-26 17:54:49', '2020-02-26 17:54:49'),
(57, 1, 35, 1, '4.00', '2020-02-26 17:54:52', '2020-02-26 17:54:52'),
(58, 1, 35, 1, '4.20', '2020-02-26 17:54:53', '2020-02-26 17:54:53'),
(59, 1, 35, 1, '4.40', '2020-02-26 17:54:54', '2020-02-26 17:54:54'),
(60, 1, 35, 1, '4.60', '2020-02-26 17:54:56', '2020-02-26 17:54:56'),
(61, 1, 35, 1, '4.80', '2020-02-26 17:55:02', '2020-02-26 17:55:02'),
(62, 1, 35, 1, '5.00', '2020-02-26 17:55:04', '2020-02-26 17:55:04'),
(63, 1, 35, 1, '5.20', '2020-02-26 17:55:05', '2020-02-26 17:55:05'),
(64, 1, 35, 1, '5.40', '2020-02-26 17:55:06', '2020-02-26 17:55:06'),
(65, 1, 35, 1, '5.60', '2020-02-26 17:55:07', '2020-02-26 17:55:07'),
(66, 1, 35, 1, '5.80', '2020-02-26 17:55:17', '2020-02-26 17:55:17'),
(67, 1, 35, 1, '6.00', '2020-02-26 17:55:20', '2020-02-26 17:55:20'),
(68, 1, 35, 1, '6.20', '2020-02-26 17:55:23', '2020-02-26 17:55:23'),
(69, 1, 35, 1, '6.40', '2020-02-26 17:55:26', '2020-02-26 17:55:26'),
(70, 1, 35, 1, '6.60', '2020-02-26 17:55:33', '2020-02-26 17:55:33'),
(71, 1, 35, 1, '6.80', '2020-02-26 17:55:34', '2020-02-26 17:55:34'),
(72, 1, 35, 1, '7.00', '2020-02-26 17:56:36', '2020-02-26 17:56:36'),
(73, 2, 36, 1, '7.20', '2020-02-26 17:56:38', '2020-02-26 17:56:38'),
(74, 1, 35, 1, '7.40', '2020-02-26 17:56:40', '2020-02-26 17:56:40'),
(75, 2, 36, 1, '7.60', '2020-02-26 17:56:43', '2020-02-26 17:56:43'),
(76, 1, 35, 1, '7.80', '2020-02-26 17:56:45', '2020-02-26 17:56:45'),
(77, 2, 36, 1, '8.00', '2020-02-26 17:56:49', '2020-02-26 17:56:49'),
(78, 1, 35, 1, '8.20', '2020-02-26 17:56:53', '2020-02-26 17:56:53'),
(79, 2, 36, 1, '8.40', '2020-02-26 17:56:56', '2020-02-26 17:56:56'),
(80, 1, 35, 1, '8.60', '2020-02-26 17:56:59', '2020-02-26 17:56:59'),
(81, 2, 36, 1, '8.80', '2020-02-26 17:57:01', '2020-02-26 17:57:01'),
(82, 1, 35, 1, '9.00', '2020-02-26 17:57:02', '2020-02-26 17:57:02'),
(83, 1, 35, 1, '9.20', '2020-02-26 18:43:56', '2020-02-26 18:43:56'),
(84, 1, 35, 1, '9.40', '2020-02-26 18:43:58', '2020-02-26 18:43:58'),
(85, 1, 35, 1, '9.60', '2020-02-26 18:44:08', '2020-02-26 18:44:08'),
(86, 2, 36, 1, '9.80', '2020-02-26 18:44:13', '2020-02-26 18:44:13'),
(87, 1, 35, 1, '10.00', '2020-02-26 18:44:15', '2020-02-26 18:44:15'),
(88, 2, 36, 1, '10.20', '2020-02-26 18:44:17', '2020-02-26 18:44:17'),
(89, 1, 35, 1, '10.40', '2020-02-26 18:44:18', '2020-02-26 18:44:18'),
(90, 2, 36, 1, '10.60', '2020-02-26 18:44:19', '2020-02-26 18:44:19'),
(91, 1, 35, 1, '10.80', '2020-02-26 18:44:20', '2020-02-26 18:44:20'),
(92, 2, 36, 1, '11.00', '2020-02-26 18:44:21', '2020-02-26 18:44:21'),
(93, 1, 35, 1, '11.20', '2020-02-26 18:44:22', '2020-02-26 18:44:22'),
(94, 2, 36, 1, '11.40', '2020-02-26 18:44:23', '2020-02-26 18:44:23'),
(95, 1, 35, 1, '11.60', '2020-02-26 18:44:24', '2020-02-26 18:44:24'),
(96, 2, 36, 1, '11.80', '2020-02-26 18:44:26', '2020-02-26 18:44:26'),
(97, 1, 35, 1, '12.00', '2020-02-26 18:44:28', '2020-02-26 18:44:28'),
(98, 1, 35, 1, '12.20', '2020-02-26 18:44:29', '2020-02-26 18:44:29'),
(99, 2, 36, 1, '12.40', '2020-02-26 18:44:31', '2020-02-26 18:44:31'),
(100, 1, 35, 1, '12.60', '2020-02-26 18:44:33', '2020-02-26 18:44:33'),
(101, 2, 36, 1, '12.80', '2020-02-26 18:44:35', '2020-02-26 18:44:35'),
(102, 1, 35, 1, '13.00', '2020-02-26 18:44:36', '2020-02-26 18:44:36'),
(103, 2, 36, 1, '13.20', '2020-02-26 18:44:38', '2020-02-26 18:44:38'),
(104, 1, 35, 1, '13.40', '2020-02-26 18:44:39', '2020-02-26 18:44:39'),
(105, 2, 36, 1, '13.60', '2020-02-26 18:44:40', '2020-02-26 18:44:40'),
(106, 1, 35, 1, '13.80', '2020-02-26 18:44:41', '2020-02-26 18:44:41'),
(107, 2, 36, 1, '14.00', '2020-02-26 18:44:43', '2020-02-26 18:44:43'),
(108, 1, 35, 1, '14.20', '2020-02-26 18:44:45', '2020-02-26 18:44:45'),
(109, 2, 36, 1, '14.40', '2020-02-26 18:44:46', '2020-02-26 18:44:46'),
(110, 1, 35, 1, '14.60', '2020-02-26 18:44:48', '2020-02-26 18:44:48'),
(111, 2, 36, 1, '14.80', '2020-02-26 18:44:49', '2020-02-26 18:44:49'),
(112, 1, 35, 1, '15.00', '2020-02-26 18:44:50', '2020-02-26 18:44:50'),
(113, 2, 36, 1, '15.20', '2020-02-26 18:44:52', '2020-02-26 18:44:52'),
(114, 1, 35, 1, '15.40', '2020-02-26 18:44:53', '2020-02-26 18:44:53'),
(115, 2, 36, 1, '15.60', '2020-02-26 18:44:54', '2020-02-26 18:44:54'),
(116, 1, 35, 1, '15.80', '2020-02-26 18:44:55', '2020-02-26 18:44:55'),
(117, 2, 36, 1, '16.00', '2020-02-26 18:44:56', '2020-02-26 18:44:56'),
(118, 1, 35, 1, '16.20', '2020-02-26 18:44:57', '2020-02-26 18:44:57'),
(119, 2, 36, 1, '16.40', '2020-02-26 18:44:58', '2020-02-26 18:44:58'),
(120, 1, 35, 1, '16.60', '2020-02-26 18:44:59', '2020-02-26 18:44:59'),
(121, 2, 36, 1, '16.80', '2020-02-26 18:45:00', '2020-02-26 18:45:00'),
(122, 1, 35, 1, '17.00', '2020-02-26 18:45:03', '2020-02-26 18:45:03'),
(123, 2, 36, 1, '17.20', '2020-02-26 18:45:15', '2020-02-26 18:45:15'),
(124, 1, 35, 1, '17.40', '2020-02-26 18:45:16', '2020-02-26 18:45:16'),
(125, 2, 36, 1, '17.60', '2020-02-26 18:45:18', '2020-02-26 18:45:18'),
(126, 1, 35, 1, '17.80', '2020-02-26 18:45:21', '2020-02-26 18:45:21'),
(127, 2, 36, 1, '18.00', '2020-02-26 18:45:22', '2020-02-26 18:45:22'),
(128, 2, 36, 1, '18.20', '2020-02-26 18:45:31', '2020-02-26 18:45:31'),
(129, 1, 35, 1, '18.40', '2020-02-26 18:45:33', '2020-02-26 18:45:33'),
(130, 1, 35, 1, '18.60', '2020-02-26 18:45:36', '2020-02-26 18:45:36'),
(131, 2, 36, 1, '18.80', '2020-02-26 18:45:38', '2020-02-26 18:45:38'),
(132, 2, 36, 1, '19.00', '2020-02-26 18:45:41', '2020-02-26 18:45:41'),
(133, 2, 36, 1, '19.20', '2020-02-26 18:45:41', '2020-02-26 18:45:41'),
(134, 2, 36, 1, '19.40', '2020-02-26 18:45:42', '2020-02-26 18:45:42'),
(135, 2, 36, 1, '19.60', '2020-02-26 18:45:42', '2020-02-26 18:45:42'),
(136, 2, 36, 1, '19.80', '2020-02-26 18:45:42', '2020-02-26 18:45:42'),
(137, 2, 36, 1, '20.00', '2020-02-26 18:45:42', '2020-02-26 18:45:42'),
(138, 2, 36, 1, '20.20', '2020-02-26 18:45:42', '2020-02-26 18:45:42'),
(139, 2, 36, 1, '20.40', '2020-02-26 18:45:42', '2020-02-26 18:45:42'),
(140, 2, 36, 1, '20.60', '2020-02-26 18:45:43', '2020-02-26 18:45:43'),
(141, 2, 36, 1, '20.80', '2020-02-26 18:45:43', '2020-02-26 18:45:43'),
(142, 2, 36, 1, '21.00', '2020-02-26 18:45:43', '2020-02-26 18:45:43'),
(143, 2, 36, 1, '21.20', '2020-02-26 18:45:43', '2020-02-26 18:45:43'),
(144, 2, 36, 1, '21.40', '2020-02-26 18:45:43', '2020-02-26 18:45:43'),
(145, 2, 36, 1, '21.60', '2020-02-26 18:45:44', '2020-02-26 18:45:44'),
(146, 2, 36, 1, '21.80', '2020-02-26 18:45:44', '2020-02-26 18:45:44'),
(147, 2, 36, 1, '22.00', '2020-02-26 18:45:44', '2020-02-26 18:45:44'),
(148, 2, 36, 1, '22.20', '2020-02-26 18:45:44', '2020-02-26 18:45:44'),
(149, 2, 36, 1, '22.40', '2020-02-26 18:45:45', '2020-02-26 18:45:45'),
(150, 2, 36, 1, '22.60', '2020-02-26 18:45:45', '2020-02-26 18:45:45'),
(151, 2, 36, 1, '22.80', '2020-02-26 18:45:45', '2020-02-26 18:45:45'),
(152, 2, 36, 1, '23.00', '2020-02-26 18:45:45', '2020-02-26 18:45:45'),
(153, 2, 36, 1, '23.20', '2020-02-26 18:45:45', '2020-02-26 18:45:45'),
(154, 2, 36, 1, '23.40', '2020-02-26 18:45:46', '2020-02-26 18:45:46'),
(155, 2, 36, 1, '23.60', '2020-02-26 18:45:46', '2020-02-26 18:45:46'),
(156, 2, 36, 1, '23.80', '2020-02-26 18:45:46', '2020-02-26 18:45:46'),
(157, 2, 36, 1, '24.00', '2020-02-26 18:45:46', '2020-02-26 18:45:46'),
(158, 2, 36, 1, '24.20', '2020-02-26 18:45:46', '2020-02-26 18:45:46'),
(159, 2, 36, 1, '24.40', '2020-02-26 18:45:47', '2020-02-26 18:45:47'),
(160, 1, 35, 1, '24.60', '2020-02-26 18:46:27', '2020-02-26 18:46:27'),
(161, 2, 36, 1, '24.80', '2020-02-26 18:46:28', '2020-02-26 18:46:28'),
(162, 1, 35, 1, '25.00', '2020-02-26 18:46:29', '2020-02-26 18:46:29'),
(163, 2, 36, 1, '25.20', '2020-02-26 18:46:30', '2020-02-26 18:46:30'),
(164, 1, 35, 1, '25.40', '2020-02-26 18:46:30', '2020-02-26 18:46:30'),
(165, 2, 36, 1, '25.60', '2020-02-26 18:46:31', '2020-02-26 18:46:31'),
(166, 1, 35, 1, '25.80', '2020-02-26 18:46:32', '2020-02-26 18:46:32'),
(167, 2, 36, 1, '26.00', '2020-02-26 18:46:34', '2020-02-26 18:46:34'),
(168, 1, 35, 1, '26.20', '2020-02-26 18:46:35', '2020-02-26 18:46:35'),
(169, 1, 35, 1, '26.40', '2020-02-26 18:46:35', '2020-02-26 18:46:35'),
(170, 1, 35, 1, '26.60', '2020-02-26 18:46:35', '2020-02-26 18:46:35'),
(171, 1, 35, 1, '26.80', '2020-02-26 18:46:36', '2020-02-26 18:46:36'),
(172, 1, 35, 1, '27.00', '2020-02-26 18:46:36', '2020-02-26 18:46:36'),
(173, 1, 35, 1, '27.20', '2020-02-26 18:46:36', '2020-02-26 18:46:36'),
(174, 2, 36, 1, '27.40', '2020-02-26 18:46:37', '2020-02-26 18:46:37'),
(175, 2, 36, 1, '27.60', '2020-02-26 18:46:37', '2020-02-26 18:46:37'),
(176, 2, 36, 1, '27.80', '2020-02-26 18:46:37', '2020-02-26 18:46:37'),
(177, 2, 36, 1, '28.00', '2020-02-26 18:46:38', '2020-02-26 18:46:38'),
(178, 1, 35, 1, '28.20', '2020-02-26 18:46:39', '2020-02-26 18:46:39'),
(179, 1, 35, 1, '28.40', '2020-02-26 18:46:39', '2020-02-26 18:46:39'),
(180, 1, 35, 1, '28.60', '2020-02-26 18:46:39', '2020-02-26 18:46:39'),
(181, 2, 36, 1, '28.80', '2020-02-26 18:46:41', '2020-02-26 18:46:41'),
(182, 2, 36, 1, '29.00', '2020-02-26 18:46:41', '2020-02-26 18:46:41'),
(183, 1, 35, 1, '29.20', '2020-02-26 18:46:47', '2020-02-26 18:46:47'),
(184, 1, 35, 1, '29.40', '2020-02-26 18:46:48', '2020-02-26 18:46:48'),
(185, 1, 35, 1, '29.60', '2020-02-26 18:46:49', '2020-02-26 18:46:49'),
(186, 1, 35, 1, '29.80', '2020-02-26 18:46:50', '2020-02-26 18:46:50'),
(187, 1, 35, 1, '30.00', '2020-02-26 18:46:51', '2020-02-26 18:46:51'),
(188, 1, 35, 1, '30.20', '2020-02-26 18:46:57', '2020-02-26 18:46:57'),
(189, 1, 35, 1, '30.40', '2020-02-26 18:47:11', '2020-02-26 18:47:11'),
(190, 2, 36, 1, '30.60', '2020-02-26 18:48:17', '2020-02-26 18:48:17'),
(191, 2, 36, 1, '30.80', '2020-02-26 18:48:19', '2020-02-26 18:48:19'),
(192, 1, 35, 1, '31.00', '2020-02-26 18:48:26', '2020-02-26 18:48:26'),
(193, 1, 35, 1, '31.20', '2020-02-26 18:50:39', '2020-02-26 18:50:39'),
(194, 2, 36, 1, '31.40', '2020-02-26 18:50:46', '2020-02-26 18:50:46'),
(195, 2, 36, 1, '31.60', '2020-02-26 18:51:32', '2020-02-26 18:51:32'),
(196, 2, 36, 1, '31.80', '2020-02-26 18:51:33', '2020-02-26 18:51:33'),
(197, 1, 35, 1, '32.00', '2020-02-26 18:51:35', '2020-02-26 18:51:35'),
(198, 1, 35, 1, '32.20', '2020-02-26 18:51:36', '2020-02-26 18:51:36'),
(199, 1, 35, 1, '32.40', '2020-02-26 18:51:37', '2020-02-26 18:51:37'),
(200, 1, 35, 1, '32.60', '2020-02-26 18:51:37', '2020-02-26 18:51:37'),
(201, 2, 36, 1, '32.80', '2020-02-26 18:51:38', '2020-02-26 18:51:38'),
(202, 1, 35, 1, '33.00', '2020-02-26 18:52:13', '2020-02-26 18:52:13'),
(203, 1, 35, 1, '33.20', '2020-02-26 18:52:15', '2020-02-26 18:52:15'),
(204, 3, 43, 1, '33.40', '2020-02-27 12:17:09', '2020-02-27 12:17:09'),
(205, 3, 43, 1, '33.60', '2020-02-27 12:17:11', '2020-02-27 12:17:11'),
(206, 3, 43, 1, '33.80', '2020-02-27 12:17:13', '2020-02-27 12:17:13'),
(207, 3, 43, 1, '34.00', '2020-02-27 12:17:15', '2020-02-27 12:17:15'),
(208, 3, 43, 1, '34.20', '2020-02-27 12:17:38', '2020-02-27 12:17:38'),
(209, 3, 43, 1, '34.40', '2020-02-27 12:17:39', '2020-02-27 12:17:39'),
(210, 3, 43, 1, '34.60', '2020-02-27 13:23:23', '2020-02-27 13:23:23'),
(211, 4, 39, 1, '34.80', '2020-02-27 15:23:24', '2020-02-27 15:23:24'),
(212, 4, 39, 1, '35.00', '2020-02-27 15:23:25', '2020-02-27 15:23:25'),
(213, 4, 39, 1, '35.20', '2020-02-27 15:23:26', '2020-02-27 15:23:26'),
(214, 5, 40, 1, '35.40', '2020-02-27 15:26:29', '2020-02-27 15:26:29'),
(215, 5, 40, 1, '35.60', '2020-02-27 15:41:49', '2020-02-27 15:41:49'),
(216, 6, 41, 3, '0.15', '2020-02-28 10:42:52', '2020-02-28 10:42:52'),
(217, 6, 41, 3, '0.30', '2020-02-28 10:42:54', '2020-02-28 10:42:54'),
(218, 6, 41, 3, '0.45', '2020-02-28 10:42:55', '2020-02-28 10:42:55'),
(219, 6, 41, 3, '0.60', '2020-02-28 10:42:55', '2020-02-28 10:42:55'),
(220, 6, 41, 3, '0.75', '2020-02-28 10:42:56', '2020-02-28 10:42:56'),
(221, 6, 41, 3, '0.90', '2020-02-28 10:42:59', '2020-02-28 10:42:59'),
(222, 6, 41, 3, '1.05', '2020-02-28 10:43:02', '2020-02-28 10:43:02'),
(223, 6, 41, 3, '1.20', '2020-02-28 10:43:05', '2020-02-28 10:43:05'),
(224, 6, 41, 3, '1.35', '2020-02-28 10:43:06', '2020-02-28 10:43:06'),
(225, 6, 41, 3, '1.50', '2020-02-28 10:43:13', '2020-02-28 10:43:13'),
(226, 6, 41, 3, '1.65', '2020-02-28 10:57:51', '2020-02-28 10:57:51'),
(227, 6, 41, 3, '1.80', '2020-02-28 10:57:59', '2020-02-28 10:57:59'),
(228, 6, 41, 3, '1.95', '2020-02-28 10:58:00', '2020-02-28 10:58:00'),
(229, 6, 41, 3, '2.10', '2020-02-28 10:58:02', '2020-02-28 10:58:02'),
(230, 6, 41, 3, '2.25', '2020-02-28 10:58:04', '2020-02-28 10:58:04'),
(231, 6, 41, 3, '2.40', '2020-02-28 10:58:07', '2020-02-28 10:58:07'),
(232, 6, 41, 3, '2.55', '2020-02-28 10:58:08', '2020-02-28 10:58:08'),
(233, 6, 41, 3, '2.70', '2020-02-28 10:58:10', '2020-02-28 10:58:10'),
(234, 6, 41, 3, '2.85', '2020-02-28 10:58:11', '2020-02-28 10:58:11'),
(235, 6, 41, 3, '3.00', '2020-02-28 10:58:13', '2020-02-28 10:58:13'),
(236, 6, 41, 3, '3.15', '2020-02-28 10:58:15', '2020-02-28 10:58:15'),
(238, 7, 42, 3, '3.30', '2020-02-28 11:11:37', '2020-02-28 11:11:37'),
(239, 4, 39, 1, '36.80', '2020-02-28 13:18:36', '2020-02-28 13:18:36'),
(240, 9, 40, 3, '3.45', '2020-02-28 13:19:22', '2020-02-28 13:19:22'),
(241, 9, 40, 3, '3.60', '2020-02-28 13:19:24', '2020-02-28 13:19:24'),
(242, 9, 40, 3, '3.75', '2020-02-28 13:19:27', '2020-02-28 13:19:27'),
(243, 9, 40, 3, '3.90', '2020-02-28 13:19:28', '2020-02-28 13:19:28'),
(244, 9, 40, 3, '4.05', '2020-02-28 13:19:30', '2020-02-28 13:19:30'),
(245, 9, 40, 3, '4.20', '2020-02-28 13:19:32', '2020-02-28 13:19:32'),
(246, 9, 40, 3, '4.35', '2020-02-28 13:19:34', '2020-02-28 13:19:34'),
(247, 9, 40, 3, '4.50', '2020-02-28 13:19:35', '2020-02-28 13:19:35'),
(248, 8, 39, 3, '4.65', '2020-02-28 13:19:39', '2020-02-28 13:19:39'),
(249, 9, 40, 3, '4.80', '2020-02-28 13:19:43', '2020-02-28 13:19:43'),
(250, 8, 39, 3, '4.95', '2020-02-28 13:19:45', '2020-02-28 13:19:45'),
(251, 8, 39, 3, '5.10', '2020-02-28 13:19:57', '2020-02-28 13:19:57'),
(252, 9, 40, 3, '5.25', '2020-02-28 13:19:59', '2020-02-28 13:19:59'),
(253, 9, 40, 3, '5.40', '2020-02-28 13:20:08', '2020-02-28 13:20:08'),
(254, 9, 40, 3, '5.55', '2020-02-28 13:20:10', '2020-02-28 13:20:10'),
(255, 9, 40, 3, '5.70', '2020-02-28 13:20:14', '2020-02-28 13:20:14'),
(256, 9, 40, 3, '5.85', '2020-02-28 13:20:17', '2020-02-28 13:20:17'),
(257, 8, 39, 3, '6.00', '2020-02-28 13:20:19', '2020-02-28 13:20:19'),
(258, 8, 39, 3, '6.15', '2020-02-28 13:20:28', '2020-02-28 13:20:28'),
(259, 9, 40, 3, '6.30', '2020-02-28 13:20:32', '2020-02-28 13:20:32'),
(260, 8, 39, 3, '6.45', '2020-02-28 13:20:35', '2020-02-28 13:20:35'),
(261, 9, 40, 3, '6.60', '2020-02-28 13:20:37', '2020-02-28 13:20:37'),
(262, 8, 39, 3, '6.75', '2020-02-28 13:20:40', '2020-02-28 13:20:40'),
(263, 8, 39, 3, '6.90', '2020-02-28 13:20:56', '2020-02-28 13:20:56'),
(264, 10, 43, 2, '0.10', '2020-02-28 18:01:28', '2020-02-28 18:01:28'),
(265, 10, 43, 2, '0.20', '2020-02-28 18:01:33', '2020-02-28 18:01:33'),
(266, 10, 43, 2, '0.30', '2020-02-28 18:01:34', '2020-02-28 18:01:34'),
(267, 10, 43, 2, '0.40', '2020-02-28 18:01:36', '2020-02-28 18:01:36'),
(268, 10, 43, 2, '0.50', '2020-02-28 18:01:37', '2020-02-28 18:01:37'),
(269, 10, 43, 2, '0.60', '2020-02-28 18:01:39', '2020-02-28 18:01:39'),
(270, 10, 43, 2, '0.70', '2020-02-28 18:01:41', '2020-02-28 18:01:41'),
(271, 10, 43, 2, '0.80', '2020-02-28 18:01:43', '2020-02-28 18:01:43'),
(272, 10, 43, 2, '0.90', '2020-02-28 18:03:04', '2020-02-28 18:03:04'),
(273, 11, 42, 2, '1.00', '2020-02-28 18:03:20', '2020-02-28 18:03:20'),
(274, 11, 42, 2, '1.10', '2020-02-28 18:03:23', '2020-02-28 18:03:23'),
(275, 10, 43, 2, '1.20', '2020-02-28 18:03:29', '2020-02-28 18:03:29'),
(276, 10, 43, 2, '1.30', '2020-02-28 18:03:30', '2020-02-28 18:03:30'),
(277, 10, 43, 2, '1.40', '2020-02-28 18:03:31', '2020-02-28 18:03:31'),
(278, 10, 43, 2, '1.50', '2020-02-28 18:03:32', '2020-02-28 18:03:32'),
(279, 11, 42, 2, '1.60', '2020-02-28 18:03:34', '2020-02-28 18:03:34'),
(280, 10, 43, 2, '1.70', '2020-02-28 18:03:41', '2020-02-28 18:03:41'),
(281, 11, 42, 2, '1.80', '2020-02-28 18:03:43', '2020-02-28 18:03:43'),
(282, 10, 43, 2, '1.90', '2020-02-28 18:03:45', '2020-02-28 18:03:45'),
(283, 11, 42, 2, '2.00', '2020-02-28 18:03:47', '2020-02-28 18:03:47'),
(284, 10, 43, 2, '2.10', '2020-02-28 18:03:57', '2020-02-28 18:03:57'),
(285, 11, 42, 2, '2.20', '2020-02-28 18:03:59', '2020-02-28 18:03:59'),
(286, 10, 43, 2, '2.30', '2020-02-28 18:04:26', '2020-02-28 18:04:26'),
(287, 10, 43, 2, '2.40', '2020-02-28 18:04:28', '2020-02-28 18:04:28'),
(288, 11, 42, 2, '2.50', '2020-02-28 18:11:55', '2020-02-28 18:11:55'),
(289, 11, 42, 2, '2.60', '2020-02-28 18:11:57', '2020-02-28 18:11:57'),
(290, 10, 43, 2, '2.70', '2020-02-28 18:11:58', '2020-02-28 18:11:58'),
(291, 10, 43, 2, '2.80', '2020-02-28 18:12:11', '2020-02-28 18:12:11'),
(292, 11, 42, 2, '2.90', '2020-02-28 18:13:19', '2020-02-28 18:13:19'),
(293, 11, 42, 2, '3.00', '2020-02-28 18:13:20', '2020-02-28 18:13:20'),
(294, 11, 42, 2, '3.10', '2020-02-28 18:13:21', '2020-02-28 18:13:21'),
(295, 11, 42, 2, '3.20', '2020-02-28 18:13:22', '2020-02-28 18:13:22'),
(296, 11, 42, 2, '3.30', '2020-02-28 18:13:23', '2020-02-28 18:13:23'),
(297, 11, 42, 2, '3.40', '2020-02-28 18:13:24', '2020-02-28 18:13:24'),
(298, 11, 42, 2, '3.50', '2020-02-28 18:13:25', '2020-02-28 18:13:25'),
(299, 11, 42, 2, '3.60', '2020-02-28 18:13:26', '2020-02-28 18:13:26'),
(300, 11, 42, 2, '3.70', '2020-02-28 18:13:26', '2020-02-28 18:13:26'),
(301, 11, 42, 2, '3.80', '2020-02-28 18:13:27', '2020-02-28 18:13:27'),
(302, 11, 42, 2, '3.90', '2020-02-28 18:13:27', '2020-02-28 18:13:27'),
(303, 11, 42, 2, '4.00', '2020-02-28 18:13:28', '2020-02-28 18:13:28'),
(304, 11, 42, 2, '4.10', '2020-02-28 18:13:28', '2020-02-28 18:13:28'),
(305, 11, 42, 2, '4.20', '2020-02-28 18:13:28', '2020-02-28 18:13:28'),
(306, 11, 42, 2, '4.30', '2020-02-28 18:13:28', '2020-02-28 18:13:28'),
(307, 11, 42, 2, '4.40', '2020-02-28 18:13:28', '2020-02-28 18:13:28'),
(308, 11, 42, 2, '4.50', '2020-02-28 18:13:28', '2020-02-28 18:13:28'),
(309, 11, 42, 2, '4.60', '2020-02-28 18:13:29', '2020-02-28 18:13:29'),
(310, 11, 42, 2, '4.70', '2020-02-28 18:13:29', '2020-02-28 18:13:29'),
(311, 11, 42, 2, '4.80', '2020-02-28 18:13:29', '2020-02-28 18:13:29'),
(312, 11, 42, 2, '4.90', '2020-02-28 18:13:29', '2020-02-28 18:13:29'),
(313, 11, 42, 2, '5.00', '2020-02-28 18:13:29', '2020-02-28 18:13:29'),
(314, 11, 42, 2, '5.10', '2020-02-28 18:13:29', '2020-02-28 18:13:29'),
(315, 11, 42, 2, '5.20', '2020-02-28 18:13:30', '2020-02-28 18:13:30'),
(316, 11, 42, 2, '5.30', '2020-02-28 18:13:30', '2020-02-28 18:13:30'),
(317, 11, 42, 2, '5.40', '2020-02-28 18:13:30', '2020-02-28 18:13:30'),
(318, 11, 42, 2, '5.50', '2020-02-28 18:13:30', '2020-02-28 18:13:30'),
(319, 10, 43, 2, '5.60', '2020-02-28 18:14:20', '2020-02-28 18:14:20'),
(320, 10, 43, 2, '5.70', '2020-02-28 18:16:38', '2020-02-28 18:16:38'),
(321, 10, 43, 2, '5.80', '2020-02-28 18:16:41', '2020-02-28 18:16:41'),
(322, 11, 42, 2, '5.90', '2020-02-28 18:16:59', '2020-02-28 18:16:59'),
(323, 11, 42, 2, '6.00', '2020-02-28 18:17:02', '2020-02-28 18:17:02'),
(324, 10, 43, 2, '6.10', '2020-02-28 18:23:09', '2020-02-28 18:23:09'),
(325, 11, 42, 2, '6.20', '2020-02-28 18:23:14', '2020-02-28 18:23:14'),
(326, 10, 43, 2, '6.30', '2020-02-28 18:23:28', '2020-02-28 18:23:28'),
(327, 10, 43, 2, '6.40', '2020-02-28 18:30:57', '2020-02-28 18:30:57'),
(328, 10, 43, 2, '6.50', '2020-02-28 18:31:00', '2020-02-28 18:31:00'),
(329, 11, 42, 2, '6.60', '2020-02-28 18:31:04', '2020-02-28 18:31:04'),
(330, 10, 43, 2, '6.70', '2020-02-28 18:32:33', '2020-02-28 18:32:33'),
(331, 10, 43, 2, '6.80', '2020-02-28 18:35:17', '2020-02-28 18:35:17'),
(332, 11, 42, 2, '6.90', '2020-02-28 18:35:27', '2020-02-28 18:35:27'),
(333, 11, 42, 2, '7.00', '2020-02-28 18:35:58', '2020-02-28 18:35:58'),
(334, 10, 43, 2, '7.10', '2020-02-28 18:36:00', '2020-02-28 18:36:00'),
(335, 11, 42, 2, '7.20', '2020-02-28 18:36:07', '2020-02-28 18:36:07'),
(336, 11, 42, 2, '7.30', '2020-02-28 18:49:10', '2020-02-28 18:49:10'),
(337, 10, 43, 2, '7.40', '2020-02-28 18:50:11', '2020-02-28 18:50:11'),
(338, 10, 43, 2, '7.50', '2020-02-28 18:51:03', '2020-02-28 18:51:03'),
(339, 11, 42, 2, '7.60', '2020-02-28 18:51:06', '2020-02-28 18:51:06'),
(340, 10, 43, 2, '7.70', '2020-02-28 18:51:18', '2020-02-28 18:51:18'),
(341, 10, 43, 2, '7.80', '2020-02-28 18:52:52', '2020-02-28 18:52:52'),
(342, 10, 43, 2, '7.90', '2020-02-28 18:52:55', '2020-02-28 18:52:55'),
(343, 10, 43, 2, '8.00', '2020-02-28 18:52:57', '2020-02-28 18:52:57'),
(344, 10, 43, 2, '8.10', '2020-02-28 18:52:58', '2020-02-28 18:52:58'),
(345, 10, 43, 2, '8.20', '2020-02-28 18:52:59', '2020-02-28 18:52:59'),
(346, 10, 43, 2, '8.30', '2020-02-28 18:53:24', '2020-02-28 18:53:24'),
(347, 10, 43, 2, '8.40', '2020-02-28 18:53:25', '2020-02-28 18:53:25'),
(348, 10, 43, 2, '8.50', '2020-02-28 18:54:04', '2020-02-28 18:54:04'),
(349, 10, 43, 2, '8.60', '2020-02-28 18:54:11', '2020-02-28 18:54:11');

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
  `p_member_pay` decimal(10,2) DEFAULT 0.00,
  `value_coin` int(11) DEFAULT NULL,
  `extra_coin` int(11) DEFAULT NULL,
  `p_member_get_extra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `you_can_save` decimal(10,2) DEFAULT NULL,
  `you_saved` decimal(10,2) DEFAULT NULL,
  `is_first` tinyint(1) DEFAULT 0,
  `is_p_member` tinyint(1) DEFAULT 0,
  `p_member_validity` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coin_packages`
--

INSERT INTO `coin_packages` (`id`, `package_name`, `package_original_price`, `package_price`, `total_coins`, `p_member_pay`, `value_coin`, `extra_coin`, `p_member_get_extra`, `you_can_save`, `you_saved`, `is_first`, `is_p_member`, `p_member_validity`, `created_at`, `updated_at`) VALUES
(3, 'Trial 500', '500.00', '400.75', 4000, '450.00', 45, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-02-28 13:44:46'),
(4, 'Trial 1000', '1000.00', '900.00', 8000, '900.00', 47, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(5, 'Trial 5000', '5000.00', '4500.00', 40000, '4500.00', 99, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(17, 'Tester455', '250.00', '240.00', 1200, '216.00', 500, 700, '180', '60.00', NULL, 0, 0, NULL, NULL, '2020-02-14 12:02:53'),
(18, 'Bronze', '500.00', '480.00', 3000, '432.00', 1200, 1800, 'P.Members Get Upto Extra 450 Coins', '120.00', NULL, 0, 0, NULL, NULL, NULL),
(19, 'Silver', '1000.00', '940.00', 7500, '846.00', 2000, 5500, 'P.Members Get Upto Extra 1125 Coins', '235.00', NULL, 0, 0, NULL, NULL, NULL),
(20, 'Gold', '2500.00', '2300.00', 19000, '2070.00', 5000, 14000, 'P.Members Get Upto Extra 2850 Coins', '575.00', NULL, 0, 0, NULL, NULL, NULL),
(21, 'hello mini', '150.00', '150.00', 660, '135.00', 300, 300, 'P.M Extra 60 Coins of ₹ 15.00', '150.00', '30.00', 0, 1, 1, NULL, '2020-02-14 13:22:02'),
(22, 'Tester (PM - 1)', '250.00', '240.00', 1320, '216.00', 500, 700, 'P.M Extra 120 Coins of ₹ 24.00', '55.00', '48.00', 0, 1, 1, NULL, '2020-02-21 13:38:28'),
(23, 'Mini Tester (PM - 3)', '150.00', '150.00', 660, '135.00', 300, 300, 'P.M Extra 60 Coins of ₹ 15.00', NULL, '48.00', 0, 1, 3, NULL, NULL),
(24, 'Tester (PM - 3)', '250.00', '240.00', 1320, '216.00', 500, 700, 'P.M Extra 60 Coins of ₹ 15.00', NULL, '48.00', 0, 1, 3, NULL, NULL),
(25, 'Mini Tester (PM - 6)', '150.00', '150.00', 672, '135.00', 300, 300, 'P.M Extra 72 Coins of ₹ 18.00', NULL, '33.00', 0, 1, 6, NULL, NULL),
(26, 'Tester (PM - 6)', '250.00', '240.00', 1344, '216.00', 500, 700, 'P.M Extra 144 Coins of ₹ 29.00', NULL, '53.00', 0, 1, 6, NULL, NULL),
(27, 'Mini Tester (PM - 12)', '150.00', '150.00', 690, '135.00', 300, 300, 'P.M Extra 90 Coins of ₹ 22.50', NULL, '37.50', 0, 1, 12, NULL, NULL),
(28, 'Tester (PM - 12)', '250.00', '240.00', 1380, '216.00', 500, 700, 'P.M Extra 180 Coins of ₹ 36.00', NULL, '60.00', 0, 1, 12, NULL, NULL),
(29, 'thsusj', '12.00', '121.00', 11, '21.00', 121, 123, '11', '1.00', NULL, NULL, NULL, NULL, '2020-02-13 07:18:38', '2020-02-13 07:18:38'),
(30, 'asasasasasasas', '123232.00', '232323.00', 232323, '232323.00', 232323, 232323, '232323', '232323.00', NULL, NULL, NULL, NULL, '2020-02-13 07:19:13', '2020-02-13 07:19:13'),
(31, '23232323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 07:19:24', '2020-02-13 07:19:24'),
(32, 'thsusj', '12.00', '454.00', 4545, '4242.00', 454, 44, '45', '454.00', NULL, NULL, NULL, NULL, '2020-02-13 09:37:19', '2020-02-13 09:37:19'),
(33, 'ttttttttttttttt', '44.00', '1214141.00', 141414141, '14141.00', 141414, 414141, '414141', '4141.00', NULL, NULL, NULL, NULL, '2020-02-13 09:42:06', '2020-02-13 09:42:06'),
(34, 'ddf', '1411.00', '414141.00', 4141, '414141.00', 14141414, 14141, '14', '1414.00', NULL, NULL, NULL, NULL, '2020-02-13 09:43:20', '2020-02-13 09:43:20'),
(35, 'thsusj', '112.00', '111.00', 1212, '121.00', 1212, 1212, '1212', '111.00', NULL, NULL, NULL, NULL, '2020-02-13 09:46:38', '2020-02-13 09:46:38'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 10:10:17', '2020-02-13 10:10:17'),
(37, NULL, NULL, NULL, NULL, '101010.00', NULL, 1010, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 10:11:18', '2020-02-13 10:11:18'),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 10:12:02', '2020-02-13 10:12:02'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 10:12:58', '2020-02-13 10:12:58'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 10:25:52', '2020-02-13 10:25:52'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 10:26:48', '2020-02-13 10:26:48'),
(42, 'M6', NULL, NULL, NULL, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 10:27:33', '2020-02-13 10:27:33'),
(43, 'thsusj efs', NULL, NULL, NULL, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 10:27:57', '2020-02-13 10:27:57'),
(44, 'Normal Coin Packagesasasasasa', '14111.00', '411.00', 414114, '4141411.00', 4141, 414141, '1441', '4141.00', NULL, NULL, 0, NULL, '2020-02-13 11:13:42', '2020-02-13 11:13:42'),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-13 11:14:01', '2020-02-13 11:14:01'),
(46, 'M!', '1242.00', '4545.00', 4545, '4545.00', 4545, 454, '4545', '4545.00', NULL, NULL, 0, NULL, '2020-02-13 11:15:57', '2020-02-13 11:15:57'),
(47, 'M3', '121.00', '121211.00', 1212, '1212.00', 1212, 1212, '1212', '121212.00', NULL, NULL, 1, NULL, '2020-02-13 11:18:21', '2020-02-13 11:18:21'),
(48, 'tyg', '5454.00', '5454.00', NULL, '0.00', 5564, NULL, NULL, NULL, NULL, 1, 0, NULL, '2020-02-13 12:51:52', '2020-02-14 11:02:08'),
(49, 'ratyhb=sdhghgsdv', '121.00', NULL, 1212, '1212.00', 1212, 1212, '1212', '121212.00', NULL, NULL, 1, 3, '2020-02-14 06:10:00', '2020-02-14 06:10:00'),
(53, 'Mini Tester1', '100.00', '100.00', 600, '135.00', 300, 300, '90', '37.00', NULL, NULL, 0, NULL, '2020-02-14 11:58:31', '2020-02-14 11:58:31');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `faq_category_id` int(11) DEFAULT NULL,
  `title` varchar(180) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_category_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 4, 'asdadasdasd', 'sdddddddddddddddddddddddd', '2020-03-03 13:42:47', '0000-00-00 00:00:00'),
(3, 7, 'sdsdsdsd', '<p>asdasdasdasdasd</p>', '2020-03-03 13:42:53', '2020-03-03 02:40:56'),
(4, 7, 'mdvsfhghsdbf', '<p>ncashdvashjabvsd</p>', '2020-03-03 13:42:56', '2020-03-03 02:41:29'),
(5, 3, 'what abaout auction', '<p>gfhfffdgdfgdsgsdfg</p>', '2020-03-04 05:48:01', '2020-03-04 00:18:01'),
(8, 5, 'Physics', '<p>xxxxxxx</p>', '2020-03-03 13:41:17', '2020-03-03 07:28:01'),
(9, 6, 'Physics', '<p>sdsdsdsdsadasfdsfhdsvfndsvfhdsf</p>\r\n\r\n<p>fdfbdsfs</p>\r\n\r\n<p>fdsbfdkjsfds</p>\r\n\r\n<p>fdsfbdsfd</p>\r\n\r\n<p>fdhsfsd</p>\r\n\r\n<p>fjsdhf</p>\r\n\r\n<p>&#39;sdf</p>', '2020-03-03 07:41:00', '2020-03-03 07:41:00'),
(10, 4, 'Physics', 'd\'sdksd\r\nd', '2020-03-04 00:15:23', '2020-03-04 00:15:23'),
(11, 4, 'Physics', 'd\'sdksd\r\nd', '2020-03-04 00:15:36', '2020-03-04 00:15:36'),
(12, 3, 'this is quyests=dbs', '<p>=-3403740437505 0 bv&nbsp; &nbsp;</p>\r\n\r\n<p>4 0bvrf]</p>', '2020-03-04 00:21:08', '2020-03-04 00:21:08'),
(13, 3, 'this is quyests=dbs', '<p>=-3403740437505 0 bv&nbsp; &nbsp;</p>\r\n\r\n<p>4 0bvrf]</p>', '2020-03-04 00:21:31', '2020-03-04 00:21:31');

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
(3, 'TOM&JERRY', '2020-03-02 18:30:00', '2020-03-02 18:30:00'),
(4, 'SCOOBYDU', '2020-03-02 18:30:00', '2020-03-02 18:30:00'),
(5, 'Doremon', '2020-03-03 04:24:55', '2020-03-16 10:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` int(11) NOT NULL,
  `title` varchar(180) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Terms & Condition', '<p>njected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Where can I get some? There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. 5 paragraphs words bytes lists Start with &#39;Lorem ipsum dolor sit amet...&#39;</p>', '2020-03-04 12:21:31', '2020-03-04 06:51:31'),
(2, 'Privacy & Policy', 'Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2020-03-04 07:32:41', '2020-03-03 18:30:00'),
(3, 'Refund Policy', '<p>What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-03-04 10:17:58', '2020-03-04 04:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `homepages`
--

CREATE TABLE `homepages` (
  `id` int(11) NOT NULL,
  `title` varchar(180) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `description2` text DEFAULT NULL,
  `description3` text DEFAULT NULL,
  `description4` text DEFAULT NULL,
  `description5` text DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homepages`
--

INSERT INTO `homepages` (`id`, `title`, `description`, `description2`, `description3`, `description4`, `description5`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Play & Win', '<p>thit os os s</p>', NULL, NULL, NULL, NULL, NULL, '2020-03-02 08:19:16', '2020-03-02 02:49:16'),
(2, 'How it works', '<p>dfsfdfdfdfdfsfdsfdfd</p>', 'bfdjbfdf', 'dfvsdfvsdnf', 'dfsdfvsdfvdshfv', 'shgdsdhgas', 'dsrededffdfdfdsfsff', '2020-03-02 11:05:57', '2020-03-02 05:35:38'),
(3, 'Signup Referral & Bonus', '<p><strong>Signup And Get 500GDB Coins</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>', '<p><strong>Signup And Get 500GDB Coins</strong></p>\r\n\r\n<p>sdsdsd ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>', '<p>Signup And Get 500GDB Coins</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>', '<p>this is descrption 4</p>', '<p>this is description 5</p>', 'dfdhf', '2020-03-02 12:17:59', '2020-03-02 06:47:59');

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
  `benefit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_coins_price` int(180) DEFAULT NULL,
  `extra_coin` int(11) NOT NULL,
  `original_price` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_recommended` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `membership_packages`
--

INSERT INTO `membership_packages` (`id`, `name`, `validity`, `price_per_month`, `benefit`, `discount_coins_price`, `extra_coin`, `original_price`, `price`, `is_recommended`, `created_at`, `updated_at`) VALUES
(15, '1000/Month', '1', '1000', '10', 10, 10, '1000.00', '1000.00', 0, '2020-02-26 13:46:02', '2020-03-16 13:05:40'),
(16, '8000/Monthl', '3', '800', '10', 10, 20, '3000.00', '2400.00', 0, '2020-02-26 13:47:40', '2020-03-16 13:09:40'),
(17, '600/Months', '6', '1000', '3600', 10, 12, '6000.00', '600.00', 0, '2020-02-27 13:47:43', '2020-02-28 06:10:20'),
(18, 'dskufg', '10', '12', '410', 45, 125, '15.00', '15.00', 1, '2020-03-16 13:01:42', '2020-03-16 13:01:42');

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

--
-- Dumping data for table `normal_coin_packs`
--

INSERT INTO `normal_coin_packs` (`id`, `pack_category`, `package_name`, `package_price`, `price_after_discount`, `p_member_pay`, `value_coins`, `extra_coins`, `total_coins`, `p_member_extra_coins`, `you_can_save`, `pay_now`, `created_at`, `updated_at`) VALUES
(1, '1', 'Tester', '150', '150', '150', '300', '300', '1200', '90', '0', NULL, NULL, NULL),
(2, '2', 'Starter', '250', '240', '216', '500', '700', '1200', '180', '4', NULL, NULL, NULL),
(3, '1', 'Basic', '500', '480', '432', '1200', '1800', '3000', '450', '14', NULL, NULL, NULL),
(4, '1', 'Silver', '1000', '949', '846', '2000', '5500', '7500', '1125', '6', NULL, NULL, NULL),
(5, '1', 'Gold', '2500', '2300', '2070', '5000', '12000', '19000', '2850', '8', NULL, NULL, NULL),
(6, '1', 'Value', '5000', '4500', '4050', '12000', '25200', '372000', '5580', '10', NULL, NULL, NULL),
(7, '1', 'Super Value', '10000', '9000', '81000', '25000', '55000', '80000', '12000', '10', NULL, NULL, NULL),
(8, '1', 'Gainer', '20000', '17600', '15840', '52000', '114400', '166400', '24960', '10', NULL, NULL, NULL),
(9, '1', 'Super Gainer', '30000', '26400', '23760', '80000', '17600', '256000', '38400', '12', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `notification_category_id` int(11) DEFAULT NULL,
  `notification_sub_category_id` int(11) DEFAULT NULL,
  `dashboard_notification` text DEFAULT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `email_description` text DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1=default,2=segmented',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notification_category_id`, `notification_sub_category_id`, `dashboard_notification`, `email_subject`, `email_description`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '<p><b>Hi thank</b>s {user_name}</p>', 'For Welcome Message', '<p><b>Email Description</b></p>', 1, '2020-02-28 12:02:49', '2020-02-28 12:02:49');

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
(1, 10, 76104, '2020-01-20 12:35:32', '2020-01-20 12:35:32');

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

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `coins`, `price`, `expire`, `created_at`, `updated_at`) VALUES
(1, 'Daily', '100', '100', '1', '2020-01-07 04:28:09', '2020-01-07 04:28:09'),
(2, 'Weekly', '1000', '700', '7', '2020-01-07 04:28:09', '2020-01-07 04:28:09'),
(3, 'Monthly', '4000', '1500', '30', '2020-01-07 04:28:09', '2020-01-07 04:28:09'),
(4, 'Quarterly', '16000', '4000', '120', '2020-01-07 04:28:09', '2020-01-07 04:28:09'),
(5, 'Yearly', '48000', '800', '365', '2020-01-07 04:28:09', '2020-01-07 04:28:09');

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
  `id` int(11) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `identify` varchar(180) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `slug`, `identify`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'can_view_coin_gift', 'Coin Gift', 'Can View Coin Gift', NULL, '2020-03-18 09:31:11', '2020-03-13 18:30:00'),
(2, 'can_search_user_coin_gift', 'Coin Gift', 'Can Seach User Coin Gift ', NULL, '2020-03-18 09:31:17', '2020-03-13 18:30:00'),
(3, 'can_send_coin_coin_gift', 'Coin Gift', 'Can Send Coin Coin Gift', NULL, '2020-03-18 09:31:20', '0000-00-00 00:00:00'),
(4, 'can_transaction_filter_coin_gift', 'Coin Gift', 'Can Transaction  Filter Coin Gift', NULL, '2020-03-18 09:31:24', '2020-03-13 18:30:00'),
(5, 'can_transaction_search_coin_gift', 'Coin Gift', 'Can Transaction Search Coin Gift', NULL, '2020-03-18 09:31:28', '2020-03-13 18:30:00'),
(6, 'can_transaction_export_coin_gift', 'Coin Gift', 'Can Transaction Export Coin Gift', NULL, '2020-03-18 09:31:31', '2020-03-13 18:30:00'),
(7, 'can_view_coin_deduct', 'Coin Deduct', 'Can View Coin Deduct', NULL, '2020-03-18 09:31:45', '2020-03-13 18:30:00'),
(8, 'can_search_user_coin_deduct', 'Coin Deduct', 'Can Search User Coin Deduct', NULL, '2020-03-18 09:31:48', '2020-03-13 18:30:00'),
(9, 'can_send_coin_coin_deduct', 'Coin Deduct', 'Can Send Coin Deduct', NULL, '2020-03-18 09:31:51', '2020-03-13 18:30:00'),
(10, 'can_transaction_filter_coin_deduct', 'Coin Deduct', 'Can Transaction  Filter Coin Deduct	', NULL, '2020-03-18 09:31:55', '2020-03-13 18:30:00'),
(11, 'can_transaction_search_coin_deduct', 'Coin Deduct', 'Can Transaction Search Coin Deduct', NULL, '2020-03-18 09:31:59', '2020-03-13 18:30:00'),
(12, 'can_transaction_export_coin_deduct', 'Coin Deduct', 'Can Transaction Export Coin Deduct ', NULL, '2020-03-18 09:32:02', '2020-03-13 18:30:00'),
(13, 'can_view_all_sub_admin', 'SubAdmin', 'Can View All SubAdmin', NULL, '2020-03-19 05:05:37', '2020-03-18 18:30:00'),
(14, 'can_view_sub_admin', 'SubAdmin', 'Can View SubAdmin', NULL, '2020-03-19 05:09:17', '2020-03-17 18:30:00'),
(15, 'can_delete_sub_admin', 'SubAdmin', 'Can Delete SubAdmin', NULL, '2020-03-19 04:58:51', '2020-03-17 18:30:00'),
(16, 'can_add_sub_admin', 'SubAdmin', 'Can Add SubAdmin', NULL, '2020-03-17 18:30:00', '2020-03-17 18:30:00'),
(17, 'can_permission_sub_admin', 'SubAdmin', 'Can Permission SubAdmin', NULL, '2020-03-17 18:30:00', '2020-03-17 18:30:00'),
(18, 'can_edit_sub_admin', 'SubAdmin', 'Can Edit SubAdmin', NULL, '2020-03-19 05:08:20', '2020-03-17 18:30:00'),
(19, 'can_view_all_all_member', 'All Member', 'Can View All Member', NULL, '2020-03-19 08:24:16', '0000-00-00 00:00:00'),
(20, 'can_view_all_basic_member', 'Baisc Member\r\n', 'Can View Basic Member', NULL, '2020-03-20 09:11:51', '0000-00-00 00:00:00'),
(21, 'can_view_all_advance_member', 'Advance Member\r\n', 'Can View Advance Member', NULL, '2020-03-20 09:12:16', '0000-00-00 00:00:00'),
(22, 'can_view_all_premium_member', 'Premium Member\r\n', 'Can View Premium Member', NULL, '2020-03-20 09:12:26', '0000-00-00 00:00:00'),
(23, 'can_view_all_premium_plus_member', 'Premium+ Member\r\n\r\n', 'Can View Premium + Member', NULL, '2020-03-20 12:05:20', '0000-00-00 00:00:00'),
(24, 'can_view_all_suspended_member', 'Suspended Member\r\n', 'Can View Suspended Member', NULL, '2020-03-20 09:13:25', '0000-00-00 00:00:00'),
(25, 'can_view_all_deleted_member', 'Deleted Member\r\n\r\n', 'Can View All Deleted Member', NULL, '2020-03-20 09:13:33', '0000-00-00 00:00:00'),
(26, 'can_search_any_member_all_member', 'All Member', 'Can Seach AnyMember  All Member', NULL, '2020-03-20 10:19:05', '0000-00-00 00:00:00'),
(27, 'can_search_any_member_basic_member', 'Baisc Member\r\n', 'Can Seach AnyMember  Basic Member', NULL, '2020-03-20 10:22:08', '0000-00-00 00:00:00'),
(28, 'can_search_any_member_advance_member', 'Advance Member\r\n', 'Can Seach AnyMember  Advance Member', NULL, '2020-03-20 10:23:15', '0000-00-00 00:00:00'),
(29, 'can_search_any_member_premium_member', 'Premium Member\r\n', 'Can Seach AnyMember  Premium Member', NULL, '2020-03-20 10:23:24', '0000-00-00 00:00:00'),
(30, 'can_search_any_member_premium_plus_member', 'Premium+ Member\r\n', 'Can Seach AnyMember  Premium+ Member', NULL, '2020-03-20 12:05:17', '0000-00-00 00:00:00'),
(31, 'can_search_any_member_suspended_member', 'Suspended Member\r\n', 'Can Seach AnyMember  Suspended Member', NULL, '2020-03-20 10:25:19', '0000-00-00 00:00:00'),
(32, 'can_search_any_member_deleted_member', 'Deleted Member\r\n\r\n', 'Can Seach AnyMember  Deleted Member', NULL, '2020-03-20 10:26:38', '0000-00-00 00:00:00'),
(33, NULL, NULL, NULL, NULL, '2020-03-20 10:25:31', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `play_auctions`
--

CREATE TABLE `play_auctions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `auction_id` bigint(20) UNSIGNED NOT NULL,
  `autobid_reserve_amount` decimal(10,2) DEFAULT 0.00,
  `auto_bid_start` tinyint(1) DEFAULT 0,
  `delay` enum('1','2','3','4','0.9') DEFAULT NULL,
  `is_winner` tinyint(1) DEFAULT 0,
  `is_closed` tinyint(1) DEFAULT 0,
  `auction_fee` decimal(10,2) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `block_user_when` int(11) NOT NULL DEFAULT 0,
  `return_coins` int(11) NOT NULL DEFAULT 0,
  `is_return_coin_checked` tinyint(1) NOT NULL DEFAULT 0,
  `whenBlock` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `play_auctions`
--

INSERT INTO `play_auctions` (`id`, `user_id`, `auction_id`, `autobid_reserve_amount`, `auto_bid_start`, `delay`, `is_winner`, `is_closed`, `auction_fee`, `is_active`, `block_user_when`, `return_coins`, `is_return_coin_checked`, `whenBlock`, `created_at`, `updated_at`) VALUES
(1, 35, 1, '0.00', 0, NULL, 0, 1, '20.00', 1, 3, 3320, 1, '136.00', '2020-02-26', '2020-03-02 18:30:58'),
(2, 36, 1, '0.00', 0, NULL, 0, 1, '20.00', 1, 1, 3280, 1, '90.00', '2020-02-26', '2020-03-02 15:34:29'),
(3, 43, 1, '0.00', 0, NULL, 0, 1, '20.00', 1, 3, 3460, 1, '100.00', '2020-02-27', '2020-03-02 18:30:53'),
(4, 39, 1, '0.00', 0, NULL, 0, 1, '20.00', 1, 1, 100, 0, '110.00', '2020-02-27', '2020-03-04 19:16:00'),
(5, 40, 1, '0.00', 0, NULL, 1, 1, '20.00', 1, 3, 3560, 1, '100.00', '2020-02-27', '2020-03-02 18:30:45'),
(6, 41, 3, '0.00', 0, NULL, 0, 0, '15.00', 1, 0, 0, 0, '0.00', '2020-02-28', '2020-02-28 10:42:20'),
(7, 42, 3, '0.00', 0, NULL, 0, 0, '20.00', 1, 0, 0, 0, '0.00', '2020-02-28', '2020-02-28 11:11:28'),
(8, 39, 3, '0.00', 0, NULL, 0, 0, '20.00', 1, 0, 0, 0, '0.00', '2020-02-28', '2020-02-28 13:19:18'),
(9, 40, 3, '0.00', 0, NULL, 0, 0, '20.00', 1, 0, 0, 0, '0.00', '2020-02-28', '2020-02-28 13:19:19'),
(10, 43, 2, '0.00', 0, NULL, 0, 0, '15.00', 1, 0, 0, 0, '0.00', '2020-02-28', '2020-02-28 18:01:26'),
(11, 42, 2, '0.00', 0, NULL, 0, 0, '15.00', 1, 0, 0, 0, '0.00', '2020-02-28', '2020-02-28 18:03:17'),
(12, 35, 4, '0.00', 0, NULL, 0, 0, '15.00', 1, 0, 0, 0, '0.00', '2020-03-02', '2020-03-02 16:35:15'),
(13, 40, 4, '0.00', 0, NULL, 0, 0, '15.00', 1, 0, 0, 0, '0.00', '2020-03-04', '2020-03-02 16:35:19');

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
(1, 'Electronic', NULL, NULL),
(2, 'House Hold', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `refer_earns`
--

CREATE TABLE `refer_earns` (
  `id` int(11) NOT NULL,
  `title` varchar(180) DEFAULT NULL,
  `subtitle` varchar(280) DEFAULT NULL,
  `signup_bonus` longtext DEFAULT NULL,
  `purchase_bonus` longtext DEFAULT NULL,
  `winning_bonus` longtext DEFAULT NULL,
  `invite_friend` longtext DEFAULT NULL,
  `free_join` longtext DEFAULT NULL,
  `purchase_coin` longtext DEFAULT NULL,
  `win_auction` longtext DEFAULT NULL,
  `terms_condition` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `refer_earns`
--

INSERT INTO `refer_earns` (`id`, `title`, `subtitle`, `signup_bonus`, `purchase_bonus`, `winning_bonus`, `invite_friend`, `free_join`, `purchase_coin`, `win_auction`, `terms_condition`, `created_at`, `updated_at`) VALUES
(1, 's', 'fdfdfdfdf', '<p>fg</p>', '<p>g</p>', '<p>sdss</p>', '<p>asadasas</p>', '<p>asaSASAS</p>', '<p>aSAsaS</p>', '<p>&nbsp;</p>\r\n\r\n<p>Winning Description</p>\r\n\r\n<p><a href=\"javascript:void(\'Cut\')\" onclick=\"CKEDITOR.tools.callFunction(556,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Copy\')\" onclick=\"CKEDITOR.tools.callFunction(559,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Paste\')\" onclick=\"CKEDITOR.tools.callFunction(562,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Paste as plain text\')\" onclick=\"CKEDITOR.tools.callFunction(565,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Paste from Word\')\" onclick=\"CKEDITOR.tools.callFunction(568,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Undo\')\" onclick=\"CKEDITOR.tools.callFunction(571,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Redo\')\" onclick=\"CKEDITOR.tools.callFunction(574,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Spell Checker\')\" onclick=\"CKEDITOR.tools.callFunction(577,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Link\')\" onclick=\"CKEDITOR.tools.callFunction(580,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Unlink\')\" onclick=\"CKEDITOR.tools.callFunction(583,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Anchor\')\" onclick=\"CKEDITOR.tools.callFunction(586,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Image\')\" onclick=\"CKEDITOR.tools.callFunction(589,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Table\')\" onclick=\"CKEDITOR.tools.callFunction(592,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Insert Horizontal Line\')\" onclick=\"CKEDITOR.tools.callFunction(595,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Insert Special Character\')\" onclick=\"CKEDITOR.tools.callFunction(598,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Maximise\')\" onclick=\"CKEDITOR.tools.callFunction(601,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Source\')\" onclick=\"CKEDITOR.tools.callFunction(604,this);return false;\">&nbsp;Source</a><a href=\"javascript:void(\'Bold\')\" onclick=\"CKEDITOR.tools.callFunction(607,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Italic\')\" onclick=\"CKEDITOR.tools.callFunction(610,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Strike Through\')\" onclick=\"CKEDITOR.tools.callFunction(613,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Remove Format\')\" onclick=\"CKEDITOR.tools.callFunction(616,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Insert/Remove Numbered List\')\" onclick=\"CKEDITOR.tools.callFunction(619,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Insert/Remove Bulleted List\')\" onclick=\"CKEDITOR.tools.callFunction(622,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Decrease Indent\')\" onclick=\"CKEDITOR.tools.callFunction(625,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Increase Indent\')\" onclick=\"CKEDITOR.tools.callFunction(628,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Block Quote\')\" onclick=\"CKEDITOR.tools.callFunction(631,this);return false;\">&nbsp;</a><a href=\"javascript:void(\'Formatting Styles\')\" onclick=\"CKEDITOR.tools.callFunction(632,this);return false;\">Styles</a><a href=\"javascript:void(\'Paragraph Format\')\" onclick=\"CKEDITOR.tools.callFunction(635,this);return false;\">Format</a><a href=\"javascript:void(\'About CKEditor 4\')\" onclick=\"CKEDITOR.tools.callFunction(640,this);return false;\">&nbsp;</a></p>', '<p>dfgdfgdf</p>', '2020-03-05 06:58:28', '2020-03-05 01:28:28');

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
(2, 'Admin', '2020-01-07 04:28:09', '2020-01-07 04:28:09'),
(3, 'Users', '2020-01-07 04:28:09', '2020-01-07 04:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `user` varchar(255) DEFAULT NULL,
  `otp` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`user`, `otp`) VALUES
('7', '913875'),
('7', '469660'),
('7', '410069'),
('7', '134650'),
('7', '581128'),
('7', '271960');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_coins` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money_recieved` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Customer Pay to Company',
  `total_money` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Company Earn total money',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `total_coins`, `money_recieved`, `total_money`, `created_at`, `updated_at`) VALUES
(1, '100000', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `name` varchar(180) DEFAULT NULL,
  `link` varchar(2800) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'https://www.facebook.com/campaign/landing.php?campaign_id=1653993517&extra_1=s%7Cc%7C318504235904%7Ce%7Cfacebook%20%27%7C&placement=&creative=318504235904&keyword=facebook%20%27&partner_id=googlesem&extra_2=campaignid%3D1653993517%26adgroupid%3D63066387003%26matchtype%3De%26network%3Dg%26source%3Dnotmobile%26search_or_content%3Ds%26device%3Dc%26devicemodel%3D%26adposition%3D%26target%3D%26targetid%3Dkwd-360705453827%26loc_physical_ms%3D9061812%26loc_interest_ms%3D%26feeditemid%3D%26param1%3D%26param2%3D&gclid=EAIaIQobChMI95mP2OaA6AIV16iWCh3otATWEAAYASAAEgLIsvD_BwE', '2020-03-04 12:18:39', '2020-03-04 06:48:39'),
(2, 'Google', 'www.google.com', '2020-03-04 11:20:37', NULL),
(3, 'Instagram', 'instagram.com', '2020-03-04 11:20:55', NULL),
(4, 'Youtube', 'asasas.com', '2020-03-04 11:39:13', NULL),
(5, 'Twitter', NULL, '2020-03-04 12:36:38', NULL);

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
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED DEFAULT NULL,
  `membership_package_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bid_coin` decimal(10,2) DEFAULT NULL,
  `real_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Debit/Credit',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `package_id`, `membership_package_id`, `user_id`, `name`, `desc`, `coins`, `bid_coin`, `real_amount`, `trans`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, 7, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-01-14 06:43:44', '2020-01-14 06:43:44'),
(7, NULL, NULL, 10, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-01-14 06:47:14', '2020-01-14 06:47:14'),
(8, NULL, NULL, 7, NULL, 'Referral bonus step 1', '500', NULL, NULL, 'CR', '2020-01-14 06:47:14', '2020-01-14 06:47:14'),
(9, NULL, NULL, 11, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-01-16 09:57:58', '2020-01-16 09:57:58'),
(10, NULL, NULL, 12, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-01-16 10:01:29', '2020-01-16 10:01:29'),
(11, NULL, NULL, 13, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-01-16 10:31:26', '2020-01-16 10:31:26'),
(12, NULL, NULL, 14, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-01-16 10:36:35', '2020-01-16 10:36:35'),
(13, NULL, NULL, 15, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-01-16 10:44:47', '2020-01-16 10:44:47'),
(14, NULL, NULL, 16, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-01-16 10:46:15', '2020-01-16 10:46:15'),
(15, NULL, NULL, 7, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '12.00', NULL, 'DR', '2020-01-17 09:54:41', '2020-01-17 09:54:41'),
(16, NULL, NULL, 7, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '12.00', NULL, 'DR', '2020-01-17 09:55:50', '2020-01-17 09:55:50'),
(17, NULL, NULL, 7, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '12.00', NULL, 'DR', '2020-01-17 09:58:04', '2020-01-17 09:58:04'),
(18, NULL, NULL, 17, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-01-17 13:12:12', '2020-01-17 13:12:12'),
(19, NULL, NULL, 18, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-01-17 13:21:55', '2020-01-17 13:21:55'),
(20, 1, NULL, 10, NULL, 'Buy Coin Package', NULL, NULL, '150.00', 'CR', '2020-01-21 08:27:39', '2020-01-21 08:27:39'),
(21, 1, NULL, 10, NULL, 'Buy Coin Package', NULL, NULL, '150.00', 'CR', '2020-01-21 08:28:18', '2020-01-21 08:28:18'),
(22, NULL, 4, 10, NULL, 'Membership Package', NULL, NULL, '6000.00', 'DR', '2020-01-21 10:30:29', '2020-01-21 10:30:29'),
(23, NULL, NULL, 10, NULL, 'Biding', '1220', NULL, NULL, 'DR', '2020-01-21 12:42:21', '2020-01-21 12:42:21'),
(24, NULL, NULL, 10, NULL, 'Biding', '620', NULL, NULL, 'DR', '2020-01-21 12:43:09', '2020-01-21 12:43:09'),
(25, NULL, NULL, 10, NULL, 'Biding', '20', NULL, NULL, 'DR', '2020-01-21 12:53:26', '2020-01-21 12:53:26'),
(26, NULL, NULL, 7, NULL, 'Biding', '999400', NULL, NULL, 'DR', '2020-01-21 12:54:09', '2020-01-21 12:54:09'),
(27, NULL, NULL, 10, NULL, 'Biding', '998800', NULL, NULL, 'DR', '2020-01-21 12:56:02', '2020-01-21 12:56:02'),
(28, NULL, NULL, 10, NULL, 'Biding', '998200', NULL, NULL, 'DR', '2020-01-21 12:56:15', '2020-01-21 12:56:15'),
(29, NULL, NULL, 10, NULL, 'Biding', '998190', NULL, NULL, 'DR', '2020-01-21 12:57:18', '2020-01-21 12:57:18'),
(30, NULL, NULL, 10, NULL, 'Biding', '998179.9999999999', NULL, NULL, 'DR', '2020-01-21 13:15:14', '2020-01-21 13:15:14'),
(31, NULL, NULL, 10, NULL, 'Biding', '998170.0000000001', NULL, NULL, 'DR', '2020-01-22 05:08:03', '2020-01-22 05:08:03'),
(32, NULL, NULL, 10, NULL, 'Biding', '998160', NULL, NULL, 'DR', '2020-01-22 05:08:25', '2020-01-22 05:08:25'),
(33, NULL, NULL, 10, NULL, 'Biding', '998150', NULL, NULL, 'DR', '2020-01-22 05:09:06', '2020-01-22 05:09:06'),
(34, NULL, NULL, 10, NULL, 'Biding', '998140', NULL, NULL, 'DR', '2020-01-22 05:10:01', '2020-01-22 05:10:01'),
(35, NULL, NULL, 10, NULL, 'Biding', '998129.9999999999', NULL, NULL, 'DR', '2020-01-22 13:46:21', '2020-01-22 13:46:21'),
(36, NULL, NULL, 10, NULL, 'Biding', '998120.0000000001', NULL, NULL, 'DR', '2020-01-22 13:47:26', '2020-01-22 13:47:26'),
(37, NULL, NULL, 10, NULL, 'Biding', '998110', NULL, NULL, 'DR', '2020-01-22 13:47:50', '2020-01-22 13:47:50'),
(38, NULL, NULL, 10, NULL, 'Biding', '998100', NULL, NULL, 'DR', '2020-01-22 13:49:23', '2020-01-22 13:49:23'),
(39, NULL, NULL, 10, NULL, 'Biding', '998090', NULL, NULL, 'DR', '2020-01-22 15:36:19', '2020-01-22 15:36:19'),
(40, NULL, NULL, 10, NULL, 'Biding', '998079.9999999999', NULL, NULL, 'DR', '2020-01-22 16:38:23', '2020-01-22 16:38:23'),
(41, NULL, NULL, 10, NULL, 'Biding', '998070.0000000001', NULL, NULL, 'DR', '2020-01-23 17:52:33', '2020-01-23 17:52:33'),
(42, NULL, NULL, 10, NULL, 'Biding', '998060', NULL, NULL, 'DR', '2020-01-23 17:53:41', '2020-01-23 17:53:41'),
(43, NULL, NULL, 10, NULL, 'Auto Biding', '1000', NULL, NULL, 'DR', '2020-01-29 13:11:51', '2020-01-29 13:11:51'),
(44, NULL, 1, 11, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 16:44:08', '2020-01-31 16:44:08'),
(45, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:19:51', '2020-01-31 18:19:51'),
(46, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:28:10', '2020-01-31 18:28:10'),
(47, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:28:14', '2020-01-31 18:28:14'),
(48, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:28:16', '2020-01-31 18:28:16'),
(49, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:28:20', '2020-01-31 18:28:20'),
(50, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:28:22', '2020-01-31 18:28:22'),
(51, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:29:59', '2020-01-31 18:29:59'),
(52, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:30:04', '2020-01-31 18:30:04'),
(53, NULL, 2, 12, NULL, 'Membership Package', NULL, NULL, '2400.00', 'DR', '2020-01-31 18:30:05', '2020-01-31 18:30:05'),
(54, NULL, 3, 12, NULL, 'Membership Package', NULL, NULL, '3600.00', 'DR', '2020-01-31 18:30:06', '2020-01-31 18:30:06'),
(55, NULL, 3, 12, NULL, 'Membership Package', NULL, NULL, '3600.00', 'DR', '2020-01-31 18:30:07', '2020-01-31 18:30:07'),
(56, NULL, 2, 12, NULL, 'Membership Package', NULL, NULL, '2400.00', 'DR', '2020-01-31 18:30:07', '2020-01-31 18:30:07'),
(57, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:30:08', '2020-01-31 18:30:08'),
(58, NULL, 4, 12, NULL, 'Membership Package', NULL, NULL, '6000.00', 'DR', '2020-01-31 18:30:09', '2020-01-31 18:30:09'),
(59, NULL, 3, 12, NULL, 'Membership Package', NULL, NULL, '3600.00', 'DR', '2020-01-31 18:30:13', '2020-01-31 18:30:13'),
(60, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:30:14', '2020-01-31 18:30:14'),
(61, NULL, 2, 12, NULL, 'Membership Package', NULL, NULL, '2400.00', 'DR', '2020-01-31 18:30:14', '2020-01-31 18:30:14'),
(62, NULL, 3, 12, NULL, 'Membership Package', NULL, NULL, '3600.00', 'DR', '2020-01-31 18:30:15', '2020-01-31 18:30:15'),
(63, NULL, 2, 12, NULL, 'Membership Package', NULL, NULL, '2400.00', 'DR', '2020-01-31 18:30:15', '2020-01-31 18:30:15'),
(64, NULL, 4, 12, NULL, 'Membership Package', NULL, NULL, '6000.00', 'DR', '2020-01-31 18:30:16', '2020-01-31 18:30:16'),
(65, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:30:20', '2020-01-31 18:30:20'),
(66, NULL, 2, 12, NULL, 'Membership Package', NULL, NULL, '2400.00', 'DR', '2020-01-31 18:30:20', '2020-01-31 18:30:20'),
(67, NULL, 3, 12, NULL, 'Membership Package', NULL, NULL, '3600.00', 'DR', '2020-01-31 18:30:21', '2020-01-31 18:30:21'),
(68, NULL, 4, 12, NULL, 'Membership Package', NULL, NULL, '6000.00', 'DR', '2020-01-31 18:30:21', '2020-01-31 18:30:21'),
(69, NULL, 3, 12, NULL, 'Membership Package', NULL, NULL, '3600.00', 'DR', '2020-01-31 18:30:22', '2020-01-31 18:30:22'),
(70, NULL, 3, 12, NULL, 'Membership Package', NULL, NULL, '3600.00', 'DR', '2020-01-31 18:30:23', '2020-01-31 18:30:23'),
(71, NULL, 3, 12, NULL, 'Membership Package', NULL, NULL, '3600.00', 'DR', '2020-01-31 18:30:23', '2020-01-31 18:30:23'),
(72, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:31:01', '2020-01-31 18:31:01'),
(73, NULL, 2, 12, NULL, 'Membership Package', NULL, NULL, '2400.00', 'DR', '2020-01-31 18:31:02', '2020-01-31 18:31:02'),
(74, NULL, 3, 12, NULL, 'Membership Package', NULL, NULL, '3600.00', 'DR', '2020-01-31 18:31:03', '2020-01-31 18:31:03'),
(75, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:31:34', '2020-01-31 18:31:34'),
(76, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:31:38', '2020-01-31 18:31:38'),
(77, NULL, 2, 12, NULL, 'Membership Package', NULL, NULL, '2400.00', 'DR', '2020-01-31 18:31:39', '2020-01-31 18:31:39'),
(78, NULL, 3, 12, NULL, 'Membership Package', NULL, NULL, '3600.00', 'DR', '2020-01-31 18:31:40', '2020-01-31 18:31:40'),
(79, NULL, 1, 12, NULL, 'Membership Package', NULL, NULL, '1000.00', 'DR', '2020-01-31 18:31:46', '2020-01-31 18:31:46'),
(80, NULL, NULL, 11, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '15.00', NULL, 'DR', '2020-02-03 10:18:52', '2020-02-03 10:18:52'),
(81, NULL, NULL, 11, NULL, 'Biding', '499300', NULL, NULL, 'DR', '2020-02-03 10:31:26', '2020-02-03 10:31:26'),
(82, NULL, NULL, 11, NULL, 'Biding', '499300', NULL, NULL, 'DR', '2020-02-03 10:32:17', '2020-02-03 10:32:17'),
(83, NULL, NULL, 10, NULL, 'Biding', '10.000000000000142', NULL, NULL, 'DR', '2020-02-03 12:02:48', '2020-02-03 12:02:48'),
(84, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:02:48', '2020-02-03 12:02:48'),
(85, NULL, NULL, 10, NULL, 'Biding', '10', NULL, NULL, 'DR', '2020-02-03 12:13:59', '2020-02-03 12:13:59'),
(86, NULL, NULL, 11, NULL, 'Biding', '700', NULL, NULL, 'DR', '2020-02-03 12:15:59', '2020-02-03 12:15:59'),
(87, NULL, NULL, 10, NULL, 'Biding', '10', NULL, NULL, 'DR', '2020-02-03 12:19:38', '2020-02-03 12:19:38'),
(88, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:28:38', '2020-02-03 12:28:38'),
(89, NULL, NULL, 7, NULL, 'Biding', '10', NULL, NULL, 'DR', '2020-02-03 12:28:38', '2020-02-03 12:28:38'),
(90, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:28:56', '2020-02-03 12:28:56'),
(91, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:28:57', '2020-02-03 12:28:57'),
(92, NULL, NULL, 10, NULL, 'Biding', '10', NULL, NULL, 'DR', '2020-02-03 12:29:23', '2020-02-03 12:29:23'),
(93, NULL, NULL, 7, NULL, 'Biding', '10', NULL, NULL, 'DR', '2020-02-03 12:29:23', '2020-02-03 12:29:23'),
(94, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:29:34', '2020-02-03 12:29:34'),
(95, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:29:35', '2020-02-03 12:29:35'),
(96, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:29:35', '2020-02-03 12:29:35'),
(97, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:29:36', '2020-02-03 12:29:36'),
(98, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:25', '2020-02-03 12:30:25'),
(99, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:25', '2020-02-03 12:30:25'),
(100, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:26', '2020-02-03 12:30:26'),
(101, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:27', '2020-02-03 12:30:27'),
(102, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:29', '2020-02-03 12:30:29'),
(103, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:29', '2020-02-03 12:30:29'),
(104, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:30', '2020-02-03 12:30:30'),
(105, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:31', '2020-02-03 12:30:31'),
(106, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:33', '2020-02-03 12:30:33'),
(107, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:33', '2020-02-03 12:30:33'),
(108, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:34', '2020-02-03 12:30:34'),
(109, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:36', '2020-02-03 12:30:36'),
(110, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:37', '2020-02-03 12:30:37'),
(111, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:37', '2020-02-03 12:30:37'),
(112, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:38', '2020-02-03 12:30:38'),
(113, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:40', '2020-02-03 12:30:40'),
(114, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:41', '2020-02-03 12:30:41'),
(115, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:41', '2020-02-03 12:30:41'),
(116, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:43', '2020-02-03 12:30:43'),
(117, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:44', '2020-02-03 12:30:44'),
(118, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:45', '2020-02-03 12:30:45'),
(119, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:45', '2020-02-03 12:30:45'),
(120, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:47', '2020-02-03 12:30:47'),
(121, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:48', '2020-02-03 12:30:48'),
(122, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:49', '2020-02-03 12:30:49'),
(123, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:50', '2020-02-03 12:30:50'),
(124, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:51', '2020-02-03 12:30:51'),
(125, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:52', '2020-02-03 12:30:52'),
(126, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:53', '2020-02-03 12:30:53'),
(127, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:55', '2020-02-03 12:30:55'),
(128, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:55', '2020-02-03 12:30:55'),
(129, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:56', '2020-02-03 12:30:56'),
(130, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:57', '2020-02-03 12:30:57'),
(131, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:59', '2020-02-03 12:30:59'),
(132, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:30:59', '2020-02-03 12:30:59'),
(133, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:31:00', '2020-02-03 12:31:00'),
(134, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:31:01', '2020-02-03 12:31:01'),
(135, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:31:03', '2020-02-03 12:31:03'),
(136, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:31:03', '2020-02-03 12:31:03'),
(137, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:31:04', '2020-02-03 12:31:04'),
(138, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:31:06', '2020-02-03 12:31:06'),
(139, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:31:07', '2020-02-03 12:31:07'),
(140, NULL, NULL, 7, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:31:07', '2020-02-03 12:31:07'),
(141, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:31:08', '2020-02-03 12:31:08'),
(142, NULL, NULL, 10, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-03 12:31:10', '2020-02-03 12:31:10'),
(143, NULL, NULL, 10, NULL, 'Biding', '10', NULL, NULL, 'DR', '2020-02-03 12:40:29', '2020-02-03 12:40:29'),
(144, NULL, NULL, 7, NULL, 'Biding', '20.000000000000004', NULL, NULL, 'DR', '2020-02-03 12:40:29', '2020-02-03 12:40:29'),
(145, NULL, NULL, 10, NULL, 'Biding', '20', NULL, NULL, 'DR', '2020-02-03 12:40:43', '2020-02-03 12:40:43'),
(146, NULL, NULL, 7, NULL, 'Biding', '20', NULL, NULL, 'DR', '2020-02-03 12:40:43', '2020-02-03 12:40:43'),
(147, NULL, NULL, 10, NULL, 'Biding', '19.999999999999996', NULL, NULL, 'DR', '2020-02-03 12:40:54', '2020-02-03 12:40:54'),
(148, NULL, NULL, 7, NULL, 'Biding', '19.999999999999996', NULL, NULL, 'DR', '2020-02-03 12:40:54', '2020-02-03 12:40:54'),
(149, NULL, NULL, 10, NULL, 'Biding', '19.999999999999996', NULL, NULL, 'DR', '2020-02-03 12:40:55', '2020-02-03 12:40:55'),
(150, NULL, NULL, 10, NULL, 'Biding', '9.999999999999998', NULL, NULL, 'DR', '2020-02-03 12:40:57', '2020-02-03 12:40:57'),
(151, NULL, NULL, 10, NULL, 'Biding', '9.999999999999998', NULL, NULL, 'DR', '2020-02-03 12:40:58', '2020-02-03 12:40:58'),
(152, NULL, NULL, 7, NULL, 'Biding', '40.000000000000014', NULL, NULL, 'DR', '2020-02-03 12:40:58', '2020-02-03 12:40:58'),
(153, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 12:41:00', '2020-02-03 12:41:00'),
(154, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:01', '2020-02-03 12:41:01'),
(155, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:02', '2020-02-03 12:41:02'),
(156, NULL, NULL, 7, NULL, 'Biding', '39.99999999999999', NULL, NULL, 'DR', '2020-02-03 12:41:03', '2020-02-03 12:41:03'),
(157, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 12:41:04', '2020-02-03 12:41:04'),
(158, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:05', '2020-02-03 12:41:05'),
(159, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:06', '2020-02-03 12:41:06'),
(160, NULL, NULL, 7, NULL, 'Biding', '40.000000000000014', NULL, NULL, 'DR', '2020-02-03 12:41:07', '2020-02-03 12:41:07'),
(161, NULL, NULL, 7, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:08', '2020-02-03 12:41:08'),
(162, NULL, NULL, 10, NULL, 'Biding', '30.000000000000004', NULL, NULL, 'DR', '2020-02-03 12:41:09', '2020-02-03 12:41:09'),
(163, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:11', '2020-02-03 12:41:11'),
(164, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:12', '2020-02-03 12:41:12'),
(165, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:13', '2020-02-03 12:41:13'),
(166, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:15', '2020-02-03 12:41:15'),
(167, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:16', '2020-02-03 12:41:16'),
(168, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:17', '2020-02-03 12:41:17'),
(169, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:19', '2020-02-03 12:41:19'),
(170, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:20', '2020-02-03 12:41:20'),
(171, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:21', '2020-02-03 12:41:21'),
(172, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:23', '2020-02-03 12:41:23'),
(173, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:24', '2020-02-03 12:41:24'),
(174, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:25', '2020-02-03 12:41:25'),
(175, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:27', '2020-02-03 12:41:27'),
(176, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:41:31', '2020-02-03 12:41:31'),
(177, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:44:03', '2020-02-03 12:44:03'),
(178, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:48:51', '2020-02-03 12:48:51'),
(179, NULL, NULL, 7, NULL, 'Biding', '180.00000000000003', NULL, NULL, 'DR', '2020-02-03 12:48:52', '2020-02-03 12:48:52'),
(180, NULL, NULL, 7, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 12:49:06', '2020-02-03 12:49:06'),
(181, NULL, NULL, 10, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-03 12:50:33', '2020-02-03 12:50:33'),
(182, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:06:26', '2020-02-03 13:06:26'),
(183, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:06:39', '2020-02-03 13:06:39'),
(184, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:06:54', '2020-02-03 13:06:54'),
(185, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:07:20', '2020-02-03 13:07:20'),
(186, NULL, NULL, 7, NULL, 'Biding', '60.00000000000001', NULL, NULL, 'DR', '2020-02-03 13:07:20', '2020-02-03 13:07:20'),
(187, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 13:09:26', '2020-02-03 13:09:26'),
(188, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:03', '2020-02-03 13:24:03'),
(189, NULL, NULL, 7, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-03 13:24:03', '2020-02-03 13:24:03'),
(190, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 13:24:15', '2020-02-03 13:24:15'),
(191, NULL, NULL, 7, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 13:24:15', '2020-02-03 13:24:15'),
(192, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 13:24:16', '2020-02-03 13:24:16'),
(193, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:18', '2020-02-03 13:24:18'),
(194, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:19', '2020-02-03 13:24:19'),
(195, NULL, NULL, 7, NULL, 'Biding', '39.99999999999994', NULL, NULL, 'DR', '2020-02-03 13:24:19', '2020-02-03 13:24:19'),
(196, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 13:24:20', '2020-02-03 13:24:20'),
(197, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:21', '2020-02-03 13:24:21'),
(198, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:23', '2020-02-03 13:24:23'),
(199, NULL, NULL, 7, NULL, 'Biding', '39.99999999999994', NULL, NULL, 'DR', '2020-02-03 13:24:23', '2020-02-03 13:24:23'),
(200, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 13:24:24', '2020-02-03 13:24:24'),
(201, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:25', '2020-02-03 13:24:25'),
(202, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:27', '2020-02-03 13:24:27'),
(203, NULL, NULL, 7, NULL, 'Biding', '39.99999999999994', NULL, NULL, 'DR', '2020-02-03 13:24:27', '2020-02-03 13:24:27'),
(204, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 13:24:28', '2020-02-03 13:24:28'),
(205, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:29', '2020-02-03 13:24:29'),
(206, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:30', '2020-02-03 13:24:30'),
(207, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:32', '2020-02-03 13:24:32'),
(208, NULL, NULL, 7, NULL, 'Biding', '49.999999999999915', NULL, NULL, 'DR', '2020-02-03 13:24:32', '2020-02-03 13:24:32'),
(209, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 13:24:33', '2020-02-03 13:24:33'),
(210, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:34', '2020-02-03 13:24:34'),
(211, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:35', '2020-02-03 13:24:35'),
(212, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:37', '2020-02-03 13:24:37'),
(213, NULL, NULL, 7, NULL, 'Biding', '49.999999999999915', NULL, NULL, 'DR', '2020-02-03 13:24:37', '2020-02-03 13:24:37'),
(214, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 13:24:38', '2020-02-03 13:24:38'),
(215, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:39', '2020-02-03 13:24:39'),
(216, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:40', '2020-02-03 13:24:40'),
(217, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:42', '2020-02-03 13:24:42'),
(218, NULL, NULL, 7, NULL, 'Biding', '49.999999999999915', NULL, NULL, 'DR', '2020-02-03 13:24:42', '2020-02-03 13:24:42'),
(219, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 13:24:43', '2020-02-03 13:24:43'),
(220, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:24:44', '2020-02-03 13:24:44'),
(221, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:26:49', '2020-02-03 13:26:49'),
(222, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:32:04', '2020-02-03 13:32:04'),
(223, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:33:10', '2020-02-03 13:33:10'),
(224, NULL, NULL, 7, NULL, 'Biding', '59.99999999999987', NULL, NULL, 'DR', '2020-02-03 13:33:11', '2020-02-03 13:33:11'),
(225, NULL, NULL, 7, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:35:12', '2020-02-03 13:35:12'),
(226, NULL, NULL, 10, NULL, 'Biding', '30.00000000000007', NULL, NULL, 'DR', '2020-02-03 13:42:09', '2020-02-03 13:42:09'),
(227, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 13:42:10', '2020-02-03 13:42:10'),
(228, NULL, NULL, 7, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:42:24', '2020-02-03 13:42:24'),
(229, NULL, NULL, 10, NULL, 'Biding', '29.999999999999893', NULL, NULL, 'DR', '2020-02-03 13:42:51', '2020-02-03 13:42:51'),
(230, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:43:01', '2020-02-03 13:43:01'),
(231, NULL, NULL, 7, NULL, 'Biding', '30.00000000000007', NULL, NULL, 'DR', '2020-02-03 13:43:01', '2020-02-03 13:43:01'),
(232, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 13:43:13', '2020-02-03 13:43:13'),
(233, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:43:47', '2020-02-03 13:43:47'),
(234, NULL, NULL, 7, NULL, 'Biding', '29.999999999999893', NULL, NULL, 'DR', '2020-02-03 13:43:47', '2020-02-03 13:43:47'),
(235, NULL, NULL, 10, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 13:45:00', '2020-02-03 13:45:00'),
(236, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 13:45:00', '2020-02-03 13:45:00'),
(237, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 13:45:17', '2020-02-03 13:45:17'),
(238, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 13:45:18', '2020-02-03 13:45:18'),
(239, NULL, NULL, 7, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:45:24', '2020-02-03 13:45:24'),
(240, NULL, NULL, 10, NULL, 'Biding', '30.00000000000007', NULL, NULL, 'DR', '2020-02-03 13:45:57', '2020-02-03 13:45:57'),
(241, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 13:45:57', '2020-02-03 13:45:57'),
(242, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 13:47:04', '2020-02-03 13:47:04'),
(243, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 13:47:04', '2020-02-03 13:47:04'),
(244, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 13:47:47', '2020-02-03 13:47:47'),
(245, NULL, NULL, 7, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 13:47:47', '2020-02-03 13:47:47'),
(246, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 13:50:26', '2020-02-03 13:50:26'),
(247, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 13:51:56', '2020-02-03 13:51:56'),
(248, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 15:24:32', '2020-02-03 15:24:32'),
(249, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 15:26:13', '2020-02-03 15:26:13'),
(250, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 15:28:07', '2020-02-03 15:28:07'),
(251, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 15:31:29', '2020-02-03 15:31:29'),
(252, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 15:37:43', '2020-02-03 15:37:43'),
(253, NULL, NULL, 7, NULL, 'Biding', '79.99999999999989', NULL, NULL, 'DR', '2020-02-03 15:37:43', '2020-02-03 15:37:43'),
(254, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 15:38:00', '2020-02-03 15:38:00'),
(255, NULL, NULL, 7, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 15:38:00', '2020-02-03 15:38:00'),
(256, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 15:43:56', '2020-02-03 15:43:56'),
(257, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 15:43:57', '2020-02-03 15:43:57'),
(258, NULL, NULL, 10, NULL, 'Biding', '10', NULL, NULL, 'DR', '2020-02-03 16:12:13', '2020-02-03 16:12:13'),
(259, NULL, NULL, 7, NULL, 'Biding', '20', NULL, NULL, 'DR', '2020-02-03 16:12:13', '2020-02-03 16:12:13'),
(260, NULL, NULL, 10, NULL, 'Biding', '20.000000000000004', NULL, NULL, 'DR', '2020-02-03 16:12:58', '2020-02-03 16:12:58'),
(261, NULL, NULL, 7, NULL, 'Biding', '20', NULL, NULL, 'DR', '2020-02-03 16:12:58', '2020-02-03 16:12:58'),
(262, NULL, NULL, 7, NULL, 'Biding', '9.999999999999998', NULL, NULL, 'DR', '2020-02-03 16:14:35', '2020-02-03 16:14:35'),
(263, NULL, NULL, 10, NULL, 'Biding', '30', NULL, NULL, 'DR', '2020-02-03 16:14:48', '2020-02-03 16:14:48'),
(264, NULL, NULL, 7, NULL, 'Biding', '19.999999999999996', NULL, NULL, 'DR', '2020-02-03 16:14:49', '2020-02-03 16:14:49'),
(265, NULL, NULL, 7, NULL, 'Biding', '9.999999999999998', NULL, NULL, 'DR', '2020-02-03 16:15:25', '2020-02-03 16:15:25'),
(266, NULL, NULL, 10, NULL, 'Biding', '30.000000000000004', NULL, NULL, 'DR', '2020-02-03 16:16:21', '2020-02-03 16:16:21'),
(267, NULL, NULL, 7, NULL, 'Biding', '19.999999999999996', NULL, NULL, 'DR', '2020-02-03 16:16:21', '2020-02-03 16:16:21'),
(268, NULL, NULL, 10, NULL, 'Biding', '20.000000000000007', NULL, NULL, 'DR', '2020-02-03 16:16:24', '2020-02-03 16:16:24'),
(269, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 16:16:26', '2020-02-03 16:16:26'),
(270, NULL, NULL, 7, NULL, 'Biding', '30.000000000000004', NULL, NULL, 'DR', '2020-02-03 16:16:27', '2020-02-03 16:16:27'),
(271, NULL, NULL, 7, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 16:16:28', '2020-02-03 16:16:28'),
(272, NULL, NULL, 10, NULL, 'Biding', '30.000000000000004', NULL, NULL, 'DR', '2020-02-03 16:16:29', '2020-02-03 16:16:29'),
(273, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 16:40:21', '2020-02-03 16:40:21'),
(274, NULL, NULL, 7, NULL, 'Biding', '30.00000000000003', NULL, NULL, 'DR', '2020-02-03 16:40:22', '2020-02-03 16:40:22'),
(275, NULL, NULL, 7, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 16:40:36', '2020-02-03 16:40:36'),
(276, NULL, NULL, 10, NULL, 'Biding', '30.000000000000004', NULL, NULL, 'DR', '2020-02-03 16:41:37', '2020-02-03 16:41:37'),
(277, NULL, NULL, 7, NULL, 'Biding', '19.999999999999996', NULL, NULL, 'DR', '2020-02-03 16:41:37', '2020-02-03 16:41:37'),
(278, NULL, NULL, 7, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 17:08:45', '2020-02-03 17:08:45'),
(279, NULL, NULL, 10, NULL, 'Biding', '30.00000000000003', NULL, NULL, 'DR', '2020-02-03 17:08:46', '2020-02-03 17:08:46'),
(280, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 17:08:47', '2020-02-03 17:08:47'),
(281, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 17:08:48', '2020-02-03 17:08:48'),
(282, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 17:08:49', '2020-02-03 17:08:49'),
(283, NULL, NULL, 7, NULL, 'Biding', '50', NULL, NULL, 'DR', '2020-02-03 17:08:50', '2020-02-03 17:08:50'),
(284, NULL, NULL, 7, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 17:08:50', '2020-02-03 17:08:50'),
(285, NULL, NULL, 7, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 17:08:52', '2020-02-03 17:08:52'),
(286, NULL, NULL, 10, NULL, 'Biding', '39.99999999999999', NULL, NULL, 'DR', '2020-02-03 17:08:53', '2020-02-03 17:08:53'),
(287, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 17:08:55', '2020-02-03 17:08:55'),
(288, NULL, NULL, 10, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 17:11:18', '2020-02-03 17:11:18'),
(289, NULL, NULL, 7, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-03 17:11:19', '2020-02-03 17:11:19'),
(290, NULL, NULL, 7, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 17:12:54', '2020-02-03 17:12:54'),
(291, NULL, NULL, 10, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-03 17:14:22', '2020-02-03 17:14:22'),
(292, NULL, NULL, 7, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:14:23', '2020-02-03 17:14:23'),
(293, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:14:47', '2020-02-03 17:14:47'),
(294, NULL, NULL, 7, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:14:47', '2020-02-03 17:14:47'),
(295, NULL, NULL, 7, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-03 17:15:22', '2020-02-03 17:15:22'),
(296, NULL, NULL, 10, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-03 17:16:49', '2020-02-03 17:16:49'),
(297, NULL, NULL, 7, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:16:49', '2020-02-03 17:16:49'),
(298, NULL, NULL, 10, NULL, 'Biding', '19.99999999999997', NULL, NULL, 'DR', '2020-02-03 17:16:59', '2020-02-03 17:16:59'),
(299, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:17:00', '2020-02-03 17:17:00'),
(300, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:17:14', '2020-02-03 17:17:14'),
(301, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:17:15', '2020-02-03 17:17:15'),
(302, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:28:12', '2020-02-03 17:28:12'),
(303, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:28:12', '2020-02-03 17:28:12'),
(304, NULL, NULL, 7, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 17:28:58', '2020-02-03 17:28:58'),
(305, NULL, NULL, 10, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-03 17:29:02', '2020-02-03 17:29:02'),
(306, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:29:03', '2020-02-03 17:29:03'),
(307, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:29:04', '2020-02-03 17:29:04'),
(308, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:29:07', '2020-02-03 17:29:07'),
(309, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:29:07', '2020-02-03 17:29:07'),
(310, NULL, NULL, 7, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:29:11', '2020-02-03 17:29:11'),
(311, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:29:11', '2020-02-03 17:29:11'),
(312, NULL, NULL, 10, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-03 17:31:51', '2020-02-03 17:31:51'),
(313, NULL, NULL, 7, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-03 17:31:52', '2020-02-03 17:31:52'),
(314, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:33:05', '2020-02-03 17:33:05'),
(315, NULL, NULL, 7, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:33:05', '2020-02-03 17:33:05'),
(316, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:33:14', '2020-02-03 17:33:14'),
(317, NULL, NULL, 7, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:33:15', '2020-02-03 17:33:15'),
(318, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:33:33', '2020-02-03 17:33:33'),
(319, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:33:34', '2020-02-03 17:33:34'),
(320, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:33:49', '2020-02-03 17:33:49'),
(321, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:33:50', '2020-02-03 17:33:50'),
(322, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:33:51', '2020-02-03 17:33:51'),
(323, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:33:54', '2020-02-03 17:33:54'),
(324, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:33:56', '2020-02-03 17:33:56'),
(325, NULL, NULL, 7, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:33:58', '2020-02-03 17:33:58'),
(326, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:00', '2020-02-03 17:34:00'),
(327, NULL, NULL, 7, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:34:18', '2020-02-03 17:34:18'),
(328, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:19', '2020-02-03 17:34:19'),
(329, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:22', '2020-02-03 17:34:22'),
(330, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:34:24', '2020-02-03 17:34:24'),
(331, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:26', '2020-02-03 17:34:26'),
(332, NULL, NULL, 10, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:34:28', '2020-02-03 17:34:28'),
(333, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:30', '2020-02-03 17:34:30'),
(334, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:31', '2020-02-03 17:34:31'),
(335, NULL, NULL, 7, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:34:34', '2020-02-03 17:34:34'),
(336, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:35', '2020-02-03 17:34:35'),
(337, NULL, NULL, 7, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-03 17:34:38', '2020-02-03 17:34:38'),
(338, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:39', '2020-02-03 17:34:39'),
(339, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:42', '2020-02-03 17:34:42'),
(340, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:43', '2020-02-03 17:34:43'),
(341, NULL, NULL, 7, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:34:46', '2020-02-03 17:34:46'),
(342, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:48', '2020-02-03 17:34:48'),
(343, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:50', '2020-02-03 17:34:50'),
(344, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:52', '2020-02-03 17:34:52'),
(345, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:54', '2020-02-03 17:34:54'),
(346, NULL, NULL, 10, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:34:55', '2020-02-03 17:34:55'),
(347, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:58', '2020-02-03 17:34:58'),
(348, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:34:59', '2020-02-03 17:34:59'),
(349, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:02', '2020-02-03 17:35:02'),
(350, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:03', '2020-02-03 17:35:03'),
(351, NULL, NULL, 7, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:35:06', '2020-02-03 17:35:06'),
(352, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:07', '2020-02-03 17:35:07'),
(353, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:11', '2020-02-03 17:35:11'),
(354, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:12', '2020-02-03 17:35:12'),
(355, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:15', '2020-02-03 17:35:15'),
(356, NULL, NULL, 10, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:35:17', '2020-02-03 17:35:17'),
(357, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:19', '2020-02-03 17:35:19'),
(358, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:21', '2020-02-03 17:35:21'),
(359, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:23', '2020-02-03 17:35:23'),
(360, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:25', '2020-02-03 17:35:25'),
(361, NULL, NULL, 7, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:35:27', '2020-02-03 17:35:27'),
(362, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:28', '2020-02-03 17:35:28'),
(363, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:31', '2020-02-03 17:35:31'),
(364, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:32', '2020-02-03 17:35:32'),
(365, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:35', '2020-02-03 17:35:35'),
(366, NULL, NULL, 10, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:35:36', '2020-02-03 17:35:36'),
(367, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:39', '2020-02-03 17:35:39'),
(368, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:40', '2020-02-03 17:35:40'),
(369, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:43', '2020-02-03 17:35:43'),
(370, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:45', '2020-02-03 17:35:45'),
(371, NULL, NULL, 7, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:35:47', '2020-02-03 17:35:47'),
(372, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:49', '2020-02-03 17:35:49'),
(373, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:51', '2020-02-03 17:35:51'),
(374, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:52', '2020-02-03 17:35:52'),
(375, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:55', '2020-02-03 17:35:55'),
(376, NULL, NULL, 10, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:35:56', '2020-02-03 17:35:56'),
(377, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:35:59', '2020-02-03 17:35:59'),
(378, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:00', '2020-02-03 17:36:00'),
(379, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:03', '2020-02-03 17:36:03'),
(380, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:05', '2020-02-03 17:36:05'),
(381, NULL, NULL, 7, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:36:07', '2020-02-03 17:36:07'),
(382, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:09', '2020-02-03 17:36:09'),
(383, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:11', '2020-02-03 17:36:11'),
(384, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:12', '2020-02-03 17:36:12'),
(385, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:15', '2020-02-03 17:36:15'),
(386, NULL, NULL, 10, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:36:16', '2020-02-03 17:36:16'),
(387, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:19', '2020-02-03 17:36:19'),
(388, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:20', '2020-02-03 17:36:20'),
(389, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:23', '2020-02-03 17:36:23'),
(390, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:25', '2020-02-03 17:36:25'),
(391, NULL, NULL, 7, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:36:27', '2020-02-03 17:36:27'),
(392, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:29', '2020-02-03 17:36:29'),
(393, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:31', '2020-02-03 17:36:31'),
(394, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:32', '2020-02-03 17:36:32'),
(395, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:35', '2020-02-03 17:36:35'),
(396, NULL, NULL, 10, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:36:36', '2020-02-03 17:36:36'),
(397, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:39', '2020-02-03 17:36:39'),
(398, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:40', '2020-02-03 17:36:40'),
(399, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:43', '2020-02-03 17:36:43'),
(400, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:44', '2020-02-03 17:36:44'),
(401, NULL, NULL, 7, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:36:47', '2020-02-03 17:36:47'),
(402, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:49', '2020-02-03 17:36:49'),
(403, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:51', '2020-02-03 17:36:51'),
(404, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:53', '2020-02-03 17:36:53'),
(405, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:55', '2020-02-03 17:36:55'),
(406, NULL, NULL, 10, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:36:56', '2020-02-03 17:36:56'),
(407, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:36:59', '2020-02-03 17:36:59'),
(408, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:00', '2020-02-03 17:37:00'),
(409, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:03', '2020-02-03 17:37:03'),
(410, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:05', '2020-02-03 17:37:05'),
(411, NULL, NULL, 7, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:37:07', '2020-02-03 17:37:07'),
(412, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:09', '2020-02-03 17:37:09'),
(413, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:11', '2020-02-03 17:37:11'),
(414, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:12', '2020-02-03 17:37:12'),
(415, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:15', '2020-02-03 17:37:15'),
(416, NULL, NULL, 10, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:37:16', '2020-02-03 17:37:16'),
(417, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:19', '2020-02-03 17:37:19'),
(418, NULL, NULL, 10, NULL, 'Biding', '20.000000000000107', NULL, NULL, 'DR', '2020-02-03 17:37:20', '2020-02-03 17:37:20'),
(419, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:37:23', '2020-02-03 17:37:23'),
(420, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:25', '2020-02-03 17:37:25'),
(421, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:37:27', '2020-02-03 17:37:27'),
(422, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:28', '2020-02-03 17:37:28'),
(423, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:37:31', '2020-02-03 17:37:31'),
(424, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:37:32', '2020-02-03 17:37:32');
INSERT INTO `transactions` (`id`, `package_id`, `membership_package_id`, `user_id`, `name`, `desc`, `coins`, `bid_coin`, `real_amount`, `trans`, `created_at`, `updated_at`) VALUES
(425, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:35', '2020-02-03 17:37:35'),
(426, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:37:36', '2020-02-03 17:37:36'),
(427, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:39', '2020-02-03 17:37:39'),
(428, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:37:41', '2020-02-03 17:37:41'),
(429, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:37:43', '2020-02-03 17:37:43'),
(430, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:45', '2020-02-03 17:37:45'),
(431, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:37:47', '2020-02-03 17:37:47'),
(432, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:48', '2020-02-03 17:37:48'),
(433, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:37:51', '2020-02-03 17:37:51'),
(434, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:37:52', '2020-02-03 17:37:52'),
(435, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:55', '2020-02-03 17:37:55'),
(436, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:37:56', '2020-02-03 17:37:56'),
(437, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:37:59', '2020-02-03 17:37:59'),
(438, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:01', '2020-02-03 17:38:01'),
(439, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:03', '2020-02-03 17:38:03'),
(440, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:38:05', '2020-02-03 17:38:05'),
(441, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:07', '2020-02-03 17:38:07'),
(442, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:38:08', '2020-02-03 17:38:08'),
(443, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:11', '2020-02-03 17:38:11'),
(444, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:12', '2020-02-03 17:38:12'),
(445, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:38:15', '2020-02-03 17:38:15'),
(446, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:16', '2020-02-03 17:38:16'),
(447, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:38:19', '2020-02-03 17:38:19'),
(448, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:20', '2020-02-03 17:38:20'),
(449, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:23', '2020-02-03 17:38:23'),
(450, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:38:25', '2020-02-03 17:38:25'),
(451, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:27', '2020-02-03 17:38:27'),
(452, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:38:29', '2020-02-03 17:38:29'),
(453, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:31', '2020-02-03 17:38:31'),
(454, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:32', '2020-02-03 17:38:32'),
(455, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:38:35', '2020-02-03 17:38:35'),
(456, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:36', '2020-02-03 17:38:36'),
(457, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:38:39', '2020-02-03 17:38:39'),
(458, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:40', '2020-02-03 17:38:40'),
(459, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:43', '2020-02-03 17:38:43'),
(460, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:38:45', '2020-02-03 17:38:45'),
(461, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:47', '2020-02-03 17:38:47'),
(462, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:38:49', '2020-02-03 17:38:49'),
(463, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:51', '2020-02-03 17:38:51'),
(464, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:52', '2020-02-03 17:38:52'),
(465, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:38:55', '2020-02-03 17:38:55'),
(466, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:38:56', '2020-02-03 17:38:56'),
(467, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:38:59', '2020-02-03 17:38:59'),
(468, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:00', '2020-02-03 17:39:00'),
(469, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:03', '2020-02-03 17:39:03'),
(470, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:39:04', '2020-02-03 17:39:04'),
(471, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:07', '2020-02-03 17:39:07'),
(472, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:39:08', '2020-02-03 17:39:08'),
(473, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:11', '2020-02-03 17:39:11'),
(474, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:13', '2020-02-03 17:39:13'),
(475, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:39:15', '2020-02-03 17:39:15'),
(476, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:17', '2020-02-03 17:39:17'),
(477, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:39:19', '2020-02-03 17:39:19'),
(478, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:21', '2020-02-03 17:39:21'),
(479, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:23', '2020-02-03 17:39:23'),
(480, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:39:25', '2020-02-03 17:39:25'),
(481, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:27', '2020-02-03 17:39:27'),
(482, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:39:29', '2020-02-03 17:39:29'),
(483, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:31', '2020-02-03 17:39:31'),
(484, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:32', '2020-02-03 17:39:32'),
(485, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:39:35', '2020-02-03 17:39:35'),
(486, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:36', '2020-02-03 17:39:36'),
(487, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:39:39', '2020-02-03 17:39:39'),
(488, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:40', '2020-02-03 17:39:40'),
(489, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:43', '2020-02-03 17:39:43'),
(490, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:39:45', '2020-02-03 17:39:45'),
(491, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:47', '2020-02-03 17:39:47'),
(492, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:39:49', '2020-02-03 17:39:49'),
(493, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:51', '2020-02-03 17:39:51'),
(494, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:52', '2020-02-03 17:39:52'),
(495, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:39:55', '2020-02-03 17:39:55'),
(496, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:39:56', '2020-02-03 17:39:56'),
(497, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:39:59', '2020-02-03 17:39:59'),
(498, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:00', '2020-02-03 17:40:00'),
(499, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:03', '2020-02-03 17:40:03'),
(500, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:40:04', '2020-02-03 17:40:04'),
(501, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:07', '2020-02-03 17:40:07'),
(502, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:40:09', '2020-02-03 17:40:09'),
(503, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:12', '2020-02-03 17:40:12'),
(504, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:13', '2020-02-03 17:40:13'),
(505, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:40:16', '2020-02-03 17:40:16'),
(506, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:18', '2020-02-03 17:40:18'),
(507, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:40:20', '2020-02-03 17:40:20'),
(508, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:22', '2020-02-03 17:40:22'),
(509, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:24', '2020-02-03 17:40:24'),
(510, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:40:25', '2020-02-03 17:40:25'),
(511, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:28', '2020-02-03 17:40:28'),
(512, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:40:29', '2020-02-03 17:40:29'),
(513, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:32', '2020-02-03 17:40:32'),
(514, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:33', '2020-02-03 17:40:33'),
(515, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:40:36', '2020-02-03 17:40:36'),
(516, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:38', '2020-02-03 17:40:38'),
(517, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:40:40', '2020-02-03 17:40:40'),
(518, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:41', '2020-02-03 17:40:41'),
(519, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:44', '2020-02-03 17:40:44'),
(520, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:40:45', '2020-02-03 17:40:45'),
(521, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:48', '2020-02-03 17:40:48'),
(522, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:40:49', '2020-02-03 17:40:49'),
(523, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:52', '2020-02-03 17:40:52'),
(524, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:54', '2020-02-03 17:40:54'),
(525, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:40:56', '2020-02-03 17:40:56'),
(526, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:40:58', '2020-02-03 17:40:58'),
(527, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:41:00', '2020-02-03 17:41:00'),
(528, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:01', '2020-02-03 17:41:01'),
(529, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:04', '2020-02-03 17:41:04'),
(530, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:41:05', '2020-02-03 17:41:05'),
(531, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:08', '2020-02-03 17:41:08'),
(532, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:41:09', '2020-02-03 17:41:09'),
(533, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:12', '2020-02-03 17:41:12'),
(534, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:14', '2020-02-03 17:41:14'),
(535, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:41:16', '2020-02-03 17:41:16'),
(536, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:18', '2020-02-03 17:41:18'),
(537, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:41:20', '2020-02-03 17:41:20'),
(538, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:22', '2020-02-03 17:41:22'),
(539, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:24', '2020-02-03 17:41:24'),
(540, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:41:26', '2020-02-03 17:41:26'),
(541, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:28', '2020-02-03 17:41:28'),
(542, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:41:30', '2020-02-03 17:41:30'),
(543, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:32', '2020-02-03 17:41:32'),
(544, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:34', '2020-02-03 17:41:34'),
(545, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:41:36', '2020-02-03 17:41:36'),
(546, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:38', '2020-02-03 17:41:38'),
(547, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:41:40', '2020-02-03 17:41:40'),
(548, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:42', '2020-02-03 17:41:42'),
(549, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:44', '2020-02-03 17:41:44'),
(550, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:41:46', '2020-02-03 17:41:46'),
(551, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:48', '2020-02-03 17:41:48'),
(552, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:41:50', '2020-02-03 17:41:50'),
(553, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:52', '2020-02-03 17:41:52'),
(554, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:54', '2020-02-03 17:41:54'),
(555, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:41:56', '2020-02-03 17:41:56'),
(556, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:41:58', '2020-02-03 17:41:58'),
(557, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:42:00', '2020-02-03 17:42:00'),
(558, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:42:02', '2020-02-03 17:42:02'),
(559, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:42:04', '2020-02-03 17:42:04'),
(560, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:42:06', '2020-02-03 17:42:06'),
(561, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:42:08', '2020-02-03 17:42:08'),
(562, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:42:10', '2020-02-03 17:42:10'),
(563, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:42:12', '2020-02-03 17:42:12'),
(564, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:42:13', '2020-02-03 17:42:13'),
(565, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:42:16', '2020-02-03 17:42:16'),
(566, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:42:17', '2020-02-03 17:42:17'),
(567, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:45:31', '2020-02-03 17:45:31'),
(568, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:45:33', '2020-02-03 17:45:33'),
(569, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:45:36', '2020-02-03 17:45:36'),
(570, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:45:38', '2020-02-03 17:45:38'),
(571, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:45:41', '2020-02-03 17:45:41'),
(572, NULL, NULL, 10, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:45:42', '2020-02-03 17:45:42'),
(573, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:45:46', '2020-02-03 17:45:46'),
(574, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:45:47', '2020-02-03 17:45:47'),
(575, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:45:51', '2020-02-03 17:45:51'),
(576, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:45:52', '2020-02-03 17:45:52'),
(577, NULL, NULL, 7, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-03 17:45:56', '2020-02-03 17:45:56'),
(578, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:45:57', '2020-02-03 17:45:57'),
(579, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:46:01', '2020-02-03 17:46:01'),
(580, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:46:03', '2020-02-03 17:46:03'),
(581, NULL, NULL, 7, NULL, 'Biding', '19.999999999999574', NULL, NULL, 'DR', '2020-02-03 17:46:06', '2020-02-03 17:46:06'),
(582, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:46:08', '2020-02-03 17:46:08'),
(583, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:46:11', '2020-02-03 17:46:11'),
(584, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:46:12', '2020-02-03 17:46:12'),
(585, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:46:16', '2020-02-03 17:46:16'),
(586, NULL, NULL, 10, NULL, 'Biding', '19.999999999999574', NULL, NULL, 'DR', '2020-02-03 17:46:17', '2020-02-03 17:46:17'),
(587, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:46:21', '2020-02-03 17:46:21'),
(588, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:46:22', '2020-02-03 17:46:22'),
(589, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:46:26', '2020-02-03 17:46:26'),
(590, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:46:27', '2020-02-03 17:46:27'),
(591, NULL, NULL, 7, NULL, 'Biding', '19.999999999999574', NULL, NULL, 'DR', '2020-02-03 17:46:31', '2020-02-03 17:46:31'),
(592, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:46:32', '2020-02-03 17:46:32'),
(593, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:46:36', '2020-02-03 17:46:36'),
(594, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:46:38', '2020-02-03 17:46:38'),
(595, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 17:46:41', '2020-02-03 17:46:41'),
(596, NULL, NULL, 10, NULL, 'Biding', '19.999999999999574', NULL, NULL, 'DR', '2020-02-03 17:46:43', '2020-02-03 17:46:43'),
(597, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:29:14', '2020-02-03 18:29:14'),
(598, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:29:47', '2020-02-03 18:29:47'),
(599, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:29:47', '2020-02-03 18:29:47'),
(600, NULL, NULL, 7, NULL, 'Biding', '10.000000000000142', NULL, NULL, 'DR', '2020-02-03 18:42:54', '2020-02-03 18:42:54'),
(601, NULL, NULL, 10, NULL, 'Biding', '29.999999999999716', NULL, NULL, 'DR', '2020-02-03 18:42:55', '2020-02-03 18:42:55'),
(602, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:42:59', '2020-02-03 18:42:59'),
(603, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:00', '2020-02-03 18:43:00'),
(604, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:04', '2020-02-03 18:43:04'),
(605, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:05', '2020-02-03 18:43:05'),
(606, NULL, NULL, 7, NULL, 'Biding', '19.999999999999574', NULL, NULL, 'DR', '2020-02-03 18:43:09', '2020-02-03 18:43:09'),
(607, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:11', '2020-02-03 18:43:11'),
(608, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:14', '2020-02-03 18:43:14'),
(609, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:16', '2020-02-03 18:43:16'),
(610, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:19', '2020-02-03 18:43:19'),
(611, NULL, NULL, 10, NULL, 'Biding', '19.999999999999574', NULL, NULL, 'DR', '2020-02-03 18:43:21', '2020-02-03 18:43:21'),
(612, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:24', '2020-02-03 18:43:24'),
(613, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:26', '2020-02-03 18:43:26'),
(614, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:29', '2020-02-03 18:43:29'),
(615, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:30', '2020-02-03 18:43:30'),
(616, NULL, NULL, 7, NULL, 'Biding', '19.999999999999574', NULL, NULL, 'DR', '2020-02-03 18:43:34', '2020-02-03 18:43:34'),
(617, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:35', '2020-02-03 18:43:35'),
(618, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:39', '2020-02-03 18:43:39'),
(619, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:40', '2020-02-03 18:43:40'),
(620, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:44', '2020-02-03 18:43:44'),
(621, NULL, NULL, 10, NULL, 'Biding', '19.999999999999574', NULL, NULL, 'DR', '2020-02-03 18:43:45', '2020-02-03 18:43:45'),
(622, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:49', '2020-02-03 18:43:49'),
(623, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:51', '2020-02-03 18:43:51'),
(624, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:54', '2020-02-03 18:43:54'),
(625, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:43:56', '2020-02-03 18:43:56'),
(626, NULL, NULL, 7, NULL, 'Biding', '19.999999999999574', NULL, NULL, 'DR', '2020-02-03 18:43:59', '2020-02-03 18:43:59'),
(627, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:44:01', '2020-02-03 18:44:01'),
(628, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:44:04', '2020-02-03 18:44:04'),
(629, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:44:05', '2020-02-03 18:44:05'),
(630, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:44:09', '2020-02-03 18:44:09'),
(631, NULL, NULL, 10, NULL, 'Biding', '19.999999999999574', NULL, NULL, 'DR', '2020-02-03 18:44:10', '2020-02-03 18:44:10'),
(632, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:44:14', '2020-02-03 18:44:14'),
(633, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:44:15', '2020-02-03 18:44:15'),
(634, NULL, NULL, 7, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:44:19', '2020-02-03 18:44:19'),
(635, NULL, NULL, 10, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-03 18:44:21', '2020-02-03 18:44:21'),
(636, NULL, NULL, 7, NULL, 'Biding', '19.999999999999574', NULL, NULL, 'DR', '2020-02-03 18:52:45', '2020-02-03 18:52:45'),
(637, NULL, NULL, 11, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '15.00', NULL, 'DR', '2020-02-04 10:38:09', '2020-02-04 10:38:09'),
(638, NULL, NULL, 11, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '15.00', NULL, 'DR', '2020-02-05 10:39:06', '2020-02-05 10:39:06'),
(639, NULL, NULL, 11, NULL, 'Biding', '10', NULL, NULL, 'DR', '2020-02-05 10:44:55', '2020-02-05 10:44:55'),
(640, NULL, NULL, 11, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-05 10:48:28', '2020-02-05 10:48:28'),
(641, NULL, NULL, 11, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-05 10:49:32', '2020-02-05 10:49:32'),
(642, NULL, NULL, 11, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-05 10:51:28', '2020-02-05 10:51:28'),
(643, NULL, NULL, 11, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-05 10:55:06', '2020-02-05 10:55:06'),
(644, NULL, NULL, 11, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-05 11:01:56', '2020-02-05 11:01:56'),
(645, NULL, NULL, 12, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '15.00', NULL, 'DR', '2020-02-05 13:38:32', '2020-02-05 13:38:32'),
(646, NULL, NULL, 12, NULL, 'Biding', '10', NULL, NULL, 'DR', '2020-02-07 11:14:33', '2020-02-07 11:14:33'),
(647, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 11:16:40', '2020-02-07 11:16:40'),
(648, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 11:20:54', '2020-02-07 11:20:54'),
(649, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 11:55:42', '2020-02-07 11:55:42'),
(650, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 11:56:13', '2020-02-07 11:56:13'),
(651, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 11:59:05', '2020-02-07 11:59:05'),
(652, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 12:00:19', '2020-02-07 12:00:19'),
(653, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 12:03:10', '2020-02-07 12:03:10'),
(654, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 12:07:31', '2020-02-07 12:07:31'),
(655, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 12:17:00', '2020-02-07 12:17:00'),
(656, NULL, NULL, 12, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '15.00', NULL, 'DR', '2020-02-07 12:26:32', '2020-02-07 12:26:32'),
(657, NULL, NULL, 14, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '15.00', NULL, 'DR', '2020-02-07 12:37:36', '2020-02-07 12:37:36'),
(658, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 12:44:11', '2020-02-07 12:44:11'),
(659, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 12:45:32', '2020-02-07 12:45:32'),
(660, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 12:46:22', '2020-02-07 12:46:22'),
(661, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 12:48:05', '2020-02-07 12:48:05'),
(662, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 12:52:22', '2020-02-07 12:52:22'),
(663, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 12:52:44', '2020-02-07 12:52:44'),
(664, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 12:56:34', '2020-02-07 12:56:34'),
(665, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 12:57:51', '2020-02-07 12:57:51'),
(666, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 12:58:37', '2020-02-07 12:58:37'),
(667, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 13:22:31', '2020-02-07 13:22:31'),
(668, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 13:23:05', '2020-02-07 13:23:05'),
(669, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 13:23:22', '2020-02-07 13:23:22'),
(670, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 13:26:44', '2020-02-07 13:26:44'),
(671, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 13:27:56', '2020-02-07 13:27:56'),
(672, NULL, NULL, 12, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-07 13:28:09', '2020-02-07 13:28:09'),
(673, NULL, NULL, 12, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '15.00', NULL, 'DR', '2020-02-07 15:24:29', '2020-02-07 15:24:29'),
(674, NULL, NULL, 35, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-02-26 16:04:07', '2020-02-26 16:04:07'),
(675, NULL, NULL, 35, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '20.00', NULL, 'DR', '2020-02-26 16:06:40', '2020-02-26 16:06:40'),
(676, NULL, NULL, 35, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '20.00', NULL, 'DR', '2020-02-26 16:08:02', '2020-02-26 16:08:02'),
(677, NULL, NULL, 35, NULL, 'Biding', '20', NULL, NULL, 'DR', '2020-02-26 16:09:02', '2020-02-26 16:09:02'),
(678, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:09:04', '2020-02-26 16:09:04'),
(679, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:09:06', '2020-02-26 16:09:06'),
(680, NULL, NULL, 36, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-02-26 16:09:40', '2020-02-26 16:09:40'),
(681, NULL, NULL, 36, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '20.00', NULL, 'DR', '2020-02-26 16:13:33', '2020-02-26 16:13:33'),
(682, NULL, NULL, 36, NULL, 'Biding', '20', NULL, NULL, 'DR', '2020-02-26 16:13:35', '2020-02-26 16:13:35'),
(683, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:13:36', '2020-02-26 16:13:36'),
(684, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:13:38', '2020-02-26 16:13:38'),
(685, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:13:58', '2020-02-26 16:13:58'),
(686, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:16:01', '2020-02-26 16:16:01'),
(687, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:12', '2020-02-26 16:17:12'),
(688, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:14', '2020-02-26 16:17:14'),
(689, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:17', '2020-02-26 16:17:17'),
(690, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:19', '2020-02-26 16:17:19'),
(691, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:21', '2020-02-26 16:17:21'),
(692, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:23', '2020-02-26 16:17:23'),
(693, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:26', '2020-02-26 16:17:26'),
(694, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:29', '2020-02-26 16:17:29'),
(695, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:32', '2020-02-26 16:17:32'),
(696, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:35', '2020-02-26 16:17:35'),
(697, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:38', '2020-02-26 16:17:38'),
(698, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:40', '2020-02-26 16:17:40'),
(699, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:43', '2020-02-26 16:17:43'),
(700, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:47', '2020-02-26 16:17:47'),
(701, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:51', '2020-02-26 16:17:51'),
(702, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:53', '2020-02-26 16:17:53'),
(703, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:55', '2020-02-26 16:17:55'),
(704, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:57', '2020-02-26 16:17:57'),
(705, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:58', '2020-02-26 16:17:58'),
(706, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:17:59', '2020-02-26 16:17:59'),
(707, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:18:00', '2020-02-26 16:18:00'),
(708, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:18:02', '2020-02-26 16:18:02'),
(709, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:18:03', '2020-02-26 16:18:03'),
(710, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:18:05', '2020-02-26 16:18:05'),
(711, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:18:05', '2020-02-26 16:18:05'),
(712, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:18:06', '2020-02-26 16:18:06'),
(713, NULL, NULL, 36, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:18:06', '2020-02-26 16:18:06'),
(714, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 16:21:03', '2020-02-26 16:21:03'),
(715, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 17:48:16', '2020-02-26 17:48:16'),
(716, NULL, NULL, 35, NULL, 'Biding', '0', NULL, NULL, 'DR', '2020-02-26 17:48:25', '2020-02-26 17:48:25'),
(717, NULL, NULL, 35, NULL, 'Biding', '20', NULL, NULL, 'DR', '2020-02-26 17:54:11', '2020-02-26 17:54:11'),
(718, NULL, NULL, 35, NULL, 'Biding', '20.000000000000007', NULL, NULL, 'DR', '2020-02-26 17:54:12', '2020-02-26 17:54:12'),
(719, NULL, NULL, 35, NULL, 'Biding', '20.000000000000007', NULL, NULL, 'DR', '2020-02-26 17:54:14', '2020-02-26 17:54:14'),
(720, NULL, NULL, 35, NULL, 'Biding', '19.999999999999996', NULL, NULL, 'DR', '2020-02-26 17:54:15', '2020-02-26 17:54:15'),
(721, NULL, NULL, 35, NULL, 'Biding', '19.999999999999996', NULL, NULL, 'DR', '2020-02-26 17:54:19', '2020-02-26 17:54:19'),
(722, NULL, NULL, 35, NULL, 'Biding', '19.999999999999996', NULL, NULL, 'DR', '2020-02-26 17:54:21', '2020-02-26 17:54:21'),
(723, NULL, NULL, 35, NULL, 'Biding', '19.999999999999996', NULL, NULL, 'DR', '2020-02-26 17:54:24', '2020-02-26 17:54:24'),
(724, NULL, NULL, 35, NULL, 'Biding', '19.999999999999996', NULL, NULL, 'DR', '2020-02-26 17:54:26', '2020-02-26 17:54:26'),
(725, NULL, NULL, 35, NULL, 'Biding', '19.999999999999996', NULL, NULL, 'DR', '2020-02-26 17:54:28', '2020-02-26 17:54:28'),
(726, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:54:32', '2020-02-26 17:54:32'),
(727, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:54:36', '2020-02-26 17:54:36'),
(728, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:54:40', '2020-02-26 17:54:40'),
(729, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:54:42', '2020-02-26 17:54:42'),
(730, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:54:44', '2020-02-26 17:54:44'),
(731, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:54:45', '2020-02-26 17:54:45'),
(732, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:54:46', '2020-02-26 17:54:46'),
(733, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:54:48', '2020-02-26 17:54:48'),
(734, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:54:49', '2020-02-26 17:54:49'),
(735, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:54:52', '2020-02-26 17:54:52'),
(736, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:54:53', '2020-02-26 17:54:53'),
(737, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:54:54', '2020-02-26 17:54:54'),
(738, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:54:56', '2020-02-26 17:54:56'),
(739, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:55:02', '2020-02-26 17:55:02'),
(740, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:55:04', '2020-02-26 17:55:04'),
(741, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:55:05', '2020-02-26 17:55:05'),
(742, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:55:06', '2020-02-26 17:55:06'),
(743, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:55:07', '2020-02-26 17:55:07'),
(744, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:55:17', '2020-02-26 17:55:17'),
(745, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:55:20', '2020-02-26 17:55:20'),
(746, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:55:23', '2020-02-26 17:55:23'),
(747, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:55:26', '2020-02-26 17:55:26'),
(748, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:55:33', '2020-02-26 17:55:33'),
(749, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:55:34', '2020-02-26 17:55:34'),
(750, NULL, NULL, 35, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-26 17:56:36', '2020-02-26 17:56:36'),
(751, NULL, NULL, 36, NULL, 'Biding', '700', NULL, NULL, 'DR', '2020-02-26 17:56:38', '2020-02-26 17:56:38'),
(752, NULL, NULL, 35, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 17:56:40', '2020-02-26 17:56:40'),
(753, NULL, NULL, 36, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 17:56:43', '2020-02-26 17:56:43'),
(754, NULL, NULL, 35, NULL, 'Biding', '39.99999999999994', NULL, NULL, 'DR', '2020-02-26 17:56:45', '2020-02-26 17:56:45'),
(755, NULL, NULL, 36, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 17:56:49', '2020-02-26 17:56:49'),
(756, NULL, NULL, 35, NULL, 'Biding', '39.99999999999994', NULL, NULL, 'DR', '2020-02-26 17:56:53', '2020-02-26 17:56:53'),
(757, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 17:56:56', '2020-02-26 17:56:56'),
(758, NULL, NULL, 35, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 17:56:59', '2020-02-26 17:56:59'),
(759, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 17:57:01', '2020-02-26 17:57:01'),
(760, NULL, NULL, 35, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 17:57:02', '2020-02-26 17:57:02'),
(761, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:43:56', '2020-02-26 18:43:56'),
(762, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:43:58', '2020-02-26 18:43:58'),
(763, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:44:08', '2020-02-26 18:44:08'),
(764, NULL, NULL, 36, NULL, 'Biding', '99.99999999999983', NULL, NULL, 'DR', '2020-02-26 18:44:13', '2020-02-26 18:44:13'),
(765, NULL, NULL, 35, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 18:44:15', '2020-02-26 18:44:15'),
(766, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:17', '2020-02-26 18:44:17'),
(767, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:18', '2020-02-26 18:44:18'),
(768, NULL, NULL, 36, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 18:44:19', '2020-02-26 18:44:19'),
(769, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:20', '2020-02-26 18:44:20'),
(770, NULL, NULL, 36, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 18:44:21', '2020-02-26 18:44:21'),
(771, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:22', '2020-02-26 18:44:22'),
(772, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:23', '2020-02-26 18:44:23'),
(773, NULL, NULL, 35, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 18:44:24', '2020-02-26 18:44:24'),
(774, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:26', '2020-02-26 18:44:26'),
(775, NULL, NULL, 35, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 18:44:28', '2020-02-26 18:44:28'),
(776, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:44:29', '2020-02-26 18:44:29'),
(777, NULL, NULL, 36, NULL, 'Biding', '59.99999999999979', NULL, NULL, 'DR', '2020-02-26 18:44:31', '2020-02-26 18:44:31'),
(778, NULL, NULL, 35, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 18:44:33', '2020-02-26 18:44:33'),
(779, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:35', '2020-02-26 18:44:35'),
(780, NULL, NULL, 35, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 18:44:36', '2020-02-26 18:44:36'),
(781, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:38', '2020-02-26 18:44:38'),
(782, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:39', '2020-02-26 18:44:39'),
(783, NULL, NULL, 36, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 18:44:40', '2020-02-26 18:44:40'),
(784, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:41', '2020-02-26 18:44:41'),
(785, NULL, NULL, 36, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 18:44:43', '2020-02-26 18:44:43'),
(786, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:45', '2020-02-26 18:44:45'),
(787, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:46', '2020-02-26 18:44:46'),
(788, NULL, NULL, 35, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 18:44:48', '2020-02-26 18:44:48'),
(789, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:49', '2020-02-26 18:44:49'),
(790, NULL, NULL, 35, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 18:44:50', '2020-02-26 18:44:50'),
(791, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:52', '2020-02-26 18:44:52'),
(792, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:53', '2020-02-26 18:44:53'),
(793, NULL, NULL, 36, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 18:44:54', '2020-02-26 18:44:54'),
(794, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:55', '2020-02-26 18:44:55'),
(795, NULL, NULL, 36, NULL, 'Biding', '40.000000000000036', NULL, NULL, 'DR', '2020-02-26 18:44:56', '2020-02-26 18:44:56'),
(796, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:57', '2020-02-26 18:44:57'),
(797, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:58', '2020-02-26 18:44:58'),
(798, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:44:59', '2020-02-26 18:44:59'),
(799, NULL, NULL, 36, NULL, 'Biding', '40.00000000000021', NULL, NULL, 'DR', '2020-02-26 18:45:00', '2020-02-26 18:45:00'),
(800, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:45:03', '2020-02-26 18:45:03'),
(801, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:45:15', '2020-02-26 18:45:15'),
(802, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:45:16', '2020-02-26 18:45:16'),
(803, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:45:18', '2020-02-26 18:45:18'),
(804, NULL, NULL, 35, NULL, 'Biding', '40.00000000000021', NULL, NULL, 'DR', '2020-02-26 18:45:21', '2020-02-26 18:45:21'),
(805, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:45:22', '2020-02-26 18:45:22'),
(806, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:31', '2020-02-26 18:45:31'),
(807, NULL, NULL, 35, NULL, 'Biding', '59.99999999999979', NULL, NULL, 'DR', '2020-02-26 18:45:33', '2020-02-26 18:45:33'),
(808, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:36', '2020-02-26 18:45:36'),
(809, NULL, NULL, 36, NULL, 'Biding', '60.00000000000014', NULL, NULL, 'DR', '2020-02-26 18:45:38', '2020-02-26 18:45:38'),
(810, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:41', '2020-02-26 18:45:41'),
(811, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:41', '2020-02-26 18:45:41'),
(812, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:42', '2020-02-26 18:45:42'),
(813, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:42', '2020-02-26 18:45:42'),
(814, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:42', '2020-02-26 18:45:42'),
(815, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:42', '2020-02-26 18:45:42'),
(816, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:42', '2020-02-26 18:45:42'),
(817, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:42', '2020-02-26 18:45:42'),
(818, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:43', '2020-02-26 18:45:43'),
(819, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:43', '2020-02-26 18:45:43'),
(820, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:43', '2020-02-26 18:45:43'),
(821, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:43', '2020-02-26 18:45:43'),
(822, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:43', '2020-02-26 18:45:43'),
(823, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:44', '2020-02-26 18:45:44'),
(824, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:44', '2020-02-26 18:45:44'),
(825, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:44', '2020-02-26 18:45:44'),
(826, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:44', '2020-02-26 18:45:44'),
(827, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:45', '2020-02-26 18:45:45'),
(828, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:45', '2020-02-26 18:45:45'),
(829, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:45', '2020-02-26 18:45:45'),
(830, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:45', '2020-02-26 18:45:45'),
(831, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:45', '2020-02-26 18:45:45'),
(832, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:46', '2020-02-26 18:45:46'),
(833, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:46', '2020-02-26 18:45:46'),
(834, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:46', '2020-02-26 18:45:46'),
(835, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:46', '2020-02-26 18:45:46'),
(836, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:46', '2020-02-26 18:45:46'),
(837, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:45:47', '2020-02-26 18:45:47'),
(838, NULL, NULL, 35, NULL, 'Biding', '599.9999999999997', NULL, NULL, 'DR', '2020-02-26 18:46:27', '2020-02-26 18:46:27'),
(839, NULL, NULL, 36, NULL, 'Biding', '40.00000000000021', NULL, NULL, 'DR', '2020-02-26 18:46:28', '2020-02-26 18:46:28');
INSERT INTO `transactions` (`id`, `package_id`, `membership_package_id`, `user_id`, `name`, `desc`, `coins`, `bid_coin`, `real_amount`, `trans`, `created_at`, `updated_at`) VALUES
(840, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:46:29', '2020-02-26 18:46:29'),
(841, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:46:30', '2020-02-26 18:46:30'),
(842, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:46:30', '2020-02-26 18:46:30'),
(843, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:46:31', '2020-02-26 18:46:31'),
(844, NULL, NULL, 35, NULL, 'Biding', '40.00000000000021', NULL, NULL, 'DR', '2020-02-26 18:46:32', '2020-02-26 18:46:32'),
(845, NULL, NULL, 36, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:46:34', '2020-02-26 18:46:34'),
(846, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:46:35', '2020-02-26 18:46:35'),
(847, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:35', '2020-02-26 18:46:35'),
(848, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:35', '2020-02-26 18:46:35'),
(849, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:36', '2020-02-26 18:46:36'),
(850, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:36', '2020-02-26 18:46:36'),
(851, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:36', '2020-02-26 18:46:36'),
(852, NULL, NULL, 36, NULL, 'Biding', '139.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:46:37', '2020-02-26 18:46:37'),
(853, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:37', '2020-02-26 18:46:37'),
(854, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:37', '2020-02-26 18:46:37'),
(855, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:38', '2020-02-26 18:46:38'),
(856, NULL, NULL, 35, NULL, 'Biding', '100', NULL, NULL, 'DR', '2020-02-26 18:46:39', '2020-02-26 18:46:39'),
(857, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:39', '2020-02-26 18:46:39'),
(858, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:39', '2020-02-26 18:46:39'),
(859, NULL, NULL, 36, NULL, 'Biding', '80.00000000000007', NULL, NULL, 'DR', '2020-02-26 18:46:41', '2020-02-26 18:46:41'),
(860, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:41', '2020-02-26 18:46:41'),
(861, NULL, NULL, 35, NULL, 'Biding', '59.99999999999979', NULL, NULL, 'DR', '2020-02-26 18:46:47', '2020-02-26 18:46:47'),
(862, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:48', '2020-02-26 18:46:48'),
(863, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:49', '2020-02-26 18:46:49'),
(864, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:50', '2020-02-26 18:46:50'),
(865, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:51', '2020-02-26 18:46:51'),
(866, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:46:57', '2020-02-26 18:46:57'),
(867, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:47:11', '2020-02-26 18:47:11'),
(868, NULL, NULL, 36, NULL, 'Biding', '159.99999999999977', NULL, NULL, 'DR', '2020-02-26 18:48:17', '2020-02-26 18:48:17'),
(869, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:48:19', '2020-02-26 18:48:19'),
(870, NULL, NULL, 35, NULL, 'Biding', '60.00000000000014', NULL, NULL, 'DR', '2020-02-26 18:48:26', '2020-02-26 18:48:26'),
(871, NULL, NULL, 38, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-02-26 18:50:11', '2020-02-26 18:50:11'),
(872, NULL, NULL, 35, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:50:39', '2020-02-26 18:50:39'),
(873, NULL, NULL, 36, NULL, 'Biding', '59.99999999999979', NULL, NULL, 'DR', '2020-02-26 18:50:46', '2020-02-26 18:50:46'),
(874, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:51:32', '2020-02-26 18:51:32'),
(875, NULL, NULL, 36, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-26 18:51:33', '2020-02-26 18:51:33'),
(876, NULL, NULL, 35, NULL, 'Biding', '80.00000000000007', NULL, NULL, 'DR', '2020-02-26 18:51:35', '2020-02-26 18:51:35'),
(877, NULL, NULL, 35, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-26 18:51:36', '2020-02-26 18:51:36'),
(878, NULL, NULL, 35, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-26 18:51:37', '2020-02-26 18:51:37'),
(879, NULL, NULL, 35, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-26 18:51:37', '2020-02-26 18:51:37'),
(880, NULL, NULL, 36, NULL, 'Biding', '100.00000000000036', NULL, NULL, 'DR', '2020-02-26 18:51:38', '2020-02-26 18:51:38'),
(881, NULL, NULL, 35, NULL, 'Biding', '39.99999999999986', NULL, NULL, 'DR', '2020-02-26 18:52:13', '2020-02-26 18:52:13'),
(882, NULL, NULL, 35, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-26 18:52:15', '2020-02-26 18:52:15'),
(883, NULL, NULL, 39, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-02-27 12:10:02', '2020-02-27 12:10:02'),
(884, NULL, NULL, 40, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-02-27 12:12:13', '2020-02-27 12:12:13'),
(885, NULL, NULL, 41, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-02-27 12:12:37', '2020-02-27 12:12:37'),
(886, NULL, NULL, 42, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-02-27 12:12:55', '2020-02-27 12:12:55'),
(887, NULL, NULL, 43, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-02-27 12:13:12', '2020-02-27 12:13:12'),
(888, NULL, NULL, 43, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '20.00', NULL, 'DR', '2020-02-27 12:17:06', '2020-02-27 12:17:06'),
(889, NULL, NULL, 43, NULL, 'Biding', '3340.0000000000005', NULL, NULL, 'DR', '2020-02-27 12:17:09', '2020-02-27 12:17:09'),
(890, NULL, NULL, 43, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-27 12:17:11', '2020-02-27 12:17:11'),
(891, NULL, NULL, 43, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-27 12:17:13', '2020-02-27 12:17:13'),
(892, NULL, NULL, 43, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-27 12:17:15', '2020-02-27 12:17:15'),
(893, NULL, NULL, 43, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-27 12:17:38', '2020-02-27 12:17:38'),
(894, NULL, NULL, 43, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-27 12:17:39', '2020-02-27 12:17:39'),
(895, NULL, NULL, 43, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-27 13:23:23', '2020-02-27 13:23:23'),
(896, NULL, NULL, 39, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '20.00', NULL, 'DR', '2020-02-27 15:23:10', '2020-02-27 15:23:10'),
(897, NULL, NULL, 39, NULL, 'Biding', '3480.0000000000005', NULL, NULL, 'DR', '2020-02-27 15:23:24', '2020-02-27 15:23:24'),
(898, NULL, NULL, 39, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-27 15:23:25', '2020-02-27 15:23:25'),
(899, NULL, NULL, 39, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-27 15:23:26', '2020-02-27 15:23:26'),
(900, NULL, NULL, 40, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '20.00', NULL, 'DR', '2020-02-27 15:26:24', '2020-02-27 15:26:24'),
(901, NULL, NULL, 40, NULL, 'Biding', '3540.0000000000005', NULL, NULL, 'DR', '2020-02-27 15:26:29', '2020-02-27 15:26:29'),
(902, NULL, NULL, 40, NULL, 'Biding', '20.000000000000284', NULL, NULL, 'DR', '2020-02-27 15:41:49', '2020-02-27 15:41:49'),
(903, NULL, NULL, 41, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '15.00', NULL, 'DR', '2020-02-28 10:42:20', '2020-02-28 10:42:20'),
(904, NULL, NULL, 41, NULL, 'Biding', '15', NULL, NULL, 'DR', '2020-02-28 10:42:52', '2020-02-28 10:42:52'),
(905, NULL, NULL, 41, NULL, 'Biding', '15', NULL, NULL, 'DR', '2020-02-28 10:42:54', '2020-02-28 10:42:54'),
(906, NULL, NULL, 41, NULL, 'Biding', '14.999999999999996', NULL, NULL, 'DR', '2020-02-28 10:42:55', '2020-02-28 10:42:55'),
(907, NULL, NULL, 41, NULL, 'Biding', '14.999999999999996', NULL, NULL, 'DR', '2020-02-28 10:42:55', '2020-02-28 10:42:55'),
(908, NULL, NULL, 41, NULL, 'Biding', '15.000000000000002', NULL, NULL, 'DR', '2020-02-28 10:42:56', '2020-02-28 10:42:56'),
(909, NULL, NULL, 41, NULL, 'Biding', '15.000000000000002', NULL, NULL, 'DR', '2020-02-28 10:42:59', '2020-02-28 10:42:59'),
(910, NULL, NULL, 41, NULL, 'Biding', '15.000000000000002', NULL, NULL, 'DR', '2020-02-28 10:43:02', '2020-02-28 10:43:02'),
(911, NULL, NULL, 41, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 10:43:05', '2020-02-28 10:43:05'),
(912, NULL, NULL, 41, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 10:43:06', '2020-02-28 10:43:06'),
(913, NULL, NULL, 41, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 10:43:13', '2020-02-28 10:43:13'),
(914, NULL, NULL, 41, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 10:57:51', '2020-02-28 10:57:51'),
(915, NULL, NULL, 41, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 10:57:59', '2020-02-28 10:57:59'),
(916, NULL, NULL, 41, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 10:58:00', '2020-02-28 10:58:00'),
(917, NULL, NULL, 41, NULL, 'Biding', '15.000000000000014', NULL, NULL, 'DR', '2020-02-28 10:58:02', '2020-02-28 10:58:02'),
(918, NULL, NULL, 41, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 10:58:04', '2020-02-28 10:58:04'),
(919, NULL, NULL, 41, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 10:58:07', '2020-02-28 10:58:07'),
(920, NULL, NULL, 41, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 10:58:08', '2020-02-28 10:58:08'),
(921, NULL, NULL, 41, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 10:58:10', '2020-02-28 10:58:10'),
(922, NULL, NULL, 41, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 10:58:11', '2020-02-28 10:58:11'),
(923, NULL, NULL, 41, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 10:58:13', '2020-02-28 10:58:13'),
(924, NULL, NULL, 41, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 10:58:15', '2020-02-28 10:58:15'),
(925, NULL, NULL, 42, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '20.00', NULL, 'DR', '2020-02-28 11:11:28', '2020-02-28 11:11:28'),
(926, NULL, NULL, 42, NULL, 'Biding', '330', NULL, NULL, 'DR', '2020-02-28 11:11:35', '2020-02-28 11:11:35'),
(927, NULL, NULL, 42, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 11:11:37', '2020-02-28 11:11:37'),
(928, NULL, NULL, 39, NULL, 'Biding', '60.00000000000014', NULL, NULL, 'DR', '2020-02-28 13:18:36', '2020-02-28 13:18:36'),
(929, NULL, NULL, 39, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '20.00', NULL, 'DR', '2020-02-28 13:19:18', '2020-02-28 13:19:18'),
(930, NULL, NULL, 40, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '20.00', NULL, 'DR', '2020-02-28 13:19:19', '2020-02-28 13:19:19'),
(931, NULL, NULL, 40, NULL, 'Biding', '345', NULL, NULL, 'DR', '2020-02-28 13:19:22', '2020-02-28 13:19:22'),
(932, NULL, NULL, 40, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 13:19:24', '2020-02-28 13:19:24'),
(933, NULL, NULL, 40, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 13:19:27', '2020-02-28 13:19:27'),
(934, NULL, NULL, 40, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 13:19:28', '2020-02-28 13:19:28'),
(935, NULL, NULL, 40, NULL, 'Biding', '14.999999999999991', NULL, NULL, 'DR', '2020-02-28 13:19:30', '2020-02-28 13:19:30'),
(936, NULL, NULL, 40, NULL, 'Biding', '15.000000000000036', NULL, NULL, 'DR', '2020-02-28 13:19:32', '2020-02-28 13:19:32'),
(937, NULL, NULL, 40, NULL, 'Biding', '15.000000000000036', NULL, NULL, 'DR', '2020-02-28 13:19:34', '2020-02-28 13:19:34'),
(938, NULL, NULL, 40, NULL, 'Biding', '15.000000000000036', NULL, NULL, 'DR', '2020-02-28 13:19:35', '2020-02-28 13:19:35'),
(939, NULL, NULL, 39, NULL, 'Biding', '465.00000000000006', NULL, NULL, 'DR', '2020-02-28 13:19:39', '2020-02-28 13:19:39'),
(940, NULL, NULL, 40, NULL, 'Biding', '30.00000000000007', NULL, NULL, 'DR', '2020-02-28 13:19:43', '2020-02-28 13:19:43'),
(941, NULL, NULL, 39, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-28 13:19:45', '2020-02-28 13:19:45'),
(942, NULL, NULL, 39, NULL, 'Biding', '15.000000000000036', NULL, NULL, 'DR', '2020-02-28 13:19:57', '2020-02-28 13:19:57'),
(943, NULL, NULL, 40, NULL, 'Biding', '45.000000000000014', NULL, NULL, 'DR', '2020-02-28 13:19:59', '2020-02-28 13:19:59'),
(944, NULL, NULL, 40, NULL, 'Biding', '15.000000000000036', NULL, NULL, 'DR', '2020-02-28 13:20:08', '2020-02-28 13:20:08'),
(945, NULL, NULL, 40, NULL, 'Biding', '15.000000000000036', NULL, NULL, 'DR', '2020-02-28 13:20:10', '2020-02-28 13:20:10'),
(946, NULL, NULL, 40, NULL, 'Biding', '15.000000000000036', NULL, NULL, 'DR', '2020-02-28 13:20:14', '2020-02-28 13:20:14'),
(947, NULL, NULL, 40, NULL, 'Biding', '15.000000000000036', NULL, NULL, 'DR', '2020-02-28 13:20:17', '2020-02-28 13:20:17'),
(948, NULL, NULL, 39, NULL, 'Biding', '90.00000000000003', NULL, NULL, 'DR', '2020-02-28 13:20:19', '2020-02-28 13:20:19'),
(949, NULL, NULL, 39, NULL, 'Biding', '15.000000000000036', NULL, NULL, 'DR', '2020-02-28 13:20:28', '2020-02-28 13:20:28'),
(950, NULL, NULL, 40, NULL, 'Biding', '45.00000000000011', NULL, NULL, 'DR', '2020-02-28 13:20:32', '2020-02-28 13:20:32'),
(951, NULL, NULL, 39, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-28 13:20:35', '2020-02-28 13:20:35'),
(952, NULL, NULL, 40, NULL, 'Biding', '30.00000000000007', NULL, NULL, 'DR', '2020-02-28 13:20:37', '2020-02-28 13:20:37'),
(953, NULL, NULL, 39, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-28 13:20:40', '2020-02-28 13:20:40'),
(954, NULL, NULL, 39, NULL, 'Biding', '15.000000000000036', NULL, NULL, 'DR', '2020-02-28 13:20:56', '2020-02-28 13:20:56'),
(955, NULL, NULL, 43, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '15.00', NULL, 'DR', '2020-02-28 18:01:26', '2020-02-28 18:01:26'),
(956, NULL, NULL, 43, NULL, 'Biding', '10', NULL, NULL, 'DR', '2020-02-28 18:01:28', '2020-02-28 18:01:28'),
(957, NULL, NULL, 43, NULL, 'Biding', '10', NULL, NULL, 'DR', '2020-02-28 18:01:33', '2020-02-28 18:01:33'),
(958, NULL, NULL, 43, NULL, 'Biding', '10.000000000000004', NULL, NULL, 'DR', '2020-02-28 18:01:34', '2020-02-28 18:01:34'),
(959, NULL, NULL, 43, NULL, 'Biding', '10.000000000000004', NULL, NULL, 'DR', '2020-02-28 18:01:36', '2020-02-28 18:01:36'),
(960, NULL, NULL, 43, NULL, 'Biding', '9.999999999999998', NULL, NULL, 'DR', '2020-02-28 18:01:37', '2020-02-28 18:01:37'),
(961, NULL, NULL, 43, NULL, 'Biding', '9.999999999999998', NULL, NULL, 'DR', '2020-02-28 18:01:39', '2020-02-28 18:01:39'),
(962, NULL, NULL, 43, NULL, 'Biding', '9.999999999999998', NULL, NULL, 'DR', '2020-02-28 18:01:41', '2020-02-28 18:01:41'),
(963, NULL, NULL, 43, NULL, 'Biding', '9.999999999999998', NULL, NULL, 'DR', '2020-02-28 18:01:43', '2020-02-28 18:01:43'),
(964, NULL, NULL, 43, NULL, 'Biding', '9.999999999999998', NULL, NULL, 'DR', '2020-02-28 18:03:04', '2020-02-28 18:03:04'),
(965, NULL, NULL, 42, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '15.00', NULL, 'DR', '2020-02-28 18:03:17', '2020-02-28 18:03:17'),
(966, NULL, NULL, 42, NULL, 'Biding', '100', NULL, NULL, 'DR', '2020-02-28 18:03:20', '2020-02-28 18:03:20'),
(967, NULL, NULL, 42, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:03:23', '2020-02-28 18:03:23'),
(968, NULL, NULL, 43, NULL, 'Biding', '30.000000000000014', NULL, NULL, 'DR', '2020-02-28 18:03:29', '2020-02-28 18:03:29'),
(969, NULL, NULL, 43, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:03:30', '2020-02-28 18:03:30'),
(970, NULL, NULL, 43, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:03:31', '2020-02-28 18:03:31'),
(971, NULL, NULL, 43, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:03:32', '2020-02-28 18:03:32'),
(972, NULL, NULL, 42, NULL, 'Biding', '50', NULL, NULL, 'DR', '2020-02-28 18:03:34', '2020-02-28 18:03:34'),
(973, NULL, NULL, 43, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-28 18:03:41', '2020-02-28 18:03:41'),
(974, NULL, NULL, 42, NULL, 'Biding', '19.999999999999996', NULL, NULL, 'DR', '2020-02-28 18:03:43', '2020-02-28 18:03:43'),
(975, NULL, NULL, 43, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-28 18:03:45', '2020-02-28 18:03:45'),
(976, NULL, NULL, 42, NULL, 'Biding', '19.999999999999996', NULL, NULL, 'DR', '2020-02-28 18:03:47', '2020-02-28 18:03:47'),
(977, NULL, NULL, 43, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-28 18:03:57', '2020-02-28 18:03:57'),
(978, NULL, NULL, 42, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-28 18:03:59', '2020-02-28 18:03:59'),
(979, NULL, NULL, 43, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-28 18:04:26', '2020-02-28 18:04:26'),
(980, NULL, NULL, 43, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:04:28', '2020-02-28 18:04:28'),
(981, NULL, NULL, 42, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-28 18:11:55', '2020-02-28 18:11:55'),
(982, NULL, NULL, 42, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:11:57', '2020-02-28 18:11:57'),
(983, NULL, NULL, 43, NULL, 'Biding', '30.00000000000003', NULL, NULL, 'DR', '2020-02-28 18:11:58', '2020-02-28 18:11:58'),
(984, NULL, NULL, 43, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:12:11', '2020-02-28 18:12:11'),
(985, NULL, NULL, 42, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-28 18:13:19', '2020-02-28 18:13:19'),
(986, NULL, NULL, 42, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:13:20', '2020-02-28 18:13:20'),
(987, NULL, NULL, 42, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:13:21', '2020-02-28 18:13:21'),
(988, NULL, NULL, 42, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:13:22', '2020-02-28 18:13:22'),
(989, NULL, NULL, 42, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:13:23', '2020-02-28 18:13:23'),
(990, NULL, NULL, 42, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:13:24', '2020-02-28 18:13:24'),
(991, NULL, NULL, 42, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:13:25', '2020-02-28 18:13:25'),
(992, NULL, NULL, 42, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:13:26', '2020-02-28 18:13:26'),
(993, NULL, NULL, 42, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:13:26', '2020-02-28 18:13:26'),
(994, NULL, NULL, 42, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:13:27', '2020-02-28 18:13:27'),
(995, NULL, NULL, 42, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:13:27', '2020-02-28 18:13:27'),
(996, NULL, NULL, 42, NULL, 'Biding', '10.000000000000009', NULL, NULL, 'DR', '2020-02-28 18:13:28', '2020-02-28 18:13:28'),
(997, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:28', '2020-02-28 18:13:28'),
(998, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:28', '2020-02-28 18:13:28'),
(999, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:28', '2020-02-28 18:13:28'),
(1000, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:28', '2020-02-28 18:13:28'),
(1001, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:28', '2020-02-28 18:13:28'),
(1002, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:29', '2020-02-28 18:13:29'),
(1003, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:29', '2020-02-28 18:13:29'),
(1004, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:29', '2020-02-28 18:13:29'),
(1005, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:29', '2020-02-28 18:13:29'),
(1006, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:29', '2020-02-28 18:13:29'),
(1007, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:29', '2020-02-28 18:13:29'),
(1008, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:30', '2020-02-28 18:13:30'),
(1009, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:30', '2020-02-28 18:13:30'),
(1010, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:30', '2020-02-28 18:13:30'),
(1011, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:13:30', '2020-02-28 18:13:30'),
(1012, NULL, NULL, 43, NULL, 'Biding', '280', NULL, NULL, 'DR', '2020-02-28 18:14:20', '2020-02-28 18:14:20'),
(1013, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:16:38', '2020-02-28 18:16:38'),
(1014, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:16:41', '2020-02-28 18:16:41'),
(1015, NULL, NULL, 42, NULL, 'Biding', '39.99999999999994', NULL, NULL, 'DR', '2020-02-28 18:16:59', '2020-02-28 18:16:59'),
(1016, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:17:02', '2020-02-28 18:17:02'),
(1017, NULL, NULL, 43, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-28 18:23:09', '2020-02-28 18:23:09'),
(1018, NULL, NULL, 42, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-28 18:23:14', '2020-02-28 18:23:14'),
(1019, NULL, NULL, 43, NULL, 'Biding', '20.000000000000018', NULL, NULL, 'DR', '2020-02-28 18:23:28', '2020-02-28 18:23:28'),
(1020, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:30:57', '2020-02-28 18:30:57'),
(1021, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:31:00', '2020-02-28 18:31:00'),
(1022, NULL, NULL, 42, NULL, 'Biding', '39.99999999999994', NULL, NULL, 'DR', '2020-02-28 18:31:04', '2020-02-28 18:31:04'),
(1023, NULL, NULL, 43, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-28 18:32:33', '2020-02-28 18:32:33'),
(1024, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:35:17', '2020-02-28 18:35:17'),
(1025, NULL, NULL, 42, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-28 18:35:27', '2020-02-28 18:35:27'),
(1026, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:35:58', '2020-02-28 18:35:58'),
(1027, NULL, NULL, 43, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-28 18:36:00', '2020-02-28 18:36:00'),
(1028, NULL, NULL, 42, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-28 18:36:07', '2020-02-28 18:36:07'),
(1029, NULL, NULL, 42, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:49:10', '2020-02-28 18:49:10'),
(1030, NULL, NULL, 43, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-28 18:50:11', '2020-02-28 18:50:11'),
(1031, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:51:03', '2020-02-28 18:51:03'),
(1032, NULL, NULL, 42, NULL, 'Biding', '29.999999999999982', NULL, NULL, 'DR', '2020-02-28 18:51:06', '2020-02-28 18:51:06'),
(1033, NULL, NULL, 43, NULL, 'Biding', '19.99999999999993', NULL, NULL, 'DR', '2020-02-28 18:51:18', '2020-02-28 18:51:18'),
(1034, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:52:52', '2020-02-28 18:52:52'),
(1035, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:52:55', '2020-02-28 18:52:55'),
(1036, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:52:57', '2020-02-28 18:52:57'),
(1037, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:52:58', '2020-02-28 18:52:58'),
(1038, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:52:59', '2020-02-28 18:52:59'),
(1039, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:53:24', '2020-02-28 18:53:24'),
(1040, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:53:25', '2020-02-28 18:53:25'),
(1041, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:54:04', '2020-02-28 18:54:04'),
(1042, NULL, NULL, 43, NULL, 'Biding', '9.999999999999964', NULL, NULL, 'DR', '2020-02-28 18:54:11', '2020-02-28 18:54:11'),
(1043, NULL, NULL, 35, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '15.00', NULL, 'DR', '2020-03-02 16:14:40', '2020-03-02 16:14:40'),
(1044, NULL, NULL, 35, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '15.00', NULL, 'DR', '2020-03-02 16:16:07', '2020-03-02 16:16:07'),
(1045, NULL, NULL, 40, 'Auction Joining Fee', 'Auction Joining Fee', NULL, '15.00', NULL, 'DR', '2020-03-02 16:25:22', '2020-03-02 16:25:22'),
(1046, NULL, NULL, 39, NULL, 'Refund Bonus', '10000', NULL, NULL, 'CR', '2020-03-03 11:38:19', '2020-03-03 11:38:19'),
(1047, NULL, NULL, 39, NULL, 'Refund Bonus', '10000', NULL, NULL, 'CR', '2020-03-03 11:47:50', '2020-03-03 11:47:50'),
(1048, NULL, NULL, 39, NULL, 'Refund Bonus', '10000', NULL, NULL, 'CR', '2020-03-03 13:20:13', '2020-03-03 13:20:13'),
(1049, NULL, NULL, 39, NULL, 'Refund Bonus', '10000', NULL, NULL, 'CR', '2020-03-03 13:21:14', '2020-03-03 13:21:14'),
(1050, NULL, NULL, 38, NULL, 'Refund Bonus', '15000', NULL, NULL, 'CR', '2020-03-03 13:23:03', '2020-03-03 13:23:03'),
(1051, NULL, NULL, 44, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-03-04 11:45:41', '2020-03-04 11:45:41'),
(1052, NULL, NULL, 45, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-03-04 11:46:14', '2020-03-04 11:46:14'),
(1053, NULL, NULL, 46, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-03-04 11:46:47', '2020-03-04 11:46:47'),
(1054, NULL, NULL, 47, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-03-04 12:02:44', '2020-03-04 12:02:44'),
(1055, NULL, NULL, 48, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-03-04 12:03:04', '2020-03-04 12:03:04'),
(1056, NULL, NULL, 49, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-03-04 12:03:55', '2020-03-04 12:03:55'),
(1057, NULL, NULL, 50, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-03-04 12:04:44', '2020-03-04 12:04:44'),
(1058, NULL, NULL, 51, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-03-04 12:05:03', '2020-03-04 12:05:03'),
(1059, NULL, NULL, 52, NULL, 'Sign up Bonus', '500', NULL, NULL, 'CR', '2020-03-04 12:05:24', '2020-03-04 12:05:24'),
(1060, NULL, NULL, 42, 'a4', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:24:47', '2020-03-16 13:24:47'),
(1061, NULL, NULL, 49, 'a11', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:24:47', '2020-03-16 13:24:47'),
(1062, NULL, NULL, 42, 'a4', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:28:50', '2020-03-16 13:28:50'),
(1063, NULL, NULL, 43, 'a5', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:28:50', '2020-03-16 13:28:50'),
(1064, NULL, NULL, 46, 'a8', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:28:50', '2020-03-16 13:28:50'),
(1065, NULL, NULL, 47, 'a9', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:28:50', '2020-03-16 13:28:50'),
(1066, NULL, NULL, 49, 'a11', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:28:50', '2020-03-16 13:28:50'),
(1067, NULL, NULL, 50, 'a12', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:28:50', '2020-03-16 13:28:50'),
(1068, NULL, NULL, 51, 'a13', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:28:50', '2020-03-16 13:28:50'),
(1069, NULL, NULL, 52, 'a14', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:28:50', '2020-03-16 13:28:50'),
(1070, NULL, NULL, 42, 'a4', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:29:44', '2020-03-16 13:29:44'),
(1071, NULL, NULL, 43, 'a5', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:29:44', '2020-03-16 13:29:44'),
(1072, NULL, NULL, 46, 'a8', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:29:44', '2020-03-16 13:29:44'),
(1073, NULL, NULL, 47, 'a9', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:29:44', '2020-03-16 13:29:44'),
(1074, NULL, NULL, 49, 'a11', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:29:44', '2020-03-16 13:29:44'),
(1075, NULL, NULL, 50, 'a12', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:29:44', '2020-03-16 13:29:44'),
(1076, NULL, NULL, 51, 'a13', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:29:44', '2020-03-16 13:29:44'),
(1077, NULL, NULL, 52, 'a14', 'Coin Gift', '10', NULL, NULL, 'CR', '2020-03-16 13:29:44', '2020-03-16 13:29:44'),
(1078, NULL, NULL, 42, 'a4', 'Coin Deduct', '10', NULL, NULL, 'DR', '2020-03-16 13:32:26', '2020-03-16 13:32:26');

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
  `role_id` int(10) UNSIGNED DEFAULT 3,
  `remember_token` varchar(100) DEFAULT NULL,
  `membership_id` int(10) UNSIGNED DEFAULT 1,
  `package_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token` varchar(191) DEFAULT NULL,
  `referral_token` varchar(191) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
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
  `avatar` varchar(255) DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `mobile_number_verified_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `name`, `email`, `mobile_number`, `role_id`, `remember_token`, `membership_id`, `package_id`, `api_token`, `referral_token`, `password`, `is_active`, `is_suspended`, `uplink1`, `uplink2`, `gender`, `address`, `address2`, `city`, `pincode`, `state`, `country`, `avatar`, `email_verified_at`, `mobile_number_verified_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(18, 'adityakumar129', 'Aditya Kumar', 'admin@gmail.com', '8528528520', 1, NULL, 1, NULL, '', 'vd8YsdGN86fGiCesErIuEhw1stljRSx3P6ZSTrsITnFkzynDtlR0lDSXqOjSlJzX6tfqQ6IDbUbxIsSHxkAWq9KeQN3yJFwqKRhPm3zvceZjWFaabIcnyWhgk7UZW1midc4LiKEFRObXOKPLE6y0J7FsTVkWEoylSTObvmTfKUv7dJCrKKJA51fKUHdDBKo', '$2y$10$Y/W4gD6hgQF2EeKydD0BC.vWNiJDrjGBTlYq1fqtiPdSFKP3C/cVa', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-17', '2020-01-17 13:21:55', NULL),
(35, 'abcd', 'abcd', 'abcd@gmail.com', NULL, 3, NULL, 3, NULL, 'aANOBUYar7OadIdiLUtaLb57tWnI64du76ooI935Q59xXlMZCc5F5BCYVyt4VomGcsxdrBHkkdZF89C5gcZesdcEc3LwcLIB2BKRmiNqsgjTEAHrSU5VVHjtCGTqTrRY9ijplU5KMhAYlWJV5gedwDMDAmP00H7LYbkfHwwsPANLTW8wGtnJgg3NqaUsqSe', 'QfLGuJCsIeZY7CJSMuIr4Cz4HXtzCmnKw7YXe1JVuUzFwvyiiGWplTX3hGjVKWC5Dc9nI4heD6iauH71lwQdOwg0zXB5vxjsBGrg3EghfmZ8GH0hn3AneU9OKEL4JAgJ7R4E4JncYJ5wUp9uoxj9F2mEZ0kgwRmQMBTgeB7YwMckJ2NYY3cAnmPCpXeLpDg', '$2y$10$1XVt1.iQ1/XPy3DDB5Wy2O.ucNE9EsOGlKvau88J1ykwkoJgk9X5.', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-26', '2020-03-16 18:21:36', '2020-03-16 18:21:36'),
(36, 'abcd1', 'abcd1', 'abcd1@gmail.com', NULL, 3, NULL, 3, NULL, 'mNxgChzUtVBfXpTBXpSW2mvvrhFhLHLITS3rF8uOySkeYAoA8fEvep9rfgpm12SsehwdCBlfuCyNdpT5LWJWJtpr0Ad7x6uka2nMxNTdr0RFhJfzvab4fpCWqiL2zOOxEUTGF9HkL9Q4M9ULivQDQjFNZ4cNIcbXAbPPcIObA02if5BLs7xOvkohJg2Tlpu', 'dcpGbMLf29VnYQ1cpus9ZW7UVywPBjVbkdxexJrQ6H5KdVG73aA7I4zSn5lPYgPAlTIJhFanYVQeZjYRrrrBkiOgPw4i2ByoQ9R4UtzCmjD9Rd3cIj9t1iX0tDDkWSvg1kTOQEhQ9waMaO3DRm0t67nEkvI0QuZpZPJYjNpklKvoUKFBkrxIR1W7dfjUT4y', '$2y$10$Y8i6me6MRbvmhRX1/4A8cOvTP65YTVnRyh84sjgFdtiEzTAsgrRaS', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-26', '2020-03-16 18:21:49', '2020-03-16 18:21:49'),
(37, NULL, 'Subadmin', 'subadmin@gmail.com', NULL, 2, NULL, 1, NULL, NULL, NULL, '$2y$10$T4MskZ6UC12hzRvrWIbq2.1XgqJDeCiyHiCUImuG7ZQATjRuplrq2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'subAdmin/ttRZjQLuHZG72UFtsIOgtKuNpNozTmJY6k2GFopJ.jpeg', NULL, NULL, '2020-02-26', '2020-03-16 17:15:51', NULL),
(38, 'abcd2', 'abcd2', 'abcd2@gmail.com', '1111111111', 3, NULL, 1, NULL, 'ZZZwlUfPOriGIPrcnPHhffxOPi0Tbyo82paXmY57DYgku8iV3M8uUKcvHnwUXh1l7YuEDbSyLMljaWPDa46iZ3OG1omQCgYZOJsuEEdq05U8uYMJIlsWr4AnACBLIwI0P0BewPfcxallZOtwK3F425X0vADc4sBGPKLOXc2Z9gLjuMlWLY4rqnaKixdoKwD', 'QAKJAkEaWNVEXcv8RcycSJKK0ItpRwewfEayPg1AhXamwLd5bJ9odXEGFzsyllSHbXmVztEIrHFvSBN9MObsusI6h2iMjOWyviRmwTMsNwEbM8omBKeI3iZ8xF8RVSCvrK8jtq59hEnY2AMF2HWxQU96tQPT3qPpAKGT8hC0aUUxMNB4K4BtRt6nmsfryMU', '$2y$10$5EURvs3wY22wPCy8v.FNJ.C8t.t/Lp60ObMkm5E7bb/68TtS7JDCq', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/dPdpKK1w4AwuJFPhqjvtO0GgUfzHjRVFgl4jwQ0n.jpeg', NULL, NULL, '2020-02-26', '2020-03-16 18:21:57', '2020-03-16 18:21:57'),
(39, 'a1', 'a1', 'a1@gmail.com', '2222222222', 3, NULL, 4, NULL, 'cRgaBUYo7eVv9NPQLzLnLTPHgSONmNxrbPdQZxIQ4ZKCPY5tY9TDx972HF3RIN0z537toVHzldAXZTfcaMi1TzZjBVRAr5Xhw0o1FWSs7SSN2F356CGHju1jbh6KLb1UE5lXSNCQrg2tDcFZc5VfUaHfh3wpE1XkBioV1HqTg9DzTtdR2aSZhaqS0UqXh34', 'uSJYMl3tKBpaF3pRHS5TeOcI5OTsEajKjzp0fjpkPaw4Tv1Kwp8sPjGsgBPNcbCRaJpSJZ5nYx8awdEhz12tSEHImWeuusyJHMlc45IHlvD53xxAW9hDVMG10mXBPZLbjFuOl9r9nCdhOs5cJFIatBWuGLQ4Mmf9GllbjVa6Res3kn5op7q8tHXEwwAemMM', '$2y$10$VsISkBZB8rubg3uvMnIz2.yjAHizL8aHl75KHRaRCtvj7FLOoEiAK', 1, NULL, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/ExhWomM98k8IqWMe6seOU0eJSmy1d2yEo16lbOgA.jpeg', NULL, NULL, '2020-02-27', '2020-03-16 18:24:01', '2020-03-16 18:24:01'),
(40, 'a2', 'a2', 'a2@gmail.com', '8888888888', 3, NULL, 3, NULL, 'v7NelPna24H8OjNt6Xe9jyTx7mepHunvFIgp0INQSEpJtptq3sbtfglBXD12HEv9G5Ryxmn6R840BrkUZ0abHSDU4j3M8u7myuJp7lEL83qiNdOcYUbD4UHCqOkKFi8b6nZQGMCD6r5erqGkiSy8mRfDCjubCIDQ2IpvcOnFynfrNFQFiTtIO0SzPdTpSwn', '4GtrcgevnEVLGuAicTZZ1E0fZn7WyODrBp2RxJdD3JgzHRoi3FpHy3wZ3pd2PaTRbI53BXPP3x73s2tC7Ci9clT5EkMWqWlxVzwAgZfHUfk1XsDBQnNODbq4UXU5OZrhfnwjcC3YsXHdKwGHzBruo8squ8ULPQAoULOD0o0Mf1CB8LesEJNfHqG8DC953e4', '$2y$10$cbuGa2ftKccU/X8uG/NZR.hDWDyI.t4NsHLs5wS6RWLpvgvnyM7GW', 1, NULL, 39, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/caqaxu1rJooo5maR4Tp6qVxceBJfdzKO33zNbgHz.jpeg', NULL, NULL, '2020-02-27', '2020-03-16 18:24:16', '2020-03-16 18:24:16'),
(41, 'a3', 'a3', 'a3@gmail.com', '3333333333', 3, NULL, 5, NULL, 'bEPa17wvxiQrvVUq4y9UVLEp8llcBA3KXCmyu0Ce1BAeg4qzMej9TBN8e2NeUc4BsV9BWTVeA9RHHxidPqnN68F0uE1xqxWQ5j8S30RiMSVfoIuE34kMHECALT6NW0SAUqV05embzdL0SPIddbXvzM7pzTDSfBPoQCvLQxmMEbOlSQ8pdPwXhl43vJNE7EO', 'zyhOGy3v8xeLzQXXq7tJOaL95rENO1omGBCX0YJIP93Mvqkj2bjVr3Ypj6gGCRO2ArIzg9ebecs7Kyd6S44sPaSjVSaCJXqzhJFlt4oXMSrFle8PKV1MZcLFof34WyRgB4CEkJyrnunus89Zjsp8lPEX0114FjC6PoCnqOIa6TiKptXy0gakJ1zOQmXS2zo', '$2y$10$fNpk6CNCTDsxCKod21iO6.GxrP3VlOY2yIHTEJhU12Tzu.5.H.PhW', 1, NULL, 40, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/rWRMYp8U0UHKPvcqOXl0FlTRX0jPiBov4FX0ZJUQ.jpeg', NULL, NULL, '2020-02-27', '2020-03-19 17:40:51', NULL),
(42, 'a4', 'a4', 'a4@gmail.com', '4444444444', 3, NULL, 1, NULL, '4LfzLnSiFejwQbbfRhUcz13UQXIXmvMRYnt4MGTXFqo2aEXYEwJQy1iiK0Aq54xbzReCsHMXEolBLsoVVZB1lvVd9gKehPeSyyNwssGgO0c2YbZxtvUD6251dFA839ZQfdhxmhM2joXwqyGcnIDRZLvD1BPZWXHIN1v7xgRnV1i6NJnTQw6JWCp9lNY6GTC', 'ILB6GQdvf9fYC8KUGLPRdtBQ16OZ8EspOnYIkzNp6FTXS5X00ldjteM8rJYZhM5VCzUoAeyaLVwlEzvUXjHzbbKAX9EBGyMzqI5kijUpOq2otAeMyZWrkMskMYtZJ3t7nTNgSLARrqx5LjxS7do5NGXXMDLHc1Ty3Zh777i26yM7uAfXu90Gbk42PpKO863', '$2y$10$/Doggv20uNHN4PbVa47MruukTmL0eXDC43Z8mnkxiMhMq1Chg6Cvy', 0, NULL, 40, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/14KRo7azJ7omLJMN9IoBl9YmfxOf53pEsmglSArW.jpeg', NULL, NULL, '2020-02-27', '2020-03-19 17:26:30', NULL),
(43, 'a5', 'a5', 'a5@gmail.com', NULL, 3, NULL, 1, NULL, 'Zqhec0mRknPV6DcdJGi1gKEdgWyQs5xe8ofXIIpzepwk8uLTHWUVOfQniEuEHCcCfcZVH9H7YXaefHj6HjQa0lIy6w36BMuGYuJaBTExf2xa8lmDYX7W6ElQMAeETTi5WGrihilTvLdNIj5ZJgniWNVnunqIeXQEQNXWZK5SIMelpGEoBWdhW1dgTUiSGEC', 'ljjtzlT10mP44DpU6psn96bi8RrEjpXu00V4l5nhrxUgyoguLSxomj3EkYJHhgegiCaT9tB5sYsMJOI3Cz83j86ZfANo0vuvRNL7taNAtMyIFJa2tYSBDbjTzySxlkOPGUBMlKRjGEgBIKpbJ6bQtiCU20wntyfa54FoBgc281aMf1itItRG88ubjRkoy38', '$2y$10$7vCB6llzMxZfpfL69VrgruMBA8EO.MVgtPAX2pGKeRRYhrCh2kWTe', 1, NULL, 41, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/caqaxu1rJooo5maR4Tp6qVxceBJfdzKO33zNbgHz.jpeg', NULL, NULL, '2020-02-27', '2020-02-27 12:13:12', NULL),
(44, 'a6', 'a6', 'a6@gmail.com', NULL, 3, NULL, 1, NULL, 'VMaBwzz4AElz4T748sq8WMY5qqXZt9m5QSibsdAujQWjKmkz7zVXmYVIVaC7i0GzKPQ8JLnPJwCCjRl3hvoRTvLcOxx5bbzToLiNzCjsDrzg6omu2SKC1fClT1wnqgGfsGPoKpfEAVv5eTRbwxsCpEFoxU3QxcqF74K4z2En2wbbpIBR424Q1b2SXiS9pEA', 'nJ0d5X9jGWCSQb2yVJ3yszeW6c5xszrrgDH0wwghGN8JwtEtFZBwehmYV07wAZ7T4GCiLRdfb0WdhpsIMbBQBkClij6FMPvXhhtaZxESMNFGu8hoU23kE9OzTb5hXbaR0nguqZTFX9j78J5Svbp9vSWXo3OfEvG4ios8pzSDWpPOSDanixZxoyL8p0tjFQ3', '$2y$10$huPLUmqrRdsqYjfRLN4AluNp9rsNQ79xUOSP/V3dWhjI.SrBd/KyK', 0, NULL, 41, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/14KRo7azJ7omLJMN9IoBl9YmfxOf53pEsmglSArW.jpeg', NULL, NULL, '2020-03-04', '2020-03-19 17:26:36', NULL),
(45, 'a7', 'a7', 'a7@gmail.com', NULL, 3, NULL, 1, NULL, 'tDJrolkjPaF0gwVMGid3mDnc9QTJPscBHCeVZmonZ3YlAlFIgmSO2UDLR5xGGAbVfLvglefsqVkRzmpDfsKiDxC9mRrkOP15p6RWGDQwLIo3V7dpBGRaABPZGv63tU574HYpS4BiwYhdSkQBdsl9H5xCjfK3X38C0TzE8rxSE0AExAGdx9doVDiyFFZEueb', 'kAG9c3sTMhdJH5BMUgDTEZgxdn6N3nFhClxNk5Ma3UIJII6aBL1iOzBf4Y4ZcpwL5d9Yqh4DVjUkqj0trKgK4gXeseRQJxGjnhJIcJUCFE1jxISrshFm1c12lpQUf7v0JrrTP4ZwAg8SGbxRWYB4nh7CSRyxDwTxATf5y56RPQS58rEqJWDCl7PnVX8DTob', '$2y$10$8/9qhLGszPlMcp3WFY1A/.QgztBOtDvkkApzhHIquDseQZh1DiZuK', 1, NULL, 41, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/ExhWomM98k8IqWMe6seOU0eJSmy1d2yEo16lbOgA.jpeg', NULL, NULL, '2020-03-04', '2020-03-19 17:26:33', NULL),
(46, 'a8', 'a8', 'a8@gmail.com', NULL, 3, NULL, 1, NULL, 'bxcLLy0JfaCl4GDXuQUXTxqsAhrFqKUJiqwqcMxBqIT2QD0mPbsqIUZSQ50Xacacg9f3G8J1VVEJ0KCFsUFa1plElNH2uRm7hAl4qsFlPGlgIXGL6RFojsRYsucMGaVOtqgpUz5g6JGe53HPDyjjT3qf6P9TNtb7QqO09j5LfH4z2VWkSbKuMZwy9h3K0zC', 'KiDTNeAD8ujKjKPomiXnldTi47qngr4WJv5LMawKYsFM4xQWztoIGYzRSKB1MqdA8Nsndi6oDw6qwX8ncmroaOMLG0VLLimQecEVywUNLaYFxPBpoHNyveJavr5nOGYfNTHF8KL6VnFxaTnirOGgHL1bEnJo77RRnE9LKWsgq47FGyAduVHYm188OBrrYmG', '$2y$10$69M1raPJutEfjKZpMT2ioudO8GaBNAuDGQsDQ14Jx1ZhdStduZctu', 1, NULL, 41, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/14KRo7azJ7omLJMN9IoBl9YmfxOf53pEsmglSArW.jpeg', NULL, NULL, '2020-03-04', '2020-03-05 12:46:02', NULL),
(47, 'a9', 'a9', 'a9@gmail.com', NULL, 3, NULL, 1, NULL, 'Mflcv7LpPbvDBpMU5Oh0ej1ayTdxpPlus0kuRhQQjKR9PQMPhSodvFguaQomrBsKedEV0dvfQL94yRH7kPbRtCSIVflZzwbfTvoErdJ2r3Kfrzk7GCEPvryExzUa3weccUzBzO1NP92E4n35tYmQg0TxluWnBfKNQdBoDjYF27VdGWMMPhMOyI5zlT9zP54', 'GPm9D8cS2PcbOfeWGAGDhuzl3IiYkXd4MuNPivJE5CruGyWxNdy75ZXbX9s3QHXJSIkz6kKghkKNrIQ2CMgPor8P2CSOWIVf9qy629HQ062vQ91iWDkbhSbuvSrGNt7A2qKsbIePadwaSsYmanpVYfUGQ3qpGpNshM6IzAm4WZb11ecPw5k21ib2vmUoCDn', '$2y$10$VU0vJd5aJIGSfaP6vGRCu.UMSy3AxPeVtXQlity1vvC4Ox73o9jtK', 1, NULL, 41, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/dPdpKK1w4AwuJFPhqjvtO0GgUfzHjRVFgl4jwQ0n.jpeg', NULL, NULL, '2020-03-04', '2020-03-05 12:46:04', NULL),
(48, 'a10', 'a10', 'a10@gmail.com', NULL, 3, NULL, 1, NULL, 'uJAkQIDlwG9V0499TRTJLtN5KUdov3EdZ4MyUMjwG2VD8DrzI2Du0cxVY4EWPQg9yl7OP1Nk7uBYxpWA6oqa9QeDi2wrQY0tDCjoJJWBoos33WgSouOMkC3Ik3oWa9gAZkrhm4XvKXAY7d6JiR6q6xuDithxhapNDZYRxTcwcNLBXzlVAqzzDIpKAcm6RLv', 'Z5f8MuJaUUnhunQyP6RLZUEfuQ5s3yib4iRh8KEC7gQTPl5KEzk8gwjLJJAO5EcFBHPD7y13JMfBFMLmF1rV1TW6vNyQenM5vBJACVW9jyyQwIgwY1OHFLY4FsEniTZOCHRZzuBmnNxdDVfbCOAVo6A0wAU1Zb3IXtYmOjOK076WI4xQ4HHgQjYUufWFwxg', '$2y$10$iuFoaDPCJgSWSDfmSNfX5OYOxNKqIIJoEp3GP.3biJNG6F6HsWOEy', 0, NULL, 42, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/caqaxu1rJooo5maR4Tp6qVxceBJfdzKO33zNbgHz.jpeg', NULL, NULL, '2020-03-04', '2020-03-16 18:22:04', '2020-03-16 18:22:04'),
(49, 'a11', 'a11', 'a11@gmail.com', NULL, 3, NULL, 1, NULL, 'WUf69HKuNlFDTuJf597LT8VXF0Dgm7ajHazpCMZCsWwRJsCR81sHuv86n4Fs7HNNBUda0BFkuT6vEMxjmUIHqt72HwYnUqGnyPU97n2eCoJsZnC6uNBGLdG1GZykoh5uuT7djhZFMgM5SHylw1GElcwntsFFPZQf4FN87nXb95AiEQar555iI1THTzWZQ9u', 'cUC7ibFLNEwzFg71bg2Nw9diJ9xTn83N4UeBka0Y6gKG29aKFQabsnT05a6i0NHcVya7DtrNTHOAFML3rxQmiosR0AkRK1J9BVxv6HhRHZAd90tCg0cNsRSn1fh9G1o0aorwO5jbS8F4oiJwYQIl92EKus4LFJvBFVdn4VnN4Oj3wxYzAB6C81z7EW1hYNu', '$2y$10$Inl8RMftidjvZeRsdWjpG.M8r1pgVxCRMSzRcdGWkQrt/m7G46T6W', 1, NULL, 42, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/14KRo7azJ7omLJMN9IoBl9YmfxOf53pEsmglSArW.jpeg', NULL, NULL, '2020-03-04', '2020-03-04 12:03:55', NULL),
(50, 'a12', 'a12', 'a12@gmail.com', NULL, 3, NULL, 1, NULL, 'kXD5zXpC60XRx48St702hBC4mUhqzgijfAL3WNu5sdJWXfDHSG4cv1z0HZbxFHEbMdiZZ48Ualcp55W4JwiJiQqq4B6uJGUZS1Rq94Pl3pq6DBLeLLPb6KL9CcD7rmiVkd8HU0aBa8vJ7d6llsWpdtVqWc6IJEf75K7k7MbDZs3f1dJwPQnzsMJkEwM1LNO', 'oe6u5fcfD4TkSTCXO0mwOPI5M9dFJdb2aeYck4ewJap7qnzTbzf0eIiVTiyoLW70zaLRPe7BNwkH0miZH3EwHUgeRjHlFnyW35cESEicVmwGCl1FMvI2crigRwCxdTlBVUlnaeJrY10mNiYkJ2cHCd7rmrZwZk1DFpvXdQexmFi7kTOrLlL1BaraZ8uTnn0', '$2y$10$C50wu1aK1MovJU.7qrg9HuUcW2Ydqwm/njm7DFCrpmJBIni0k1/K6', 1, NULL, 42, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/dPdpKK1w4AwuJFPhqjvtO0GgUfzHjRVFgl4jwQ0n.jpeg', NULL, NULL, '2020-03-04', '2020-03-04 12:04:44', NULL),
(51, 'a13', 'a13', 'a13@gmail.com', NULL, 3, NULL, 1, NULL, 'Lki2HrxB6urtCABzzbGvVDlPOenDPg5V46qiCWnt3QXidSYiczbnDMv0b5Hx26Sl8zZw6QmTYZh2ug6Q6ku5bIKVgVC2XvRJ00dS55MDvqIPoRHOQTmHQfbjqN30YbI7vvB3Af2MHlsgnLCBiI4UP5jQQqMHWGRs7Sld2Urvnd8EJvxC92HnF82jN7dDriv', 'GvagNCGPi4XHEXTwaA7UVU7hJ4oASq2qQwJgxmfDf9NADvnUl2SudP7igAGzkNWCW6TdWqibNBEWaPPJnfGjVev7CYGRKEvKH4QOHfkWnodgYUJrGdzMe0O3LfAW8bMcBswVIFtGch4G6ILcsPJez19qW89prMh0SNVWxDaoSd4BzNlJa0aDtgy91hSSdfL', '$2y$10$Nvyb1UfB.5AyVihvbrKda.KYL614.hEzhAnBilv/3svT5CTFeC2We', 1, NULL, 42, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/ExhWomM98k8IqWMe6seOU0eJSmy1d2yEo16lbOgA.jpeg', NULL, NULL, '2020-03-04', '2020-03-19 17:20:56', '2020-03-19 17:20:56'),
(52, 'a14', 'a14', 'a14@gmail.com', NULL, 3, NULL, 1, NULL, 'BjoQW8ZiYcYaO2UOI3wWJhjR9jdIAVclQC7uZkkf6QRe24kqBvcJAW2vcd7HJieRbWHWJcOsY4Z13MdFnq6irsY2hq5ifmneo0ectMJ0AUrmY5WBvKf1loeGc3rN2nFFR8LFZWn29o6VnQscyFwk3orSEc0zy5Ce10XNACm8lVhpvMiDtHc4Y0ygTGPTXOs', 'lOkutSzpuPeat5bviLHn0TQyd5KuX8chybKHtBtXr2JVBJaEoW4oqUKqCEVaPdVTgziHG5TahK9U5ydxyOeNXVjFASRdhxbp3TDwX95jIAbyxVS1PBzi5dzDRqyFA9wCNhjJAwefKwDac2ypPolTDmNctrJWQRgp9j5VRvlGX6Vc3SWOS1zF0GNTQkAK8AV', '$2y$10$NDLk0E0L.sBwPqiiBYBj1unaqowpCTsW20ZT8rSkMvWwEm1xALg9S', 0, NULL, 42, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members/14KRo7azJ7omLJMN9IoBl9YmfxOf53pEsmglSArW.jpeg', NULL, NULL, '2020-03-04', '2020-03-19 17:35:08', NULL),
(53, NULL, 'Nobita Hitachi', 'nobita@gmail.com', NULL, 2, NULL, 1, NULL, NULL, NULL, '$2y$10$Jd8HegmCiuX/8eQUpgsTTOvsZ4S/E38hnG8VPn70MC7Af6zbYuv0i', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16', '2020-03-16 17:45:35', '2020-03-16 17:45:35'),
(54, NULL, 'Ramesh Das', 'rameshdas028@gmail.com', '45845454547', 2, NULL, 1, NULL, NULL, NULL, '$2y$10$JB/ooiuBmssgnGaQt7wbteG/S5FoMPqonQQFqUbNCvBp6skMr1Xca', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'subAdmin/CWWHfDt5vNuw5cEs0Mu5GTocJPDPvwJToafUf1hn.jpeg', NULL, NULL, '2020-03-16', '2020-03-16 17:45:15', '2020-03-16 17:45:15'),
(55, NULL, 'Ind Kat', 'indkat028@gmail.com', NULL, 2, NULL, 1, NULL, NULL, NULL, '$2y$10$phevHLvfHVzCqsQnexFfJ.yQ4iOJUEVq2MMZ2yIqGIN2mp1B8kFLC', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16', '2020-03-16 17:42:24', '2020-03-16 17:42:24'),
(56, 'men@gmail.com', 'Ramesh Das', 'raaameshdas028@gmail.com', '07059476213', 3, NULL, 1, NULL, NULL, NULL, '$2y$10$36oMaJ5dP8036flVkRhFKOyafT2yHzKeC4dyGN1Sg2OBA52nOQ8ua', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16', '2020-03-16 18:29:32', '2020-03-16 18:29:32'),
(57, NULL, 'Doremon', 'doremon@gmail.com', '1599511591', 2, NULL, 1, NULL, NULL, NULL, '$2y$10$XMwaNzbyHZlI31SLgLsBuulfW6bsdgOkB7E1NU41l1RwFk7ziB4DC', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-18', '2020-03-18 10:48:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 18, 1, '2020-03-14 10:14:44', '0000-00-00 00:00:00'),
(2, 18, 2, '2020-03-13 18:30:00', '2020-03-13 18:30:00'),
(3, 18, 3, '2020-03-14 11:42:29', '2020-03-13 18:30:00'),
(4, 18, 4, '2020-03-14 12:38:14', '2020-03-13 18:30:00'),
(5, 18, 5, '2020-03-13 18:30:00', '2020-03-13 18:30:00'),
(6, 18, 6, '2020-03-13 18:30:00', '2020-03-13 18:30:00'),
(7, 18, 7, '2020-03-14 13:51:50', '2020-03-13 18:30:00'),
(8, 18, 8, '2020-03-14 13:51:55', '2020-03-13 18:30:00'),
(9, 18, 9, '2020-03-14 13:52:25', '2020-03-13 18:30:00'),
(10, 18, 10, '2020-03-14 13:52:29', '2020-03-13 18:30:00'),
(11, 18, 11, '2020-03-14 13:52:33', '0000-00-00 00:00:00'),
(12, 18, 12, '2020-03-14 13:52:37', '0000-00-00 00:00:00'),
(13, 18, 13, '2020-03-19 05:52:10', '2020-03-19 05:41:35'),
(14, 18, 14, '2020-03-19 05:52:20', '2020-03-19 05:41:35'),
(15, 18, 15, '2020-03-19 05:53:00', '2020-03-19 05:41:35'),
(16, 18, 16, '2020-03-19 05:53:06', '2020-03-19 05:41:35'),
(17, 18, 17, '2020-03-19 05:53:20', '2020-03-19 05:41:35'),
(18, 18, 18, '2020-03-19 05:53:37', '2020-03-19 05:41:35'),
(19, 18, 19, '2020-03-19 08:18:43', '2020-03-19 05:41:35'),
(20, 18, 20, '2020-03-18 18:30:00', '2020-03-18 18:30:00'),
(21, 18, 21, '2020-03-19 10:15:47', '0000-00-00 00:00:00'),
(22, 18, 22, '2020-03-19 10:17:08', '0000-00-00 00:00:00'),
(23, 18, 23, '2020-03-19 10:17:11', '0000-00-00 00:00:00'),
(24, 18, 24, '2020-03-19 10:17:30', '0000-00-00 00:00:00'),
(25, 18, 25, '2020-03-19 10:17:30', '0000-00-00 00:00:00'),
(26, 18, 26, '2020-03-19 11:30:32', '0000-00-00 00:00:00'),
(27, 18, 27, '2020-03-19 12:07:26', '0000-00-00 00:00:00'),
(28, 18, 28, '2020-03-20 10:37:26', '0000-00-00 00:00:00'),
(29, 18, 29, '2020-03-20 10:37:26', '0000-00-00 00:00:00'),
(30, 18, 30, '2020-03-20 10:37:26', '0000-00-00 00:00:00'),
(31, 18, 31, '2020-03-20 10:37:47', '0000-00-00 00:00:00'),
(32, 18, 32, '2020-03-20 10:37:47', '0000-00-00 00:00:00'),
(93, 37, 18, '2020-03-20 11:28:33', '2020-03-20 11:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coins` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid_coin` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `coins`, `bid_coin`, `created_at`, `updated_at`) VALUES
(16, 18, '500', '0.00', '2020-01-17 13:21:55', '2020-01-17 13:21:55'),
(17, 35, '493680', '-40.00', '2020-02-26 16:04:07', '2020-03-02 16:16:07'),
(18, 36, '46720', '-20.00', '2020-02-26 16:09:40', '2020-02-26 18:51:38'),
(19, 38, '15500', '0.00', '2020-02-26 18:50:11', '2020-03-03 13:23:03'),
(20, 39, '83730', '-20.00', '2020-02-27 12:10:02', '2020-03-03 13:21:14'),
(21, 40, '40280', '0.00', '2020-02-27 12:12:13', '2020-03-02 16:25:22'),
(22, 41, '48185', '0.00', '2020-02-27 12:12:37', '2020-02-28 10:58:15'),
(23, 42, '45415', '0.00', '2020-02-27 12:12:55', '2020-03-16 13:32:26'),
(24, 43, '44200', '-20.00', '2020-02-27 12:13:12', '2020-03-16 13:29:44'),
(25, 44, '500', '0.00', '2020-03-04 11:45:41', '2020-03-04 11:45:41'),
(26, 45, '500', '0.00', '2020-03-04 11:46:14', '2020-03-04 11:46:14'),
(27, 46, '520', '0.00', '2020-03-04 11:46:47', '2020-03-16 13:29:44'),
(28, 47, '520', '0.00', '2020-03-04 12:02:44', '2020-03-16 13:29:44'),
(29, 48, '500', '0.00', '2020-03-04 12:03:04', '2020-03-04 12:03:04'),
(30, 49, '530', '0.00', '2020-03-04 12:03:55', '2020-03-16 13:29:44'),
(31, 50, '520', '0.00', '2020-03-04 12:04:44', '2020-03-16 13:29:44'),
(32, 51, '520', '0.00', '2020-03-04 12:05:03', '2020-03-16 13:29:44'),
(33, 52, '520', '0.00', '2020-03-04 12:05:24', '2020-03-16 13:29:44');

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
  `description` longtext DEFAULT NULL,
  `description2` longtext DEFAULT NULL,
  `description3` longtext DEFAULT NULL,
  `description4` longtext DEFAULT NULL,
  `description5` longtext DEFAULT NULL,
  `description6` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `description`, `description2`, `description3`, `description4`, `description5`, `description6`, `created_at`, `updated_at`) VALUES
(1, '<h1>Lorem Ipsum</h1>\r\n\r\n<p>&quot;Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...&quot;</p>\r\n\r\n<p>&quot;There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...&quot;</p>\r\n\r\n<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n\r\n<h3>Section 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.&quot;</p>', '<h1>Lorem Ipsum</h1>\r\n\r\n<p>&quot;Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...&quot;</p>\r\n\r\n<p>&quot;There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...&quot;</p>\r\n\r\n<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '<h1>Lorem Ipsum</h1>\r\n\r\n<p>&quot;Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...&quot;</p>\r\n\r\n<p>&quot;There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...&quot;</p>\r\n\r\n<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '<h1>Lorem Ipsum</h1>\r\n\r\n<p>&quot;Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...&quot;</p>\r\n\r\n<p>&quot;There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...&quot;</p>\r\n\r\n<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '<h1>Lorem Ipsum</h1>\r\n\r\n<p>&quot;Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...&quot;</p>\r\n\r\n<p>&quot;There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...&quot;</p>\r\n\r\n<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '2020-03-03 07:23:31', '2020-03-03 01:24:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
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
-- Indexes for table `coin_packages`
--
ALTER TABLE `coin_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_coin_packages`
--
ALTER TABLE `custom_coin_packages`
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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `advertisments`
--
ALTER TABLE `advertisments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `analytic_logs`
--
ALTER TABLE `analytic_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `auctions`
--
ALTER TABLE `auctions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auction_claims`
--
ALTER TABLE `auction_claims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT for table `coin_packages`
--
ALTER TABLE `coin_packages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `custom_coin_packages`
--
ALTER TABLE `custom_coin_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `homepages`
--
ALTER TABLE `homepages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `membership_packages`
--
ALTER TABLE `membership_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `normal_coin_packs`
--
ALTER TABLE `normal_coin_packs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `play_auctions`
--
ALTER TABLE `play_auctions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1079;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
-- Constraints for table `bids`
--
ALTER TABLE `bids`
  ADD CONSTRAINT `bids_ibfk_1` FOREIGN KEY (`play_auction_id`) REFERENCES `play_auctions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `bids_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `bids_ibfk_3` FOREIGN KEY (`auction_id`) REFERENCES `auctions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `play_auctions`
--
ALTER TABLE `play_auctions`
  ADD CONSTRAINT `play_auctions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `winners`
--
ALTER TABLE `winners`
  ADD CONSTRAINT `winners_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `winners_ibfk_2` FOREIGN KEY (`auction_id`) REFERENCES `auctions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
