-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28 أبريل 2024 الساعة 21:49
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medo`
--

-- --------------------------------------------------------

--
-- بنية الجدول `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `addons`
--

INSERT INTO `addons` (`id`, `name`, `unique_identifier`, `version`, `status`, `created_at`, `updated_at`, `about`, `purchase_code`) VALUES
(1, 'Course Bundle', 'course_bundle', '1.5', 1, 1364097600, NULL, 'Course Bundle allows you to sell multiple courses at once. You can sell the bundle on the subscription system.', NULL),
(2, 'Offline Payment Gateway', 'offline_payment', '1.3', 1, 1364097600, NULL, 'Offline payment gateway allows you to take payment through various local payment gateways.', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `applications`
--

CREATE TABLE `applications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `bbb_meetings`
--

CREATE TABLE `bbb_meetings` (
  `id` int(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  `meeting_id` varchar(255) DEFAULT NULL,
  `moderator_pw` varchar(255) DEFAULT NULL,
  `viewer_pw` varchar(255) DEFAULT NULL,
  `instructions` longtext DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `description` longtext NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `is_popular` int(11) NOT NULL,
  `likes` longtext NOT NULL,
  `added_date` varchar(100) NOT NULL,
  `updated_date` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `added_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `blog_comments`
--

CREATE TABLE `blog_comments` (
  `blog_comment_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `likes` longtext NOT NULL,
  `added_date` varchar(100) NOT NULL,
  `updated_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `bundle_payment`
--

CREATE TABLE `bundle_payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bundle_creator_id` int(11) DEFAULT NULL,
  `bundle_id` int(11) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT 0,
  `date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `bundle_rating`
--

CREATE TABLE `bundle_rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bundle_id` int(11) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `rating` varchar(15) DEFAULT NULL,
  `date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT 0,
  `slug` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `category`
--

INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES
(1, '3696c3dd00', 'mm', 0, 'mm', 1714190400, NULL, 'rwer', 'category-thumbnail.png'),
(2, '8cf7f1bf7a', 'wer', 1, 'wer', 1714190400, NULL, 'fab fa-500px', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('etr9ia8joidatfh6eocs5t2b6940q0hi', '::1', 1714045205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343033383438313b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313731343930393230353b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31333a226d6f68616d65642061686d6564223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d),
('eenplmu46p4efrk9cn17pf1djp32fnmi', '::1', 1714331255, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343034373933313b636172745f6974656d737c613a313a7b693a303b733a313a2231223b7d6c616e67756167657c733a373a22656e676c697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313731353139353233343b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31333a226d6f68616d65642061686d6564223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b6c61796f75747c733a343a226c697374223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d),
('ftgjiud5nrjccpkdqo29m2j6bft07r5b', '::1', 1714210971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343230393336333b636172745f6974656d737c613a313a7b693a303b733a313a2231223b7d6c616e67756167657c733a373a22656e676c697368223b72656769737465725f656d61696c7c733a31313a223140676d61696c2e636f6d223b637573746f6d5f73657373696f6e5f6c696d69747c693a313731353037343935313b757365725f69647c733a313a2233223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31323a224a45484144204b48414c4544223b69735f696e7374727563746f727c733a313a2230223b757365725f6c6f67696e7c733a313a2231223b6c61796f75747c733a343a226c697374223b7061796d656e745f64657461696c737c613a383a7b733a32303a22746f74616c5f70617961626c655f616d6f756e74223b643a3130303b733a353a226974656d73223b613a313a7b693a303b613a393a7b733a323a226964223b733a313a2231223b733a353a227469746c65223b733a333a22313233223b733a393a227468756d626e61696c223b733a38343a22687474703a2f2f6c6f63616c686f73742f61632f6173736574732f66726f6e74656e642f64656661756c742d6e65772f696d672f636f757273655f7468756d626e61696c5f706c616365686f6c6465722e6a7067223b733a31303a2263726561746f725f6964223b733a313a2231223b733a31333a22646973636f756e745f666c6167223b4e3b733a31363a22646973636f756e7465645f7072696365223b733a313a2230223b733a353a227072696365223b733a333a22313030223b733a31323a2261637475616c5f7072696365223b733a333a22313030223b733a393a227375625f6974656d73223b613a303a7b7d7d7d733a32383a2269735f696e7374727563746f725f7061796f75745f757365725f6964223b623a303b733a31333a227061796d656e745f7469746c65223b733a32353a2250617920666f722070757263686173696e6720636f75727365223b733a31313a22737563636573735f75726c223b733a35303a22687474703a2f2f6c6f63616c686f73742f61632f7061796d656e742f737563636573735f636f757273655f7061796d656e74223b733a31303a2263616e63656c5f75726c223b733a32373a22687474703a2f2f6c6f63616c686f73742f61632f7061796d656e74223b733a383a226261636b5f75726c223b733a33383a22687474703a2f2f6c6f63616c686f73742f61632f686f6d652f73686f7070696e675f63617274223b733a31353a22676966745f746f5f757365725f6964223b4e3b7d6170706c6965645f636f75706f6e7c4e3b746f74616c5f70726963655f6f665f636865636b696e675f6f75747c693a3130303b676966745f746f5f757365725f69647c4e3b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d),
('2ij6i1042kolbfrgqsbf5dsaj8lm56vo', '::1', 1714330660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343333303030353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313731353139343035313b757365725f69647c733a313a2234223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31333a226d6f68616d65642061686d6564223b69735f696e7374727563746f727c733a313a2230223b757365725f6c6f67696e7c733a313a2231223b6c61796f75747c733a343a226c697374223b7061796d656e745f64657461696c737c733a303a22223b6170706c6965645f636f75706f6e7c733a303a22223b746f74616c5f70726963655f6f665f636865636b696e675f6f75747c693a3130303b676966745f746f5f757365725f69647c4e3b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d);

-- --------------------------------------------------------

--
-- بنية الجدول `comment`
--

CREATE TABLE `comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` longtext DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `contact`
--

CREATE TABLE `contact` (
  `id` int(21) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `has_read` int(11) DEFAULT NULL,
  `replied` int(11) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `discount_percentage` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `course`
--

CREATE TABLE `course` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `outcomes` longtext DEFAULT NULL,
  `faqs` text NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext DEFAULT NULL,
  `requirements` longtext DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT 0,
  `discounted_price` double DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `course_type` varchar(255) DEFAULT NULL,
  `is_top_course` int(11) DEFAULT 0,
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `course_overview_provider` varchar(255) DEFAULT NULL,
  `meta_keywords` longtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `is_free_course` int(11) DEFAULT NULL,
  `multi_instructor` int(11) NOT NULL DEFAULT 0,
  `enable_drip_content` int(11) NOT NULL,
  `creator` int(11) DEFAULT NULL,
  `expiry_period` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `course`
--

INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `faqs`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `course_type`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`, `multi_instructor`, `enable_drip_content`, `creator`, `expiry_period`) VALUES
(1, '123', '', '', '[]', '[]', 'english', 1, 2, '[1]', '[]', 100, NULL, 0, 'beginner', '1', NULL, '', 1714190400, NULL, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 12);

-- --------------------------------------------------------

--
-- بنية الجدول `course_bundle`
--

CREATE TABLE `course_bundle` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `course_ids` longtext DEFAULT NULL,
  `subscription_limit` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT 0,
  `bundle_details` longtext DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `ccavenue_supported` int(11) DEFAULT 0,
  `iyzico_supported` int(11) DEFAULT 0,
  `paystack_supported` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES
(1, 'US Dollar', 'USD', '$', 1, 1, 0, 0, 0),
(2, 'Albanian Lek', 'ALL', 'Lek', 0, 1, 0, 0, 0),
(3, 'Algerian Dinar', 'DZD', 'دج', 1, 1, 0, 0, 0),
(4, 'Angolan Kwanza', 'AOA', 'Kz', 1, 1, 0, 0, 0),
(5, 'Argentine Peso', 'ARS', '$', 1, 1, 0, 0, 0),
(6, 'Armenian Dram', 'AMD', '֏', 1, 1, 0, 0, 0),
(7, 'Aruban Florin', 'AWG', 'ƒ', 1, 1, 0, 0, 0),
(8, 'Australian Dollar', 'AUD', '$', 1, 1, 0, 0, 0),
(9, 'Azerbaijani Manat', 'AZN', 'm', 1, 1, 0, 0, 0),
(10, 'Bahamian Dollar', 'BSD', 'B$', 1, 1, 0, 0, 0),
(11, 'Bahraini Dinar', 'BHD', '.د.ب', 1, 1, 0, 0, 0),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1, 1, 0, 0, 0),
(13, 'Barbadian Dollar', 'BBD', 'Bds$', 1, 1, 0, 0, 0),
(14, 'Belarusian Ruble', 'BYR', 'Br', 0, 0, 0, 0, 0),
(15, 'Belgian Franc', 'BEF', 'fr', 1, 1, 0, 0, 0),
(16, 'Belize Dollar', 'BZD', '$', 1, 1, 0, 0, 0),
(17, 'Bermudan Dollar', 'BMD', '$', 1, 1, 0, 0, 0),
(18, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 1, 1, 0, 0, 0),
(19, 'Bitcoin', 'BTC', '฿', 1, 1, 0, 0, 0),
(20, 'Bolivian Boliviano', 'BOB', 'Bs.', 1, 1, 0, 0, 0),
(21, 'Bosnia', 'BAM', 'KM', 1, 1, 0, 0, 0),
(22, 'Botswanan Pula', 'BWP', 'P', 1, 1, 0, 0, 0),
(23, 'Brazilian Real', 'BRL', 'R$', 1, 1, 0, 0, 0),
(24, 'British Pound Sterling', 'GBP', '£', 1, 1, 0, 0, 0),
(25, 'Brunei Dollar', 'BND', 'B$', 1, 1, 0, 0, 0),
(26, 'Bulgarian Lev', 'BGN', 'Лв.', 1, 1, 0, 0, 0),
(27, 'Burundian Franc', 'BIF', 'FBu', 1, 1, 0, 0, 0),
(28, 'Cambodian Riel', 'KHR', 'KHR', 1, 1, 0, 0, 0),
(29, 'Canadian Dollar', 'CAD', '$', 1, 1, 0, 0, 0),
(30, 'Cape Verdean Escudo', 'CVE', '$', 1, 1, 0, 0, 0),
(31, 'Cayman Islands Dollar', 'KYD', '$', 1, 1, 0, 0, 0),
(32, 'CFA Franc BCEAO', 'XOF', 'CFA', 1, 1, 0, 0, 0),
(33, 'CFA Franc BEAC', 'XAF', 'FCFA', 1, 1, 0, 0, 0),
(34, 'CFP Franc', 'XPF', '₣', 1, 1, 0, 0, 0),
(35, 'Chilean Peso', 'CLP', '$', 1, 1, 0, 0, 0),
(36, 'Chinese Yuan', 'CNY', '¥', 1, 1, 0, 0, 0),
(37, 'Colombian Peso', 'COP', '$', 1, 1, 0, 0, 0),
(38, 'Comorian Franc', 'KMF', 'CF', 1, 1, 0, 0, 0),
(39, 'Congolese Franc', 'CDF', 'FC', 1, 1, 0, 0, 0),
(40, 'Costa Rican ColÃ³n', 'CRC', '₡', 1, 1, 0, 0, 0),
(41, 'Croatian Kuna', 'HRK', 'kn', 1, 1, 0, 0, 0),
(42, 'Cuban Convertible Peso', 'CUC', '$, CUC', 1, 1, 0, 0, 0),
(43, 'Czech Republic Koruna', 'CZK', 'Kč', 1, 1, 0, 0, 0),
(44, 'Danish Krone', 'DKK', 'Kr.', 1, 1, 0, 0, 0),
(45, 'Djiboutian Franc', 'DJF', 'Fdj', 1, 1, 0, 0, 0),
(46, 'Dominican Peso', 'DOP', '$', 1, 1, 0, 0, 0),
(47, 'East Caribbean Dollar', 'XCD', '$', 1, 1, 0, 0, 0),
(48, 'Egyptian Pound', 'EGP', 'ج.م', 1, 1, 0, 0, 0),
(49, 'Eritrean Nakfa', 'ERN', 'Nfk', 1, 1, 0, 0, 0),
(50, 'Estonian Kroon', 'EEK', 'kr', 1, 1, 0, 0, 0),
(51, 'Ethiopian Birr', 'ETB', 'Nkf', 1, 1, 0, 0, 0),
(52, 'Euro', 'EUR', '€', 1, 1, 0, 0, 0),
(53, 'Falkland Islands Pound', 'FKP', '£', 1, 1, 0, 0, 0),
(54, 'Fijian Dollar', 'FJD', 'FJ$', 1, 1, 0, 0, 0),
(55, 'Gambian Dalasi', 'GMD', 'D', 1, 1, 0, 0, 0),
(56, 'Georgian Lari', 'GEL', 'ლ', 1, 1, 0, 0, 0),
(57, 'German Mark', 'DEM', 'DM', 1, 1, 0, 0, 0),
(58, 'Ghanaian Cedi', 'GHS', 'GH₵', 1, 1, 0, 0, 0),
(59, 'Gibraltar Pound', 'GIP', '£', 1, 1, 0, 0, 0),
(60, 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', 1, 1, 0, 0, 0),
(61, 'Guatemalan Quetzal', 'GTQ', 'Q', 1, 1, 0, 0, 0),
(62, 'Guinean Franc', 'GNF', 'FG', 1, 1, 0, 0, 0),
(63, 'Guyanaese Dollar', 'GYD', '$', 1, 1, 0, 0, 0),
(64, 'Haitian Gourde', 'HTG', 'G', 1, 1, 0, 0, 0),
(65, 'Honduran Lempira', 'HNL', 'L', 1, 1, 0, 0, 0),
(66, 'Hong Kong Dollar', 'HKD', '$', 1, 1, 0, 0, 0),
(67, 'Hungarian Forint', 'HUF', 'Ft', 1, 1, 0, 0, 0),
(68, 'Icelandic KrÃ³na', 'ISK', 'kr', 1, 1, 0, 0, 0),
(69, 'Indian Rupee', 'INR', '₹', 1, 1, 1, 0, 0),
(70, 'Indonesian Rupiah', 'IDR', 'Rp', 1, 1, 0, 0, 0),
(71, 'Iranian Rial', 'IRR', '﷼', 1, 1, 0, 0, 0),
(72, 'Iraqi Dinar', 'IQD', 'د.ع', 1, 1, 0, 0, 0),
(73, 'Israeli New Sheqel', 'ILS', '₪', 1, 1, 0, 0, 0),
(74, 'Italian Lira', 'ITL', 'L,£', 1, 1, 0, 0, 0),
(75, 'Jamaican Dollar', 'JMD', 'J$', 1, 1, 0, 0, 0),
(76, 'Japanese Yen', 'JPY', '¥', 1, 1, 0, 0, 0),
(77, 'Jordanian Dinar', 'JOD', 'ا.د', 1, 1, 0, 0, 0),
(78, 'Kazakhstani Tenge', 'KZT', 'лв', 1, 1, 0, 0, 0),
(79, 'Kenyan Shilling', 'KES', 'KSh', 1, 1, 0, 0, 0),
(80, 'Kuwaiti Dinar', 'KWD', 'ك.د', 1, 1, 0, 0, 0),
(81, 'Kyrgystani Som', 'KGS', 'лв', 1, 1, 0, 0, 0),
(82, 'Laotian Kip', 'LAK', '₭', 1, 1, 0, 0, 0),
(83, 'Latvian Lats', 'LVL', 'Ls', 0, 0, 0, 0, 0),
(84, 'Lebanese Pound', 'LBP', '£', 1, 1, 0, 0, 0),
(85, 'Lesotho Loti', 'LSL', 'L', 1, 1, 0, 0, 0),
(86, 'Liberian Dollar', 'LRD', '$', 1, 1, 0, 0, 0),
(87, 'Libyan Dinar', 'LYD', 'د.ل', 1, 1, 0, 0, 0),
(88, 'Lithuanian Litas', 'LTL', 'Lt', 0, 0, 0, 0, 0),
(89, 'Macanese Pataca', 'MOP', '$', 1, 1, 0, 0, 0),
(90, 'Macedonian Denar', 'MKD', 'ден', 1, 1, 0, 0, 0),
(91, 'Malagasy Ariary', 'MGA', 'Ar', 1, 1, 0, 0, 0),
(92, 'Malawian Kwacha', 'MWK', 'MK', 1, 1, 0, 0, 0),
(93, 'Malaysian Ringgit', 'MYR', 'RM', 1, 1, 0, 0, 0),
(94, 'Maldivian Rufiyaa', 'MVR', 'Rf', 1, 1, 0, 0, 0),
(95, 'Mauritanian Ouguiya', 'MRO', 'MRU', 1, 1, 0, 0, 0),
(96, 'Mauritian Rupee', 'MUR', '₨', 1, 1, 0, 0, 0),
(97, 'Mexican Peso', 'MXN', '$', 1, 1, 0, 0, 0),
(98, 'Moldovan Leu', 'MDL', 'L', 1, 1, 0, 0, 0),
(99, 'Mongolian Tugrik', 'MNT', '₮', 1, 1, 0, 0, 0),
(100, 'Moroccan Dirham', 'MAD', 'MAD', 1, 1, 0, 0, 0),
(101, 'Mozambican Metical', 'MZM', 'MT', 1, 1, 0, 0, 0),
(102, 'Myanmar Kyat', 'MMK', 'K', 1, 1, 0, 0, 0),
(103, 'Namibian Dollar', 'NAD', '$', 1, 1, 0, 0, 0),
(104, 'Nepalese Rupee', 'NPR', '₨', 1, 1, 0, 0, 0),
(105, 'Netherlands Antillean Guilder', 'ANG', 'ƒ', 1, 1, 0, 0, 0),
(106, 'New Taiwan Dollar', 'TWD', '$', 1, 1, 0, 0, 0),
(107, 'New Zealand Dollar', 'NZD', '$', 1, 1, 0, 0, 0),
(108, 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', 1, 1, 0, 0, 0),
(109, 'Nigerian Naira', 'NGN', '₦', 1, 1, 0, 0, 1),
(110, 'North Korean Won', 'KPW', '₩', 0, 0, 0, 0, 0),
(111, 'Norwegian Krone', 'NOK', 'kr', 1, 1, 0, 0, 0),
(112, 'Omani Rial', 'OMR', '.ع.ر', 0, 0, 0, 0, 0),
(113, 'Pakistani Rupee', 'PKR', '₨', 1, 1, 0, 0, 0),
(114, 'Panamanian Balboa', 'PAB', 'B/.', 1, 1, 0, 0, 0),
(115, 'Papua New Guinean Kina', 'PGK', 'K', 1, 1, 0, 0, 0),
(116, 'Paraguayan Guarani', 'PYG', '₲', 1, 1, 0, 0, 0),
(117, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 1, 1, 0, 0, 0),
(118, 'Philippine Peso', 'PHP', '₱', 1, 1, 0, 0, 0),
(119, 'Polish Zloty', 'PLN', 'zł', 1, 1, 0, 0, 0),
(120, 'Qatari Rial', 'QAR', 'ق.ر', 1, 1, 0, 0, 0),
(121, 'Romanian Leu', 'RON', 'lei', 1, 1, 0, 0, 0),
(122, 'Russian Ruble', 'RUB', '₽', 1, 1, 0, 0, 0),
(123, 'Rwandan Franc', 'RWF', 'FRw', 1, 1, 0, 0, 0),
(124, 'Salvadoran ColÃ³n', 'SVC', '₡', 0, 0, 0, 0, 0),
(125, 'Samoan Tala', 'WST', 'SAT', 1, 1, 0, 0, 0),
(126, 'Saudi Riyal', 'SAR', '﷼', 1, 1, 0, 0, 0),
(127, 'Serbian Dinar', 'RSD', 'din', 1, 1, 0, 0, 0),
(128, 'Seychellois Rupee', 'SCR', 'SRe', 1, 1, 0, 0, 0),
(129, 'Sierra Leonean Leone', 'SLL', 'Le', 1, 1, 0, 0, 0),
(130, 'Singapore Dollar', 'SGD', '$', 1, 1, 0, 0, 0),
(131, 'Slovak Koruna', 'SKK', 'Sk', 1, 1, 0, 0, 0),
(132, 'Solomon Islands Dollar', 'SBD', 'Si$', 1, 1, 0, 0, 0),
(133, 'Somali Shilling', 'SOS', 'Sh.so.', 1, 1, 0, 0, 0),
(134, 'South African Rand', 'ZAR', 'R', 1, 1, 0, 0, 0),
(135, 'South Korean Won', 'KRW', '₩', 1, 1, 0, 0, 0),
(136, 'Special Drawing Rights', 'XDR', 'SDR', 1, 1, 0, 0, 0),
(137, 'Sri Lankan Rupee', 'LKR', 'Rs', 1, 1, 0, 0, 0),
(138, 'St. Helena Pound', 'SHP', '£', 1, 1, 0, 0, 0),
(139, 'Sudanese Pound', 'SDG', '.س.ج', 1, 1, 0, 0, 0),
(140, 'Surinamese Dollar', 'SRD', '$', 1, 1, 0, 0, 0),
(141, 'Swazi Lilangeni', 'SZL', 'E', 1, 1, 0, 0, 0),
(142, 'Swedish Krona', 'SEK', 'kr', 1, 1, 0, 0, 0),
(143, 'Swiss Franc', 'CHF', 'CHf', 1, 1, 0, 0, 0),
(144, 'Syrian Pound', 'SYP', 'LS', 0, 0, 0, 0, 0),
(145, 'São Tomé and Príncipe Dobra', 'STD', 'Db', 1, 1, 0, 0, 0),
(146, 'Tajikistani Somoni', 'TJS', 'SM', 1, 1, 0, 0, 0),
(147, 'Tanzanian Shilling', 'TZS', 'TSh', 1, 1, 0, 0, 0),
(148, 'Thai Baht', 'THB', '฿', 1, 1, 0, 0, 0),
(149, 'Tongan pa\'anga', 'TOP', '$', 1, 1, 0, 0, 0),
(150, 'Trinidad & Tobago Dollar', 'TTD', '$', 1, 1, 0, 0, 0),
(151, 'Tunisian Dinar', 'TND', 'ت.د', 1, 1, 0, 0, 0),
(152, 'Turkish Lira', 'TRY', '₺', 1, 1, 0, 1, 0),
(153, 'Turkmenistani Manat', 'TMT', 'T', 1, 1, 0, 0, 0),
(154, 'Ugandan Shilling', 'UGX', 'USh', 1, 1, 0, 0, 0),
(155, 'Ukrainian Hryvnia', 'UAH', '₴', 1, 1, 0, 0, 0),
(156, 'United Arab Emirates Dirham', 'AED', 'إ.د', 1, 1, 0, 0, 0),
(157, 'Uruguayan Peso', 'UYU', '$', 1, 1, 0, 0, 0),
(158, 'Afghan Afghani', 'AFA', '؋', 1, 1, 0, 0, 0),
(159, 'Uzbekistan Som', 'UZS', 'лв', 1, 1, 0, 0, 0),
(160, 'Vanuatu Vatu', 'VUV', 'VT', 1, 1, 0, 0, 0),
(161, 'Venezuelan BolÃvar', 'VEF', 'Bs', 0, 0, 0, 0, 0),
(162, 'Vietnamese Dong', 'VND', '₫', 1, 1, 0, 0, 0),
(163, 'Yemeni Rial', 'YER', '﷼', 1, 1, 0, 0, 0),
(164, 'Zambian Kwacha', 'ZMK', 'ZK', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- بنية الجدول `custom_page`
--

CREATE TABLE `custom_page` (
  `custom_page_id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_content` longtext NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `button_title` varchar(255) NOT NULL,
  `button_position` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `enrol`
--

CREATE TABLE `enrol` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `gifted_by` int(11) NOT NULL DEFAULT 0,
  `expiry_date` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `enrol`
--

INSERT INTO `enrol` (`id`, `user_id`, `course_id`, `gifted_by`, `expiry_date`, `date_added`, `last_modified`) VALUES
(1, 4, 1, 0, '1745434639', 1714255200, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(1, 'banner_title', 'Start learning from best Platform'),
(2, 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!'),
(4, 'about_us', '<p></p><h2><span xss=\"removed\">About us</span></h2>'),
(10, 'terms_and_condition', '<h2>Terms and Condition</h2>'),
(11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span></h2>'),
(13, 'theme', 'default-new'),
(14, 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.'),
(15, 'cookie_status', 'active'),
(16, 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>'),
(17, 'banner_image', '{\"home_1\":\"home-1.png\"}'),
(18, 'light_logo', 'logo-light.png'),
(19, 'dark_logo', 'logo-dark.png'),
(20, 'small_logo', 'logo-light-sm.png'),
(21, 'favicon', 'favicon.png'),
(22, 'recaptcha_status', '0'),
(23, 'recaptcha_secretkey', 'Valid-secret-key'),
(24, 'recaptcha_sitekey', 'Valid-site-key'),
(25, 'refund_policy', '<h2><span xss=\"removed\">Refund Policy</span></h2>'),
(26, 'facebook', 'https://facebook.com'),
(27, 'twitter', 'https://twitter.com'),
(28, 'linkedin', ''),
(31, 'blog_page_title', 'Where possibilities begin'),
(32, 'blog_page_subtitle', 'We’re a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.'),
(33, 'blog_page_banner', 'blog-page.png'),
(34, 'instructors_blog_permission', '0'),
(35, 'blog_visibility_on_the_home_page', '1'),
(37, 'website_faqs', '[]'),
(38, 'motivational_speech', '[]'),
(39, 'home_page', 'home_1'),
(40, 'contact_info', '{\"email\":\"admin@example.com,\\r\\nsystem@example.com\",\"phone\":\"609-502-5899\\r\\n345-444-2122\",\"address\":\"455 Wolff Streets Suite 674\",\"office_hours\":\"10:00 AM - 6:00 PM\"}'),
(41, 'custom_css', ''),
(42, 'embed_code', ''),
(43, 'top_course_section', '1'),
(44, 'latest_course_section', '1'),
(45, 'top_category_section', '1'),
(46, 'upcoming_course_section', '1'),
(47, 'faq_section', '1'),
(48, 'top_instructor_section', '1'),
(49, 'motivational_speech_section', '1'),
(50, 'promotional_section', '1');

-- --------------------------------------------------------

--
-- بنية الجدول `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext DEFAULT NULL,
  `english` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'english', 'english'),
(2, '404_not_found', '404 not found'),
(3, 'courses', 'Courses'),
(4, 'all_courses', 'All courses'),
(5, 'search', 'Search'),
(6, 'search', 'Search'),
(7, 'search', 'Search'),
(8, 'search', 'Search'),
(9, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'),
(10, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'),
(11, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'),
(12, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'),
(13, 'checkout', 'Checkout'),
(14, 'checkout', 'Checkout'),
(15, 'checkout', 'Checkout'),
(16, 'checkout', 'Checkout'),
(17, 'login', 'Login'),
(18, 'login', 'Login'),
(19, 'login', 'Login'),
(20, 'login', 'Login'),
(21, 'join_now', 'Join now'),
(22, 'join_now', 'Join now'),
(23, 'sign_up', 'Sign up'),
(24, 'sign_up', 'Sign up'),
(25, 'cart', 'Cart'),
(26, 'cart', 'Cart'),
(27, 'cart', 'Cart'),
(28, 'categories', 'Categories'),
(29, 'cookie_policy', 'Cookie policy'),
(30, 'cookie_policy', 'Cookie policy'),
(31, 'cookie_policy', 'Cookie policy'),
(32, 'accept', 'Accept'),
(33, 'home', 'Home'),
(34, 'home', 'Home'),
(35, 'home', 'Home'),
(36, 'the_page_you_requested_could_not_be_found', 'The page you requested could not be found'),
(37, 'the_page_you_requested_could_not_be_found', 'The page you requested could not be found'),
(38, 'check_the_spelling_of_the_url', 'Check the spelling of the url'),
(39, 'check_the_spelling_of_the_url', 'Check the spelling of the url'),
(40, 'check_the_spelling_of_the_url', 'Check the spelling of the url'),
(41, 'check_the_spelling_of_the_url', 'Check the spelling of the url'),
(42, 'check_the_spelling_of_the_url', 'Check the spelling of the url'),
(43, 'if_you_are_still_puzzled,_click_on_the_home_link_below', 'If you are still puzzled, click on the home link below'),
(44, 'if_you_are_still_puzzled,_click_on_the_home_link_below', 'If you are still puzzled, click on the home link below'),
(45, 'if_you_are_still_puzzled,_click_on_the_home_link_below', 'If you are still puzzled, click on the home link below'),
(46, 'if_you_are_still_puzzled,_click_on_the_home_link_below', 'If you are still puzzled, click on the home link below'),
(47, 'back_to_home', 'Back to home'),
(48, 'back_to_home', 'Back to home'),
(49, 'back_to_home', 'Back to home'),
(50, 'back_to_home', 'Back to home'),
(51, 'back_to_home', 'Back to home'),
(52, 'top_categories', 'Top categories'),
(53, 'top_categories', 'Top categories'),
(54, 'useful_links', 'Useful links'),
(55, 'become_an_instructor', 'Become an instructor'),
(56, 'blog', 'Blog'),
(57, 'help', 'Help'),
(58, 'contact_us', 'Contact us'),
(59, 'about_us', 'About us'),
(60, 'privacy_policy', 'Privacy policy'),
(61, 'terms_and_condition', 'Terms and condition'),
(62, 'faq', 'Faq'),
(63, 'refund_policy', 'Refund policy'),
(64, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter'),
(65, 'enter_your_email_address', 'Enter your email address'),
(66, 'creativeitem', 'Creativeitem'),
(67, 'are_you_sure', 'Are you sure'),
(68, 'yes', 'Yes'),
(69, 'no', 'No'),
(70, 'log_in', 'Log in'),
(71, 'explore,_learn,_and_grow_with_us._enjoy_a_seamless_and_enriching_educational_journey._lets_begin!', 'Explore, learn, and grow with us. enjoy a seamless and enriching educational journey. lets begin!'),
(72, 'your_email', 'Your email'),
(73, 'enter_your_email', 'Enter your email'),
(74, 'password', 'Password'),
(75, 'enter_your_valid_password', 'Enter your valid password'),
(76, 'forgot_password?', 'Forgot password?'),
(77, 'don`t_have_an_account?', 'Don`t have an account?'),
(78, 'or', 'Or'),
(79, 'welcome', 'Welcome'),
(80, 'dashboard', 'Dashboard'),
(81, 'quick_actions', 'Quick actions'),
(82, 'create_course', 'Create course'),
(83, 'add_course', 'Add course'),
(84, 'add_new_lesson', 'Add new lesson'),
(85, 'add_lesson', 'Add lesson'),
(86, 'add_student', 'Add student'),
(87, 'enrol_a_student', 'Enrol a student'),
(88, 'enrol_student', 'Enrol student'),
(89, 'help_center', 'Help center'),
(90, 'read_documentation', 'Read documentation'),
(91, 'watch_video_tutorial', 'Watch video tutorial'),
(92, 'get_customer_support', 'Get customer support'),
(93, 'order_customization', 'Order customization'),
(94, 'request_a_new_feature', 'Request a new feature'),
(95, 'browse_addons', 'Browse addons'),
(96, 'remove_all', 'Remove all'),
(97, 'notification', 'Notification'),
(98, 'no_notification', 'No notification'),
(99, 'stay_tuned!', 'Stay tuned!'),
(100, 'notifications_about_your_activity_will_show_up_here.', 'Notifications about your activity will show up here.'),
(101, 'notification_settings', 'Notification settings'),
(102, 'mark_all_as_read', 'Mark all as read'),
(103, 'admin', 'Admin'),
(104, 'my_account', 'My account'),
(105, 'settings', 'Settings'),
(106, 'logout', 'Logout'),
(107, 'visit_website', 'Visit website'),
(108, 'navigation', 'Navigation'),
(109, 'manage_courses', 'Manage courses'),
(110, 'add_new_course', 'Add new course'),
(111, 'course_category', 'Course category'),
(112, 'coupons', 'Coupons'),
(113, 'enrollments', 'Enrollments'),
(114, 'course_enrollment', 'Course enrollment'),
(115, 'enrol_history', 'Enrol history'),
(116, 'report', 'Report'),
(117, 'admin_revenue', 'Admin revenue'),
(118, 'instructor_revenue', 'Instructor revenue'),
(119, 'purchase_history', 'Purchase history'),
(120, 'users', 'Users'),
(121, 'admins', 'Admins'),
(122, 'manage_admins', 'Manage admins'),
(123, 'add_new_admin', 'Add new admin'),
(124, 'instructors', 'Instructors'),
(125, 'manage_instructors', 'Manage instructors'),
(126, 'add_new_instructor', 'Add new instructor'),
(127, 'instructor_payout', 'Instructor payout'),
(128, 'instructor_settings', 'Instructor settings'),
(129, 'applications', 'Applications'),
(130, 'students', 'Students'),
(131, 'manage_students', 'Manage students'),
(132, 'add_new_student', 'Add new student'),
(133, 'message', 'Message'),
(134, 'newsletter', 'Newsletter'),
(135, 'all_newsletter', 'All newsletter'),
(136, 'subscribed_user', 'Subscribed user'),
(137, 'contact', 'Contact'),
(138, 'all_blogs', 'All blogs'),
(139, 'pending_blog', 'Pending blog'),
(140, 'blog_category', 'Blog category'),
(141, 'blog_settings', 'Blog settings'),
(142, 'addons', 'Addons'),
(143, 'themes', 'Themes'),
(144, 'system_settings', 'System settings'),
(145, 'website_settings', 'Website settings'),
(146, 'academy_cloud', 'Academy cloud'),
(147, 'drip_content_settings', 'Drip content settings'),
(148, 'wasabi_storage_settings', 'Wasabi storage settings'),
(149, 'bbb_live_class_settings', 'Bbb live class settings'),
(150, 'payment_settings', 'Payment settings'),
(151, 'language_settings', 'Language settings'),
(152, 'social_login', 'Social login'),
(153, 'custom_page_builder', 'Custom page builder'),
(154, 'data_center', 'Data center'),
(155, 'about', 'About'),
(156, 'manage_profile', 'Manage profile'),
(157, 'admin_revenue_this_year', 'Admin revenue this year'),
(158, 'number_courses', 'Number courses'),
(159, 'number_of_lessons', 'Number of lessons'),
(160, 'number_of_enrolment', 'Number of enrolment'),
(161, 'number_of_student', 'Number of student'),
(162, 'course_overview', 'Course overview'),
(163, 'active_courses', 'Active courses'),
(164, 'pending_courses', 'Pending courses'),
(165, 'requested_withdrawal', 'Requested withdrawal'),
(166, 'january', 'January'),
(167, 'february', 'February'),
(168, 'march', 'March'),
(169, 'april', 'April'),
(170, 'may', 'May'),
(171, 'june', 'June'),
(172, 'july', 'July'),
(173, 'august', 'August'),
(174, 'september', 'September'),
(175, 'october', 'October'),
(176, 'november', 'November'),
(177, 'december', 'December'),
(178, 'this_year', 'This year'),
(179, 'active_course', 'Active course'),
(180, 'pending_course', 'Pending course'),
(181, 'heads_up', 'Heads up'),
(182, 'congratulations', 'Congratulations'),
(183, 'oh_snap', 'Oh snap'),
(184, 'please_fill_all_the_required_fields', 'Please fill all the required fields'),
(185, 'close', 'Close'),
(186, 'cancel', 'Cancel'),
(187, 'continue', 'Continue'),
(188, 'ok', 'Ok'),
(189, 'success', 'Success'),
(190, 'your_server_does_not_allow_uploading_files_that_large.', 'Your server does not allow uploading files that large.'),
(191, 'your_servers_file_upload_limit_is_40mb', 'Your servers file upload limit is 40mb'),
(192, 'successfully', 'Successfully'),
(193, 'div_added_to_bottom_', 'Div added to bottom '),
(194, 'div_has_been_deleted_', 'Div has been deleted '),
(195, 'addon_manager', 'Addon manager'),
(196, 'buy_new_addon', 'Buy new addon'),
(197, 'install_addon', 'Install addon'),
(198, 'installed_addons', 'Installed addons'),
(199, 'available_addons', 'Available addons'),
(200, 'name', 'Name'),
(201, 'version', 'Version'),
(202, 'status', 'Status'),
(203, 'actions', 'Actions'),
(204, 'add_addon', 'Add addon'),
(205, 'install_an_addon', 'Install an addon'),
(206, 'back_to_addon_list', 'Back to addon list'),
(207, 'upload_addon_file', 'Upload addon file'),
(208, 'zip_file', 'Zip file'),
(209, 'back', 'Back'),
(210, 'start_learning_from_best_platform', 'Start learning from best platform'),
(211, 'study_any_topic,_anytime._explore_thousands_of_courses_for_the_lowest_price_ever!', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'),
(212, 'what_do_you_want_to_learn', 'What do you want to learn'),
(213, 'happy', 'Happy'),
(214, 'experienced', 'Experienced'),
(215, 'online_courses', 'Online courses'),
(216, 'explore_a_variety_of_fresh_topics', 'Explore a variety of fresh topics'),
(217, 'expert_instruction', 'Expert instruction'),
(218, 'find_the_right_course_for_you', 'Find the right course for you'),
(219, 'smart_solution', 'Smart solution'),
(220, 'learn_on_your_schedule', 'Learn on your schedule'),
(221, 'top_courses', 'Top courses'),
(222, 'these_are_the_most_popular_courses_among_listen_courses_learners_worldwide', 'These are the most popular courses among listen courses learners worldwide'),
(223, 'top', 'Top'),
(224, 'latest_courses', 'Latest courses'),
(225, 'these_are_the_most_latest_courses_among_listen_courses_learners_worldwide', 'These are the most latest courses among listen courses learners worldwide'),
(226, 'join_now_to_start_learning', 'Join now to start learning'),
(227, 'learn_from_our_quality_instructors!', 'Learn from our quality instructors!'),
(228, 'get_started', 'Get started'),
(229, 'become_a_new_instructor', 'Become a new instructor'),
(230, 'teach_thousands_of_students_and_earn_money!', 'Teach thousands of students and earn money!'),
(231, 'invalid_login_credentials', 'Invalid login credentials'),
(232, 'website_name', 'Website name'),
(233, 'website_title', 'Website title'),
(234, 'website_keywords', 'Website keywords'),
(235, 'website_description', 'Website description'),
(236, 'author', 'Author'),
(237, 'slogan', 'Slogan'),
(238, 'system_email', 'System email'),
(239, 'address', 'Address'),
(240, 'phone', 'Phone'),
(241, 'youtube_api_key', 'Youtube api key'),
(242, 'get_youtube_api_key', 'Get youtube api key'),
(243, 'if_you_want_to_use_google_drive_video,_you_need_to_enable_the_google_drive_service_in_this_api', 'If you want to use google drive video, you need to enable the google drive service in this api'),
(244, 'vimeo_api_key', 'Vimeo api key'),
(245, 'get_vimeo_api_key', 'Get vimeo api key'),
(246, 'purchase_code', 'Purchase code'),
(247, 'system_language', 'System language'),
(248, 'student_email_verification', 'Student email verification'),
(249, 'enable', 'Enable'),
(250, 'disable', 'Disable'),
(251, 'course_accessibility', 'Course accessibility'),
(252, 'publicly', 'Publicly'),
(253, 'only_logged_in_users', 'Only logged in users'),
(254, 'number_of_authorized_devices', 'Number of authorized devices'),
(255, 'how_many_devices_do_you_want_to_allow_for_logging_in_using_a_single_account', 'How many devices do you want to allow for logging in using a single account'),
(256, 'course_selling_tax', 'Course selling tax'),
(257, 'enter_0_if_you_want_to_disable_the_tax_option', 'Enter 0 if you want to disable the tax option'),
(258, 'google_analytics_id', 'Google analytics id'),
(259, 'keep_it_blank_if_you_want_to_disable_it', 'Keep it blank if you want to disable it'),
(260, 'meta_pixel_id', 'Meta pixel id'),
(261, 'footer_text', 'Footer text'),
(262, 'footer_link', 'Footer link'),
(263, 'timezone', 'Timezone'),
(264, 'can_students_disable_their_own_accounts?', 'Can students disable their own accounts?'),
(265, 'save', 'Save'),
(266, 'update_product', 'Update product'),
(267, 'file', 'File'),
(268, 'update', 'Update'),
(269, 'addon_installed_successfully', 'Addon installed successfully'),
(270, 'course_bundle', 'Course bundle'),
(271, 'add_new_bundle', 'Add new bundle'),
(272, 'manage_bundle', 'Manage bundle'),
(273, 'subscription_report', 'Subscription report'),
(274, 'active', 'Active'),
(275, 'addon_update', 'Addon update'),
(276, 'deactive', 'Deactive'),
(277, 'delete', 'Delete'),
(278, 'about_this_addon', 'About this addon'),
(279, 'offline_payment', 'Offline payment'),
(280, 'pending_request', 'Pending request'),
(281, 'accepted_request', 'Accepted request'),
(282, 'suspended_request', 'Suspended request'),
(283, 'offline_payment_settings', 'Offline payment settings'),
(284, 'basic_info', 'Basic info'),
(285, 'first_name', 'First name'),
(286, 'last_name', 'Last name'),
(287, 'email', 'Email'),
(288, 'facebook_link', 'Facebook link'),
(289, 'twitter_link', 'Twitter link'),
(290, 'linkedin_link', 'Linkedin link'),
(291, 'a_short_title_about_yourself', 'A short title about yourself'),
(292, 'skills', 'Skills'),
(293, 'write_your_skill_and_click_the_enter_button', 'Write your skill and click the enter button'),
(294, 'biography', 'Biography'),
(295, 'photo', 'Photo'),
(296, 'the_image_size_should_be_any_square_image', 'The image size should be any square image'),
(297, 'choose_file', 'Choose file'),
(298, 'update_profile', 'Update profile'),
(299, 'current_password', 'Current password'),
(300, 'new_password', 'New password'),
(301, 'confirm_new_password', 'Confirm new password'),
(302, 'update_password', 'Update password'),
(303, 'upcoming_courses', 'Upcoming courses'),
(304, 'free_courses', 'Free courses'),
(305, 'paid_courses', 'Paid courses'),
(306, 'course_list', 'Course list'),
(307, 'all', 'All'),
(308, 'pending', 'Pending'),
(309, 'private', 'Private'),
(310, 'upcoming', 'Upcoming'),
(311, 'instructor', 'Instructor'),
(312, 'price', 'Price'),
(313, 'free', 'Free'),
(314, 'paid', 'Paid'),
(315, 'filter', 'Filter'),
(316, 'title', 'Title'),
(317, 'category', 'Category'),
(318, 'lesson_and_section', 'Lesson and section'),
(319, 'enrolled_student', 'Enrolled student'),
(320, 'add_new_category', 'Add new category'),
(321, 'administration', 'Administration'),
(322, 'log_out', 'Log out'),
(323, 'course_bundles', 'Course bundles'),
(324, 'system_settings_updated', 'System settings updated'),
(325, 'user_update_successfully', 'User update successfully'),
(326, 'enrolled_course', 'Enrolled course'),
(327, 'total_amount', 'Total amount'),
(328, 'enrolment_date', 'Enrolment date'),
(329, 'user', 'User'),
(330, 'course', 'Course'),
(331, 'paid_amount', 'Paid amount'),
(332, 'payment_method', 'Payment method'),
(333, 'purchased_date', 'Purchased date'),
(334, 'add_course_bundle', 'Add course bundle'),
(335, 'bundle_add_form', 'Bundle add form'),
(336, 'course_bundle_title', 'Course bundle title'),
(337, 'select_courses', 'Select courses'),
(338, 'current_price_of_the_courses_is', 'Current price of the courses is'),
(339, 'bundle_price', 'Bundle price'),
(340, 'subscription_renew_days', 'Subscription renew days'),
(341, 'count_day', 'Count day'),
(342, 'thumbnail', 'Thumbnail'),
(343, 'bundle_details', 'Bundle details'),
(344, 'create_bundle', 'Create bundle'),
(345, 'course_adding_form', 'Course adding form'),
(346, 'back_to_course_list', 'Back to course list'),
(347, 'basic', 'Basic'),
(348, 'info', 'Info'),
(349, 'pricing', 'Pricing'),
(350, 'media', 'Media'),
(351, 'seo', 'Seo'),
(352, 'finish', 'Finish'),
(353, 'course_title', 'Course title'),
(354, 'enter_course_title', 'Enter course title'),
(355, 'short_description', 'Short description'),
(356, 'description', 'Description'),
(357, 'select_a_category', 'Select a category'),
(358, 'select_sub_category', 'Select sub category'),
(359, 'level', 'Level'),
(360, 'beginner', 'Beginner'),
(361, 'advanced', 'Advanced'),
(362, 'intermediate', 'Intermediate'),
(363, 'language_made_in', 'Language made in'),
(364, 'enable_drip_content', 'Enable drip content'),
(365, 'create_as_a', 'Create as a'),
(366, 'private_course', 'Private course'),
(367, 'upcoming_course', 'Upcoming course'),
(368, 'check_if_this_course_is_top_course', 'Check if this course is top course'),
(369, 'course_faq', 'Course faq'),
(370, 'faq_question', 'Faq question'),
(371, 'answer', 'Answer'),
(372, 'requirements', 'Requirements'),
(373, 'provide_requirements', 'Provide requirements'),
(374, 'outcomes', 'Outcomes'),
(375, 'provide_outcomes', 'Provide outcomes'),
(376, 'check_if_this_is_a_free_course', 'Check if this is a free course'),
(377, 'course_price', 'Course price'),
(378, 'enter_course_course_price', 'Enter course course price'),
(379, 'check_if_this_course_has_discount', 'Check if this course has discount'),
(380, 'discounted_price', 'Discounted price'),
(381, 'this_course_has', 'This course has'),
(382, 'discount', 'Discount'),
(383, 'expiry_period', 'Expiry period'),
(384, 'lifetime', 'Lifetime'),
(385, 'limited_time', 'Limited time'),
(386, 'number_of_month', 'Number of month'),
(387, 'after_purchase,_students_can_access_the_course_until_your_selected_time.', 'After purchase, students can access the course until your selected time.'),
(388, 'course_overview_provider', 'Course overview provider'),
(389, 'youtube', 'Youtube'),
(390, 'vimeo', 'Vimeo'),
(391, 'html5', 'Html5'),
(392, 'course_overview_url', 'Course overview url'),
(393, 'course_thumbnail', 'Course thumbnail'),
(394, 'meta_keywords', 'Meta keywords'),
(395, 'write_a_keyword_and_then_press_enter_button', 'Write a keyword and then press enter button'),
(396, 'meta_description', 'Meta description'),
(397, 'thank_you', 'Thank you'),
(398, 'you_are_just_one_click_away', 'You are just one click away'),
(399, 'submit', 'Submit'),
(400, 'website_notification', 'Website notification'),
(401, 'smtp_settings', 'Smtp settings'),
(402, 'email_template', 'Email template'),
(403, 'protocol', 'Protocol'),
(404, 'smtp_crypto', 'Smtp crypto'),
(405, 'smtp_host', 'Smtp host'),
(406, 'smtp_port', 'Smtp port'),
(407, 'smtp_from_email', 'Smtp from email'),
(408, 'smtp_username', 'Smtp username'),
(409, 'smtp_password', 'Smtp password'),
(410, 'email_type', 'Email type'),
(411, 'email_subject', 'Email subject'),
(412, 'action', 'Action'),
(413, 'to_admin', 'To admin'),
(414, 'to_user', 'To user'),
(415, 'edit_email_template', 'Edit email template'),
(416, 'to_instructor', 'To instructor'),
(417, 'to_student', 'To student'),
(418, 'to_affiliator', 'To affiliator'),
(419, 'to_payer', 'To payer'),
(420, 'to_receiver', 'To receiver'),
(421, 'configure_your_notification_settings', 'Configure your notification settings'),
(422, 'new_user_registration', 'New user registration'),
(423, 'get_notified_when_a_new_user_signs_up', 'Get notified when a new user signs up'),
(424, 'configure_for_admin', 'Configure for admin'),
(425, 'system_notification', 'System notification'),
(426, 'email_notification', 'Email notification'),
(427, 'configure_for_user', 'Configure for user'),
(428, 'email_verification', 'Email verification'),
(429, 'not_editable', 'Not editable'),
(430, 'it_is_permanently_enabled_for_student_email_verification.', 'It is permanently enabled for student email verification.'),
(431, 'forgot_password_mail', 'Forgot password mail'),
(432, 'account_security_alert', 'Account security alert'),
(433, 'send_verification_code_for_login_from_a_new_device', 'Send verification code for login from a new device'),
(434, 'course_purchase_notification', 'Course purchase notification'),
(435, 'stay_up-to-date_on_student_course_purchases.', 'Stay up-to-date on student course purchases.'),
(436, 'configure_for_student', 'Configure for student'),
(437, 'configure_for_instructor', 'Configure for instructor'),
(438, 'course_completion_mail', 'Course completion mail'),
(439, 'stay_up_to_date_on_student_course_completion.', 'Stay up to date on student course completion.'),
(440, 'offline_payment_suspended_mail', 'Offline payment suspended mail'),
(441, 'if_students_provides_fake_information,_notify_them_of_the_suspension', 'If students provides fake information, notify them of the suspension'),
(442, 'course_bundle_purchase_notification', 'Course bundle purchase notification'),
(443, 'stay_up-to-date_on_student_course_bundle_purchases.', 'Stay up-to-date on student course bundle purchases.'),
(444, 'course_gift_notification', 'Course gift notification'),
(445, 'notify_users_after_course_gift', 'Notify users after course gift'),
(446, 'configure_for_payer', 'Configure for payer'),
(447, 'configure_for_receiver', 'Configure for receiver'),
(448, 'contact_users', 'Contact users'),
(449, 'blogs', 'Blogs'),
(450, 'add_new_blog', 'Add new blog'),
(451, 'creator', 'Creator'),
(452, 'manage_your_drip_content_settings', 'Manage your drip content settings'),
(453, 'lesson_completion_role', 'Lesson completion role'),
(454, 'video_percentage_wise', 'Video percentage wise'),
(455, 'video_duration_wise', 'Video duration wise'),
(456, 'minimum_duration_to_watch', 'Minimum duration to watch'),
(457, 'minimum_percentage_to_watch', 'Minimum percentage to watch'),
(458, 'message_for_locked_lesson', 'Message for locked lesson'),
(459, 'save_changes', 'Save changes'),
(460, 'attention', 'Attention'),
(461, 'the_auto_checkmark_is_only_applicable_for_video_lessons', 'The auto checkmark is only applicable for video lessons'),
(462, 'learn_more', 'Learn more'),
(463, 'setup_payment_informations', 'Setup payment informations'),
(464, 'system_currency_settings', 'System currency settings'),
(465, 'system_currency', 'System currency'),
(466, 'select_system_currency', 'Select system currency'),
(467, 'currency_position', 'Currency position'),
(468, 'left', 'Left'),
(469, 'right', 'Right'),
(470, 'left_with_a_space', 'Left with a space'),
(471, 'right_with_a_space', 'Right with a space'),
(472, 'update_system_currency', 'Update system currency'),
(473, 'want_to_keep_test_mode_enabled', 'Want to keep test mode enabled'),
(474, 'select_currency', 'Select currency'),
(475, 'sandbox_client_id', 'Sandbox client id'),
(476, 'sandbox_secret_key', 'Sandbox secret key'),
(477, 'production_client_id', 'Production client id'),
(478, 'production_secret_key', 'Production secret key'),
(479, 'public_key', 'Public key'),
(480, 'secret_key', 'Secret key'),
(481, 'public_live_key', 'Public live key'),
(482, 'secret_live_key', 'Secret live key'),
(483, 'key_id', 'Key id'),
(484, 'theme_color', 'Theme color'),
(485, 'api_key', 'Api key'),
(486, 'other_parameter', 'Other parameter'),
(487, 'pos_id', 'Pos id'),
(488, 'second_key', 'Second key'),
(489, 'client_id', 'Client id'),
(490, 'client_secret', 'Client secret'),
(491, 'store_id', 'Store id'),
(492, 'store_password', 'Store password'),
(493, 'skrill_merchant_email', 'Skrill merchant email'),
(494, 'secret_passphrase', 'Secret passphrase'),
(495, 'shared_key', 'Shared key'),
(496, 'app_key', 'App key'),
(497, 'app_secret', 'App secret'),
(498, 'username', 'Username'),
(499, 'merchant_id', 'Merchant id'),
(500, 'merchant_password', 'Merchant password'),
(501, 'ensure_that_the_system_currency_and_all_active_payment_gateway_currencies_are_same', 'Ensure that the system currency and all active payment gateway currencies are same'),
(502, 'add_category', 'Add category'),
(503, 'category_add_form', 'Category add form'),
(504, 'category_code', 'Category code'),
(505, 'category_title', 'Category title'),
(506, 'parent', 'Parent'),
(507, 'none', 'None'),
(508, 'select_none_to_create_a_parent_category', 'Select none to create a parent category'),
(509, 'icon_picker', 'Icon picker'),
(510, 'category_thumbnail', 'Category thumbnail'),
(511, 'the_image_size_should_be', 'The image size should be'),
(512, 'choose_thumbnail', 'Choose thumbnail'),
(513, 'data_added_successfully', 'Data added successfully'),
(514, 'sub_categories', 'Sub categories'),
(515, 'edit', 'Edit'),
(516, 'course_has_been_added_successfully', 'Course has been added successfully'),
(517, 'edit_course', 'Edit course'),
(518, 'course_manager', 'Course manager'),
(519, 'view_on_frontend', 'View on frontend'),
(520, 'curriculum', 'Curriculum'),
(521, 'academic_progress', 'Academic progress'),
(522, 'bbb_live_class', 'Bbb live class'),
(523, 'add_new_section', 'Add new section'),
(524, 'add_section', 'Add section'),
(525, 'meeting_id', 'Meeting id'),
(526, 'moderator_password', 'Moderator password'),
(527, 'viewer_password', 'Viewer password'),
(528, 'instructions_for_students', 'Instructions for students'),
(529, 'attention!', 'Attention!'),
(530, 'give_some_instructions_to_keep_your_students_informed_about_the_meeting', 'Give some instructions to keep your students informed about the meeting'),
(531, 'save_meeting_info', 'Save meeting info'),
(532, 'start_meeting', 'Start meeting'),
(533, 'meeting_id_and_password_can_not_be_empty', 'Meeting id and password can not be empty'),
(534, 'moderator_and_viewer_password_can_not_be_same', 'Moderator and viewer password can not be same'),
(535, 'course_type', 'Course type'),
(536, 'general', 'General'),
(537, 'the_course_type_can_not_be_editable', 'The course type can not be editable'),
(538, 'instructor_of_this_course', 'Instructor of this course'),
(539, 'updated_as_a', 'Updated as a'),
(540, 'select_lesson_type', 'Select lesson type'),
(541, 'video', 'Video'),
(542, 'secured', 'Secured'),
(543, 'video_file', 'Video file'),
(544, 'audio_file', 'Audio file'),
(545, 'video_url', 'Video url'),
(546, 'wasabi_storage_video', 'Wasabi storage video'),
(547, 'google_drive_video', 'Google drive video'),
(548, 'document_file', 'Document file'),
(549, 'text', 'Text'),
(550, 'image_file', 'Image file'),
(551, 'iframe_embed', 'Iframe embed'),
(552, 'next', 'Next'),
(553, 'please_select_a_course', 'Please select a course'),
(554, 'lesson_type', 'Lesson type'),
(555, 'change', 'Change'),
(556, 'section', 'Section'),
(557, 'enter_google_drive_video_url', 'Enter google drive video url'),
(558, 'duration', 'Duration'),
(559, 'summary', 'Summary'),
(560, 'do_you_want_to_keep_it_free_as_a_preview_lesson', 'Do you want to keep it free as a preview lesson'),
(561, 'mark_as_free_lesson', 'Mark as free lesson'),
(562, 'uploading', 'Uploading'),
(563, 'please_wait', 'Please wait'),
(564, 'image', 'Image'),
(565, 'attachment', 'Attachment'),
(566, 'provide_a_section_name', 'Provide a section name'),
(567, 'date_of_study_plan', 'Date of study plan'),
(568, 'optional', 'Optional'),
(569, 'restriction_of_study_plan', 'Restriction of study plan'),
(570, 'no_restriction', 'No restriction'),
(571, 'until_the_start_date,_keep_this_section_locked', 'Until the start date, keep this section locked'),
(572, 'keep_this_section_open_only_within_the_selected_date_range', 'Keep this section open only within the selected date range'),
(573, 'section_has_been_added_successfully', 'Section has been added successfully'),
(574, 'add_new_quiz', 'Add new quiz'),
(575, 'add_quiz', 'Add quiz'),
(576, 'sort_sections', 'Sort sections'),
(577, 'sort_lessons', 'Sort lessons'),
(578, 'sort_lesson', 'Sort lesson'),
(579, 'update_section', 'Update section'),
(580, 'edit_section', 'Edit section'),
(581, 'delete_section', 'Delete section'),
(582, 'lesson_has_been_added_successfully', 'Lesson has been added successfully'),
(583, 'add_new_resource_file', 'Add new resource file'),
(584, 'resource_files', 'Resource files'),
(585, 'update_lesson', 'Update lesson'),
(586, 'lesson', 'Lesson'),
(587, 'course_content', 'Course content'),
(588, 'mark_as_complete', 'Mark as complete'),
(589, 'img', 'Img'),
(590, 'live_class', 'Live class'),
(591, 'live_class_is_not_scheduled_yet', 'Live class is not scheduled yet'),
(592, 'reviews', 'Reviews'),
(593, 'compare', 'Compare'),
(594, 'last_updated', 'Last updated'),
(595, 'lessons', 'Lessons'),
(596, 'remove_from_cart', 'Remove from cart'),
(597, 'add_to_cart', 'Add to cart'),
(598, 'enter_your_first_name', 'Enter your first name'),
(599, 'enter_your_last_name', 'Enter your last name'),
(600, 'apply_to_become_an_instructor', 'Apply to become an instructor'),
(601, 'enter_your_phone_number', 'Enter your phone number'),
(602, 'document', 'Document'),
(603, 'provide_some_documents_about_your_qualifications', 'Provide some documents about your qualifications'),
(604, 'already_you_have_an_account?', 'Already you have an account?'),
(605, 'your_registration_has_been_successfully_done', 'Your registration has been successfully done'),
(606, 'please_check_your_mail_inbox_to_verify_your_email_address', 'Please check your mail inbox to verify your email address'),
(607, 'verification_code', 'Verification code'),
(608, 'enter_your_verification_code_here', 'Enter your verification code here'),
(609, 'enter_your_verification_code', 'Enter your verification code'),
(610, 'resend_mail', 'Resend mail'),
(611, 'back_to_login', 'Back to login'),
(612, 'mail_successfully_sent_to_your_inbox', 'Mail successfully sent to your inbox'),
(613, 'year', 'Year'),
(614, 'month', 'Month'),
(615, 'day', 'Day'),
(616, 'hour', 'Hour'),
(617, 'minute', 'Minute'),
(618, 'second', 'Second'),
(619, 'ago', 'Ago'),
(620, 'custom_pages', 'Custom pages'),
(621, 'add_a_new_page', 'Add a new page'),
(622, 'page_title', 'Page title'),
(623, 'button_title', 'Button title'),
(624, 'button_position', 'Button position'),
(625, 'frontend_settings', 'Frontend settings'),
(626, 'home_layout', 'Home layout'),
(627, 'home_page_settings', 'Home page settings'),
(628, 'website_faqs', 'Website faqs'),
(629, 'contact_information', 'Contact information'),
(630, 'recaptcha', 'Recaptcha'),
(631, 'logo_&_images', 'Logo & images'),
(632, 'custom_codes', 'Custom codes'),
(633, 'frontend_website_settings', 'Frontend website settings'),
(634, 'banner_title', 'Banner title'),
(635, 'banner_sub_title', 'Banner sub title'),
(636, 'cookie_status', 'Cookie status'),
(637, 'inactive', 'Inactive'),
(638, 'cookie_note', 'Cookie note'),
(639, 'facebook', 'Facebook'),
(640, 'twitter', 'Twitter'),
(641, 'linkedin', 'Linkedin'),
(642, 'update_settings', 'Update settings'),
(643, 'activated', 'Activated'),
(644, 'motivational_speech', 'Motivational speech'),
(645, 'upload_image', 'Upload image'),
(646, 'home_page_section', 'Home page section'),
(647, 'upcoming_course_section', 'Upcoming course section'),
(648, 'top_course_section', 'Top course section'),
(649, 'latest_course_section', 'Latest course section'),
(650, 'top_category_section', 'Top category section'),
(651, 'top_instructor_section', 'Top instructor section'),
(652, 'faq_section', 'Faq section'),
(653, 'motivational_speech_section', 'Motivational speech section'),
(654, 'blog_visibility_on_the_home_page', 'Blog visibility on the home page'),
(655, 'promotional_section', 'Promotional section'),
(656, 'question', 'Question'),
(657, 'contact_email', 'Contact email'),
(658, 'phone_number', 'Phone number'),
(659, 'office_hours', 'Office hours'),
(660, 'recaptcha_settings', 'Recaptcha settings'),
(661, 'recaptcha_status', 'Recaptcha status'),
(662, 'recaptcha_sitekey', 'Recaptcha sitekey'),
(663, 'recaptcha_secretkey', 'Recaptcha secretkey'),
(664, 'update_recaptcha_settings', 'Update recaptcha settings'),
(665, 'update_banner_image', 'Update banner image'),
(666, 'upload_banner_image', 'Upload banner image'),
(667, 'update_light_logo', 'Update light logo'),
(668, 'upload_light_logo', 'Upload light logo'),
(669, 'update_dark_logo', 'Update dark logo'),
(670, 'upload_dark_logo', 'Upload dark logo'),
(671, 'update_small_logo', 'Update small logo'),
(672, 'upload_small_logo', 'Upload small logo'),
(673, 'update_favicon', 'Update favicon'),
(674, 'upload_favicon', 'Upload favicon'),
(675, 'you_can_modify_your_theme_style_and_add_external_embed_code_from_here', 'You can modify your theme style and add external embed code from here'),
(676, 'enter_your_custom_css', 'Enter your custom css'),
(677, 'only_css_code', 'Only css code'),
(678, 'these_codes_are_applicable_for_all_pages_of_the_frontend_site', 'These codes are applicable for all pages of the frontend site'),
(679, 'enter_your_embed_or_widget_code', 'Enter your embed or widget code'),
(680, 'enter_your_embed_or_widget_code_here', 'Enter your embed or widget code here'),
(681, 'payment_settings_updated_successfully', 'Payment settings updated successfully'),
(682, 'my_course', 'My course'),
(683, 'you_have_no_items_in_your_wishlist!', 'You have no items in your wishlist!'),
(684, 'go_to_wishlist', 'Go to wishlist'),
(685, 'my_courses', 'My courses'),
(686, 'my_wishlist', 'My wishlist'),
(687, 'my_messages', 'My messages'),
(688, 'user_profile', 'User profile'),
(689, 'all_category', 'All category'),
(690, 'show_more', 'Show more'),
(691, 'show_less', 'Show less'),
(692, 'language', 'Language'),
(693, 'ratings', 'Ratings'),
(694, 'list_view', 'List view'),
(695, 'grid_view', 'Grid view'),
(696, 'reset', 'Reset'),
(697, 'showing', 'Showing'),
(698, 'of', 'Of'),
(699, 'results', 'Results'),
(700, 'newly_published', 'Newly published'),
(701, 'highest_rating', 'Highest rating'),
(702, 'lowest_price', 'Lowest price'),
(703, 'highest_price', 'Highest price'),
(704, 'discounted', 'Discounted'),
(705, 'created_by', 'Created by'),
(706, 'enrolled', 'Enrolled'),
(707, 'overview', 'Overview'),
(708, 'course_description', 'Course description'),
(709, 'what_will_i_learn?', 'What will i learn?'),
(710, 'hours', 'Hours'),
(711, 'view_profile', 'View profile'),
(712, '123', '123'),
(713, 'compare_this_course', 'Compare this course'),
(714, 'lectures', 'Lectures'),
(715, 'skill_level', 'Skill level'),
(716, 'months', 'Months'),
(717, 'buy_now', 'Buy now'),
(718, 'share_on_facebook', 'Share on facebook'),
(719, 'share_on_twitter', 'Share on twitter'),
(720, 'share_on_whatsapp', 'Share on whatsapp'),
(721, 'share_on_linkedin', 'Share on linkedin'),
(722, 'related_courses', 'Related courses'),
(723, 'pay_for_purchasing_course', 'Pay for purchasing course'),
(724, 'shopping_cart', 'Shopping cart'),
(725, 'by', 'By'),
(726, 'your_cart_items', 'Your cart items'),
(727, 'items', 'Items'),
(728, 'total', 'Total'),
(729, 'subtotal', 'Subtotal'),
(730, 'apply_coupon', 'Apply coupon'),
(731, 'apply', 'Apply'),
(732, 'send_as_a_gift', 'Send as a gift'),
(733, 'email_address', 'Email address'),
(734, 'continue_to_payment', 'Continue to payment'),
(735, 'searching', 'Searching'),
(736, 'payment', 'Payment'),
(737, 'make_payment', 'Make payment'),
(738, 'select_payment_gateway', 'Select payment gateway'),
(739, 'pay_with_stripe', 'Pay with stripe'),
(740, 'pay_by_razorpay', 'Pay by razorpay'),
(741, 'pay_by_xendit', 'Pay by xendit'),
(742, 'pay_by_payu', 'Pay by payu'),
(743, 'pay_by_pageseguro', 'Pay by pageseguro'),
(744, 'pay_by_ssl_commerz', 'Pay by ssl commerz'),
(745, 'pay_by_skrill', 'Pay by skrill'),
(746, 'pay_by_doku', 'Pay by doku'),
(747, 'pay_with_bkash', 'Pay with bkash'),
(748, 'pay_by_cashfree', 'Pay by cashfree'),
(749, 'telephone', 'Telephone'),
(750, 'pay_by_maxicash', 'Pay by maxicash'),
(751, 'payable_amount', 'Payable amount'),
(752, 'document_of_your_payment', 'Document of your payment'),
(753, 'submit_payment_document', 'Submit payment document'),
(754, 'successfully_enabled', 'Successfully enabled'),
(755, 'successfully_disabled', 'Successfully disabled'),
(756, 'private_messaging', 'Private messaging'),
(757, 'private_message', 'Private message'),
(758, 'new_message', 'New message'),
(759, 'choose_an_option_from_the_left_side', 'Choose an option from the left side'),
(760, 'mark_as_pending', 'Mark as pending'),
(761, 'section_and_lesson', 'Section and lesson'),
(762, 'edit_this_course', 'Edit this course'),
(763, 'view_course_on_frontend', 'View course on frontend'),
(764, 'go_to_course_playing_page', 'Go to course playing page'),
(765, 'upload_system_video_file', 'Upload system video file'),
(766, 'select_system_video_file', 'Select system video file'),
(767, 'has_to_be_bigger_than', 'Has to be bigger than'),
(768, 'caption', 'Caption'),
(769, '.vtt', '.vtt'),
(770, 'choose_your_caption_file', 'Choose your caption file'),
(771, 'enter_your_bank_information', 'Enter your bank information'),
(772, 'accepted_payment_request', 'Accepted payment request'),
(773, 'offline_payments', 'Offline payments'),
(774, 'payment_document', 'Payment document'),
(775, 'enrolling_the_student_and_sending_mail', 'Enrolling the student and sending mail'),
(776, 'student', 'Student'),
(777, 'enrolled_courses', 'Enrolled courses'),
(778, 'unverified', 'Unverified'),
(779, 'user_deleted_successfully', 'User deleted successfully'),
(780, 'showing_on_this_page', 'Showing on this page'),
(781, 'search_for_bundle', 'Search for bundle'),
(782, 'no_result_found', 'No result found'),
(783, 'rating_updated_successfully', 'Rating updated successfully'),
(784, 'please_select_a_rating_greater_than_0', 'Please select a rating greater than 0'),
(785, 'your_subscription_date_is_over_please_renew_your_bundle', 'Your subscription date is over please renew your bundle'),
(786, 'pending_payment_request', 'Pending payment request'),
(787, 'your_document_will_be_reviewd', 'Your document will be reviewd'),
(788, 'wishlist', 'Wishlist'),
(789, 'messages', 'Messages'),
(790, 'profile', 'Profile'),
(791, 'account', 'Account'),
(792, 'purchased_courses', 'Purchased courses'),
(793, 'invoice', 'Invoice'),
(794, 'payment_document_file', 'Payment document file'),
(795, 'approve', 'Approve'),
(796, 'suspended', 'Suspended'),
(797, 'data_updated_successfully', 'Data updated successfully'),
(798, 'go_to_course_page', 'Go to course page'),
(799, 'author_profile', 'Author profile'),
(800, 'quizzes', 'Quizzes'),
(801, 'expiration_on', 'Expiration on'),
(802, 'start_now', 'Start now'),
(803, 'this_video_will_be_shown_on_web_application', 'This video will be shown on web application'),
(804, 'analyzing_the_url', 'Analyzing the url'),
(805, 'invalid_url', 'Invalid url'),
(806, 'your_video_source_has_to_be_either_youtube_or_vimeo', 'Your video source has to be either youtube or vimeo'),
(807, 'lesson_provider', 'Lesson provider'),
(808, 'for_mobile_application', 'For mobile application'),
(809, 'only', 'Only'),
(810, 'type_video_is_acceptable_for_mobile_application', 'Type video is acceptable for mobile application');

-- --------------------------------------------------------

--
-- بنية الجدول `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) DEFAULT NULL,
  `cloud_video_id` int(20) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `audio_url` varchar(400) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) DEFAULT NULL,
  `attachment` longtext DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `is_free` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `quiz_attempt` int(11) NOT NULL DEFAULT 0,
  `video_type_for_mobile_application` varchar(255) DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `lesson`
--

INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `cloud_video_id`, `video_url`, `audio_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `caption`, `summary`, `is_free`, `order`, `quiz_attempt`, `video_type_for_mobile_application`, `video_url_for_mobile_application`, `duration_for_mobile_application`) VALUES
(1, 'rgs', NULL, 1, 1, NULL, NULL, NULL, NULL, 1714190400, NULL, 'other', '54949fdbdcc756a75ef1561d7e1f7193.png', 'img', NULL, '', 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `from` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `message`
--

CREATE TABLE `message` (
  `message_id` int(20) NOT NULL,
  `message_thread_code` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `sender` int(20) DEFAULT NULL,
  `receiver` int(20) DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT '',
  `receiver` varchar(255) DEFAULT '',
  `last_message_timestamp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `newsletter_histories`
--

CREATE TABLE `newsletter_histories` (
  `id` int(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `tried_times` int(11) DEFAULT NULL,
  `sent_at` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `newsletter_subscriber`
--

CREATE TABLE `newsletter_subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `from_user` int(11) DEFAULT NULL,
  `to_user` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `notifications`
--

INSERT INTO `notifications` (`id`, `from_user`, `to_user`, `type`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'signup', 'New user registered', '\n    <div>New user registered mohamed ahmed \r\n<br>User email: <b>1@gmail.com</b></div>\n    ', 0, '1714209391', NULL),
(2, 1, 2, 'signup', 'Registered successfully', '\n    <div>You have successfully registered with us at نبض القانون.</div>\n    ', 0, '1714209391', NULL),
(3, 1, 1, 'signup', 'New user registered', '\n    <div>New user registered JEHAD KHALED \r\n<br>User email: <b>12@gmail.com</b></div>\n    ', 0, '1714210944', NULL),
(4, 1, 3, 'signup', 'Registered successfully', '\n    <div>You have successfully registered with us at نبض القانون.</div>\n    ', 0, '1714210944', NULL),
(5, 1, 1, 'signup', 'New user registered', '\n    <div>New user registered mohamed ahmed \r\n<br>User email: <b>123@gmail.com</b></div>\n    ', 0, '1714330037', NULL),
(6, 1, 4, 'signup', 'Registered successfully', '\n    <div>You have successfully registered with us at نبض القانون.</div>\n    ', 0, '1714330037', NULL),
(7, 1, 4, 'course_purchase', 'You have purchased a new course', '\n    <div>Course title: <a href=\"http://localhost/ac/home/course/123/1\" target=\"_blank\">123</a>\r\nPaid amount: 100\r\nInstructor: mohamed ahmed</div>\n    ', 0, '1714330639', NULL),
(8, 1, 1, 'course_purchase', 'A new course has been sold', '\n    <div>Course title: <a href=\"http://localhost/ac/home/course/123/1\" target=\"_blank\">123</a>\r\nStudent: mohamed ahmed\r\nPaid amount: 100</div>\n    ', 0, '1714330639', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_editable` int(11) DEFAULT NULL,
  `addon_identifier` varchar(255) DEFAULT NULL,
  `user_types` varchar(400) DEFAULT NULL,
  `system_notification` varchar(400) DEFAULT NULL,
  `email_notification` varchar(400) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `template` longtext DEFAULT NULL,
  `setting_title` varchar(255) DEFAULT NULL,
  `setting_sub_title` varchar(255) DEFAULT NULL,
  `date_updated` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `type`, `is_editable`, `addon_identifier`, `user_types`, `system_notification`, `email_notification`, `subject`, `template`, `setting_title`, `setting_sub_title`, `date_updated`) VALUES
(1, 'signup', 1, NULL, '[\"admin\",\"user\"]', '{\"admin\":\"1\",\"user\":\"1\"}', '{\"admin\":\"0\",\"user\":\"0\"}', '{\"admin\":\"New user registered\",\"user\":\"Registered successfully\"}', '{\"admin\":\"New user registered [user_name] \\r\\n<br>User email: <b>[user_email]<\\/b>\",\"user\":\"You have successfully registered with us at [system_name].\"}', 'New user registration', 'Get notified when a new user signs up', '1714214732'),
(2, 'email_verification', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Email verification code\"}', '{\"user\":\"You have received a email verification code. Your verification code is [email_verification_code]\"}', 'Email verification', 'It is permanently enabled for student email verification.', '1684135777'),
(3, 'forget_password_mail', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Forgot password verification code\"}', '{\"user\":\"You have received a email verification code. Your verification code is [system_name] [verification_link] [minutes]\"}', 'Forgot password mail', 'It is permanently enabled for student email verification.', '1684145383'),
(4, 'new_device_login_confirmation', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Please confirm your login\"}', '{\"user\":\"Have you tried logging in with a different device? Confirm using the verification code. Your verification code is [verification_code]. Remember that you will lose access to your previous device after logging in to the new device <b>[user_agent]<\\/b>.<br> Use the verification code within [minutes] minutes\"}', 'Account security alert', 'Send verification code for login from a new device', '1684145383'),
(6, 'course_purchase', 1, NULL, '[\"admin\",\"student\",\"instructor\"]', '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}', '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}', '{\"admin\":\"A new course has been sold\",\"instructor\":\"A new course has been sold\",\"student\":\"You have purchased a new course\"}', '{\"admin\":\"<p>Course title: [course_title]<\\/p><p>Student: [student_name]\\r\\n<\\/p><p>Paid amount: [paid_amount]<\\/p><p>Instructor: [instructor_name]<\\/p>\",\"instructor\":\"Course title: [course_title]\\r\\nStudent: [student_name]\\r\\nPaid amount: [paid_amount]\",\"student\":\"Course title: [course_title]\\r\\nPaid amount: [paid_amount]\\r\\nInstructor: [instructor_name]\"}', 'Course purchase notification', 'Stay up-to-date on student course purchases.', '1684303456'),
(7, 'course_completion_mail', 1, NULL, '[\"student\",\"instructor\"]', '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}', '{\"instructor\":\"Course completion\",\"student\":\"You have completed a new course\"}', '{\"instructor\":\"Course completed [course_title]\\r\\nStudent: [student_name]\",\"student\":\"Course: [course_title]\\r\\nInstructor: [instructor_name]\"}', 'Course completion mail', 'Stay up to date on student course completion.', '1699431547'),
(8, 'certificate_eligibility', 1, 'certificate', '[\"student\",\"instructor\"]', '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}', '{\"instructor\":\"Certificate eligibility\",\"student\":\"certificate eligibility\"}', '{\"instructor\":\"Course: [course_title]\\r\\nStudent: [student_name]\\r\\nCertificate link: [certificate_link]\",\"student\":\"Course: [course_title]\\r\\nInstructor: [instructor_name]\\r\\nCertificate link: [certificate_link]\"}', 'Course eligibility notification', 'Stay up to date on course certificate eligibility.', '1684303460'),
(9, 'offline_payment_suspended_mail', 1, 'offline_payment', '[\"student\"]', '{\"student\":\"1\"}', '{\"student\":\"0\"}', '{\"student\":\"Your payment has been suspended\"}', '{\"student\":\"<p>Your offline payment has been <b style=\'color: red;\'>suspended</b> !</p><p>Please provide a valid document of your payment.</p>\"}', 'Offline payment suspended mail', 'If students provides fake information, notify them of the suspension', '1684303463'),
(10, 'bundle_purchase', 1, 'course_bundle', '[\"admin\",\"student\",\"instructor\"]', '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}', '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}', '{\"admin\":\"A new course bundle has been sold \",\"instructor\":\"A new course bundle has been sold \",\"student\":\"You have purchased a new course bundle test\"}', '{\"admin\":\"Course bundle: [bundle_title]\\r\\nStudent: [student_name]\\r\\nInstructor: [instructor_name] \",\"instructor\":\"Course bundle: [bundle_title]\\r\\nStudent: [student_name] \",\"student\":\"Course bundle: [bundle_title]\\r\\nInstructor: [instructor_name] \"}', 'Course bundle purchase notification', 'Stay up-to-date on student course bundle purchases.', '1684303467'),
(13, 'add_new_user_as_affiliator', 0, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"Congratulation ! You are assigned as an affiliator\"}', '{\"affiliator\":\"You are assigned as a website Affiliator.\\r\\nWebsite: [website_link]\\r\\n<br>\\r\\nPassword: [password]\"}', 'New user added as affiliator', 'Send account information to the new user', '1684135777'),
(14, 'affiliator_approval_notification', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}', 'Affiliate approval notification', 'Send affiliate approval mail to the user account', '1684303472'),
(15, 'affiliator_request_cancellation', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused.\"}', 'Affiliator request cancellation', 'Send mail, when you cancel the affiliation request', '1684303473'),
(16, 'affiliation_amount_withdrawal_request', 1, 'affiliate_course', '[\"admin\",\"affiliator\"]', '{\"admin\":\"1\",\"affiliator\":\"1\"}', '{\"admin\":\"0\",\"affiliator\":\"0\"}', '{\"admin\":\"New money withdrawal request\",\"affiliator\":\"New money withdrawal request\"}', '{\"admin\":\"New money withdrawal request by [user_name] [amount]\",\"affiliator\":\"Your Withdrawal request of [amount] has been sent to authority\"}', 'Affiliation money withdrawal request', 'Send mail, when the users request the withdrawal of money', '1684303476'),
(17, 'approval_affiliation_amount_withdrawal_request', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congartulation ! Your withdrawal request has been approved\"}', '{\"affiliator\":\"Congartulation ! Your payment request has been approved.\"}', 'Approval of withdrawal request of affiliation', 'Send mail, when you approved the affiliation withdrawal request', '1684303480'),
(18, 'course_gift', 1, NULL, '[\"payer\",\"receiver\"]', '{\"payer\":\"1\",\"receiver\":\"1\"}', '{\"payer\":\"1\",\"receiver\":\"1\"}', '{\"payer\":\"You have gift a course\",\"receiver\":\"You have received a course gift\"}', '{\"payer\":\"You have gift a course to [user_name] [course_title][instructor]\",\"receiver\":\"You have received a course gift by [payer][course_title][instructor]\"}', 'Course gift notification', 'Notify users after course gift', '1691818623'),
(20, 'noticeboard', 1, 'noticeboard', '[\"student\"]', '{\"student\":\"1\"}', '{\"student\":\"1\"}', '{\"student\":\"Noticeboard\"}', '{\"student\":\"Hi, You have a new notice by [instructor_name]. The course [course_title] [notice_title][notice_description]\"}', 'Course Noticeboard', 'Notify to enrolled students when announcements are created by the instructor for a particular course.\n', '1699525375');

-- --------------------------------------------------------

--
-- بنية الجدول `offline_payment`
--

CREATE TABLE `offline_payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `document_image` varchar(255) DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `offline_payment`
--

INSERT INTO `offline_payment` (`id`, `user_id`, `amount`, `course_id`, `item_id`, `item_type`, `document_image`, `timestamp`, `status`) VALUES
(1, 4, '100', '[\"1\"]', '[\"1\"]', 'course', '9345639.jpg', '1714330620', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `payment`
--

CREATE TABLE `payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) DEFAULT NULL,
  `instructor_revenue` varchar(255) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT 0,
  `transaction_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `coupon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `payment_type`, `course_id`, `amount`, `date_added`, `last_modified`, `admin_revenue`, `instructor_revenue`, `tax`, `instructor_payment_status`, `transaction_id`, `session_id`, `coupon`) VALUES
(1, 4, 'offline', 1, 100, 1714255200, NULL, '100', '0', 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `currency` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keys` text NOT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `enabled_test_mode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_addon` int(11) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`, `enabled_test_mode`, `status`, `is_addon`, `created_at`, `updated_at`) VALUES
(1, 'paypal', 'USD', 'Paypal', '', '{\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}', 'Payment_model', 1, 0, 0, '', '1714330523'),
(2, 'stripe', 'USD', 'Stripe', '', '{\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 'Payment_model', 1, 1, 0, '', '1673263724'),
(3, 'razorpay', 'USD', 'Razorpay', '', '{\"key_id\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#23d792\"}', 'Payment_model', 1, 1, 0, '', '1700476796'),
(4, 'xendit', 'USD', 'Xendit', '', '{\"api_key\":\"ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6VXhNaUo5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2ljSEp2Wm1sc1pWOXdheUk2TmpFM01ESTBMQ0p1WVcxbElqb2lhVzVwZEdsaGJDSjkuWTU3STVfc3duYXNrTmtaV3FGX0JjTzR4RnZLc3p2a3NVbkVoVjVOdURjRlVaU0NMeTlqTFpkUFFVRlFxeUI0VFc0Vy1ncTAzN0t5N3VSYzZkQ3VWdFE=\",\"secret_key\":\"DKzbqpmnQRMwwPMo8pLhHZNM8iFXzoSG9g\",\"other_parameter\":\"value\"}', 'Payment_model', 1, 1, 0, '', '1714210877'),
(5, 'payu', 'PLN', 'Payu', '', '{\"pos_id\":\"PKf789971N2ig5hbF71y1BX46k\",\"second_key\":\"vaWDmIqbwiVUOVitXet9ZlC9mQ\",\"client_id\":\"PKf789971N2ig5hbF71y1BX46k\",\"client_secret\":\"vaWDmIqbwiVUOVitXet9ZlC9mQ\"}', 'Payment_model', 1, 1, 0, '', '1707980726'),
(6, 'pagseguro', 'BRL', 'Pagseguro', '', '{\"api_key\":\"BAE981AF77CA4768A93849AFF5BF2331\",\"secret_key\":\"8045696DBFBF765FF4189FBAE1E02AB5\",\"other_parameter\":\"value\"}', 'Payment_model', 1, 1, 0, '', '1705559611'),
(7, 'sslcommerz', 'USD', 'SSL Commerz', '', '{\"store_id\":\"sslcommerz_store_id\",\"store_password\":\"sslcommerz_store_password\"}', 'Payment_model', 1, 1, 0, '', '1673264610'),
(8, 'skrill', 'USD', 'Skrill', '', '{\"skrill_merchant_email\":\"urwatech@gmail.com\",\"secret_passphrase\":\"your_skrill_secret_key\"}', 'Payment_model', 1, 1, 0, '', '1700647745'),
(10, 'doku', 'USD', 'Doku', '', '{\"client_id\":\"BRN-0271-1700996849302\",\"shared_key\":\"SK-BxOS4PfUdIEMHLccyMI3\"}', 'Payment_model', 1, 1, 0, '', '1700997440'),
(11, 'bkash', 'BDT', 'Bkash', '', '{\"app_key\":\"app-key\",\"app_secret\":\"app-secret\",\"username\":\"username\",\"password\":\"passwoed\"}', 'Payment_model', 1, 1, 0, '1700997440', '1701596645'),
(12, 'cashfree', 'INR', 'CashFree', '', '{\"client_id\":\"TEST100748308df0665cabda6c2f38b903847001\",\"client_secret\":\"cfsk_ma_test_71065d7cadf8695e7845e86244bd7011_fff5714b\"}', 'Payment_model', 1, 1, 0, '1700997440', '1701688995'),
(13, 'maxicash', 'USD', 'Maxicash', '', '{\"merchant_id\":\"TEST100748308df0665cabda6c2f38b903847001\",\"merchant_password\":\"cfsk_ma_test_71065d7cadf8695e7845e86244bd7011_fff5714b\"}', 'Payment_model', 1, 1, 0, '1700997440', '1701688995'),
(14, 'offline_payment', 'USD', 'Offline payment', '', '[]', 'Offline_payment_model', 0, 1, 1, '1710343021', '');

-- --------------------------------------------------------

--
-- بنية الجدول `payout`
--

CREATE TABLE `payout` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `question`
--

CREATE TABLE `question` (
  `id` int(11) UNSIGNED NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `correct_answers` longtext DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `quiz_results`
--

CREATE TABLE `quiz_results` (
  `quiz_result_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_answers` longtext NOT NULL,
  `correct_answers` longtext NOT NULL COMMENT 'question_id',
  `total_obtained_marks` double NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `date_updated` varchar(100) NOT NULL,
  `is_submitted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `rating`
--

CREATE TABLE `rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `resource_files`
--

CREATE TABLE `resource_files` (
  `id` int(11) NOT NULL,
  `lesson_id` int(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- بنية الجدول `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `restricted_by` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `section`
--

INSERT INTO `section` (`id`, `title`, `course_id`, `start_date`, `end_date`, `restricted_by`, `order`) VALUES
(1, 'tdsg', 1, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- بنية الجدول `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'english'),
(2, 'system_name', 'نبض القانون'),
(3, 'system_title', '123'),
(4, 'system_email', 'academy@example.com'),
(5, 'address', 'Sydney, Australia'),
(6, 'phone', '+143-52-9933631'),
(7, 'purchase_code', 'your-purchase-code'),
(8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(10, 'youtube_api_key', 'youtube-and-google-drive-api-key'),
(11, 'vimeo_api_key', 'vimeo-api-key'),
(12, 'slogan', 'A course based video CMS'),
(13, 'text_align', NULL),
(14, 'allow_instructor', '1'),
(15, 'instructor_revenue', '70'),
(16, 'system_currency', 'USD'),
(17, 'paypal_currency', 'USD'),
(18, 'stripe_currency', 'USD'),
(19, 'author', 'Creativeitem'),
(20, 'currency_position', 'left'),
(21, 'website_description', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'),
(22, 'website_keywords', 'LMS,Learning Management System,Creativeitem,Academy LMS'),
(23, 'footer_text', 'Creativeitem'),
(24, 'footer_link', 'https://creativeitem.com/'),
(25, 'allowed_device_number_of_loging', '2'),
(26, 'smtp_host', 'smtp.gmail.com'),
(27, 'smtp_port', '587'),
(28, 'smtp_user', 'admin@example.com'),
(29, 'smtp_pass', 'Enter-your-app-password'),
(30, 'version', '6.6.1'),
(31, 'student_email_verification', 'disable'),
(32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.'),
(33, 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]'),
(34, 'razorpay_currency', 'USD'),
(35, 'fb_app_id', NULL),
(36, 'fb_app_secret', NULL),
(37, 'fb_social_login', NULL),
(38, 'drip_content_settings', '{\"lesson_completion_role\":\"percentage\",\"minimum_duration\":15,\"minimum_percentage\":\"30\",\"locked_lesson_message\":\"&lt;h3 xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;&lt;strong&gt;Permission denied!&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/h3&gt;&lt;p xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;This course supports drip content, so you must complete the previous lessons.&lt;\\/span&gt;&lt;\\/p&gt;\"}'),
(41, 'course_accessibility', 'publicly'),
(42, 'smtp_crypto', 'tls'),
(43, 'allowed_device_number_of_loging', '2'),
(47, 'academy_cloud_access_token', 'jdfghasdfasdfasdfasdfasdf'),
(48, 'course_selling_tax', '0'),
(49, 'ccavenue_keys', '[{\"active\":\"1\",\"ccavenue_merchant_id\":\"cmi_xxxxxx\",\"ccavenue_working_key\":\"cwk_xxxxxxxxxxxx\",\"ccavenue_access_code\":\"ccc_xxxxxxxxxxxxx\"}]'),
(50, 'ccavenue_currency', 'INR'),
(51, 'iyzico_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"iyzico_currency\":\"TRY\",\"api_test_key\":\"atk_xxxxxxxx\",\"secret_test_key\":\"stk_xxxxxxxx\",\"api_live_key\":\"alk_xxxxxxxx\",\"secret_live_key\":\"slk_xxxxxxxx\"}]'),
(52, 'iyzico_currency', 'TRY'),
(53, 'paystack_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxx\"}]'),
(54, 'paystack_currency', 'NGN'),
(55, 'paytm_keys', '[{\"PAYTM_MERCHANT_KEY\":\"PAYTM_MERCHANT_KEY\",\"PAYTM_MERCHANT_MID\":\"PAYTM_MERCHANT_MID\",\"PAYTM_MERCHANT_WEBSITE\":\"DEFAULT\",\"INDUSTRY_TYPE_ID\":\"Retail\",\"CHANNEL_ID\":\"WEB\"}]'),
(57, 'google_analytics_id', ''),
(58, 'meta_pixel_id', ''),
(59, 'smtp_from_email', 'admin@example.com'),
(61, 'language_dirs', '{\"english\":\"ltr\",\"hindi\":\"rtl\",\"arabic\":\"rtl\"}'),
(62, 'timezone', 'America/New_York'),
(63, 'account_disable', '0'),
(64, 'offline_bank_information', 'Enter your bank information'),
(65, 'randCallRange', '20'),
(70, 'wasabi_key', 'access-key'),
(71, 'wasabi_secret_key', 'secret-key'),
(72, 'wasabi_bucketname', 'bucket-name'),
(73, 'wasabi_region', 'region-name'),
(74, 'bbb_setting', '{\"endpoint\":\"bigbluebutton-endpoint-url\",\"secret\":\"bigbluebutton-secret\"}');

-- --------------------------------------------------------

--
-- بنية الجدول `tag`
--

CREATE TABLE `tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `skills` longtext NOT NULL,
  `social_links` longtext DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `wishlist` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `payment_keys` longtext NOT NULL,
  `verification_code` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_instructor` int(11) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `temp` longtext DEFAULT NULL,
  `sessions` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`, `temp`, `sessions`) VALUES
(1, 'mohamed', 'ahmed', 'teto15987@gmail.com', NULL, NULL, '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 1, NULL, 1710382986, NULL, '', '', NULL, 1, 1, 'e2f5c8331558bbd2a08d45a6aa51a8f5', NULL, ''),
(2, 'mohamed', 'ahmed', '1@gmail.com', NULL, NULL, '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1714209391, NULL, '[]', NULL, '[]', '106092', 0, 0, NULL, NULL, ''),
(4, 'mohamed', 'ahmed', '123@gmail.com', NULL, NULL, '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1714330037, NULL, '[]', NULL, '[]', '156884', 1, 0, NULL, NULL, '[\"2ij6i1042kolbfrgqsbf5dsaj8lm56vo\"]');

-- --------------------------------------------------------

--
-- بنية الجدول `watched_duration`
--

CREATE TABLE `watched_duration` (
  `watched_id` int(11) UNSIGNED NOT NULL,
  `watched_student_id` int(11) DEFAULT NULL,
  `watched_course_id` int(11) DEFAULT NULL,
  `watched_lesson_id` int(11) DEFAULT NULL,
  `current_duration` int(20) DEFAULT NULL,
  `watched_counter` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `watch_histories`
--

CREATE TABLE `watch_histories` (
  `watch_history_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `completed_lesson` longtext NOT NULL,
  `course_progress` int(11) NOT NULL,
  `watching_lesson_id` int(11) NOT NULL,
  `quiz_result` longtext NOT NULL,
  `completed_date` varchar(255) DEFAULT NULL,
  `date_added` varchar(100) DEFAULT NULL,
  `date_updated` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `watch_histories`
--

INSERT INTO `watch_histories` (`watch_history_id`, `course_id`, `student_id`, `completed_lesson`, `course_progress`, `watching_lesson_id`, `quiz_result`, `completed_date`, `date_added`, `date_updated`) VALUES
(1, 1, 1, '[]', 0, 1, '', '1714214574', '1714209323', '1714214574'),
(2, 1, 4, '', 0, 1, '', NULL, '1714330653', '1714330660');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bbb_meetings`
--
ALTER TABLE `bbb_meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`blog_comment_id`);

--
-- Indexes for table `bundle_payment`
--
ALTER TABLE `bundle_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bundle_rating`
--
ALTER TABLE `bundle_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_bundle`
--
ALTER TABLE `course_bundle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_page`
--
ALTER TABLE `custom_page`
  ADD PRIMARY KEY (`custom_page_id`);

--
-- Indexes for table `enrol`
--
ALTER TABLE `enrol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_histories`
--
ALTER TABLE `newsletter_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_payment`
--
ALTER TABLE `offline_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout`
--
ALTER TABLE `payout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`quiz_result_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resource_files`
--
ALTER TABLE `resource_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watched_duration`
--
ALTER TABLE `watched_duration`
  ADD PRIMARY KEY (`watched_id`);

--
-- Indexes for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD PRIMARY KEY (`watch_history_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bbb_meetings`
--
ALTER TABLE `bbb_meetings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bundle_payment`
--
ALTER TABLE `bundle_payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bundle_rating`
--
ALTER TABLE `bundle_rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_bundle`
--
ALTER TABLE `course_bundle`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `custom_page`
--
ALTER TABLE `custom_page`
  MODIFY `custom_page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrol`
--
ALTER TABLE `enrol`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=811;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter_histories`
--
ALTER TABLE `newsletter_histories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `offline_payment`
--
ALTER TABLE `offline_payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payout`
--
ALTER TABLE `payout`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `quiz_result_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resource_files`
--
ALTER TABLE `resource_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `watched_duration`
--
ALTER TABLE `watched_duration`
  MODIFY `watched_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watch_histories`
--
ALTER TABLE `watch_histories`
  MODIFY `watch_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
