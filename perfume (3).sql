-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2023 at 08:23 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perfume`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_models`
--

CREATE TABLE `about_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_text_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_summary_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_text_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_summary_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_text_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_summary_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_choose_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_text_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_summary_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_text_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_summary_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_text_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_summary_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_bg_image_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_icon_image_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_bg_image_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_icon_image_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_bg_image_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_icon_image_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_choose_background_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_choose_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_background_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_bg_image_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_icon_image_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_icon_image_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_icon_image_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_models`
--

INSERT INTO `about_models` (`id`, `about_description`, `block_text_1`, `block_summary_1`, `block_text_2`, `block_summary_2`, `block_text_3`, `block_summary_3`, `why_choose_description`, `counter_text_1`, `counter_summary_1`, `counter_text_2`, `counter_summary_2`, `counter_text_3`, `counter_summary_3`, `banner_image`, `about_image`, `block_bg_image_1`, `block_icon_image_1`, `block_bg_image_2`, `block_icon_image_2`, `block_bg_image_3`, `block_icon_image_3`, `why_choose_background_image`, `why_choose_image`, `counter_background_image`, `counter_bg_image_1`, `counter_icon_image_1`, `counter_icon_image_2`, `counter_icon_image_3`, `status`, `created_at`, `updated_at`) VALUES
(2, '<p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines. This reduces the cost of production drastically and improves efficiency.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">&nbsp;</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">The company believes in deploying the state of the art machinery that increases productivity.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">The company hires the best manpower which has a strong track record of execution in the precious metal space. With a solid past execution track record Balaji, group has mastered the art of producing final products at a bare minimum cost.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">&nbsp;</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">We aspire to continue to improve productivity delivering output from electronic waste as well as our mines.</p>', 'Block Text 1', 'Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines.', 'Block Text 2', 'Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines.', 'Block Text 3', 'Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines.', '<p style=\"margin-bottom: 0px; font-size: 15px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat;\">Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines. This reduces the cost of production drastically and improves efficiency.</p><p style=\"margin-bottom: 0px; font-size: 15px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat;\">&nbsp;</p><p style=\"margin-bottom: 0px; font-size: 15px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat;\">The company believes in deploying the state of the art machinery that increases productivity.</p><p style=\"margin-bottom: 0px; font-size: 15px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat;\">The company hires the best manpower which has a strong track record of execution in the precious metal space. With a solid past execution track record Balaji, group has mastered the art of producing final products at a bare minimum cost.</p><p style=\"margin-bottom: 0px; font-size: 15px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat;\">&nbsp;</p><p style=\"margin-bottom: 0px; font-size: 15px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat;\">We aspire to continue to improve productivity delivering output from electronic waste as well as our mines.</p>', '500', 'Clean & Green Environment', '2500', 'Clean & Green Environment', '200', 'Clean & Green Environment', 'uploads/blogs/serve/531231688471575.jpg', 'uploads/blogs/serve/210811688467432.jpg', 'uploads/blogs/serve/973371688471575.png', 'uploads/blogs/serve/343631688471575.png', 'uploads/blogs/serve/703101688471575.png', 'uploads/blogs/serve/460361688471575.png', 'uploads/blogs/serve/529850471688471575.png', 'uploads/blogs/serve/946383301688471575.png', 'uploads/blogs/serve/717351181688467432.png', 'uploads/blogs/serve/803378581688467432.png', 'uploads/blogs/serve/463800281688467432.jpg', 'uploads/blogs/serve/640661688467432.png', 'uploads/blogs/serve/288413571688467432.png', 'uploads/blogs/serve/628725991688467432.png', 'uploads/blogs/serve/985691471688467432.png', NULL, '2023-07-04 01:28:17', '2023-07-05 08:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `section_id` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `subcategory_id` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL,
  `added_by` varchar(100) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `title`, `section_id`, `category_id`, `subcategory_id`, `status`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Sizes', NULL, NULL, NULL, 'active', NULL, '2023-07-30 10:38:45', '2023-07-30 10:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `attributes_values`
--

CREATE TABLE `attributes_values` (
  `id` int(11) NOT NULL,
  `attribute_option` varchar(222) DEFAULT NULL,
  `attribute_value` varchar(255) DEFAULT NULL,
  `is_active` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_by` varchar(100) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attributes_values`
--

INSERT INTO `attributes_values` (`id`, `attribute_option`, `attribute_value`, `is_active`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', '10', 'active', NULL, '2023-07-30 10:52:07', '2023-07-30 10:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `banner_models`
--

CREATE TABLE `banner_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_subheading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_link` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_text` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_area` int(11) NOT NULL DEFAULT 1 COMMENT '1 => banner, 2 => below, 3 => middle , 4 => footer',
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_models`
--

INSERT INTO `banner_models` (`id`, `banner`, `banner_heading`, `banner_subheading`, `banner_link`, `banner_text`, `display_area`, `status`, `created_at`, `updated_at`) VALUES
(5, 'uploads/blogs/serve/303881690817220.jpg', 'eque porro quisquam est qui dolorem', 'eque porro quisquam', '#', 'Explore', 1, '1', '2023-07-31 09:57:00', '2023-07-31 09:57:00'),
(6, 'images/webp/75491690817367.webp', 'quia dolor sit amet, consectetur', 'quia dolor sit amet', '#', 'Explore', 1, '1', '2023-07-31 09:59:29', '2023-07-31 09:59:29'),
(7, 'images/webp/40501690817431.webp', 'consectetur quia dolor sit amet consectetur', 'sit amet, consectetur', '#', 'Explore', 1, '1', '2023-07-31 10:00:17', '2023-07-31 10:00:33'),
(8, 'images/webp/50951690872237.webp', 'Women\'s', 'Get all premium collections', '#', 'Shop Now', 2, '1', '2023-08-01 01:13:59', '2023-08-01 01:13:59'),
(9, 'images/webp/17381690896937.webp', 'Lorem ipsum dolor sit amet', NULL, '#', 'Explore', 3, '1', '2023-08-01 07:52:29', '2023-08-01 08:05:38'),
(10, 'images/webp/61191690897518.webp', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet', NULL, NULL, 4, '1', '2023-08-01 08:15:19', '2023-08-01 08:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `show_right_column` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_featured` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_breaking` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_slider` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_recommended` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `need_auth` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `post_image_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_selected_file_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `scheduled_post` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `date_published` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_discount_type` varchar(244) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_og_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_og_url` varchar(244) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_og_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_og_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_og_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_og_desc` varchar(244) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_og_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `photo`, `slug`, `status`, `brand_discount`, `brand_discount_type`, `addedBy`, `is_approved`, `meta_title`, `meta_desc`, `meta_keywords`, `fb_og_type`, `fb_og_url`, `fb_og_title`, `fb_og_desc`, `fb_og_image`, `twitter_og_type`, `twitter_og_url`, `twitter_og_title`, `twitter_og_desc`, `twitter_og_img`, `created_at`, `updated_at`) VALUES
(2, 'ITC', 'admin/brands/1661009802.png', 'itc', 'inactive', NULL, 'rupee', '1', 'no', NULL, NULL, 'Amsterdam,Sydney,Cairo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-20 10:06:42', '2022-08-20 10:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attribute_id` varchar(255) NOT NULL,
  `product_added_by` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brands_id` int(11) DEFAULT NULL,
  `section_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `msp` varchar(255) DEFAULT NULL,
  `sumofmsp` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `cartqty` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `status` enum('yes','no') DEFAULT 'yes',
  `created_at` varchar(222) DEFAULT NULL,
  `updated_at` varchar(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `attribute_id`, `product_added_by`, `category_id`, `subcategory_id`, `brands_id`, `section_id`, `product_name`, `msp`, `sumofmsp`, `size`, `price`, `subtotal`, `cartqty`, `user_id`, `ip_address`, `user_email`, `status`, `created_at`, `updated_at`) VALUES
(20, 25, '8', NULL, NULL, NULL, 4, '1', 'Product 123', NULL, '0', '5oz', '900.00', '900.00', '1', '11', '127.0.0.1', NULL, 'yes', '2023-08-05 15:46:00', '2023-08-05 15:46:00'),
(23, 25, '1', NULL, NULL, NULL, 4, '1', 'Product 123', NULL, '0', '10Ml', '10', '100', '10', '11', '127.0.0.1', NULL, 'yes', '2023-08-05 15:53:28', '2023-08-05 15:53:28'),
(24, 25, '1', NULL, NULL, NULL, 4, '1', 'Product 123', NULL, '0', '10Ml', '10', '10', '1', NULL, '127.0.0.1', NULL, 'yes', '2023-08-09 04:39:22', '2023-08-09 04:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `category_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_on_menu` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '0 => false, 1 => true',
  `show_on_homepage` tinyint(1) DEFAULT NULL COMMENT '1',
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '0 => false, 1 => true',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `parent_id`, `category_type`, `image`, `meta_tag_description`, `meta_tag_keywords`, `show_on_menu`, `show_on_homepage`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Men', 'men', 0, 'product', 'images/webp/42031690818362.webp', 'View our extensive range', NULL, NULL, 1, '0', '2023-07-29 00:40:22', '2023-08-05 12:16:46'),
(2, 'Women', 'women', 0, 'product', 'images/webp/16961690818425.webp', 'View our extensive range', NULL, NULL, 1, '1', '2023-07-29 00:40:32', '2023-08-01 01:37:31'),
(3, 'Unisex', 'unisex', 0, 'product', 'images/webp/47751690818413.webp', NULL, NULL, NULL, 0, '1', '2023-07-29 00:40:38', '2023-08-01 01:30:50'),
(4, 'Burberry', 'burberry', 0, 'brands', 'images/webp/80931690877510.webp', NULL, NULL, NULL, 1, '1', '2023-07-29 00:48:23', '2023-08-01 02:41:51'),
(5, 'Calvin Klein', 'calvin-klein', 0, 'brands', 'images/webp/30971690877545.webp', NULL, NULL, NULL, 1, '1', '2023-07-29 00:48:34', '2023-08-01 02:42:25'),
(7, 'Sean John', 'sean-john', 0, 'brands', 'images/webp/28511690877735.webp', NULL, NULL, NULL, 1, '1', '2023-07-29 00:49:53', '2023-08-01 02:45:35'),
(8, 'Gucci', 'gucci', 0, 'brands', 'images/webp/11231690877706.webp', NULL, NULL, NULL, 1, '1', '2023-07-29 00:50:02', '2023-08-01 02:45:06'),
(9, 'Davidoff', 'davidoff', 0, 'brands', 'images/webp/69861690877476.webp', NULL, NULL, NULL, 1, '1', '2023-07-29 00:50:13', '2023-08-01 02:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `colllabs`
--

CREATE TABLE `colllabs` (
  `id` int(11) NOT NULL,
  `heading` varchar(500) DEFAULT NULL,
  `collab_type` varchar(255) DEFAULT NULL,
  `featured_image` varchar(500) DEFAULT NULL,
  `yt_vdo` varchar(500) DEFAULT NULL,
  `show_on_home` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` varchar(500) DEFAULT NULL,
  `updated_at` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colllabs`
--

INSERT INTO `colllabs` (`id`, `heading`, `collab_type`, `featured_image`, `yt_vdo`, `show_on_home`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Vodafone', 'collaboration', 'uploads/blogs/serve/432491688607523.jpg', NULL, 0, 1, '2023-07-06 01:38:44', '2023-07-06 01:38:44'),
(7, 'Bharat Petroleum', 'collaboration', 'uploads/blogs/serve/946381688607625.jpg', NULL, 0, 1, '2023-07-06 01:40:25', '2023-07-06 01:40:25'),
(8, 'Airbus', 'collaboration', 'uploads/blogs/serve/262671688607636.jpg', NULL, 0, 1, '2023-07-06 01:40:36', '2023-07-06 01:40:36'),
(9, 'Aditya Birla', 'collaboration', 'uploads/blogs/serve/354351688607651.jpg', NULL, 0, 1, '2023-07-06 01:40:51', '2023-07-06 01:40:51'),
(10, 'ABB', 'collaboration', 'uploads/blogs/serve/199281688607661.jpg', NULL, 0, 1, '2023-07-06 01:41:02', '2023-07-06 01:41:02'),
(11, 'Infosys', 'collaboration', 'uploads/blogs/serve/693211688609619.jpg', NULL, 0, 1, '2023-07-06 02:13:39', '2023-07-06 02:13:39'),
(12, 'Hitachi', 'collaboration', 'uploads/blogs/serve/673931688609676.jpg', NULL, 0, 1, '2023-07-06 02:14:37', '2023-07-06 02:14:37'),
(13, 'Responsible Recycling', 'certificate', 'uploads/blogs/serve/530141688820612.jpg', NULL, 0, 1, '2023-07-08 12:50:12', '2023-07-08 12:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `comissions`
--

CREATE TABLE `comissions` (
  `id` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subparent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commissions_below_five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commissions_above_five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `np_commissions_below_five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `np_commissions_above_five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission_type` enum('category','fixed','collection','none') COLLATE utf8mb4_unicode_ci DEFAULT 'none',
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comissions`
--

INSERT INTO `comissions` (`id`, `category_id`, `section_id`, `parent_id`, `subparent_id`, `fixed`, `commissions_below_five`, `commissions_above_five`, `np_commissions_below_five`, `np_commissions_above_five`, `status`, `commission_type`, `created_at`, `updated_at`) VALUES
(22, 13, 1, '12', '13', NULL, '10', '11', '12', '13', 'active', 'category', '2021-10-24 02:57:19', '2021-10-24 02:57:19'),
(23, 14, 1, '12', '14', NULL, '10', '12', '13', '14', 'active', 'category', '2021-10-24 02:57:48', '2021-10-24 02:57:48'),
(24, 4, 2, '7', '4', NULL, '20', '20', '20', '20', 'active', 'category', '2021-10-24 02:58:18', '2021-10-24 02:58:18'),
(25, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, 'fixed', '2021-10-29 06:00:53', '2021-10-29 06:00:53'),
(26, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, 'active', NULL, '2021-10-29 06:04:11', '2021-10-29 06:04:11'),
(29, NULL, NULL, NULL, NULL, '15', NULL, NULL, NULL, NULL, 'active', 'collection', '2021-10-29 06:12:17', '2021-10-29 06:12:17'),
(30, NULL, NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, 'active', 'collection', '2021-10-29 06:14:02', '2021-10-29 06:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `common`
--

CREATE TABLE `common` (
  `id` int(11) NOT NULL,
  `site_title` varchar(255) DEFAULT NULL,
  `header_logo` varchar(255) DEFAULT NULL,
  `header_logo_img_alt` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL,
  `footer_logo_img_alt` varchar(255) DEFAULT NULL,
  `favicon_logo` varchar(255) DEFAULT NULL,
  `favicon_logo_img_alt` varchar(255) DEFAULT NULL,
  `facebook_img` varchar(255) DEFAULT NULL,
  `blogger_img` varchar(255) DEFAULT NULL,
  `instagram_img` varchar(255) DEFAULT NULL,
  `linkedin_img` varchar(255) DEFAULT NULL,
  `messenger_img` varchar(255) DEFAULT NULL,
  `pinterest_img` varchar(255) DEFAULT NULL,
  `rss_img` varchar(255) DEFAULT NULL,
  `snapchat_img` varchar(255) DEFAULT NULL,
  `twitter_img` varchar(255) DEFAULT NULL,
  `youtube_img` varchar(255) DEFAULT NULL,
  `whatsapp_img` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `blogger_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(222) DEFAULT NULL,
  `linkedin_link` varchar(222) DEFAULT NULL,
  `messenger_link` varchar(222) DEFAULT NULL,
  `pinterest_link` varchar(222) DEFAULT NULL,
  `rss_link` varchar(222) DEFAULT NULL,
  `snapchat_link` varchar(222) DEFAULT NULL,
  `twitter_link` varchar(222) DEFAULT NULL,
  `whatsapp_link` varchar(222) DEFAULT NULL,
  `youtube_link` varchar(222) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `block_text_1` varchar(500) DEFAULT NULL,
  `block_heading_1` varchar(500) DEFAULT NULL,
  `block_text_2` varchar(500) DEFAULT NULL,
  `block_heading_2` varchar(500) DEFAULT NULL,
  `block_text_3` varchar(500) DEFAULT NULL,
  `block_heading_3` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `common`
--

INSERT INTO `common` (`id`, `site_title`, `header_logo`, `header_logo_img_alt`, `footer_logo`, `footer_logo_img_alt`, `favicon_logo`, `favicon_logo_img_alt`, `facebook_img`, `blogger_img`, `instagram_img`, `linkedin_img`, `messenger_img`, `pinterest_img`, `rss_img`, `snapchat_img`, `twitter_img`, `youtube_img`, `whatsapp_img`, `facebook_link`, `blogger_link`, `instagram_link`, `linkedin_link`, `messenger_link`, `pinterest_link`, `rss_link`, `snapchat_link`, `twitter_link`, `whatsapp_link`, `youtube_link`, `created_at`, `updated_at`, `userid`, `phone`, `block_text_1`, `block_heading_1`, `block_text_2`, `block_heading_2`, `block_text_3`, `block_heading_3`) VALUES
(1, 'Flyira', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Flyira', 'public/admin/common/headerlogo/1632728138.svg', 'Flyira Header Logo', NULL, 'flyira footer logo', 'public/admin/common/favicon/1632728138.svg', 'flyira favicon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'facbook.com', 'blogger.com', 'instagram.com', 'linkedin.com', 'messenger.com', 'pinterest.com', 'rss.com', 'snapchat.com', 'twitter.com', 'whatsapp.com', 'youtube.com', '2021-09-27 07:35:38', '2021-09-27 07:35:38', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Z3Basket', 'admin/common/headerlogo/1659171173791.png', 'Z3Basket', NULL, NULL, 'admin/common/favicon/1661016284168.png', 'Z3Basket', '/admin/common/social/1632740252.png', 'admin/common/social/1632740433.png', 'admin/common/social/1632740420.png', 'admin/common/social/1632740472.png', 'admin/common/social/1632740706.png', 'admin/common/social/1632741004.png', 'admin/common/social/1632742821631.png', 'admin/common/social/1632742822391.png', 'admin/common/social/1632739554.png', 'admin/common/social/1632742822481.png', 'admin/common/social/1632742822593.png', NULL, 'blogger.com', 'instagram.com', 'linkedin.com', 'messenger.com', 'pinterest.com', 'rss.com', 'snapchat.com', 'twitter.com', 'whatsapp.com', 'youtube.com', '2021-09-27 07:36:06', '2022-09-10 18:02:27', 1, '7777777777', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(5000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `core_compentancies`
--

CREATE TABLE `core_compentancies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_compentancies`
--

INSERT INTO `core_compentancies` (`id`, `banner_image`, `title`, `summary`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'uploads/blogs/serve/942161688553608.jpg', 'Core Compentancy', '<p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Srii Balaji group has globally diversified operations at a low cost. We aspire to empower our people to drive excellence and innovation to create value for our stakeholders. We have the best world-class standards of governance, safety, sustainability, and social responsibility.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Post-Covid, the world has come to a virtual standstill, and protecting the environment has gained tremendous importance. Having one of the largest EWASTE refineries in India, we wish to inculcate the habit of making the environment clean and green.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">We process the world’s biggest electronic waste into precious and semi-precious metals.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">We teach our employees to work with team spirit to increase productivity with team effort.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">As a group, we want to make every Indian aware that a clean and green environment will create more prosperity and growth for the country and themselves.</p>', NULL, NULL, '2023-07-05 05:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `section_id` varchar(255) DEFAULT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_discount` varchar(255) DEFAULT NULL,
  `coupon_discount_type` varchar(255) DEFAULT NULL,
  `coupon_type` varchar(255) DEFAULT NULL,
  `coupon_amount_type` varchar(255) DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `valid_from` varchar(255) DEFAULT NULL,
  `min_cart_value` varchar(255) DEFAULT NULL,
  `brand_id` varchar(255) DEFAULT NULL,
  `expiration_date` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `product_id`, `category_id`, `section_id`, `coupon_name`, `coupon_code`, `coupon_discount`, `coupon_discount_type`, `coupon_type`, `coupon_amount_type`, `added_by`, `valid_from`, `min_cart_value`, `brand_id`, `expiration_date`, `created_at`, `updated_at`, `status`) VALUES
(1, '10,9,8,6,4,5,3,16,14,7,12,11', '4,7,8,15', '1,2', 'Testing', 'GRAB15', '15', 'percent', NULL, NULL, '1', '2021-01-01', '500', '2,3,4,5', '2021-12-22', '2021-10-13 09:59:41', '2022-09-10 17:56:08', 'inactive'),
(2, '4', '10', '1', 'GRAB10', 'GRAB10', '10', 'percent', 'multiple', NULL, '1', NULL, '1500', '3', NULL, '2021-10-13 13:50:10', '2021-10-13 13:50:10', 'active'),
(3, '4', '7', '1', 'MORETHAN30000', 'MORETHAN30000', '3000', 'flat', 'single', NULL, '1', NULL, '35000', '2,6', NULL, '2021-10-14 04:02:58', '2021-10-14 04:02:58', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `deliver_addresses`
--

CREATE TABLE `deliver_addresses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address_one` varchar(255) DEFAULT NULL,
  `address_two` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `address_type` enum('home','work','other') DEFAULT 'home',
  `is_default_address` enum('yes','no') DEFAULT 'yes',
  `addedby` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliver_addresses`
--

INSERT INTO `deliver_addresses` (`id`, `name`, `mobile`, `address_one`, `address_two`, `pincode`, `city`, `state`, `landmark`, `address_type`, `is_default_address`, `addedby`, `user_email`, `created_at`, `updated_at`) VALUES
(4, 'Anand Singh', '9876543210', '123 Roger St.', 'Park Avenue', '221001', 'VARANASI', 'UTTAR PRADESH', 'Near Auditorium', 'home', 'yes', '63', 'customer@yopmail.com', '2021-10-31 07:38:03', '2021-10-31 07:38:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `founder_models`
--

CREATE TABLE `founder_models` (
  `id` int(11) NOT NULL,
  `founder_note` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `founder_image` varchar(255) DEFAULT NULL,
  `founder_content_heading` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `founder_models`
--

INSERT INTO `founder_models` (`id`, `founder_note`, `video`, `founder_image`, `founder_content_heading`, `created_at`, `updated_at`) VALUES
(1, '<p><span style=\"color: rgb(33, 37, 41); font-family: Avenir; font-size: 15.9959px; letter-spacing: 0.99718px;\">Call it our passionate optimism, but we genuinely believe all of us harbour good intentions when it comes to looking out for our own home. Somewhere in the frenzy of the rat-race around us, it’s the outcome of those intentions that has taken a hit. As we all inch towards securing our future we drift farther away from the delicate relationship we share with nature. All the rising environmental crises are a result of this very rift. Through Ek Saath, we embark upon a journey to bridge that very gap and replenish this deteriorating relationship. Everything that we put out in nature unmistakably finds its way back to us again in one way or another. We try to guide our lives by the enlightening philosophies of Karma. If only we learn to apply the same logic to our relationship with our environment, we’d know that the only true salvation is a better tomorrow and the only promised heaven is here on our beloved earth. There are those who are yet oblivious to the far-reaching impact their actions have on the planet. While the ones already aware, simply don’t know any better. We’re not in the business of picking culprits out of victims for we stand to celebrate the very spirit of togetherness. If there’s anything to learn from our past then&nbsp;it’s the valuable lesson of how we learnt to overcome the darkest of times only by coming together. We seek to revive this very force in our pursuit by empowering all the lives we touch in our own humble ways. In our finite time here, all of us are capable of making an infinite difference. The time has come when just hoping for a better future won’t cut it until we step up to make it happen. Or as a wise kindred spirit once sang,</span><br style=\"color: rgb(33, 37, 41); font-family: Avenir; font-size: 15.9959px; letter-spacing: 0.99718px;\"><span style=\"color: rgb(33, 37, 41); font-family: Avenir; font-size: 15.9959px; letter-spacing: 0.99718px;\">‘You may say I\'m a dreamer</span><br style=\"color: rgb(33, 37, 41); font-family: Avenir; font-size: 15.9959px; letter-spacing: 0.99718px;\"><span style=\"color: rgb(33, 37, 41); font-family: Avenir; font-size: 15.9959px; letter-spacing: 0.99718px;\">But I\'m not the only one</span><br style=\"color: rgb(33, 37, 41); font-family: Avenir; font-size: 15.9959px; letter-spacing: 0.99718px;\"><span style=\"color: rgb(33, 37, 41); font-family: Avenir; font-size: 15.9959px; letter-spacing: 0.99718px;\">I hope some day you\'ll join us</span><br style=\"color: rgb(33, 37, 41); font-family: Avenir; font-size: 15.9959px; letter-spacing: 0.99718px;\"><span style=\"color: rgb(33, 37, 41); font-family: Avenir; font-size: 15.9959px; letter-spacing: 0.99718px;\">And the world will be as one..’</span><br></p>', NULL, 'uploads/blogs/serve/357001677730380.jpg', 'Pragya Kapoor', NULL, '2023-03-02 04:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `product_id` varchar(500) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT 'local',
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `product_id`, `image`, `type`, `created_at`, `updated_at`) VALUES
(1, '26', 'images/webp/61861690890001.webp', 'gallery', '2023-08-01 11:40:03', '2023-08-01 11:40:03'),
(3, '25', 'images/webp/61861690890001.webp', 'gallery', '2023-08-01 11:40:03', '2023-08-01 11:40:03'),
(4, '27', 'images/webp/73261690893069.webp', 'gallery', '2023-08-01 12:31:11', '2023-08-01 12:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_albums`
--

CREATE TABLE `gallery_albums` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 1,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `id` int(11) NOT NULL,
  `goal_name` varchar(255) DEFAULT NULL,
  `goal_desc` text DEFAULT NULL,
  `background_image` varchar(255) DEFAULT NULL,
  `icon_image` varchar(255) DEFAULT NULL,
  `show_on_home` int(11) DEFAULT NULL,
  `color` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`id`, `goal_name`, `goal_desc`, `background_image`, `icon_image`, `show_on_home`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'No Poverty', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</span><br></p>', 'uploads/blogs/serve/524341678377171.jpg', 'uploads/blogs/serve/382311678377172.jpg', 0, NULL, 1, '2023-03-09 15:52:52', '2023-03-09 16:58:44'),
(2, 'No Poverty', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</span><br></p>', 'uploads/blogs/serve/200881678385362.jpg', 'uploads/blogs/serve/853701678385362.jpg', 0, NULL, 1, '2023-03-09 15:52:52', '2023-03-09 18:09:22'),
(3, 'Good health & Well Being', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</span><br></p>', 'uploads/blogs/serve/799491678385489.jpg', 'uploads/blogs/serve/485391678385489.jpg', 0, NULL, 1, '2023-03-09 15:52:52', '2023-03-09 18:11:29'),
(4, 'No Poverty', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</span><br></p>', 'uploads/blogs/serve/524341678377171.jpg', 'uploads/blogs/serve/382311678377172.jpg', 0, NULL, 1, '2023-03-09 15:52:52', '2023-03-09 16:58:44'),
(5, 'No Poverty', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</span><br></p>', 'uploads/blogs/serve/524341678377171.jpg', 'uploads/blogs/serve/382311678377172.jpg', 0, NULL, 1, '2023-03-09 15:52:52', '2023-03-09 16:58:44'),
(6, 'No Poverty', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</span><br></p>', 'uploads/blogs/serve/524341678377171.jpg', 'uploads/blogs/serve/382311678377172.jpg', 0, NULL, 1, '2023-03-09 15:52:52', '2023-03-09 16:58:44'),
(7, 'No Poverty', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</span><br></p>', 'uploads/blogs/serve/524341678377171.jpg', 'uploads/blogs/serve/382311678377172.jpg', 0, NULL, 1, '2023-03-09 15:52:52', '2023-03-09 16:58:44'),
(8, 'No Poverty', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</span><br></p>', 'uploads/blogs/serve/524341678377171.jpg', 'uploads/blogs/serve/382311678377172.jpg', 0, NULL, 1, '2023-03-09 15:52:52', '2023-03-09 16:58:44'),
(9, 'No Poverty', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</span><br></p>', 'uploads/blogs/serve/524341678377171.jpg', 'uploads/blogs/serve/382311678377172.jpg', 0, NULL, 1, '2023-03-09 15:52:52', '2023-03-09 16:58:44'),
(10, 'No Poverty', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</span><br></p>', 'uploads/blogs/serve/524341678377171.jpg', 'uploads/blogs/serve/382311678377172.jpg', 0, NULL, 1, '2023-03-09 15:52:52', '2023-03-09 16:58:44'),
(11, 'No Poverty', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</span><br></p>', 'uploads/blogs/serve/524341678377171.jpg', 'uploads/blogs/serve/382311678377172.jpg', 0, NULL, 1, '2023-03-09 15:52:52', '2023-03-09 16:58:44'),
(12, 'No Poverty', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</span><br></p>', 'uploads/blogs/serve/524341678377171.jpg', 'uploads/blogs/serve/382311678377172.jpg', 0, NULL, 1, '2023-03-09 15:52:52', '2023-03-09 16:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `membershipplans`
--

CREATE TABLE `membershipplans` (
  `id` int(11) NOT NULL,
  `msp` varchar(255) DEFAULT NULL,
  `sellingprice` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membershipplans`
--

INSERT INTO `membershipplans` (`id`, `msp`, `sellingprice`, `notes`, `status`, `created_at`, `updated_at`) VALUES
(1, '2599', '1499', 'Notes', '1', NULL, '2021-10-23 03:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `card_id` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `wallet` varchar(255) DEFAULT NULL,
  `vpa` varchar(255) DEFAULT NULL,
  `payer_email` varchar(222) DEFAULT NULL,
  `payer_contact` varchar(222) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `fee` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `error_code` varchar(255) DEFAULT NULL,
  `error_description` varchar(255) DEFAULT NULL,
  `error_source` varchar(255) DEFAULT NULL,
  `error_step` varchar(255) DEFAULT NULL,
  `error_reason` varchar(255) DEFAULT NULL,
  `acquirer_data` varchar(255) DEFAULT NULL,
  `auth_code` varchar(255) DEFAULT NULL,
  `rrn` varchar(255) DEFAULT NULL,
  `upi_transaction_id` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `user_id`, `payment_id`, `amount`, `method`, `description`, `card_id`, `bank`, `wallet`, `vpa`, `payer_email`, `payer_contact`, `notes`, `fee`, `tax`, `error_code`, `error_description`, `error_source`, `error_step`, `error_reason`, `acquirer_data`, `auth_code`, `rrn`, `upi_transaction_id`, `created_at`, `updated_at`) VALUES
(1, '{\"id\":43,\"full_name\":\"anand\",\"name\":\"anandsingh678970@gmail.com\",\"email\":\"anandsingh678970@gmail.com\",\"userimg\":null,\"email_verified_at\":\"2021-10-08 03:34:39\",\"password\":\"$2y$10$Mkul3JT\\/\\/zqh66aMVeeiruEevxTtD1AHDuvXptqBqw1rklFpsmkFm\",\"salt_password\":\"111', 'pay_ICcjRZUw2hgziB', '1499', 'upi', 'Rozerpay', NULL, NULL, NULL, 's@oksbi', 'anandsingh678970@gmail.com', '+919876543210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '330133759578', '5E151FC0D58D5B057B73A8AF11223C00', '2021-10-23 03:19:28', '2021-10-23 03:19:28'),
(2, '{\"id\":43,\"full_name\":\"anand\",\"name\":\"anandsingh678970@gmail.com\",\"email\":\"anandsingh678970@gmail.com\",\"userimg\":null,\"email_verified_at\":\"2021-10-08 03:34:39\",\"password\":\"$2y$10$Mkul3JT\\/\\/zqh66aMVeeiruEevxTtD1AHDuvXptqBqw1rklFpsmkFm\",\"salt_password\":\"111', 'pay_ICcjRZUw2hgziB', '1499', 'upi', 'Rozerpay', NULL, NULL, NULL, 's@oksbi', 'anandsingh678970@gmail.com', '+919876543210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '330133759578', '5E151FC0D58D5B057B73A8AF11223C00', '2021-10-23 03:19:55', '2021-10-23 03:19:55'),
(3, '43', 'pay_ICcyMRdTmlm6Yc', '1499', 'upi', 'Rozerpay', NULL, NULL, NULL, 's@oksbi', 'anandsingh678970@gmail.com', '+919876543210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '169671515798', 'E5E64F027C52EEAEE9AD59C4320537CD', '2021-10-23 03:21:40', '2021-10-23 03:21:40'),
(4, '43', 'pay_ICczx1TBgeDDYL', '1499', 'upi', 'Rozerpay', NULL, NULL, NULL, 'a@apl', 'anandsingh678970@gmail.com', '+919876543210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '167728982151', '5135BCA537C3813038C8C661B9CF7FEC', '2021-10-23 03:23:12', '2021-10-23 03:23:12'),
(5, '43', 'pay_ICd2SfiQUaTO2x', '1499', 'card', 'Rozerpay', 'card_ICd2ShMG3El9Wh', NULL, NULL, NULL, 'anandsingh678970@gmail.com', '+919876543210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '684619', NULL, NULL, '2021-10-23 03:25:35', '2021-10-23 03:25:35'),
(6, '43', 'pay_ICd2SfiQUaTO2x', '1499', 'card', 'Rozerpay', 'card_ICd2ShMG3El9Wh', NULL, NULL, NULL, 'anandsingh678970@gmail.com', '+919876543210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '684619', NULL, NULL, '2021-10-23 03:26:16', '2021-10-23 03:26:16'),
(7, '43', 'pay_ICd2SfiQUaTO2x', '1499', 'card', 'Rozerpay', 'card_ICd2ShMG3El9Wh', NULL, NULL, NULL, 'anandsingh678970@gmail.com', '+919876543210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '684619', NULL, NULL, '2021-10-23 03:28:04', '2021-10-23 03:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `metals`
--

CREATE TABLE `metals` (
  `id` int(11) NOT NULL,
  `heading` varchar(500) DEFAULT NULL,
  `metal_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `metal_image` varchar(255) DEFAULT NULL,
  `slug` varchar(500) NOT NULL,
  `show_on_home` int(11) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT 1,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metals`
--

INSERT INTO `metals` (`id`, `heading`, `metal_content`, `featured_image`, `metal_image`, `slug`, `show_on_home`, `status`, `created_at`, `updated_at`) VALUES
(13, 'Antimony', '<p style=\"box-sizing: inherit; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Do you use makeup in your daily life? Whether you put it on when you go to a party, for a play you?re in, or to complete your Halloween costume, our metal of the month might be of interest for you. Antimony compounds have been used since ancient times: Egyptian women used stibnite, antimony sulphide known as kohl, as a cosmetic to blacken their eyes and eyebrows.&nbsp;</p><p style=\"box-sizing: inherit; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Historically, the ancients thought that this powder, derived from crushed antimony, &nbsp;helped cure eye infections. This practice is still seen in Yemen and in other countries.</p><h2 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 1.563rem;\">Applications</h2><p style=\"box-sizing: inherit; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Because of its excessive brittleness and the difficulty of shaping it, antimony (Sb) has no direct applications, but is extensively used as an alloying element to improve the hardness and strength of other metals. So antimony is present in lead-acid batteries to harden the lead of which the electrodes (grids) are made. Hard lead contains 15-25% Sb. In addition, type metal contains 60% Pb, 20-30% Sb and 10-20% tin, but this application has virtually disappeared as a result of the development of the offset printing process.</p><p style=\"box-sizing: inherit; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Antimony is used in the electronics industry to make certain types of semiconductor devices, such as infrared detectors and diodes.</p><p style=\"box-sizing: inherit; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">It is also present in certain Pb?Sn?Sb anti-friction metals used to make bearings for large compressors and propeller shafts. The sulphide Sb2S3 is one of the components of brake linings. The intermetallic compounds AsSb, GaSb and InSb have found some applications in electronics. The main outlet -? accounting for around 50% of total antimony consumption - is in the form of the oxide Sb2O3, which is used to render fabrics, plastics, paints and other substances fireproof. Antimony compounds act as a co-synergist with halogenated flame retardants to enhance their effectiveness. Its properties make it possible for plastics to be used in applications where they would melt under normal circumstances, such as in computer casings and televisions.</p><p style=\"box-sizing: inherit; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Umicore Precious Metals Refining produces sodium antimonate, a compound used in certain special glasses, mostly solar PV glass. As a fining agent, antimony ions interact with oxygen, suppressing the tendency of the latter to form (large) bubbles.&nbsp;</p><h2 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 1.563rem;\">Recycling</h2><p style=\"box-sizing: inherit; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Generally speaking, the main end-of-life recycling option is from spent lead-acid batteries, where antimony is directly recovered as a lead-antimony alloy.&nbsp;</p><p style=\"box-sizing: inherit; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">At Umicore Precious Metals Refining in Hoboken (Belgium), antimony is recovered from complex lead-bearing concentrates as well as various complex residues from the lead/copper/zinc industry. The antimony is extracted during the lead refining process in the form of sodium antimonate.</p><h2 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 1.563rem;\"><br style=\"box-sizing: inherit;\">Properties</h2><p style=\"box-sizing: inherit; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Antimony is a very hard, brittle and bluish-white metal with a highly distinct crystalline texture. Antimony is not an abundant element but is found in small quantities in over 100 mineral species. It is most often found as antimony(III) sulfide but also occurs as the native metal.</p><p style=\"box-sizing: inherit; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Like arsenic, there are various allotropes, one of which, yellow antimony, occurs only at temperatures below ?80?C and is liable to explode.</p><p style=\"box-sizing: inherit; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Another allotrope, black antimony, crystallizes in the rhombohedral system and exhibits a metallic luster but is extremely brittle and much less volatile than arsenic.<br style=\"box-sizing: inherit;\"></p>', 'uploads/blogs/serve/170971688817836.png', 'uploads/blogs/serve/947031688817836.webp', 'antimony', 1, 1, '2023-07-08 12:03:56', '2023-07-08 12:10:22'),
(14, 'Arsenic', '<div class=\"block block-header\" style=\"box-sizing: inherit; margin-top: 0px; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><div class=\"row justify-content-center\" style=\"box-sizing: inherit;\"><div class=\"col-lg-8\" style=\"box-sizing: inherit; min-height: 1px; width: 760px; flex-basis: 66.6667%; max-width: 66.6667%;\"><h1 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 2.5rem;\">Arsenic</h1></div></div></div><div class=\"block block-text\" style=\"box-sizing: inherit; margin-top: 0px; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><div class=\"row justify-content-md-center\" style=\"box-sizing: inherit;\"><div class=\"col col-lg-8\" style=\"box-sizing: inherit; min-height: 1px; width: 760px; flex-basis: 66.6667%; max-width: 66.6667%;\"><div class=\"wysiwyg\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\">The two natural arsenic sulphides - realgar (brownish-red) and orpiment (lemon yellow) - have been known since ancient times. The Greeks gave them the name αρσενικος, which means male. This etymology was related to the ancient concept of putting metals into the categories of male and female depending on whether they reacted easily or not with other metals. Subsequently, the word arsenic was given to the metal itself.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">There are indications that arsenic was isolated in the 13th century, but Berzelius was the first to undertake systematic research on the element and its compounds in the early part of the 19th century.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"></p><h2 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 1.563rem;\">Properties</h2><ul style=\"box-sizing: inherit;\"><li style=\"box-sizing: inherit;\">At atmospheric pressure, arsenic sublimates at around 600°C.</li><li style=\"box-sizing: inherit;\">It can be obtained in the liquid form only under pressure.</li><li style=\"box-sizing: inherit;\">Arsenic vapour consists of As4 molecules up to 800°C, then of As2 molecules and, finally, of As at 1700°C.</li><li style=\"box-sizing: inherit;\">When heated in air, at temperatures of 200°C and above, arsenic gives off volatile arsenious anhydride, which smells of garlic.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"></li></ul><h2 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 1.563rem;\">Applications</h2><p style=\"box-sizing: inherit;\">Arsenic\'s major application is a&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">wood preservative</span>.&nbsp;Additionally, the trioxide is used as a decolouriser and refining agent in&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">glass-making</span>, and methylated derivatives are used as&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">herbicides</span>.</p><p style=\"box-sizing: inherit;\">Arsenic metal is also used as an&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">alloying element</span>&nbsp;in certain lead- and copper-base alloys as well as in the manufacture of lead shot. Almost 97% of arsenic is used in the form of the oxide As4O6, a by-product of lead and copper metallurgy.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"></p><h2 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 1.563rem;\">Recycling</h2><p style=\"box-sizing: inherit;\">Small volumes of arsenic are recovered in electronic scrap such as used circuit boards, relays, switches etc. Gallium-arsenide scrap is also recovered from semiconductor manufacturing.</p></div></div></div></div>', 'uploads/blogs/serve/314491688885739.jpg', 'uploads/blogs/serve/559981688885739.webp', 'arsenic', 1, 1, '2023-07-09 06:54:11', '2023-07-09 06:55:39'),
(15, 'Bismuth', '<div class=\"block block-header\" style=\"box-sizing: inherit; margin-top: 0px; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><div class=\"row justify-content-center\" style=\"box-sizing: inherit;\"><div class=\"col-lg-8\" style=\"box-sizing: inherit; min-height: 1px; width: 760px; flex-basis: 66.6667%; max-width: 66.6667%;\"><h1 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 2.5rem;\">Bismuth</h1></div></div></div><div class=\"block block-text\" style=\"box-sizing: inherit; margin-top: 0px; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><div class=\"row justify-content-md-center\" style=\"box-sizing: inherit;\"><div class=\"col col-lg-8\" style=\"box-sizing: inherit; min-height: 1px; width: 760px; flex-basis: 66.6667%; max-width: 66.6667%;\"><div class=\"wysiwyg\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\">Bismuth was first used many years ago! &nbsp;The Incas combined this metal with copper and tin to produce knives and in Ancient Egypt, bismoclite was often used for cosmetic purposes. However, industrial production of the metal did not begin until around 1830.</p><p style=\"box-sizing: inherit;\">Today, bismuth is found in an application that is very useful to our local heroes. Can you guess who often uses this metal at work? Firefighters! Due to its low melting point, bismuth is used in fire detectors and extinguishers. So you probably have some bismuth in your home, ready to alert the authorities if fire breaks out.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"></p><h2 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 1.563rem;\">Applications</h2><p style=\"box-sizing: inherit;\">Metallic bismuth is used principally in alloys. However, it is also found in the pharmaceutical industry. A component called bismuth citrate is included in antibiotics that are effective against bacteria that cause stomach ulcers, for example. Bismuth is also found in other components linked to treating stomach aches, swelling or eye infections.</p><p style=\"box-sizing: inherit;\">Due to its low melting point, it is used in electric fuses, solders and occasionally to make molds in the thermoplastic materials industry. Besides lighting your home, it can also add some color: about 300 tons of bismuth a year are used as pigments in paints. One of these produces the bright yellow colors used in the automotive industry.</p><p style=\"box-sizing: inherit;\">If you don’t have enough color, you can apply a little highlighter. Many cosmetics, including eyeshadows, lipsticks and nail polish, contain bismuth oxychloride to give the products their pearl-like luster.&nbsp;<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"></p><h2 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 1.563rem;\">Recycling</h2><p style=\"box-sizing: inherit;\">Bismuth is difficult to recycle because it is used in many dissipative applications, such as pigments and pharmaceuticals. It is recovered from the production processes for lead, copper, tin, silver and gold refining. At Umicore’s integrated smelter-refinery in Hoboken, Bismuth is recovered from the lead bullion exiting the lead blast furnace.</p><h2 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 1.563rem;\"><br style=\"box-sizing: inherit;\">Properties</h2><p style=\"box-sizing: inherit;\">Bismuth is a hard, brittle, lustrous, metallic element with a pinkish tinge. It can be distinguished from all other metals by its color. Unlike most metals, its electrical resistivity is greater in the solid state than in the liquid state.</p><p style=\"box-sizing: inherit;\">Naturally occurring bismuth is found in small quantities throughout Earth’s crust both as a pure metal and combined with other elements in various compounds.</p><h2 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 1.563rem;\"><br style=\"box-sizing: inherit;\">History</h2><p style=\"box-sizing: inherit;\">In the 15th-century writings of the German monk Basil Valentine, this element is referred to as Wismut, a term derived from the German “weisse masse”, meaning white substance. It was Latinized to bisemutum by the mineralogist Georgius Agricola, who recognized its distinctive qualities and described how to obtain it from its ores.&nbsp;</p><p style=\"box-sizing: inherit;\">The basic nitrate Bi(OH)<span style=\"box-sizing: inherit; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; bottom: -0.25em;\">2</span>NO<span style=\"box-sizing: inherit; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; bottom: -0.25em;\">3</span>&nbsp;was used by painters in the 16th century and was known as blanc d’Espagne. Industrial production of the metal began in Saxony in around 1830.</p></div></div></div></div>', 'uploads/blogs/serve/195471688886065.jpg', 'uploads/blogs/serve/961681688886065.webp', 'bismuth', 1, 1, '2023-07-09 07:01:05', '2023-07-09 07:01:05'),
(16, 'Cerium', '<div class=\"block block-header\" style=\"box-sizing: inherit; margin-top: 0px; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><div class=\"row justify-content-center\" style=\"box-sizing: inherit;\"><div class=\"col-lg-8\" style=\"box-sizing: inherit; min-height: 1px; width: 760px; flex-basis: 66.6667%; max-width: 66.6667%;\"><h1 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 2.5rem;\">Cerium</h1></div></div></div><div class=\"block block-text\" style=\"box-sizing: inherit; margin-top: 0px; color: rgb(41, 41, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><div class=\"row justify-content-md-center\" style=\"box-sizing: inherit;\"><div class=\"col col-lg-8\" style=\"box-sizing: inherit; min-height: 1px; width: 760px; flex-basis: 66.6667%; max-width: 66.6667%;\"><div class=\"wysiwyg\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\">Cerium was discovered in 1803 by Jöns J. Berzelius and Wilhelm von Hisinger in Sweden, and independently in the same year by Martin Klaproth in Germany. Berzelius and Hisinger discovered the new element in a rare reddish-brown mineral now known as cerite, a cerium-lanthanide silicate.</p><p style=\"box-sizing: inherit;\">They named the new element cerium after the asteroid Ceres, which had been discovered just two years earlier. They called cerium oxide ceria.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"></p><h2 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 1.563rem;\">Properties</h2><ul style=\"box-sizing: inherit;\"><li style=\"box-sizing: inherit;\">A reactive, soft, grey, lustrous metal that is malleable and ductile.</li><li style=\"box-sizing: inherit;\">When present in compounds, cerium exists in both the trivalent state (Ce3+, cerous, usually orange-red) and the tetravalent state (Ce4+, ceric, usually colourless).</li><li style=\"box-sizing: inherit;\">The metal tarnishes in moist air and reacts with water to form cerium hydroxide plus hydrogen gas.</li><li style=\"box-sizing: inherit;\">Small particles of the metal may ignite if a knife scratches the pure metal surface.</li><li style=\"box-sizing: inherit;\">It is attacked by alkali solutions and all other acids.</li><li style=\"box-sizing: inherit;\">Has a variable electronic structure: the energy of the inner 4f level is nearly the same as that of the 6s level, allowing variable occupancy of these two levels.&nbsp;<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"></li></ul><h2 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 1.563rem;\">Applications</h2><ul style=\"box-sizing: inherit;\"><li style=\"box-sizing: inherit;\">An alloy of cerium and lanthanum, with small amounts of neodymium and praseodymium (misch metal) combined with iron oxide and magnesium oxide is used as the&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">flint</span>&nbsp;in gas lighters.</li><li style=\"box-sizing: inherit;\">In nickel metal hydride (NiMH)&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">rechargeable batteries</span>&nbsp;for hybrid automobiles. The negative electrode (cathode) in NiMH batteries is a mixture of metal hydrides – typically a rare earth misch metal hydride containing praseodymium, neodymium, lanthanum and cerium.</li><li style=\"box-sizing: inherit;\">Cerium is used in<span style=\"box-sizing: inherit; font-weight: bolder;\">&nbsp;carbon-arc lighting</span>, especially in the motion picture industry.</li><li style=\"box-sizing: inherit;\">It is also used in&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">phosphors</span>&nbsp;for colour television screens and fluorescent lighting.</li><li style=\"box-sizing: inherit;\">Cerium oxide is used as an ingredient in&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">catalytic converters</span>&nbsp;to reduce carbon monoxide emissions in the exhaust fumes from automobiles.</li><li style=\"box-sizing: inherit;\">Cerium oxide, as a nanopowder, is added to diesel fuel to reduce sooty fumes and&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">improve engine performance</span>.</li><li style=\"box-sizing: inherit;\">It is used in the walls of&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">self-cleaning ovens</span>&nbsp;and is also used to polish glass surfaces.</li><li style=\"box-sizing: inherit;\">Flammacerium (cerium nitrate-silver sulphadiazine) is a cream to treat and prevent infections in extensive burn wounds. The cerium nitrate component&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">reduces immunosuppression</span>.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"></li></ul><h2 style=\"box-sizing: inherit; margin-bottom: 1rem; line-height: 1.4; word-break: break-word; font-family: ff-dax-pro, sans-serif; color: rgb(0, 104, 168); font-size: 1.563rem;\">Recycling</h2><p style=\"box-sizing: inherit;\">Rare earths are very challenging to recycle due partly to their very dispersed use.&nbsp;</p></div></div></div></div>', 'uploads/blogs/serve/999791688886233.jpg', 'uploads/blogs/serve/912781688886233.webp', 'cerium', 1, 1, '2023-07-09 07:03:53', '2023-07-09 07:03:53');

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
(8, '2023_07_02_143845_create_banner_models_table', 1),
(9, '2023_07_02_143845_create_service_models_table', 2),
(10, '2023_07_02_143845_create_about_models_table', 3),
(11, '2023_07_02_143845_create_mission_models_table', 4),
(13, '2023_07_05_101319_create_core_compentancies_table', 5),
(14, '2023_07_05_121242_create_sustainabilities_table', 6),
(15, '2023_07_05_121242_create_sustainabilities_approach_table', 7),
(16, '2023_07_05_121242_create_sustainabilities_stewardship_table', 8),
(17, '2023_07_08_045649_create_social_impact_models_table', 9),
(18, '2023_07_29_062832_create_offers_table', 10),
(19, '2023_08_04_045519_create_orders_table', 11),
(20, '2023_08_04_054701_create_order_product_table', 12),
(21, '2023_08_06_033804_create_user_addresses_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `mission_models`
--

CREATE TABLE `mission_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_text_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_summary_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_icon_image_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_text_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_summary_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_icon_image_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_text_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_summary_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_icon_image_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_text_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_summary_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_text_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_summary_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_text_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_summary_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_text_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_summary_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_text_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_summary_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_text_6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_summary_6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_text_7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_summary_7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_text_8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_summary_8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_text_9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_summary_9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision_summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mission_models`
--

INSERT INTO `mission_models` (`id`, `about_description`, `block_text_1`, `block_summary_1`, `block_icon_image_1`, `block_text_2`, `block_summary_2`, `block_icon_image_2`, `block_text_3`, `block_summary_3`, `block_icon_image_3`, `mission_description`, `vision_description`, `counter_text_1`, `value_summary_1`, `counter_text_2`, `value_summary_2`, `counter_text_3`, `value_summary_3`, `counter_text_4`, `value_summary_4`, `counter_text_5`, `value_summary_5`, `counter_text_6`, `value_summary_6`, `counter_text_7`, `value_summary_7`, `counter_text_8`, `value_summary_8`, `counter_text_9`, `value_summary_9`, `mission_summary`, `mission_image`, `vision_summary`, `vision_image`, `status`, `created_at`, `updated_at`) VALUES
(5, '<p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines. This reduces the cost of production drastically and improves efficiency.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">&nbsp;</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">The company believes in deploying the state of the art machinery that increases productivity.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">The company hires the best manpower which has a strong track record of execution in the precious metal space. With a solid past execution track record Balaji, group has mastered the art of producing final products at a bare minimum cost.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">&nbsp;</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">We aspire to continue to improve productivity delivering output from electronic waste as well as our mines.</p>', 'Block Text 1', 'Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines.', 'uploads/blogs/serve/629431688534138.png', 'Block Text 2', 'Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines.', 'uploads/blogs/serve/284661688534138.png', 'Block Text 3', 'Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines.', 'uploads/blogs/serve/528850861688534138.png', '<p>Clean &amp; Green Environment Clean &amp; Green Environment Clean &amp; Green Environment&nbsp;Clean &amp; Green Environment Clean &amp; Green Environment Clean &amp; Green Environment<br></p>', '<p>Clean &amp; Green Environment Clean &amp; Green Environment Clean &amp; Green Environment&nbsp;Clean &amp; Green Environment Clean &amp; Green Environment Clean &amp; Green Environment<br></p>', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', NULL, NULL, NULL, NULL, NULL, '2023-07-04 23:45:38', '2023-07-04 23:45:38'),
(7, '<p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines. This reduces the cost of production drastically and improves efficiency.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">&nbsp;</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">The company believes in deploying the state of the art machinery that increases productivity.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">The company hires the best manpower which has a strong track record of execution in the precious metal space. With a solid past execution track record Balaji, group has mastered the art of producing final products at a bare minimum cost.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">&nbsp;</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">We aspire to continue to improve productivity delivering output from electronic waste as well as our mines.</p>', 'Block Text 1', 'Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines.', 'uploads/blogs/serve/126821688535594.png', 'Block Text 2', 'Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines.', 'uploads/blogs/serve/118241688535594.png', 'Block Text 3', 'Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines.', 'uploads/blogs/serve/391875231688535594.png', '<p>Clean &amp; Green Environment Clean &amp; Green Environment Clean &amp; Green Environment&nbsp;Clean &amp; Green Environment Clean &amp; Green Environment Clean &amp; Green Environment<br></p>', '<p>Clean &amp; Green Environment Clean &amp; Green Environment Clean &amp; Green Environment&nbsp;Clean &amp; Green Environment Clean &amp; Green Environment Clean &amp; Green Environment<br></p>', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Clean & Green Environment', 'Clean & Green Environment Clean & Green Environment Clean & Green Environment', 'Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines. This reduces the cost of production drastically and improves efficiency.', 'uploads/blogs/serve/319001688535170.png', 'Balaji group is the most efficient player in the mining space. Because of the location of the mines, the group has access to large reserves of gold and copper deposits in the mines. This reduces the cost of production drastically and improves efficiency.', 'uploads/blogs/serve/208541688535170.jpg', NULL, '2023-07-05 00:02:50', '2023-07-05 10:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_discount` int(10) UNSIGNED NOT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `description`, `code`, `percentage_discount`, `discount_type`, `start_date`, `end_date`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Av', 'das wfjlk sojlmvbjhwr sui usfjf iok a', 'AMX20', 20, 'flat', '2023-07-30', '2023-08-06', 'images/webp/80091690709799.webp', '0', '2023-07-30 04:06:41', '2023-08-05 12:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `final_amount` decimal(10,2) NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_intent_id` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_status` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `ip_address`, `first_name`, `last_name`, `country`, `address_1`, `address_2`, `city`, `state`, `pincode`, `phone`, `email`, `final_amount`, `coupon_code`, `payment_intent_id`, `payment_method`, `transaction_status`, `status`, `created_at`, `updated_at`) VALUES
(16, '64cc9d371f168', NULL, '127.0.0.1', 'Anand', 'Singh', 'India', 'Varanasi', 'Chetganj', 'Attingal', 'Kerala', '221001', '09876543210', 'anandsingh678970@gmail.com', '49980.00', 'AMX20', NULL, NULL, NULL, 0, '2023-08-04 01:09:51', '2023-08-04 01:09:51'),
(17, '64cccb2e99a74', NULL, NULL, 'Anand', 'Singh', 'India', 'Varanasi', 'Chetganj', 'Attingal', 'Kerala', '221001', '09876543210', 'anandsingh678970@gmail.com', '13000.00', NULL, NULL, NULL, NULL, 0, '2023-08-04 04:25:58', '2023-08-04 04:25:58'),
(18, '64ccd0785855c', NULL, NULL, 'Anand', 'Singh', 'India', 'Varanasi', 'Chetganj', 'Attingal', 'Kerala', '221001', '09876543210', 'anandsingh678970@gmail.com', '13000.00', NULL, NULL, NULL, NULL, 0, '2023-08-04 04:48:32', '2023-08-04 04:48:32'),
(19, '64ccd188b6fcc', NULL, NULL, 'Anand', 'Singh', 'India', 'Varanasi', 'Chetganj', 'Attingal', 'Kerala', '221001', '09876543210', 'anandsingh678970@gmail.com', '13000.00', NULL, NULL, NULL, NULL, 0, '2023-08-04 04:53:04', '2023-08-04 04:53:04'),
(20, '64ccd5f5641a1', NULL, NULL, 'Anand', 'Singh', 'India', 'Varanasi', 'Chetganj', 'Attingal', 'Kerala', '221001', '09876543210', 'anandsingh678970@gmail.com', '13000.00', NULL, NULL, NULL, NULL, 0, '2023-08-04 05:11:57', '2023-08-04 05:11:57'),
(21, '64cce7a25ed61', NULL, NULL, 'Anand', 'Singh', 'India', 'Varanasi', 'Chetganj', 'Attingal', 'Kerala', '221001', '09876543210', 'anandsingh678970@gmail.com', '13000.00', NULL, 'pi_1NbN70KDGzpYlWQ2Nxre4pGG', 'pm_1NbN70KDGzpYlWQ2dqie08fb', 'succeeded', 1, '2023-08-04 06:27:22', '2023-08-04 06:59:36'),
(22, '64cdf0970a0a7', '', '127.0.0.1', 'Anand', 'Singh', 'India', 'Varanasi', 'Chetganj', 'Attingal', 'Kerala', '221001', '09876543210', 'anandsingh678970@gmail.com', '13000.00', NULL, NULL, NULL, NULL, 0, '2023-08-05 01:17:51', '2023-08-05 01:17:51'),
(23, '64cdfe2310403', '11', '127.0.0.1', 'Anand', 'Singh', 'India', 'Varanasi', 'Chetganj', 'Attingal', 'Kerala', '221001', '09876543210', 'anandsingh678970@gmail.com', '1500.00', NULL, NULL, NULL, NULL, 0, '2023-08-05 02:15:39', '2023-08-05 02:15:39'),
(24, '64d0d7b09098a', '', '127.0.0.1', 'Anand', 'Singh', 'India', 'Varanasi', 'Chetganj', 'Flower Mound', 'Texas', '75022', '09876543210', 'anandsingh678970@gmail.com', '1000.00', NULL, NULL, NULL, NULL, 0, '2023-08-07 06:08:24', '2023-08-07 06:08:24'),
(25, '64d23c172a545', '', '127.0.0.1', 'Anand', 'Singh', 'United States', '101 abc', 'def ghi', 'Flower Mound', 'Texas', '11801', '07777777777', 'anandsingh678970@gmail.com', '1042.69', NULL, NULL, NULL, NULL, 0, '2023-08-08 07:29:04', '2023-08-08 07:29:04'),
(26, '64d23e5393489', '', '127.0.0.1', 'Anand', 'test', 'United States', '9 N Fordham Rd', 'Chetganj', 'Hicksville', 'New York', '11801', '15168141663', 'test@test.com', '1055.45', NULL, NULL, NULL, NULL, 1, '2023-08-08 07:38:35', '2023-08-08 07:38:35'),
(27, '64d25d0ce6086', '', '127.0.0.1', 'Anand', 'test', 'United States', '9 N Fordham Rd', 'Chetganj', 'Hicksville', 'New York', '11801', '15168141663', 'test@test.com', '1042.69', NULL, NULL, NULL, NULL, 0, '2023-08-08 09:49:41', '2023-08-08 09:49:41'),
(28, '64d26d8939db2', '', '127.0.0.1', 'test', 'test', 'India', 'Varanasi', 'eeee', 'Attingal', 'Armed Forces Pacific', '221001', '07777777777', 'te@gmail.com', '1042.69', NULL, NULL, NULL, NULL, 0, '2023-08-08 11:00:01', '2023-08-08 11:00:01'),
(29, '64d26f7c55d34', '', '127.0.0.1', 'Anand', 'Singh', 'India', 'Varanasi', 'Chetganj', 'Attingal', 'Kerala', '221001', '09876543210', 'anandsingh678970@gmail.com', '1042.69', NULL, 'pi_1Nct1yKDGzpYlWQ2cN77N6Nr', 'pm_1Nct1tKDGzpYlWQ2Ie3829Gv', 'succeeded', 1, '2023-08-08 11:08:20', '2023-08-08 11:16:41'),
(30, '64d3754b69ddc', '', '127.0.0.1', 'Anand', 'Singh', 'India', 'Varanasi', 'Chetganj', 'Attingal', 'Kerala', '11801', '09876543210', 'anandsingh678970@gmail.com', '1092.30', NULL, NULL, NULL, NULL, 0, '2023-08-09 05:45:23', '2023-08-09 05:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `attribute_id`, `quantity`, `price`, `size`, `created_at`, `updated_at`) VALUES
(15, 16, 26, 2, 1, '5000.00', '10ml', NULL, NULL),
(16, 16, 26, 3, 1, '8000.00', '15ml', NULL, NULL),
(17, 17, 26, 2, 1, '5000.00', '10ml', NULL, NULL),
(18, 17, 26, 3, 1, '8000.00', '15ml', NULL, NULL),
(19, 18, 26, 2, 1, '5000.00', '10ml', NULL, NULL),
(20, 18, 26, 3, 1, '8000.00', '15ml', NULL, NULL),
(21, 19, 26, 2, 1, '5000.00', '10ml', NULL, NULL),
(22, 19, 26, 3, 1, '8000.00', '15ml', NULL, NULL),
(23, 20, 26, 2, 1, '5000.00', '10ml', NULL, NULL),
(24, 20, 26, 3, 1, '8000.00', '15ml', NULL, NULL),
(25, 21, 26, 2, 1, '5000.00', '10ml', NULL, NULL),
(26, 21, 26, 3, 1, '8000.00', '15ml', NULL, NULL),
(27, 22, 26, 2, 1, '5000.00', '10ml', NULL, NULL),
(28, 22, 26, 3, 1, '8000.00', '15ml', NULL, NULL),
(29, 23, 25, 7, 3, '500.00', '5ML', NULL, NULL),
(30, 24, 25, 8, 1, '900.00', '5oz', NULL, NULL),
(31, 24, 25, 1, 10, '10.00', '10Ml', NULL, NULL),
(32, 25, 25, 8, 1, '900.00', '5oz', NULL, NULL),
(33, 25, 25, 1, 10, '10.00', '10Ml', NULL, NULL),
(34, 26, 25, 8, 1, '900.00', '5oz', NULL, NULL),
(35, 26, 25, 1, 10, '10.00', '10Ml', NULL, NULL),
(36, 27, 25, 8, 1, '900.00', '5oz', NULL, NULL),
(37, 27, 25, 1, 10, '10.00', '10Ml', NULL, NULL),
(38, 28, 25, 8, 1, '900.00', '5oz', NULL, NULL),
(39, 28, 25, 1, 10, '10.00', '10Ml', NULL, NULL),
(40, 29, 25, 8, 1, '900.00', '5oz', NULL, NULL),
(41, 29, 25, 1, 10, '10.00', '10Ml', NULL, NULL),
(42, 30, 25, 8, 1, '900.00', '5oz', NULL, NULL),
(43, 30, 25, 1, 10, '10.00', '10Ml', NULL, NULL),
(44, 30, 25, 1, 1, '10.00', '10Ml', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('anandsingh678970@gmail.com', '$2y$10$qdYtaYACTRBUE8hM4b1xcOdjS3D5pfMvMly2pwzqFz8jqjwDGL3rW', '2021-11-10 01:28:03'),
('anandsingh678970@gmail.com', '95437264590286C', '2021-11-10 01:47:57'),
('anandsingh678970@gmail.com', '82599546219676E', '2021-11-10 01:49:07'),
('anandsingh678970@gmail.com', '68816141066510D', '2021-11-10 01:50:22'),
('anandsingh678970@gmail.com', '27015935618175L', '2021-11-10 01:51:27'),
('anandsingh678970@gmail.com', '38694018389571Z', '2021-11-10 01:52:04'),
('anandsingh678970@gmail.com', '86763226672009M', '2021-11-10 01:58:20'),
('anandsingh678970@gmail.com', '79453451138543Z', '2021-11-10 01:59:02'),
('anandsingh678970@gmail.com', '37880643758821K', '2021-11-10 02:01:02'),
('anandsingh678970@gmail.com', '42983855147069Q', '2021-11-10 02:01:25'),
('anandsingh678970@gmail.com', '48902721499705M', '2021-11-10 02:02:38'),
('anandsingh678970@gmail.com', '48515371775268O', '2021-11-10 02:03:15'),
('anandsingh678970@gmail.com', '53008386027679S', '2021-11-10 02:05:01'),
('estore@rawae.com', '85976185736376V', '2021-11-10 02:06:16'),
('estore@rawae.com', '52166353238954W', '2021-11-10 02:06:39'),
('anandsingh678970@gmail.com', '17081365874315J', '2021-11-10 02:11:01'),
('estore@rawae.com', '81464132382131I', '2021-11-09 23:32:10'),
('estore@rawae.com', '53840056358401D', '2021-11-09 23:33:28'),
('anandsingh678970@gmail.com', '86194214601707L', '2021-11-09 23:40:57'),
('anandsingh678970@gmail.com', '97105283737797S', '2021-11-09 23:42:00'),
('anandsingh678970@gmail.com', '18753396640417Z', '2021-11-09 23:47:38'),
('anandsingh678970@gmail.com', '59603176429162Q', '2021-11-09 23:53:15'),
('anandsingh678970@gmail.com', '96269179671140C', '2021-11-09 23:55:01'),
('anandsingh678970@gmail.com', '30234264937444D', '2021-11-09 23:59:27'),
('anandsingh678970@gmail.com', '51256617840636F', '2021-11-10 23:05:02'),
('anandsingh678970@gmail.com', '80144174161748G', '2021-11-11 22:06:58'),
('anandsingh678970@gmail.com', '90609592791277Z', '2021-11-11 23:09:04'),
('anandsingh678970@gmail.com', '50993417236315W', '2021-11-11 23:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `phone` varchar(500) DEFAULT NULL,
  `pan` varchar(500) DEFAULT NULL,
  `amount` varchar(500) DEFAULT NULL,
  `plantNumber` int(11) DEFAULT NULL,
  `period` varchar(500) DEFAULT NULL,
  `order_id` varchar(500) DEFAULT NULL,
  `payment_id` varchar(500) DEFAULT NULL,
  `payment_response` varchar(500) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL,
  `created_at` varchar(500) DEFAULT NULL,
  `updated_at` varchar(500) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_reference` varchar(255) DEFAULT NULL,
  `razorpay_order_id` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `card_id` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `wallet` varchar(255) DEFAULT NULL,
  `vpa` varchar(255) DEFAULT NULL,
  `customer_ip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `email`, `phone`, `pan`, `amount`, `plantNumber`, `period`, `order_id`, `payment_id`, `payment_response`, `status`, `created_at`, `updated_at`, `payment_status`, `payment_reference`, `razorpay_order_id`, `payment_method`, `card_id`, `bank`, `wallet`, `vpa`, `customer_ip`) VALUES
(1, 'Anand', 'anandsingh678970@gmail.com', '8585856888', 'GWPPS461b', '6000', NULL, NULL, 'EK27294811', NULL, NULL, NULL, '2023-04-01 04:47:41', '2023-04-01 04:47:41', 'authorized', 'paylater', 'pay_LYOPkYgyYyDDzY', 'paylater', NULL, NULL, 'lazypay', NULL, '127.0.0.1'),
(2, 'Anand', 'anandsingh678970@gmail.com', '8585856888', 'GWPPS461b', '6000', NULL, NULL, 'EK27294811', NULL, NULL, NULL, '2023-04-01 05:43:58', '2023-04-01 05:43:58', 'authorized', 'paylater', 'pay_LYPqeOau3Rsc3K', 'paylater', NULL, NULL, 'kkbk', NULL, '127.0.0.1'),
(3, 'Anand', 'anandsingh678970@gmail.com', '8585856888', 'GWPPS461b', '6000', NULL, NULL, 'EK27294811', NULL, NULL, NULL, '2023-04-01 05:44:20', '2023-04-01 05:44:20', 'authorized', 'paylater', 'pay_LYPqeOau3Rsc3K', 'paylater', NULL, NULL, 'kkbk', NULL, '127.0.0.1'),
(4, 'Anand', 'anandsingh678970@gmail.com', '8585856888', 'GWPPS461b', '6000', NULL, NULL, 'EK55932699', NULL, NULL, NULL, '2023-04-06 16:11:11', '2023-04-06 16:11:11', 'authorized', 'paylater', 'pay_LaZCina0zP3VWC', 'paylater', NULL, NULL, 'getsimpl', NULL, '127.0.0.1'),
(5, 'Anand', 'anandsingh678970@gmail.com', '8585856888', 'GWPPS461b', '6000', 10, NULL, 'EK55932699', NULL, NULL, NULL, '2023-04-06 16:11:54', '2023-04-06 16:11:54', 'authorized', 'paylater', 'pay_LaZDXTaXu2Sg6t', 'paylater', NULL, NULL, 'getsimpl', NULL, '127.0.0.1'),
(6, 'Celebrate oceans', 'karteek@karteek.com', '8585856880', 'GWPPS461b', '1200', 2, NULL, 'EK60148396', NULL, NULL, NULL, '2023-04-06 16:13:11', '2023-04-06 16:13:11', 'authorized', 'paylater', 'pay_LaZEsSLQWJRGUO', 'paylater', NULL, NULL, 'getsimpl', NULL, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pincodes`
--

CREATE TABLE `pincodes` (
  `id` int(11) NOT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Pincode` varchar(100) DEFAULT NULL,
  `Has_Cod` varchar(100) DEFAULT NULL,
  `Has_Prepaid` varchar(100) DEFAULT NULL,
  `Has_Reverse` varchar(100) DEFAULT NULL,
  `Shiprocket_Delivery` varchar(100) DEFAULT NULL,
  `Routing_Code` varchar(100) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT current_timestamp(),
  `updated_at` varchar(255) DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pincodes`
--

INSERT INTO `pincodes` (`id`, `City`, `Pincode`, `Has_Cod`, `Has_Prepaid`, `Has_Reverse`, `Shiprocket_Delivery`, `Routing_Code`, `State`, `created_at`, `updated_at`) VALUES
(1, 'DELHI', '110000', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLJ/DLJ', 'DELHI', '', ''),
(2, 'DELHI', '110001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ANT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(3, 'DELHI', '110002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'IPC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(4, 'DELHI', '110003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(5, 'DELHI', '110004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(6, 'DELHI', '110005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RAJ', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(7, 'DELHI', '110006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(8, 'DELHI', '110007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(9, 'DELHI', '110008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RAJ', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(10, 'DELHI', '110009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'WZR', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(11, 'DELHI', '110010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DCT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(12, 'DELHI', '110011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(13, 'DELHI', '110012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RAJ', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(14, 'DELHI', '110013', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'OKH', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(15, 'DELHI', '110014', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'OKH', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(16, 'DELHI', '110015', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RMR', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(17, 'DELHI', '110016', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SJE', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(18, 'DELHI', '110017', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SET', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(19, 'DELHI', '110018', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PSV', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(20, 'DELHI', '110019', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(21, 'DELHI', '110020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'OKH', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(22, 'DELHI', '110021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DCT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(23, 'DELHI', '110022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DCT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(24, 'DELHI', '110023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SJE', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(25, 'DELHI', '110024', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(26, 'DELHI', '110025', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(27, 'DELHI', '110026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RMR', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(28, 'DELHI', '110027', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RMR', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(29, 'DELHI', '110028', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RAJ', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(30, 'DELHI', '110029', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SJE', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(31, 'DELHI', '110030', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VVH', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(32, 'DELHI', '110031', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KRR', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(33, 'DELHI', '110032', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JIA', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(34, 'DELHI', '110033', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'WZR', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(35, 'DELHI', '110034', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PIT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(36, 'DELHI', '110035', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RMR', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(37, 'DELHI', '110036', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ROI', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(38, 'DELHI', '110037', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KSP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(39, 'DELHI', '110038', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KSP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(40, 'DELHI', '110039', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ROI', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(41, 'DELHI', '110040', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ROI', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(42, 'DELHI', '110041', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PSV', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(43, 'DELHI', '110042', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ROI', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(44, 'DELHI', '110043', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JNK', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(45, 'DELHI', '110044', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(46, 'DELHI', '110045', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DWK', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(47, 'DELHI', '110046', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JNK', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(48, 'DELHI', '110047', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VVH', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(49, 'DELHI', '110048', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(50, 'DELHI', '110049', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SJE', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(51, 'DELHI', '110050', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PSV', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(52, 'DELHI', '110051', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KRR', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(53, 'DELHI', '110052', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'WZR', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(54, 'DELHI', '110053', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JIA', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(55, 'DELHI', '110054', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(56, 'DELHI', '110055', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(57, 'DELHI', '110056', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PSV', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(58, 'DELHI', '110057', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DCT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(59, 'DELHI', '110058', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JNK', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(60, 'DELHI', '110059', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JNK', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(61, 'DELHI', '110060', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RAJ', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(62, 'DELHI', '110061', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KSP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(63, 'DELHI', '110062', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SET', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(64, 'DELHI', '110063', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PSV', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(65, 'DELHI', '110064', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RMR', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(66, 'DELHI', '110065', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'OKH', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(67, 'DELHI', '110066', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SJE', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(68, 'DELHI', '110067', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SET', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(69, 'DELHI', '110068', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SET', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(70, 'DELHI', '110069', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(71, 'DELHI', '110070', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VVH', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(72, 'DELHI', '110071', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KSP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(73, 'DELHI', '110072', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KSP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(74, 'DELHI', '110073', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KSP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(75, 'DELHI', '110074', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VVH', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(76, 'DELHI', '110075', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DWK', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(77, 'DELHI', '110076', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(78, 'DELHI', '110077', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DWK', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(79, 'DELHI', '110078', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DWK', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(80, 'DELHI', '110079', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DSW/DSW', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(81, 'DELHI', '110080', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SET', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(82, 'DELHI', '110081', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ROI', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(83, 'DELHI', '110082', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ROI', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(84, 'DELHI', '110083', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PIT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(85, 'DELHI', '110084', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'WZR', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(86, 'DELHI', '110085', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ROI', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(87, 'DELHI', '110086', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PIT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(88, 'DELHI', '110087', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PSV', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(89, 'DELHI', '110088', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'WZR', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(90, 'DELHI', '110089', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ROI', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(91, 'DELHI', '110090', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JIA', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(92, 'DELHI', '110091', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MVH', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(93, 'DELHI', '110092', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'EDL', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(94, 'DELHI', '110093', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JIA', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(95, 'DELHI', '110094', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JIA', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(96, 'DELHI', '110095', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JIA', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(97, 'DELHI', '110096', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MVH', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(98, 'DELHI', '110097', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KSP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(99, 'DELHI', '110098', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DIA/DIA', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(100, 'Delhi NCR', '110099', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/9A/099', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(101, 'DELHI', '110100', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLJ/DLJ', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(102, 'DELHI', '110101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(103, 'DELHI', '110102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLJ/DLJ', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(104, 'DELHI', '110103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'IPC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(105, 'DELHI', '110104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'IPC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(106, 'DELHI', '110105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(107, 'DELHI', '110106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(108, 'DELHI', '110107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(109, 'DELHI', '110108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(110, 'DELHI', '110109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'IPC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(111, 'DELHI', '110110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'IPC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(112, 'DELHI', '110112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'IPC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(113, 'DELHI', '110113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'IPC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(114, 'DELHI', '110114', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ANT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(115, 'DELHI', '110115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ANT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(116, 'DELHI', '110116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ANT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(117, 'DELHI', '110117', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ANT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(118, 'DELHI', '110118', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ANT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(119, 'DELHI', '110119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ANT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(120, 'DELHI', '110120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ANT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(121, 'DELHI', '110121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLB/DLB', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(122, 'DELHI', '110122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ANT', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(123, 'DELHI', '110124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'IPC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(124, 'DELHI', '110125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RAJ', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(125, 'DELHI', '110301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'EDL', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(126, 'DELHI', '110302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'EDL', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(127, 'DELHI', '110401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLJ/DLJ', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(128, 'DELHI', '110402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLB/DLB', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(129, 'DELHI', '110403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLJ/DLJ', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(130, 'DELHI', '110501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'OKH', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(131, 'DELHI', '110502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(132, 'DELHI', '110503', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(133, 'DELHI', '110504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(134, 'DELHI', '110505', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NP', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(135, 'DELHI', '110506', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLO/DLO', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(136, 'DELHI', '110507', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLB/DLB', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(137, 'DELHI', '110508', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLO/DLO', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(138, 'DELHI', '110509', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLJ/DLJ', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(139, 'DELHI', '110510', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(140, 'DELHI', '110511', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(141, 'DELHI', '110512', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABC', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(142, 'DELHI', '110601', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SJE', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(143, 'DELHI', '110602', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SJE', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(144, 'DELHI', '110603', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SJE', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(145, 'DELHI', '110604', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SJE', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(146, 'DELHI', '110605', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SJE', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(147, 'DELHI', '110606', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SJE', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(148, 'DELHI', '110607', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SJE', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(149, 'DELHI', '110608', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SJE', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(150, 'DELHI', '110609', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SJE', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(151, 'Delhi NCR', '111000', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(152, 'Delhi NCR', '111100', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(153, 'DELHI', '111105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLB/DLB', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(154, 'Delhi NCR', '111110', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(155, 'DELHI', '111111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLO/DLO', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(156, 'DELHI', '111112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLO/DLO', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(157, 'DELHI', '111113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLB/DLB', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(158, 'DELHI', '111114', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLB/DLB', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(159, 'DELHI', '111119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLB/DLB', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(160, 'DELHI', '111120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLB/DLB', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(161, 'DELHI', '111121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DL/DLB/DLB', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(162, 'GURUGRAM', '120001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGA/GGA', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(163, 'GURUGRAM', '120002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGA/GGA', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(164, 'FARIDABAD', '121000', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/FAR/FAR', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(165, 'FARIDABAD', '121001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FAO', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(166, 'FARIDABAD', '121002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FAO', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(167, 'FARIDABAD', '121003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FAC', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(168, 'FARIDABAD', '121004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FAO', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(169, 'FARIDABAD', '121005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FAO', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(170, 'FARIDABAD', '121006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FAO', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(171, 'FARIDABAD', '121007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FAO', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(172, 'FARIDABAD', '121008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FAC', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(173, 'FARIDABAD', '121009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FAC', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(174, 'FARIDABAD', '121010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FAC', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(175, 'FARIDABAD', '121011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/FAR/FAR', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(176, 'FARIDABAD', '121012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/FAR/FAR', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(177, 'FARIDABAD', '121013', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/FAR/FAR', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(178, 'FARIDABAD', '121014', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/FAR/FAR', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(179, 'FARIDABAD', '121015', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/FAR/FAR', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(180, 'FARIDABAD', '121101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FAO', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(181, 'FARIDABAD', '121102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PWL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(182, 'PALWAL', '121103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PWL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(183, 'PALWAL', '121104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PWL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(184, 'FARIDABAD', '121105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PWL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(185, 'FARIDABAD', '121106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PWL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(186, 'HODAL', '121107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HDL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(187, 'FARIDABAD', '121108', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(188, 'FARIDABAD', '121206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FAO', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(189, 'MAUNATH BHANJAN', '121705', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/MUB', 'UTTAR PRADESH', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(190, 'GURUGRAM', '122000', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGB/GGB', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(191, 'GURGAON', '122001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CTY', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(192, 'GURGAON', '122002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DCC', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(193, 'GURGAON', '122003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DLF', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(194, 'GURGAON', '122004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GGM', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(195, 'GURGAON', '122005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CTY', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(196, 'GURGAON', '122006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CTY', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(197, 'GURGAON', '122007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CTY', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(198, 'GURGAON', '122008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DCC', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(199, 'GURGAON', '122009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DLF', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(200, 'GURGAON', '122010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DCC', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(201, 'GURGAON', '122011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DLF', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(202, 'GURUGRAM', '122012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GGM', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(203, 'GURUGRAM', '122013', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGB/GGB', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(204, 'GURUGRAM', '122014', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGA/GGA', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(205, 'GURGAON', '122015', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UDV', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(206, 'GURGAON', '122016', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UDV', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(207, 'GURGAON', '122017', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UDV', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(208, 'GURGAON', '122018', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GSR', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(209, 'GURUGRAM', '122019', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GSR', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(210, 'GURUGRAM', '122020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGC/GGC', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(211, 'GURUGRAM', '122021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGB/GGB', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(212, 'GURUGRAM', '122022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGB/GGB', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(213, 'GURGAON', '122026', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(214, 'GURGAON', '122027', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(215, 'FARIDABAD', '122029', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(216, 'GURGAON', '122030', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(217, 'GURUGRAM', '122050', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GGM', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(218, 'GURGAON', '122051', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GGM', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(219, 'GURGAON', '122052', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GGM', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(220, 'GURUGRAM', '122053', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGM/GGM', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(221, 'GURUGRAM', '122055', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGB/GGB', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(222, 'BHIWADI', '122100', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BWD', 'RAJASTHAN', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(223, 'GURGAON', '122101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SOA', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(224, 'GURGAON', '122102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SOA', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(225, 'GURGAON', '122103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SOA', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(226, 'NUH', '122104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/NUU', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(227, 'BHIWADI', '122105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BHD', 'RAJASTHAN', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(228, 'DARUHERA', '122106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRH', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(229, 'NUH', '122107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/NUU', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(230, 'NUH', '122108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/NUU', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(231, 'NUH', '122109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/NUU', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(232, 'GURUGRAM', '122203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/203', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(233, 'Delhi NCR', '122204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/15C/204', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(234, 'GURUGRAM', '122206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/206', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(235, 'Delhi NCR', '122207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/15C/207', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(236, 'GURUGRAM', '122208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/6A/208', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(237, 'GURUGRAM', '122209', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/209', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(238, 'GURUGRAM', '122210', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/210', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(239, 'GURUGRAM', '122211', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/211', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(240, 'GURUGRAM', '122213', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/213', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(241, 'GURUGRAM', '122214', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/214', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(242, 'GURUGRAM', '122215', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/215', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(243, 'GURUGRAM', '122216', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/216', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(244, 'GURUGRAM', '122217', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/217', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(245, 'GURUGRAM', '122218', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/218', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(246, 'GURUGRAM', '122219', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/219', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(247, 'GURUGRAM', '122220', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/6A/220', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(248, 'GURGAON RTO CARDS', '122222', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'GRT', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(249, 'GURUGRAM', '122223', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/6A/223', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(250, 'GURUGRAM', '122224', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/6A/224', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(251, 'GURUGRAM', '122225', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/6A/225', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(252, 'GURUGRAM', '122226', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/6A/226', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(253, 'GURUGRAM', '122227', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/6A/227', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(254, 'GURUGRAM', '122228', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/6A/228', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(255, 'GURUGRAM', '122229', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/6A/229', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(256, 'GURUGRAM', '122230', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/230', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(257, 'GURUGRAM', '122231', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/231', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(258, 'GURUGRAM', '122232', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/232', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(259, 'GURUGRAM', '122233', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/1B/233', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(260, 'GURUGRAM', '122234', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-1/6A/234', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(261, 'GURGAON', '122413', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GBP', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(262, 'PATAUDI', '122414', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PTR', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(263, 'REWARI', '122502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/RWR', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(264, 'GURGAON', '122503', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GBP', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(265, 'PATAUDI', '122504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PTR', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(266, 'GURUGRAM', '122505', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGM/GGM', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(267, 'GURGAON', '122506', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GBP', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(268, 'HODAL', '122508', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HDL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(269, 'NAJAFGARH', '122555', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'DELHI', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(270, 'MAHENDRAGARH', '123001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NRL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(271, 'NARNAUL', '123003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/NNL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(272, 'NARNAUL', '123020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/NNL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(273, 'REWARI', '123021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NRL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(274, 'NARNAUL', '123022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/NNL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(275, 'NARNAUL', '123023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/NNL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(276, 'MAHENDARGARH', '123024', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHG', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(277, 'MAHENDARGARH', '123025', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHG', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(278, 'MAHENDARGARH', '123026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHG', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(279, 'MAHENDARGARH', '123027', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHG', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(280, 'NARNAUL', '123028', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/NNL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(281, 'MAHENDARGARH', '123029', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHG', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(282, 'MAHENDARGARH', '123034', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHG', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(283, 'KOSLI', '123035', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KSL', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(284, 'REWARI', '123101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/RWR', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(285, 'REWARI', '123102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RWT', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(286, 'REWARI', '123103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/RWR', 'HARYANA', '2021-10-06 17:44:46', '2021-10-06 17:44:46'),
(287, 'REWARI', '123106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRH', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(288, 'REWARI', '123110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRH', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(289, 'KOSLI', '123301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KSL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(290, 'KOSLI', '123302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KSL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(291, 'KOSLI', '123303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KSL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(292, 'KOSLI', '123304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KSL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(293, 'KOSLI', '123305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KSL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(294, 'REWARI', '123401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RWT', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(295, 'REWARI', '123411', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/RWR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(296, 'REWARI', '123412', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/RWR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(297, 'PATAUDI', '123413', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PTR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(298, 'REWARI', '123414', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/RWR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(299, 'REWARI', '123501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BAW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(300, 'Rewari', '123502', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'N/S-03/2A/502', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(301, 'GURUGRAM', '123503', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGB/GGB', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(302, 'GURGAON PATAUDI', '123504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GBP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(303, 'GURUGRAM', '123505', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GBP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(304, 'GURUGRAM', '123506', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGB/GGB', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(305, 'GURUGRAM', '123507', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGB/GGB', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(306, 'GURUGRAM', '123508', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/GGB/GGB', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(307, 'ROHTAK', '124001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(308, 'ROHTAK', '124002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(309, 'ROHTAK', '124003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(310, 'ROHTAK', '124004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(311, 'ROHTAK', '124005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(312, 'ROHTAK', '124006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(313, 'ROHTAK', '124007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(314, 'ROHTAK', '124008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(315, 'ROHTAK', '124009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(316, 'ROHTAK', '124010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(317, 'ROHTAK', '124021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(318, 'MAHAM', '124022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(319, 'MAHAM', '124023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(320, 'MAHAM', '124024', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(321, 'JHAJJAR', '124101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(322, 'JHAJJAR', '124102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(323, 'JHAJJAR', '124103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(324, 'JHAJJAR', '124104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(325, 'JHAJJAR', '124105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(326, 'JHAJJAR', '124106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(327, 'JHAJJAR', '124107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(328, 'JHAJJAR', '124108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(329, 'JHAJJAR', '124109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(330, 'MAHAM', '124110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(331, 'MAHAM', '124111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(332, 'ROHTAK', '124112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HNS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(333, 'ROHTAK', '124113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KLN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(334, 'ROHTAK', '124114', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(335, 'MEHAM', '124127', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-3/13C/127', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(336, 'MEHAM', '124129', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-2/5C/129', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(337, 'CHARKHI DADRI', '124139', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/CKD', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(338, 'CHARKHI DADRI', '124140', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/CKD', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(339, 'CHARKHI DADRI', '124141', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/CKD', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(340, 'CHARKHI DADRI', '124142', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/CKD', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(341, 'KOSLI', '124146', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KSL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(342, 'JHAJJAR', '124201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(343, 'JHAJJAR', '124202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(344, 'JHAJJAR', '124203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(345, 'JHAJJAR', '124204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(346, 'ROHTAK', '124301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(347, 'ROHTAK', '124302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(348, 'ROHTAK', '124303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(349, 'ROHTAK', '124304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(350, 'ROHTAK', '124305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(351, 'ROHTAK', '124401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(352, 'ROHTAK', '124402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(353, 'BAHADURGARH', '124403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BDG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(354, 'BAHADURGARH', '124404', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BDG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(355, 'BAHADURGARH', '124405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BDG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(356, 'KHARKHODA', '124406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KHK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(357, 'BAHADURGARH', '124407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BDG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(358, 'BAHADURGARH', '124408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BDG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(359, 'ROHTAK', '124409', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(360, 'ROHTAK', '124410', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(361, 'ROHTAK', '124411', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(362, 'ROHTAK', '124412', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(363, 'ROHTAK', '124413', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RTK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(364, 'BAHADURGARH', '124501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BDG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(365, 'BAHADURGARH', '124502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BDG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(366, 'JHAJJAR', '124503', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(367, 'JHAJJAR', '124504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JJR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(368, 'BAHADURGARH', '124505', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BDG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(369, 'BAHADURGARH', '124506', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BDG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(370, 'JHAJJAR', '124507', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BHH', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(371, 'BAHADURGARH', '124508', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BDG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(372, 'BAHADURGARH', '124509', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BDG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(373, 'BAHADURGARH', '124510', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BDG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(374, 'MAHAM', '124511', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(375, 'MAHAM', '124512', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(376, 'MAHAM', '124513', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(377, 'MAHAM', '124514', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(378, 'MAHAM', '124515', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(379, 'MAHAM', '124516', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(380, 'ROHTAK', '124605', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(381, 'HISAR', '125001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HIS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(382, 'HISSAR', '125002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HIS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(383, 'HISSAR', '125003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HIS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(384, 'HISAR', '125004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HIS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(385, 'HISAR', '125005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HIS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(386, 'HISAR', '125006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HCO', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(387, 'HISAR', '125007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HIS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(388, 'HISAR', '125008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HIS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(389, 'HISAR', '125009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HIS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(390, 'HISAR', '125011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HIS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(391, 'HISAR', '125012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HIS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(392, 'Bhiwani', '125021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-2/4B/021', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(393, 'HANSI', '125031', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HNS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(394, 'HANSI', '125032', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HNS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(395, 'HISAR', '125033', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HNS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(396, 'HANSI', '125034', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HNS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(397, 'HANSI', '125035', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HNS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(398, 'HANSI', '125036', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HNS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(399, 'HANSI', '125037', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HNS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(400, 'HISAR', '125038', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HNS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(401, 'HISAR', '125039', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HNS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(402, 'HANSI', '125040', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HNS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35');
INSERT INTO `pincodes` (`id`, `City`, `Pincode`, `Has_Cod`, `Has_Prepaid`, `Has_Reverse`, `Shiprocket_Delivery`, `Routing_Code`, `State`, `created_at`, `updated_at`) VALUES
(403, 'MAHAM', '125041', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(404, 'MAHAM', '125042', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(405, 'HISAR', '125043', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HIS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(406, 'HISAR', '125044', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HIS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(407, 'HISAR', '125045', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HIS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(408, 'FATEHABAD', '125046', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/FTB', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(409, 'HISAR', '125047', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FHB', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(410, 'FATEHABAD', '125048', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/FTB', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(411, 'HANSI', '125049', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HNS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(412, 'FATEHABAD', '125050', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FHB', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(413, 'FATEHABAD', '125051', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RAT', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(414, 'HISAR', '125052', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ADM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(415, 'FATEHABAD', '125053', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ADM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(416, 'FATEHABAD', '125054', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/FTB', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(417, 'SIRSA', '125055', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SIA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(418, 'SIRSA', '125056', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SIA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(419, 'SIRSA', '125057', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SIA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(420, 'FATEHABAD', '125058', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/FTB', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(421, 'SIRSA', '125059', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SSA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(422, 'SIRSA', '125060', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SSA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(423, 'SIRSA', '125061', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SSA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(424, 'SIRSA', '125062', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SSA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(425, 'RANIA', '125073', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RIA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(426, 'RANIA', '125074', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RIA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(427, 'RANIA', '125075', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RIA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(428, 'RANIA', '125076', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RIA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(429, 'KALANWALI', '125077', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KNL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(430, 'KALANWALI', '125078', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KNL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(431, 'KALANWALI', '125079', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KNL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(432, 'KALANWALI', '125080', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KNL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(433, 'SANGARIA', '125101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SNX', 'RAJASTHAN', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(434, 'SIRSA', '125102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ELB', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(435, 'RANIA', '125103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RIA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(436, 'DABWALI', '125104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DWL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(437, 'BHUNA', '125105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BUN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(438, 'BHUNA', '125106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BUN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(439, 'BHUNA', '125107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BUN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(440, 'SIRSA', '125108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SSA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(441, 'SIRSA', '125109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SSA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(442, 'SIRSA', '125110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SSA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(443, 'BHUNA', '125111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BUN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(444, 'BHUNA', '125112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BUN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(445, 'BHUNA', '125113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BUN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(446, 'TOHANA', '125119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/TUN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(447, 'FATEHABAD', '125120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'TOH', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(448, 'BARWALA', '125121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BXC', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(449, 'BARWALA', '125122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BXC', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(450, 'BARWALA', '125123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BXC', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(451, 'TOHANA', '125125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-2/5A/125', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(452, 'FATEHABAD', '125133', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HIS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(453, 'KALANWALI', '125201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KNL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(454, 'KALANWALI', '125202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KNL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(455, 'KALANWALI', '125203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KNL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(456, 'TOHANA', '126001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/TUN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(457, 'HISSAR', '126008', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(458, 'HISSAR', '126010', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(459, 'HISSAR', '126011', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(460, 'JIND', '126101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/JIN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(461, 'JIND', '126102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JND', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(462, 'JIND', '126103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/JIN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(463, 'JIND', '126104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/JIN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(464, 'PILU KHERA', '126108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PIU', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(465, 'PILU KHERA', '126109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PIU', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(466, 'PILU KHERA', '126110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PIU', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(467, 'ASANDH', '126111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ASA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(468, 'JIND', '126112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ASD', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(469, 'JIND', '126113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JND', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(470, 'JIND', '126114', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JND', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(471, 'JIND', '126115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/JIN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(472, 'NARWANA', '126116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/NRW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(473, 'NARWANA', '126117', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/NRW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(474, 'NARWANA', '126118', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/NRW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(475, 'JIND', '126123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/JIN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(476, 'JIND', '126124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/JIN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(477, 'JIND', '126125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/JIN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(478, 'JIND', '126126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/JIN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(479, 'JIND', '126127', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/JIN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(480, 'NARWANA', '126150', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/NRW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(481, 'NARWANA', '126151', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/NRW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(482, 'NARWANA', '126152', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/NRW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(483, 'NARWANA', '126153', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/NRW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(484, 'NARWANA', '126154', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/NRW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(485, 'ROHTAK', '127001', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(486, 'BHIWANI', '127020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BHW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(487, 'BHIWANI', '127021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BHW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(488, 'CHARKHI DADRI', '127022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/CKD', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(489, 'BHIWANI', '127025', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BHN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(490, 'CHARKHI DADRI', '127026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/CKD', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(491, 'BHIWANI', '127027', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BHW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(492, 'BAHAL', '127028', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/HBA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(493, 'TOSHAM', '127029', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/TSM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(494, 'BHIWANI', '127030', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BHN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(495, 'BHIWANI', '127031', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BHN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(496, 'HANSI', '127032', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HNS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(497, 'TOSHAM', '127035', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/TSM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(498, 'TOSHAM', '127040', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/TSM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(499, 'MAHAM', '127041', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/MHM', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(500, 'CHARKHI DADRI', '127042', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/CKD', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(501, 'SIWANI', '127043', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SWN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(502, 'SIWANI', '127045', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SWN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(503, 'SIWANI', '127046', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SWN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(504, 'BHIWANI', '127110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BHN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(505, 'BHIWANI', '127111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BHN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(506, 'BHIWANI', '127114', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BHN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(507, 'LOHARU', '127201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/LHU', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(508, 'BHIWANI', '127306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KLN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(509, 'CHARKHI DADRI', '127307', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/CKD', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(510, 'LOHARU', '127308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/LHU', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(511, 'BHIWANI', '127309', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BHN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(512, 'CHARKHI DADRI', '127310', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/CKD', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(513, 'CHARKHI DADRI', '127311', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/CKD', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(514, 'CHARKHI DADRI', '127312', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/CKD', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(515, 'SONEPAT', '130001', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(516, 'SONIPAT', '131001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(517, 'SONIPAT', '131002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(518, 'SONIPAT', '131021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(519, 'SONIPAT', '131022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(520, 'SONIPAT', '131023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(521, 'SONIPAT', '131024', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(522, 'SONIPAT', '131025', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(523, 'SONIPAT', '131026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(524, 'SONIPAT', '131027', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(525, 'SONIPAT', '131028', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KDL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(526, 'SONIPAT', '131029', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(527, 'SONIPAT', '131030', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(528, 'SONIPAT', '131031', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(529, 'SONIPAT', '131032', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(530, 'SONEPAT', '131033', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(531, 'SONIPAT', '131035', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(532, 'SONIPAT', '131036', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(533, 'SONIPAT', '131037', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(534, 'SONIPAT', '131038', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(535, 'SONIPAT', '131039', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(536, 'SONIPAT', '131101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(537, 'SONIPAT', '131102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(538, 'KHARKHODA', '131103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KHK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(539, 'SONIPAT', '131104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(540, 'SONIPAT', '131105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(541, 'SONEPAT', '131109', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(542, 'SONEPAT', '131113', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(543, 'SONIPAT', '131301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GOH', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(544, 'GOHANA', '131302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/GHN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(545, 'GOHANA', '131303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/GHN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(546, 'GOHANA', '131304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/GHN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(547, 'GOHANA', '131305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/GHN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(548, 'GOHANA', '131306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/GHN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(549, 'Gohana', '131307', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-2/9A/307', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(550, 'Gohana', '131309', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-2/9A/309', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(551, 'KHARKHODA', '131402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KHK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(552, 'KHARKHODA', '131403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KHK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(553, 'SONIPAT', '131407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SOP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(554, 'KHARKHODA', '131408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KHK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(555, 'GOHANA', '131409', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/GHN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(556, 'Panipat', '132000', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(557, 'KARNAL', '132001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KRN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(558, 'KARNAL', '132002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(559, 'KARNAL', '132020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(560, 'KARNAL', '132021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(561, 'KARNAL', '132022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KRN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(562, 'KARNAL', '132023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(563, 'KARNAL', '132024', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(564, 'KARNAL', '132025', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(565, 'KARNAL', '132026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(566, 'KARNAL', '132034', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(567, 'KARNAL', '132035', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(568, 'KARNAL', '132036', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(569, 'KARNAL', '132037', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KRN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(570, 'ASANDH', '132038', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ASA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(571, 'KARNAL', '132039', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ASD', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(572, 'KARNAL', '132040', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(573, 'KARNAL', '132041', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KRN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(574, 'LADWA', '132042', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/LAW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(575, 'LADWA', '132043', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/LAW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(576, 'ASANDH', '132044', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ASA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(577, 'ASANDH', '132045', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ASA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(578, 'ASANDH', '132046', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ASA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(579, 'ASANDH', '132047', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ASA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(580, 'ASANDH', '132048', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ASA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(581, 'KARNAL', '132051', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(582, 'LADWA', '132052', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/LAW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(583, 'LADWA', '132053', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/LAW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(584, 'LADWA', '132054', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/LAW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(585, 'PANIPAT', '132100', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(586, 'PANIPAT', '132101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SMH', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(587, 'PANIPAT', '132102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PAO', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(588, 'PANIPAT', '132103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PAO', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(589, 'PANIPAT', '132104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PAO', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(590, 'PANIPAT', '132105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PAO', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(591, 'PANIPAT', '132106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PAO', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(592, 'PANIPAT', '132107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(593, 'PANIPAT', '132108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PAO', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(594, 'PANIPAT', '132109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(595, 'PANIPAT', '132110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PAO', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(596, 'PANIPAT', '132111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(597, 'PANIPAT', '132112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(598, 'PANIPAT', '132113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(599, 'KARNAL', '132114', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KRN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(600, 'PANIPAT', '132115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(601, 'KARNAL', '132116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KND', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(602, 'KARNAL', '132117', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KND', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(603, 'KURUKSHETRA', '132118', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KUK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(604, 'KURUKSHETRA', '132119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KUK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(605, 'KURUKSHETRA', '132120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KUK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(606, 'PANIPAT', '132121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(607, 'PANIPAT', '132122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(608, 'KARNAL', '132123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(609, 'KARNAL', '132124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(610, 'KARNAL', '132125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(611, 'PANIPAT', '132132', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'PNE', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(612, 'AMBALA ', '132135', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(613, 'PANIPAT', '132138', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(614, 'PANIPAT', '132139', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(615, 'PANIPAT', '132140', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PNO', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(616, 'PANIPAT', '132141', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(617, 'PANIPAT', '132142', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(618, 'PANIPAT', '132143', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(619, 'PANIPAT', '132144', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(620, 'PANIPAT', '132145', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(621, 'PANIPAT', '132146', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(622, 'PANIPAT', '132147', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(623, 'KARNAL', '132148', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(624, 'PANIPAT', '132149', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(625, 'PANIPAT', '132150', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PNP', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(626, 'PANIPAT', '132151', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PAO', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(627, 'KARNAL', '132152', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(628, 'KARNAL', '132153', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(629, 'KARNAL', '132154', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(630, 'KARNAL', '132155', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(631, 'KARNAL', '132157', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KAR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(632, 'AMBALA', '133001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(633, 'AMBALA', '133002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(634, 'AMBALA', '133003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(635, 'AMBALA', '133004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(636, 'AMBALA', '133005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(637, 'AMBALA', '133006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(638, 'AMBALA', '133007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(639, 'AMBALA', '133008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(640, 'AMBALA CANTT', '133021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(641, 'AMBALA', '133101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(642, 'AMBALA', '133102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(643, 'YAMUNA NAGAR', '133103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/YMU', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(644, 'AMBALA', '133104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(645, 'BARARA', '133105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RAA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(646, 'BARARA', '133201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RAA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(647, 'BARARA', '133202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RAA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(648, 'BARARA', '133203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RAA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(649, 'BILASPUR - HR', '133204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BAS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(650, 'BARARA', '133205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RAA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(651, 'BILASPUR - HR', '133206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BAS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(652, 'BARARA', '133207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RAA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(653, 'BARARA', '133208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RAA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(654, 'KALKA', '133301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KLK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(655, 'KALKA', '133302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KLK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(656, 'AMBALA CANTT', '134001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(657, 'AMBALA CANTT', '134002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(658, 'AMBALA', '134003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(659, 'AMBALA CANTT', '134004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(660, 'AMBALA', '134005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(661, 'AMBALA', '134006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(662, 'AMBALA', '134007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(663, 'AMBALA', '134008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(664, 'PANCHKULA', '134009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PAN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(665, 'AMBALA', '134011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(666, 'AMBALA', '134012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ABA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(667, 'ASANDH', '134044', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ASA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(668, 'KALKA', '134101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KLK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(669, 'KALKA', '134102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KLK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(670, 'PANCHKULA', '134103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PAN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(671, 'KALKA', '134104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KLK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(672, 'KALKA', '134105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KLK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(673, 'PANCHKULA', '134107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PKL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(674, 'PANCHKULA', '134108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PKL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(675, 'PANCHKULA', '134109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PKL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(676, 'PANCHKULA', '134110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PAN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(677, 'PANCHKULA', '134111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PAN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(678, 'PANCHKULA', '134112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PKL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(679, 'PANCHKULA', '134113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PKL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(680, 'PANCHKULA', '134114', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PKL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(681, 'PANCHKULA', '134115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PKL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(682, 'PANCHKULA', '134116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(683, 'PANCHKULA', '134117', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PAN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(684, 'DERA BASSI', '134118', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/DBS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(685, 'PANCHKULA', '134119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PAN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(686, 'PANCHKULA', '134151', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PAN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(687, 'PANCHKULA', '134152', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PAN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(688, 'NARAINGARH', '134201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/NGG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(689, 'NARAINGARH', '134202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/NGG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(690, 'NARAINGARH', '134203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/NGG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(691, 'NARAINGARH', '134204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/NGG', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(692, 'PANCHKULA', '134205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PAN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(693, 'PANCHKULA', '134206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/PAN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(694, 'YAMUNA NAGAR', '135001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'YMN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(695, 'YAMUNA NAGAR', '135002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JDR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(696, 'YAMUNA NAGAR', '135003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JDR', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(697, 'YAMUNA NAGAR', '135004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/YMU', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(698, 'BILASPUR - HR', '135012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BAS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(699, 'BILASPUR - HR', '135021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BAS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(700, 'YAMUNA NAGAR', '135101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/YMU', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(701, 'BILASPUR - HR', '135102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BAS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(702, 'BILASPUR - HR', '135103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BAS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(703, 'BILASPUR - HR', '135104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BAS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(704, 'BILASPUR - HR', '135105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BAS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(705, 'BILASPUR - HR', '135106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/BAS', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(706, 'YAMUNA NAGAR', '135133', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'YMN', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(707, 'PEHOWA', '136020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PHW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(708, 'KAITHAL', '136021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KTL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(709, 'KAITHAL', '136026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KTL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(710, 'KAITHAL', '136027', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KTX', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(711, 'KURUKSHETRA', '136030', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KRA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(712, 'KAITHAL', '136033', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KTL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(713, 'CHEEKA', '136034', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/CEK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(714, 'CHEEKA', '136035', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/CEK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(715, 'KURUKSHETRA', '136038', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KUK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(716, 'KAITHAL', '136042', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KTL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(717, 'KAITHAL', '136043', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KTL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(718, 'ASANDH', '136044', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ASA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(719, 'KAITHAL', '136117', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KTL', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(720, 'KURUKSHETRA', '136118', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KRA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(721, 'KURUKSHETRA', '136119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KRA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(722, 'KURUKSHETRA', '136128', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PEW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(723, 'PEHOWA', '136129', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/PHW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(724, 'KURUKSHETRA', '136130', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/KUK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(725, 'KURUKSHETRA', '136131', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KRA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(726, 'KURUKSHETRA', '136132', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KRA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(727, 'KURUKSHETRA', '136135', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SMK', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(728, 'KURUKSHETRA', '136136', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KRA', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(729, 'LADWA', '136156', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/LAW', 'HARYANA', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(730, 'RUPNAGAR', '140001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRP', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(731, 'RUPNAGAR', '140002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RPG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(732, 'RUPNAGAR', '140063', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RPG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(733, 'CHAM KAUR SAHIB', '140101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/CKS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(734, 'CHAM KAUR SAHIB', '140102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/CKS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(735, 'MOHALI', '140103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOH', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(736, 'KHARAR', '140104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/KRA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(737, 'ZIRAKPUR', '140105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ZKP', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(738, 'ZIRAKPUR', '140106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/PTH/ZRK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(739, 'RUPNAGAR', '140108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RPG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(740, 'RUPNAGAR', '140109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RPG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(741, 'KHARAR', '140110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/KRA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(742, 'CHAM KAUR SAHIB', '140111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/CKS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(743, 'CHAM KAUR SAHIB', '140112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/CKS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(744, 'RUPNAGAR', '140113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRP', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(745, 'RUPNAGAR', '140114', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RPG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(746, 'ANANDPUR SAHIB', '140115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/ANS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(747, 'ANANDPUR SAHIB', '140116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/ANS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(748, 'ANANDPUR SAHIB', '140117', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/ANS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(749, 'ANANDPUR SAHIB', '140118', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/ANS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(750, 'ANANDPUR SAHIB', '140119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/ANS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(751, 'RUPNAGAR', '140120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RPG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(752, 'ANANDPUR SAHIB', '140123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/ANS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(753, 'NANGAL', '140124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/NNG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(754, 'NANGAL', '140125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/NNG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(755, 'NANGAL', '140126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/NNG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(756, 'ANANDPUR SAHIB', '140133', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/ANS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(757, 'DERA BASSI', '140201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/DBS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(758, 'ZIRAKPUR', '140202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/PTH/ZRK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(759, 'DERA BASSI', '140203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/DBS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(760, 'MOHALI', '140301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KRX', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(761, 'MOHALI', '140306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOH', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(762, 'MOHALI', '140307', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOH', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(763, 'RUPNAGAR', '140308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOH', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(764, 'PATIALA', '140401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RJR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(765, 'RAJPURA', '140402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RJR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(766, 'FATEHGARH SAHIB', '140405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/FGS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(767, 'FATEHGARH SAHIB', '140406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FGS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(768, 'FATEHGARH SAHIB', '140407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FGS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(769, 'FATEHGARH SAHIB', '140408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/FGS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(770, 'FATEHGARH SAHIB', '140412', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FGS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(771, 'KHARAR', '140413', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/KRA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(772, 'RAJPURA', '140417', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RJR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(773, 'DERA BASSI', '140501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/DBS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(774, 'DERA BASSI', '140502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/DBS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(775, 'DERA BASSI', '140504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/DBS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(776, 'DERA BASSI', '140506', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/DBS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(777, 'MOHALI', '140507', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ZKP', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(778, 'DERA BASSI', '140508', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/DBS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(779, 'PATIALA', '140601', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RJR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(780, 'RAJPURA', '140602', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RJR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(781, 'MOHALI', '140603', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ZKP', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(782, 'MOHALI', '140604', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ZKP', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(783, 'ZIRAKPUR', '140630', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/PTH/ZRK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(784, 'RAJPURA', '140701', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RJR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(785, 'PATIALA', '140702', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PTL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(786, 'SAMRALA', '140801', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SMA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(787, 'CHAM KAUR SAHIB', '140802', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/CKS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(788, 'CHANDIGARH', '140901', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/CAB', 'CHANDIGARH', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(789, 'LUDHIANA', '141000', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/LDA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(790, 'LUDHIANA', '141001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDC', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(791, 'LUDHIANA', '141002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDC', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(792, 'LUDHIANA', '141003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35');
INSERT INTO `pincodes` (`id`, `City`, `Pincode`, `Has_Cod`, `Has_Prepaid`, `Has_Reverse`, `Shiprocket_Delivery`, `Routing_Code`, `State`, `created_at`, `updated_at`) VALUES
(793, 'LUDHIANA', '141004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDC', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(794, 'LUDHIANA', '141005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(795, 'LUDHIANA', '141006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(796, 'LUDHIANA', '141007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(797, 'LUDHIANA', '141008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(798, 'LUDHIANA', '141009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(799, 'LUDHIANA', '141010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(800, 'LUDHIANA', '141011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(801, 'LUDHIANA', '141012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDC', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(802, 'LUDHIANA', '141013', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDC', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(803, 'LUDHIANA', '141014', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(804, 'LUDHIANA', '141015', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(805, 'LUDHIANA', '141016', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(806, 'LUDHIANA', '141017', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(807, 'LUDHIANA', '141020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(808, 'LUDHIANA', '141021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/LDB', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(809, 'Ludhiana', '141027', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-13/11C/027', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(810, 'LUDHIANA', '141033', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/LDB', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(811, 'LUDHIANA', '141101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MLP', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(812, 'RAIKOT', '141102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(813, 'RAIKOT', '141103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(814, 'RAIKOT', '141104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(815, 'RAIKOT', '141105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(816, 'LUDHIANA', '141106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MLP', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(817, 'RAIKOT', '141107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(818, 'RAIKOT', '141108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(819, 'RAIKOT', '141109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(820, 'LUDHIANA', '141110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/LDA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(821, 'LUDHIANA', '141111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/LDA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(822, 'SAHNEWAL', '141112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SNL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(823, 'SAHNEWAL', '141113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SNL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(824, 'SAMRALA', '141114', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SMA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(825, 'SAMRALA', '141115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SMA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(826, 'LUDHIANA', '141116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(827, 'PAYAL', '141117', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PYL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(828, 'SAHNEWAL', '141118', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SNL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(829, 'PAYAL', '141119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PYL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(830, 'LUDHIANA', '141120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(831, 'CHAM KAUR SAHIB', '141121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/CKS', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(832, 'LUDHIANA', '141122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/LDB', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(833, 'LUDHIANA', '141123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(834, 'SAMRALA', '141124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SMA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(835, 'SAMRALA', '141125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SMA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(836, 'SAHNEWAL', '141126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SNL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(837, 'LUDHIANA', '141127', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/LDA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(838, 'SAHNEWAL', '141201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SNL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(839, 'RAIKOT', '141202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(840, 'RAIKOT', '141203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(841, 'MALER KOTLA', '141204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MET', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(842, 'RAIKOT', '141205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(843, 'SAHNEWAL', '141206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SNL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(844, 'LUDHIANA', '141234', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(845, 'LUDHIANA', '141235', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(846, 'JALLANDHAR', '141301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(847, 'JALLANDHAR', '141302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(848, 'JALLANDHAR', '141303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(849, 'PHAGWARA', '141304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PHA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(850, 'JALLANDHAR', '141305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(851, 'JALLANDHAR', '141306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(852, 'JALLANDHAR', '141307', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(853, 'JALLANDHAR', '141308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(854, 'JALANDHAR', '141309', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRC', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(855, 'KAPURTHALA', '141310', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NKD', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(856, 'JALLANDHAR', '141311', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(857, 'JALLANDHAR', '141315', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(858, 'JALLANDHAR', '141316', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(859, 'JALLANDHAR', '141317', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(860, 'JALLANDHAR', '141318', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(861, 'MANDIGOBINDGARH', '141400', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MDI', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(862, 'LUDHIANA', '141401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DKN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(863, 'KHANNA', '141402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DKN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(864, 'MANDIGOBINDGARH', '141407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MDI', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(865, 'MANDIGOBINDGARH', '141411', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MDI', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(866, 'PAYAL', '141412', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PYL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(867, 'PAYAL', '141413', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PYL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(868, 'PAYAL', '141414', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PYL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(869, 'PAYAL', '141415', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PYL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(870, 'PAYAL', '141416', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PYL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(871, 'MANDIGOBINDGARH', '141417', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MDI', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(872, 'PAYAL', '141418', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PYL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(873, 'PAYAL', '141419', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PYL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(874, 'PAYAL', '141420', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PYL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(875, 'PAYAL', '141421', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PYL', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(876, 'RAIKOT', '141422', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(877, 'SAMRALA', '141801', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SMA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(878, 'MOGA', '142001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(879, 'MOGA', '142002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MOG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(880, 'MOGA', '142003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MOG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(881, 'MOGA', '142011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MOG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(882, 'MOGA', '142013', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MOG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(883, 'LUDHIANA', '142021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDC', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(884, 'LUDHIANA', '142022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDC', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(885, 'JAGRAON', '142023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JGN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(886, 'JAGRAON', '142024', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JGN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(887, 'JAGRAON', '142025', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JGN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(888, 'LUDHIANA', '142026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JGR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(889, 'LUDHIANA', '142027', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDC', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(890, 'LUDHIANA', '142028', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/LDA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(891, 'RAIKOT', '142029', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(892, 'JAGRAON', '142030', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JGN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(893, 'RAIKOT', '142031', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(894, 'RAIKOT', '142032', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(895, 'JAGRAON', '142033', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JGN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(896, 'RAIKOT', '142034', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RAO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(897, 'JAGRAON', '142035', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JGN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(898, 'JAGRAON', '142036', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JGN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(899, 'MOGA', '142037', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MOG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(900, 'BAGHA PURANA', '142038', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BPU', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(901, 'BHADAUR', '142039', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BDU', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(902, 'MOGA', '142040', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MOG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(903, 'DHARAMKOT', '142041', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DRK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(904, 'DHARAMKOT', '142042', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DRK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(905, 'DHARAMKOT', '142043', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DRK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(906, 'MAKHU', '142044', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MKK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(907, 'BAGHA PURANA', '142045', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BPU', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(908, 'BHADAUR', '142046', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BDU', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(909, 'ZIRA', '142047', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ZRA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(910, 'MOGA', '142048', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MOG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(911, 'BAGHA PURANA', '142049', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BPU', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(912, 'ZIRA', '142050', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ZRA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(913, 'DHARAMKOT', '142051', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DRK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(914, 'FEROZEPUR', '142052', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/FZR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(915, 'MOGA', '142053', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MOG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(916, 'MOGA', '142054', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MOG', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(917, 'BHADAUR', '142055', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BDU', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(918, 'BAGHA PURANA', '142056', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BPU', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(919, 'BAGHA PURANA', '142057', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BPU', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(920, 'DHARAMKOT', '142058', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DRK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(921, 'BAGHA PURANA', '142059', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BPU', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(922, 'BAGHA PURANA', '142060', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BPU', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(923, 'BAGHA PURANA', '142061', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BPU', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(924, 'MOGA', '142063', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(925, 'AMRITSAR', '143000', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ATQ', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(926, 'AMRITSAR', '143001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(927, 'AMRITSAR', '143002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(928, 'AMRITSAR', '143003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(929, 'AMRITSAR', '143004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(930, 'AMRITSAR', '143005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(931, 'AMRITSAR', '143006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(932, 'AMRITSAR', '143007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ATQ', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(933, 'AMRITSAR', '143008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(934, 'AMRITSAR', '143009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ATQ', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(935, 'AMRITSAR', '143010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ATQ', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(936, 'AMRITSAR', '143021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(937, 'AMRITSAR', '143022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(938, 'AMRITSAR', '143026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ATQ', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(939, 'AMRITSAR', '143036', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ATQ', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(940, 'AMRITSAR', '143044', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ATQ', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(941, 'AMRITSAR', '143066', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ATQ', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(942, 'AMRITSAR', '143093', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ATQ', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(943, 'AMRITSAR', '143101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATO', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(944, 'AMRITSAR', '143102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(945, 'AJNALA', '143103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/AJN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(946, 'AMRITSAR', '143104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(947, 'AMRITSAR', '143105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(948, 'AMRITSAR', '143106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(949, 'AMRITSAR', '143107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ATQ', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(950, 'AMRITSAR', '143108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ATQ', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(951, 'AJNALA', '143109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/AJN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(952, 'AJNALA', '143110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/AJN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(953, 'BEAS', '143111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BES', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(954, 'AMRITSAR', '143112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BEA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(955, 'AMRITSAR', '143113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ATQ', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(956, 'BATALA', '143114', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BTA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(957, 'AMRITSAR', '143115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BEA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(958, 'BEAS', '143116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BES', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(959, 'TARN TARAN', '143117', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TRN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(960, 'TARN TARAN', '143118', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TRN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(961, 'BATALA', '143119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BTA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(962, 'BEAS', '143144', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BES', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(963, 'TARN TARAN', '143149', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TRN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(964, 'AMRITSAR', '143185', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(965, 'AMRITSAR', '143201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BEA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(966, 'AMRITSAR', '143202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BEA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(967, 'BEAS', '143203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BES', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(968, 'AMRITSAR', '143204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BEA', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(969, 'BEAS', '143205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BES', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(970, 'AMRITSAR', '143219', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(971, 'TARN TARAN', '143301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TRN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(972, 'BIKKIWIND', '143302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BKK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(973, 'BIKKIWIND', '143303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BKK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(974, 'BIKKIWIND', '143304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BKK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(975, 'BIKKIWIND', '143305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BKK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(976, 'BIKKIWIND', '143306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BKK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(977, 'PATHANKOT', '143325', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(978, 'TARN TARAN', '143401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'TRN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(979, 'TARN TARAN', '143402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TRN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(980, 'TARN TARAN', '143406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TRN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(981, 'TARN TARAN', '143407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TRN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(982, 'PATTI', '143408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PAX', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(983, 'PATTI', '143409', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PAX', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(984, 'PATTI', '143410', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PAX', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(985, 'TARN TARAN', '143411', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TRN', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(986, 'MAKHU', '143412', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MKK', 'PUNJAB', '2021-10-06 17:49:35', '2021-10-06 17:49:35'),
(987, 'TARN TARAN', '143413', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TRN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(988, 'BIKKIWIND', '143414', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BKK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(989, 'PATTI', '143415', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PAX', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(990, 'PATTI', '143416', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PAX', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(991, 'PATTI', '143417', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PAX', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(992, 'BIKKIWIND', '143418', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BKK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(993, 'BIKKIWIND', '143419', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BKK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(994, 'BIKKIWIND', '143420', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BKK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(995, 'BIKKIWIND', '143421', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BKK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(996, 'TARN TARAN', '143422', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TRN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(997, 'TARN TARAN', '143423', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TRN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(998, 'AMRITSAR', '143501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(999, 'BATALA', '143502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1000, 'BATALA', '143503', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1001, 'MAJITHA', '143504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MJI', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1002, 'GURDASPUR', '143505', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BTT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1003, 'BATALA', '143506', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1004, 'BATALA', '143507', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1005, 'BATALA', '143508', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1006, 'BATALA', '143510', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1007, 'BATALA', '143511', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1008, 'GURDASPUR', '143512', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/GSP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1009, 'DERA BABA NANAK', '143513', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DBN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1010, 'SHRI GOVINDPUR', '143514', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/SGV', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1011, 'SHRI GOVINDPUR', '143515', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/SGV', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1012, 'BATALA', '143516', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1013, 'MUKERIAN', '143517', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MEX', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1014, 'BATALA', '143518', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1015, 'GURDASPUR', '143519', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/GSP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1016, 'GURDASPUR', '143520', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/GSP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1017, 'GURDASPUR', '143521', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DSP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1018, 'GURDASPUR', '143523', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/GSP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1019, 'GURDASPUR', '143524', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/GSP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1020, 'GURDASPUR', '143525', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/GSP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1021, 'GURDASPUR', '143526', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/GSP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1022, 'SHRI GOVINDPUR', '143527', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/SGV', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1023, 'GURDASPUR', '143528', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/GSP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1024, 'GURDASPUR', '143529', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/GSP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1025, 'GURDASPUR', '143530', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/GSP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1026, 'GURDASPUR', '143531', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DSP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1027, 'GURDASPUR', '143532', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/GSP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1028, 'PATHANKOT', '143533', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1029, 'PATHANKOT', '143534', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1030, 'PATHANKOT', '143535', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1031, 'PATHANKOT', '143536', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1032, 'GURDASPUR', '143537', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/GSP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1033, 'PATHANKOT', '143538', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1034, 'AMRITSAR', '143601', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ATR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1035, 'MAJITHA', '143602', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MJI', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1036, 'DERA BABA NANAK', '143603', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DBN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1037, 'DERA BABA NANAK', '143604', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DBN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1038, 'DERA BABA NANAK', '143605', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DBN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1039, 'MAJITHA', '143606', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MJI', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1040, 'MAJITHA', '143607', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MJI', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1041, 'JALLANDHAR', '144000', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1042, 'JALANDHAR', '144001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRC', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1043, 'JALANDHAR', '144002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRC', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1044, 'JALANDHAR', '144003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRC', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1045, 'JALANDHAR', '144004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1046, 'JALANDHAR', '144005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1047, 'JALANDHAR', '144006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1048, 'JALANDHAR', '144007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRC', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1049, 'JALANDHAR', '144008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1050, 'JALANDHAR', '144009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1051, 'JALANDHAR', '144010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1052, 'JALANDHAR', '144011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1053, 'JALANDHAR', '144012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRC', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1054, 'JALANDHAR', '144013', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1055, 'JALANDHAR', '144014', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRC', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1056, 'JALLANDHAR', '144015', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1057, 'JALLANDHAR', '144019', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1058, 'JALLANDHAR', '144020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1059, 'JALANDHAR', '144021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRC', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1060, 'JALANDHAR', '144022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRC', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1061, 'JALANDHAR', '144023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRC', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1062, 'JALLANDHAR', '144024', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1063, 'JALLANDHAR', '144025', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1064, 'NAKODAR', '144026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1065, 'JALANDHAR', '144027', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'JRW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1066, 'NAKODAR', '144028', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1067, 'NAWANSHAHR', '144029', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1068, 'HOSHIARPUR', '144030', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1069, 'PHAGWARA', '144031', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1070, 'PHAGWARA', '144032', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1071, 'JALANDHAR', '144033', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1072, 'PHAGWARA', '144034', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1073, 'PHILLAUR', '144035', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PLL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1074, 'PHILLAUR', '144036', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PLL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1075, 'PHILLAUR', '144037', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PLL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1076, 'PHILLAUR', '144038', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PLL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1077, 'JALANDHAR', '144039', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1078, 'JALANDHAR', '144040', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1079, 'JALANDHAR', '144041', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1080, 'NAKODAR', '144042', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1081, 'NAKODAR', '144043', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1082, 'NAKODAR', '144044', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1083, 'NAKODAR', '144046', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1084, 'NAKODAR', '144047', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1085, 'NAKODAR', '144048', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1086, 'NAKODAR', '144049', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1087, 'NAKODAR', '144050', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1088, 'NAKODAR', '144051', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1089, 'NAKODAR', '144052', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1090, 'NAKODAR', '144053', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1091, 'JALLANDHAR', '144101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1092, 'BHOGPUR', '144102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BHO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1093, 'BHOGPUR', '144103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BHO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1094, 'BHOGPUR', '144104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BHO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1095, 'HOSHIARPUR', '144105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1096, 'HOSHIARPUR', '144106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1097, 'HOSHIARPUR', '144109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1098, 'HOSHIARPUR', '144116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1099, 'HOSHIARPUR', '144121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1100, 'BHOGPUR', '144201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BHO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1101, 'SHRI GOVINDPUR', '144202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/SGV', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1102, 'GURDASPUR', '144203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'TND', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1103, 'HOSHIARPUR', '144204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'TND', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1104, 'DASUYA', '144205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DZA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1105, 'DASUYA', '144206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DZA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1106, 'DASUYA', '144207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DZA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1107, 'HOSHIARPUR', '144208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1108, 'HOSHIARPUR', '144209', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1109, 'HOSHIARPUR', '144210', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1110, 'MUKERIAN', '144211', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MEX', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1111, 'DASUYA', '144212', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DZA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1112, 'DASUYA', '144213', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DZA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1113, 'DASUYA', '144214', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DZA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1114, 'TALWARA', '144216', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TLW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1115, 'DASUYA', '144218', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DZA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1116, 'DASUYA', '144221', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DZA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1117, 'TALWARA', '144222', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TLW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1118, 'TALWARA', '144223', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TLW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1119, 'TALWARA', '144224', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TLW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1120, 'TALWARA', '144225', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TLW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1121, 'TALWARA', '144241', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/TLW', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1122, 'BHOGPUR', '144301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BHO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1123, 'BHOGPUR', '144302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BHO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1124, 'BHOGPUR', '144303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BHO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1125, 'BEGOWAL', '144304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BGO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1126, 'DASUYA', '144305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DZA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1127, 'MUKERIAN', '144306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MEX', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1128, 'MUKERIAN', '144308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MEX', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1129, 'PHAGWARA', '144311', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1130, 'PHAGWARA', '144316', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1131, 'PHAGWARA', '144318', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1132, 'KAPURTHALA', '144401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PHA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1133, 'KAPURTHALA', '144402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PHA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1134, 'PHAGWARA', '144403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1135, 'MAHALPUR', '144404', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1136, 'PHAGWARA', '144405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1137, 'MAHALPUR', '144406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1138, 'PHAGWARA', '144407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1139, 'PHAGWARA', '144408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1140, 'JALANDHAR', '144409', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GRY', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1141, 'JALANDHAR', '144410', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LDO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1142, 'KAPURTHALA', '144411', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LPU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1143, 'NAWANSHAHR', '144415', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1144, 'JALANDHAR', '144416', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GRY', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1145, 'NAWANSHAHR', '144417', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1146, 'PHILLAUR', '144418', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PLL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1147, 'PHILLAUR', '144419', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PLL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1148, 'NAWANSHAHR', '144421', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1149, 'NAWANSHAHR', '144422', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1150, 'NAWANSHAHR', '144423', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1151, 'NAWANSHAHR', '144424', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1152, 'PHAGWARA', '144501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1153, 'PHAGWARA', '144502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1154, 'PHAGWARA', '144503', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1155, 'PHAGWARA', '144504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1156, 'NAWANSHAHR', '144505', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BNG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1157, 'NAWANSHAHR', '144506', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BNG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1158, 'NAWANSHAHR', '144507', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BNG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1159, 'NAWANSHAHR', '144508', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BNG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1160, 'NAWANSHAHR', '144509', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1161, 'MAHALPUR', '144510', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1162, 'NAWANSHAHR', '144511', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1163, 'NAWANSHAHR', '144512', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1164, 'NAWANSHAHR', '144513', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1165, 'NAWANSHAHR', '144514', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1166, 'NAWANSHAHR', '144515', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BNG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1167, 'NAWANSHAHR', '144516', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1168, 'NAWANSHAHR', '144517', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1169, 'NAWANSHAHR', '144518', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1170, 'MAHALPUR', '144519', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1171, 'MAHALPUR', '144520', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1172, 'NAWANSHAHR', '144521', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1173, 'RUPNAGAR', '144522', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RPG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1174, 'NANGAL', '144523', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/NNG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1175, 'NAWANSHAHR', '144524', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BNG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1176, 'NAWANSHAHR', '144525', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1177, 'NAWANSHAHR', '144526', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1178, 'NAWANSHAHR', '144527', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1179, 'HOSHIARPUR', '144528', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BNG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1180, 'MAHALPUR', '144529', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1181, 'MAHALPUR', '144530', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28');
INSERT INTO `pincodes` (`id`, `City`, `Pincode`, `Has_Cod`, `Has_Prepaid`, `Has_Reverse`, `Shiprocket_Delivery`, `Routing_Code`, `State`, `created_at`, `updated_at`) VALUES
(1182, 'MAHALPUR', '144531', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1183, 'NAWANSHAHR', '144532', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NSS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1184, 'NAWANSHAHR', '144533', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1185, 'KAPURTHALA', '144601', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1186, 'KAPURTHALA', '144602', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1187, 'KAPURTHALA', '144603', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/KPT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1188, 'SULTANPUR LODHI', '144606', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/SLD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1189, 'BEGOWAL', '144619', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BGO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1190, 'KAPURTHALA', '144620', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/KPT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1191, 'BEGOWAL', '144621', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BGO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1192, 'BEGOWAL', '144622', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BGO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1193, 'KAPURTHALA', '144623', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/KPT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1194, 'BEGOWAL', '144624', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BGO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1195, 'KAPURTHALA', '144625', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/KPT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1196, 'SULTANPUR LODHI', '144626', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/SLD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1197, 'SULTANPUR LODHI', '144628', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/SLD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1198, 'SULTANPUR LODHI', '144629', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/SLD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1199, 'NAKODAR', '144630', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1200, 'BEGOWAL', '144631', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BGO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1201, 'PHAGWARA', '144632', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1202, 'PHAGWARA', '144633', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PHG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1203, 'NAKODAR', '144701', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1204, 'DHARAMKOT', '144702', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/DRK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1205, 'NAKODAR', '144703', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/NKD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1206, 'JALANDHAR', '144801', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1207, 'KAPURTHALA', '144802', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1208, 'KAPURTHALA', '144803', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/KPT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1209, 'BEAS', '144804', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BES', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1210, 'JALLANDHAR', '144805', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/JRD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1211, 'KAPURTHALA', '144806', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/KPT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1212, 'BEGOWAL', '144819', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BGO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1213, 'GURDASPUR', '145001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1214, 'PATHANKOT', '145002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1215, 'PATHANKOT', '145003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1216, 'PATHANKOT', '145021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1217, 'PATHANKOT', '145022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1218, 'GURDASPUR', '145023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'THC', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1219, 'PATHANKOT', '145024', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1220, 'PATHANKOT', '145025', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1221, 'PATHANKOT', '145026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1222, 'PATHANKOT', '145027', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1223, 'PATHANKOT', '145029', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1224, 'PATHANKOT', '145101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/PTK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1225, 'HOSHIARPUR', '145105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1226, 'HOSHIARPUR', '146001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HPA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1227, 'HOSHIARPUR', '146002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1228, 'HOSHIARPUR', '146006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1229, 'HOSHIARPUR', '146021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HPA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1230, 'HOSHIARPUR', '146022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HPA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1231, 'HOSHIARPUR', '146023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HPA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1232, 'HOSHIARPUR', '146024', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HPA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1233, 'MAHALPUR', '146101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1234, 'MAHALPUR', '146102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1235, 'MAHALPUR', '146103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1236, 'MAHALPUR', '146104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1237, 'HOSHIARPUR', '146105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HPA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1238, 'MAHALPUR', '146106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1239, 'MAHALPUR', '146107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1240, 'MAHALPUR', '146108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1241, 'MAHALPUR', '146109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MLU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1242, 'HOSHIARPUR', '146110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1243, 'HOSHIARPUR', '146111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HPA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1244, 'HOSHIARPUR', '146112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1245, 'HOSHIARPUR', '146113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1246, 'HOSHIARPUR', '146114', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1247, 'BHOGPUR', '146115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/BHO', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1248, 'HOSHIARPUR', '146116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/HPR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1249, 'SHRI GOVINDPUR', '146416', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/SGV', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1250, 'SHRI GOVINDPUR', '146519', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/SGV', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1251, 'PATIALA', '147001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1252, 'PATIALA', '147002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1253, 'PATIALA', '147003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1254, 'PATIALA', '147004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1255, 'PATIALA', '147005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1256, 'PATIALA', '147006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PTL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1257, 'PATIALA', '147007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PTL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1258, 'PATIALA', '147021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PTL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1259, 'PATIALA', '147023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PTL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1260, 'PATIALA', '147100', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1261, 'PATRAN', '147101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PRT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1262, 'PATRAN', '147102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PRT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1263, 'PATIALA', '147103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PTA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1264, 'PATIALA', '147104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PTL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1265, 'PATRAN', '147105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PRT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1266, 'PATIALA', '147111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PTL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1267, 'PATIALA', '147201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NBH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1268, 'PATIALA', '147202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PTL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1269, 'MANDIGOBINDGARH', '147203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MDI', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1270, 'MANDIGOBINDGARH', '147204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MDI', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1271, 'MANDIGOBINDGARH', '147205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MDI', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1272, 'FATEHGARH SAHIB', '147301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DMG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1273, 'DERA BASSI', '147506', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/DBS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1274, 'SANGRUR', '148000', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1275, 'SANGRUR', '148001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SRR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1276, 'SANGRUR', '148002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1277, 'SANGRUR', '148004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1278, 'SANGRUR', '148005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1279, 'SANGRUR', '148006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1280, 'SANGRUR', '148007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1281, 'SANGRUR', '148008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1282, 'SANGRUR', '148009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1283, 'SANGRUR', '148017', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1284, 'NABHA', '148018', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/NBA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1285, 'MALER KOTLA', '148019', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MET', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1286, 'MALER KOTLA', '148020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MET', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1287, 'MALER KOTLA', '148021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MET', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1288, 'MALER KOTLA', '148022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MET', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1289, 'SANGRUR', '148023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DML', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1290, 'SANGRUR', '148024', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DHU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1291, 'BARNALA', '148025', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BNN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1292, 'SANGRUR', '148026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BWG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1293, 'PATRAN', '148027', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PRT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1294, 'SUNAM', '148028', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SFM', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1295, 'SUNAM', '148029', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SFM', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1296, 'SUNAM', '148030', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SFM', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1297, 'LEHRAGAGA', '148031', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/LGG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1298, 'LEHRAGAGA', '148032', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/LGG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1299, 'SANGRUR', '148033', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MNK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1300, 'SANGRUR', '148034', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1301, 'PATRAN', '148035', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/PRT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1302, 'SANGRUR', '148036', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1303, 'SANGRUR', '148038', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1304, 'SANGRUR', '148039', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1305, 'SANGRUR', '148040', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1306, 'SANGRUR', '148041', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1307, 'SANGRUR', '148042', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1308, 'SANGRUR', '148043', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1309, 'SANGRUR', '148044', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1310, 'SANGRUR', '148045', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1311, 'SANGRUR', '148046', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1312, 'SANGRUR', '148047', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1313, 'SANGRUR', '148048', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1314, 'SANGRUR', '148049', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1315, 'SANGRUR', '148050', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1316, 'SANGRUR', '148051', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SGR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1317, 'BHADAUR', '148100', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BDU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1318, 'BARNALA', '148101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BRA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1319, 'BHADAUR', '148102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BDU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1320, 'BARNALA', '148103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BNN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1321, 'BARNALA', '148104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BRA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1322, 'BARNALA', '148105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BNN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1323, 'BARNALA', '148106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SRR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1324, 'BARNALA', '148107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BNN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1325, 'RAMPURA PHUL', '148108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RPL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1326, 'BARNALA', '148109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BNN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1327, 'BARNALA', '148110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BNN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1328, 'BARNALA', '148111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BNN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1329, 'BARNALA', '148112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BNN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1330, 'BARNALA', '148113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BNN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1331, 'BARNALA', '148114', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BNN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1332, 'BARNALA', '148115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BNN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1333, 'BARNALA', '148116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BNN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1334, 'BARNALA', '148117', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BNN', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1335, 'BATHINDA', '151001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DBH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1336, 'BATHINDA', '151002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DBH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1337, 'BATHINDA', '151003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DBH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1338, 'BATHINDA', '151004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DBH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1339, 'BATHINDA', '151005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DBH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1340, 'BHATINDA', '151006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BTI', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1341, 'BHATINDA', '151007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BTI', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1342, 'BATHINDA', '151101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BMD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1343, 'BHATINDA', '151102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BTI', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1344, 'BATHINDA', '151103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BMD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1345, 'RAMPURA PHUL', '151104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RPL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1346, 'RAMPURA PHUL', '151105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RPL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1347, 'BHADAUR', '151106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BDU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1348, 'BHADAUR', '151107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BDU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1349, 'BHADAUR', '151108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BDU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1350, 'RAMPURA PHUL', '151110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RPL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1351, 'RAMPURA PHUL', '151111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RPL', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1352, 'BATHINDA', '151201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GMD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1353, 'JAITU', '151202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/JIT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1354, 'FARIDKOT', '151203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/FDX', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1355, 'FARIDKOT', '151204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/FDX', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1356, 'JAITU', '151205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/JIT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1357, 'JAITU', '151206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/JIT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1358, 'FARIDKOT', '151207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/FDX', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1359, 'JAITU', '151208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/JIT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1360, 'FARIDKOT', '151209', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/FDX', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1361, 'MALOUT', '151210', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1362, 'DABWALI', '151211', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DWL', 'HARYANA', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1363, 'FARIDKOT', '151212', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/FDX', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1364, 'FARIDKOT', '151213', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/FDX', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1365, 'MUKTSAR', '151215', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MKS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1366, 'RAMAN', '151301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RMA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1367, 'RAMAN', '151302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RMA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1368, 'RAMAN', '151401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/RMA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1369, 'BUDHLADA', '151501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BUU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1370, 'BUDHLADA', '151502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BUU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1371, 'BUDHLADA', '151503', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/BUU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1372, 'MANSA', '151504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MSZ', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1373, 'MANSA', '151505', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MSZ', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1374, 'SARDULGARH', '151506', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SLG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1375, 'SARDULGARH', '151507', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/SLG', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1376, 'MAUR', '151508', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MUU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1377, 'MAUR', '151509', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MUU', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1378, 'MANSA', '151510', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MSZ', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1379, 'MANSA', '151511', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MSZ', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1380, 'FIROZPUR', '152001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FZR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1381, 'FIROZPUR', '152002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FZR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1382, 'FEROZEPUR', '152003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/FZR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1383, 'FEROZEPUR', '152004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/FZR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1384, 'FEROZEPUR', '152005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/FZR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1385, 'MAKHU', '152020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MKK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1386, 'MAKHU', '152021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/MKK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1387, 'GURU HAR SAHAI', '152022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/GHS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1388, 'FEROZEPUR', '152023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/FZR', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1389, 'JALALABAD', '152024', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/JBD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1390, 'MUKTSAR', '152025', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MKS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1391, 'MUKTSAR', '152026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MKS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1392, 'ZIRA', '152028', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/JLH/ZRA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1393, 'MUKTSAR', '152031', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MKS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1394, 'MUKTSAR', '152032', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MKS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1395, 'JALALABAD', '152033', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/JBD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1396, 'MALOUT', '152101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1397, 'MALOUT', '152102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1398, 'MALOUT', '152103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1399, 'MUKTSAR', '152104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MKS', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1400, 'MALOUT', '152107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1401, 'MALOUT', '152112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1402, 'MUKTSAR', '152113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GMD', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1403, 'MALOUT', '152114', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1404, 'MALOUT', '152115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOT', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1405, 'FIROZPUR', '152116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ABH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1406, 'ABOHAR', '152117', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/AOA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1407, 'ABOHAR', '152118', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/AOA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1408, 'FAZILKA', '152120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/FKA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1409, 'FAZILKA', '152121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/FKA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1410, 'ABOHAR', '152122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/AOA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1411, 'FIROZPUR', '152123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FLK', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1412, 'FAZILKA', '152124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/FKA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1413, 'ABOHAR', '152125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/AOA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1414, 'ABOHAR', '152126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/AOA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1415, 'ABOHAR', '152127', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/AOA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1416, 'ABOHAR', '152128', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/AOA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1417, 'ABOHAR', '152129', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/AOA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1418, 'ABOHAR', '152130', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/AOA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1419, 'ABOHAR', '152131', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/AOA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1420, 'ABOHAR', '152132', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/AOA', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1421, 'Chandigarh', '160000', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1422, 'CHANDIGARH', '160001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1423, 'CHANDIGARH', '160002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1424, 'CHANDIGARH', '160003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1425, 'CHANDIGARH', '160004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ZKP', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1426, 'CHANDIGARH', '160005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1427, 'CHANDIGARH', '160006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1428, 'CHANDIGARH', '160007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1429, 'CHANDIGARH', '160008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1430, 'CHANDIGARH', '160009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1431, 'CHANDIGARH', '160010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1432, 'CHANDIGARH', '160011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1433, 'CHANDIGARH', '160012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1434, 'CHANDIGARH', '160013', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1435, 'CHANDIGARH', '160014', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1436, 'CHANDIGARH', '160015', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1437, 'CHANDIGARH', '160016', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1438, 'CHANDIGARH', '160017', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1439, 'CHANDIGARH', '160018', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1440, 'CHANDIGARH', '160019', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1441, 'CHANDIGARH', '160020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1442, 'CHANDIGARH', '160021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1443, 'CHANDIGARH', '160022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1444, 'CHANDIGARH', '160023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1445, 'CHANDIGARH', '160024', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1446, 'CHANDIGARH', '160025', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1447, 'CHANDIGARH', '160026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1448, 'CHANDIGARH', '160027', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1449, 'CHANDIGARH', '160028', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1450, 'CHANDIGARH', '160029', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1451, 'CHANDIGARH', '160030', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1452, 'CHANDIGARH', '160031', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1453, 'CHANDIGARH', '160032', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1454, 'CHANDIGARH', '160033', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1455, 'CHANDIGARH', '160034', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1456, 'CHANDIGARH', '160035', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1457, 'CHANDIGARH', '160036', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1458, 'CHANDIGARH', '160037', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1459, 'CHANDIGARH', '160038', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1460, 'CHANDIGARH', '160039', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1461, 'CHANDIGARH', '160040', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1462, 'CHANDIGARH', '160041', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1463, 'CHANDIGARH', '160042', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1464, 'CHANDIGARH', '160043', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1465, 'CHANDIGARH', '160044', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1466, 'CHANDIGARH', '160045', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1467, 'CHANDIGARH', '160046', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1468, 'CHANDIGARH', '160047', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1469, 'CHANDIGARH', '160048', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1470, 'CHANDIGARH', '160049', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1471, 'CHANDIGARH', '160050', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/CAB', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1472, 'CHANDIGARH', '160051', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1473, 'CHANDIGARH', '160052', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1474, 'CHANDIGARH', '160053', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1475, 'CHANDIGARH', '160054', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1476, 'RUPNAGAR', '160055', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1477, 'CHANDIGARH', '160056', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1478, 'CHANDIGARH', '160057', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1479, 'CHANDIGARH', '160058', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1480, 'RUPNAGAR', '160059', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1481, 'MOHALI', '160060', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1482, 'CHANDIGARH', '160061', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1483, 'RUPNAGAR', '160062', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1484, 'MOHALI', '160063', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1485, 'MOHALI', '160064', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1486, 'MOHALI', '160065', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1487, 'MOHALI', '160066', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1488, 'MOHALI', '160067', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1489, 'MOHALI', '160068', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1490, 'MOHALI', '160069', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1491, 'MOHALI', '160070', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1492, 'RUPNAGAR', '160071', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1493, 'MOHALI', '160073', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1494, 'MOHALI', '160074', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1495, 'MOHALI', '160077', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1496, 'MOHALI', '160078', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1497, 'MOHALI', '160079', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'PB/PTH/MOH', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1498, 'MOHALI', '160081', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/081', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1499, 'MOHALI', '160082', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/082', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1500, 'MOHALI', '160083', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/083', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1501, 'MOHALI', '160084', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/084', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1502, 'MOHALI', '160085', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/085', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1503, 'MOHALI', '160086', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/086', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1504, 'MOHALI', '160087', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/087', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1505, 'MOHALI', '160088', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/088', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1506, 'MOHALI', '160089', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/089', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1507, 'MOHALI', '160090', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/090', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1508, 'MOHALI', '160091', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/091', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1509, 'MOHALI', '160092', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/092', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1510, 'MOHALI', '160093', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/093', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1511, 'MOHALI', '160094', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/094', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1512, 'MOHALI', '160095', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/095', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1513, 'MOHALI', '160096', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/096', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1514, 'MOHALI', '160097', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/097', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1515, 'MOHALI', '160098', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/098', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1516, 'MOHALI', '160099', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/1A/099', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1517, 'CHANDIGARH', '160101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1518, 'CHANDIGARH', '160102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1519, 'MOHALI', '160103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CMM', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1520, 'MOHALI', '160104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ZKP', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1521, 'Chandigarh', '160105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/2B/105', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1522, 'CHANDIGARH', '160106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'CNO', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1523, 'MOGA', '162028', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1524, 'CHANDIGARH', '166031', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/CAB', 'CHANDIGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1525, 'Jaipur', '169349', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'RAJASTHAN', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1526, 'SHIMLA', '171001', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'MTA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1527, 'SHIMLA', '171002', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'MTA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1528, 'SHIMLA', '171003', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'MTA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1529, 'SHIMLA', '171004', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'MTA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1530, 'SHIMLA', '171005', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'MTA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1531, 'SHIMLA', '171006', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'MTA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1532, 'MASHOBRA', '171007', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/20C/007', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1533, 'Shimla', '171008', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/7B/008', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1534, 'SHIMLA', '171009', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'MTA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1535, 'SHIMLA', '171010', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'MTA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1536, 'Shimla', '171011', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/7B/011', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1537, 'THEOG', '171012', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/I1H/TOE', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1538, 'Shimla', '171013', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/7B/013', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1539, 'DARLAGHAT', '171102', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/11B/102', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1540, 'THEOG', '171201', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/I1H/TOE', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1541, 'ROHRU', '171207', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/15A/207', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1542, 'THEOG', '171209', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/I1H/TOE', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1543, 'THEOG', '171212', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/20B/212', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1544, 'THEOG', '171222', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/20B/222', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1545, 'RAMPUR HP', '172001', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/17B/001', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1546, 'JEORI HP', '172034', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/14B/034', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1547, 'JEORI HP', '172101', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/14B/101', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1548, 'JEORI HP', '172102', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/14B/102', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1549, 'JEORI HP', '172201', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/14B/201', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1550, 'NAHAN', '173001', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/RRN', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1551, 'PONTASAHIB', '173021', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/PSB', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1552, 'SIRMAUR', '173025', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'PSB', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1553, 'NARAINGARH', '173030', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/NGG', 'HARYANA', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1554, 'DHARAMPUR', '173202', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/I1H/KUU', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1555, 'DHARAMPUR', '173204', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/I1H/KUU', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1556, 'SOLAN', '173205', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'BDI', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1557, 'KUNIHAR HP', '173206', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/18A/206', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1558, 'KUNIHAR HP', '173207', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/14C/207', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1559, 'DARLAGHAT', '173208', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/11B/208', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1560, 'DHARAMPUR', '173209', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/I1H/KUU', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1561, 'DHARAMPUR', '173210', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/I1H/KUU', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1562, 'SOLAN', '173211', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/I1H/SOL', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1563, 'SOLAN', '173212', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'SOL', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1564, 'SOLAN', '173213', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'SOL', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1565, 'SOLAN', '173214', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'SOL', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28');
INSERT INTO `pincodes` (`id`, `City`, `Pincode`, `Has_Cod`, `Has_Prepaid`, `Has_Reverse`, `Shiprocket_Delivery`, `Routing_Code`, `State`, `created_at`, `updated_at`) VALUES
(1566, 'SOLAN', '173215', 'FALSE', 'TRUE', 'FALSE', 'z_e', '', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1567, 'SOLAN', '173220', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'DPR', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1568, 'DHARAMPUR', '173229', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/I1H/KUU', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1569, 'BILASPUR (HP)', '174001', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'BLS', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1570, 'BILASPUR', '174004', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/LLL', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1571, 'BILASPUR', '174005', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/LLL', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1572, 'BILASPUR', '174012', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/LLL', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1573, 'BILASPUR (HP)', '174013', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'BLS', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1574, 'GHUMARWIN', '174021', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8B/021', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1575, 'GHUMARWIN', '174023', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8B/023', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1576, 'GHUMARWIN', '174027', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8B/027', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1577, 'JAHU', '174028', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/17A/028', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1578, 'GHUMARWIN', '174029', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8B/029', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1579, 'GHUMARWIN', '174031', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8B/031', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1580, 'BILASPUR HP', '174034', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/11A/034', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1581, 'BILASPUR HP', '174035', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/11A/035', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1582, 'BARMAN', '174036', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/11A/036', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1583, 'SOLAN', '174101', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'NLH', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1584, 'Baddi', '174102', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/5B/102', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1585, 'SOLAN', '174103', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'BDI', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1586, 'MANIPAL', '174146', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'KARNATAKA', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1587, 'UNA', '174301', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'PB/SOH/UHL', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1588, 'UNA', '174302', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/22B/302', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1589, 'UNA', '174303', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'UNA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1590, 'BANGANA', '174304', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8C/304', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1591, 'BANGANA', '174305', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8C/305', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1592, 'UNA', '174306', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/4A/306', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1593, 'BANGANA', '174307', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8C/307', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1594, 'BANGANA', '174308', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8C/308', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1595, 'BANGANA', '174309', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8C/309', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1596, 'Anandpur Sahib', '174310', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/16A/310', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1597, 'Hamirpur', '174311', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/11C/311', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1598, 'BANGANA', '174312', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8C/312', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1599, 'AMB ', '174314', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/ABM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1600, 'UNA', '174315', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'UNA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1601, 'AMB ', '174316', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/ABM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1602, 'UNA', '174317', 'FALSE', 'TRUE', 'FALSE', 'z_e', '', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1603, 'BANGANA', '174320', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8C/320', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1604, 'BANGANA', '174321', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8C/321', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1605, 'SUNDERNAGAR', '174401', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SNE', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1606, 'SUNDERNAGAR', '174402', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/I1H/SNE', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1607, 'MANDI', '174404', 'FALSE', 'TRUE', 'FALSE', 'z_e', '', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1608, 'Hamirpur', '174505', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/6B/505', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1609, 'BILASPUR', '174611', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'CHHATTISGARH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1610, 'GHUMARWIN', '174929', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8B/929', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1611, 'MANDI', '175001', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'MDI', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1612, 'SUNDERNAGAR', '175002', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SNE', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1613, 'JAHU', '175004', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/17A/004', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1614, 'MANDI CITY', '175005', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/16C/005', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1615, 'MANDI', '175006', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/MNN', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1616, 'SARKAGHAT', '175007', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/RKG', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1617, 'MANDI', '175008', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'MDI', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1618, 'CHAUNTRA', '175015', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/CNA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1619, 'SUNDERNAGAR', '175018', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SNE', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1620, 'SUNDERNAGAR', '175019', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SNE', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1621, 'MANDI', '175021', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'MDI', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1622, 'DHARAMPUR', '175023', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/16B/023', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1623, 'SARKAGHAT', '175024', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/RKG', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1624, 'SARKAGHAT', '175025', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/10B/025', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1625, 'Mandi', '175027', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/6C/027', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1626, 'MANDI CITY', '175029', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/16C/029', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1627, 'BARMAN', '175030', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/14B/030', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1628, 'CHAUNTRA', '175032', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/CNA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1629, 'JAHU', '175033', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/17A/033', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1630, 'MANDI', '175034', 'FALSE', 'TRUE', 'FALSE', 'z_e', '', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1631, 'SARKAGHAT', '175037', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/10B/037', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1632, 'SARKAGHAT', '175040', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/16B/040', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1633, 'SARKAGHAT', '175042', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/10B/042', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1634, 'MANDI', '175043', 'FALSE', 'TRUE', 'FALSE', 'z_e', '', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1635, 'DHARAMPUR', '175049', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/16B/049', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1636, 'KULLU', '175101', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'KLX', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1637, 'BHUNTER', '175102', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/10C/102', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1638, 'MANALI', '175103', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/MLL', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1639, 'MANDI CITY', '175124', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/16C/124', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1640, 'KULLU', '175125', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/UUU', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1641, 'KULLU', '175126', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/UUU', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1642, 'BHUNTER', '175128', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/10C/128', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1643, 'MANALI', '175129', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/10C/129', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1644, 'MANALI', '175130', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/10C/130', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1645, 'MANALI', '175131', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/MLL', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1646, 'MANALI', '175136', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/10C/136', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1647, 'MANALI', '175143', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/10C/143', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1648, 'KANGRA', '176001', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'KGA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1649, 'KANGRA ', '176002', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/GGG', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1650, 'BAIJNATH', '176012', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/3C/012', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1651, 'BAIJNATH', '176020', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/3C/020', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1652, 'JAWALI', '176021', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/5C/021', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1653, 'JAWALI', '176022', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/5C/022', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1654, 'JAWALI', '176023', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/5C/023', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1655, 'JAWALI', '176024', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/15A/024', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1656, 'JAWALI', '176025', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/5C/025', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1657, 'SHAHPUR', '176026', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/15A/026', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1658, 'JAWALI', '176027', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/15A/027', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1659, 'NAGROTA SURIYAN', '176028', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/15A/028', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1660, 'RANITAL', '176029', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/21C/029', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1661, 'NADAUN ', '176031', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/NDN', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1662, 'NAGROTA SURIYAN', '176033', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/15A/033', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1663, 'NADAUN ', '176036', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/NDN', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1664, 'RANITAL', '176037', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/21C/037', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1665, 'KANGRA ', '176038', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/GGG', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1666, 'BHOTA', '176039', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/11C/039', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1667, 'Hamirpur', '176040', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/11C/040', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1668, 'Hamirpur', '176041', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/11C/041', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1669, 'Hamirpur', '176042', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/11C/042', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1670, 'JAHU', '176043', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/11C/043', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1671, 'JAHU', '176044', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/17A/044', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1672, 'JAHU', '176045', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/17A/045', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1673, 'GHUMARWIN', '176046', 'FALSE', 'TRUE', 'FALSE', 'z_e', '', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1674, 'KANGRA', '176047', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'KGA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1675, 'SARKAGHAT', '176048', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/RKG', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1676, 'Hamirpur', '176049', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/11C/049', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1677, 'JASSUR', '176051', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/10A/051', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1678, 'DHARAMSHALA ', '176052', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/DDD', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1679, 'JAWALI', '176053', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/5C/053', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1680, 'RANITAL', '176054', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/21C/054', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1681, 'KANGRA ', '176056', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/GGG', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1682, 'KANGRA', '176057', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'DHM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1683, 'PALAMPUR ', '176059', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/PMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1684, 'PAROR', '176060', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/18A/060', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1685, 'KANGRA', '176061', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'PLM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1686, 'PALAMPUR', '176062', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'PLM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1687, 'CHAUNTRA', '176063', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/CNA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1688, 'PALAMPUR ', '176064', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/PMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1689, 'PAROR', '176065', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/18A/065', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1690, 'PALAMPUR', '176067', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/6B/067', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1691, 'SUJANPUR TIRA', '176073', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/13C/073', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1692, 'SUJANPUR TIRA', '176075', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/13C/075', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1693, 'JASINGPUR', '176076', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/15C/076', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1694, 'CHAUNTRA', '176077', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/CNA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1695, 'PALAMPUR ', '176081', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/PMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1696, 'SUJANPUR ', '176082', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SJM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1697, 'PALAMPUR ', '176083', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/PMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1698, 'PAROR', '176084', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/18A/084', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1699, 'PALAMPUR ', '176085', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/PMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1700, 'DAROH', '176086', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/13B/086', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1701, 'PALAMPUR ', '176087', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/PMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1702, 'JASINGPUR', '176088', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/15C/088', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1703, 'JASINGPUR', '176089', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/15C/089', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1704, 'JASINGPUR', '176091', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/15C/091', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1705, 'DAROH', '176092', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/13B/092', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1706, 'DAROH', '176093', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/13B/093', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1707, 'DAROH', '176094', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/13B/094', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1708, 'JASINGPUR', '176095', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/15C/095', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1709, 'DAROH', '176096', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/15C/096', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1710, 'DAROH', '176097', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/15C/097', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1711, 'PALAMPUR ', '176101', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/PMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1712, 'PALAMPUR ', '176102', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/PMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1713, 'PALAMPUR ', '176103', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/PMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1714, 'SUJANPUR TIRA', '176107', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/13C/107', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1715, 'SUJANPUR ', '176108', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SJM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1716, 'SUJANPUR ', '176109', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SJM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1717, 'SUJANPUR ', '176110', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/I1H/SJM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1718, 'SUJANPUR ', '176111', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SJM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1719, 'PALAMPUR ', '176115', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/PMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1720, 'BAIJNATH', '176120', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/19C/120', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1721, 'CHAUNTRA', '176125', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/CNA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1722, 'BAIJNATH', '176128', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/3C/128', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1723, 'JASSUR', '176200', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/10A/200', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1724, 'JASSUR', '176201', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/10A/201', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1725, 'JASSUR', '176202', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/10A/202', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1726, 'JASSUR', '176203', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/3B/203', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1727, 'JASSUR', '176204', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/10A/204', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1728, 'SHAHPUR ', '176205', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SSS', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1729, 'SHAHPUR ', '176206', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SSS', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1730, 'SHAHPUR ', '176207', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SSS', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1731, 'SHAHPUR ', '176208', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SSS', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1732, 'KANGRA ', '176209', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/I1H/GGG', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1733, 'KANGRA ', '176210', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/GGG', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1734, 'JASSUR', '176211', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/3B/211', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1735, 'DHARAMSHALA ', '176213', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/DDD', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1736, 'KANGRA ', '176214', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/GGG', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1737, 'KANGRA', '176215', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'DHM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1738, 'DHARAMSHALA', '176216', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'DHM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1739, 'SHAHPUR ', '176217', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SSS', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1740, 'DHARAMSHALA', '176218', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'DHM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1741, 'KANGRA', '176219', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'DHM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1742, 'SHAHPUR ', '176223', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SSS', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1743, 'SHAHPUR', '176225', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/10B/225', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1744, 'DALHOUSIE ', '176301', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/DSE', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1745, 'DHAR KALAN', '176302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-12/3B/302', 'PUNJAB', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1746, 'DALHOUSIE ', '176303', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/DSE', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1747, 'DALHOUSIE ', '176304', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/DSE', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1748, 'DALHOUSIE ', '176305', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/DSE', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1749, 'DALHOUSIE', '176306', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/3B/306', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1750, 'SUNDLA', '176308', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12A/308', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1751, 'CHAMBA', '176310', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/CBA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1752, 'SUNDLA', '176312', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12A/312', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1753, 'CHOWARI', '176313', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/3B/313', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1754, 'CHAMBA', '176314', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/CBA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1755, 'SUNDLA', '176317', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12A/317', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1756, 'CHAMBA', '176318', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/CBA', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1757, 'SUNDLA', '176319', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12A/319', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1758, 'SUNDLA', '176320', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12A/320', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1759, 'DALHOUSIE ', '176325', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/DSE', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1760, 'INDORA', '176401', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/11B/401', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1761, 'INDORA', '176402', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/11B/402', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1762, 'INDORA', '176403', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/11B/403', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1763, 'INDORA', '176404', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/11B/404', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1764, 'HAMIRPUR', '177001', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HMP', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1765, 'HAMIRPUR ', '177002', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/HMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1766, 'HAMIRPUR(HP)', '177005', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HMP', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1767, 'GALORE', '177006', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/13A/006', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1768, 'SUJANPUR ', '177007', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/SJM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1769, 'HAMIRPUR ', '177020', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/HMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1770, 'JAHU', '177021', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/17A/021', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1771, 'HAMIRPUR ', '177023', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/HMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1772, 'JAHU', '177024', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/17A/024', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1773, 'JAHU', '177025', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/17C/025', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1774, 'GALORE', '177026', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/13A/026', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1775, 'HAMIRPUR ', '177027', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/HMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1776, 'HAMIRPUR ', '177029', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/HMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1777, 'BANGANA', '177031', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8C/031', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1778, 'NADAUN ', '177033', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/NDN', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1779, 'NADAUN ', '177038', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/NDN', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1780, 'BANGANA', '177039', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8C/039', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1781, 'GALORE', '177040', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/13A/040', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1782, 'BANGANA', '177041', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/13A/041', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1783, 'NADAUN ', '177042', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/NDN', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1784, 'NADAUN ', '177044', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/NDN', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1785, 'NADAUN', '177045', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12B/045', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1786, 'NADAUN', '177046', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12B/046', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1787, 'NADAUN', '177048', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12B/048', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1788, 'DEHRA', '177101', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12A/101', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1789, 'DEHRA', '177103', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12A/103', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1790, 'DEHRA', '177104', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12A/104', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1791, 'DEHRA', '177107', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12A/107', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1792, 'DEHRA', '177108', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12A/108', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1793, 'GONDPUR', '177109', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/13C/109', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1794, 'DEHRA', '177114', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12A/114', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1795, 'DEHRA', '177117', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-13/12A/117', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1796, 'NADAUN', '177118', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/17A/118', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1797, 'BANGANA', '177119', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/8C/119', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1798, 'AMB ', '177201', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/ABM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1799, 'AMB ', '177202', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/ABM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1800, 'AMB ', '177203', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/ABM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1801, 'AMB ', '177204', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/ABM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1802, 'AMB ', '177205', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/ABM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1803, 'AMB ', '177206', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/ABM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1804, 'AMB', '177207', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/10A/207', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1805, 'AMB', '177208', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/10A/208', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1806, 'AMB', '177210', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/10A/210', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1807, 'AMB ', '177211', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/ABM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1808, 'AMB ', '177212', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/ABM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1809, 'AMB ', '177213', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/ABM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1810, 'NADAUN ', '177301', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/NDN', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1811, 'Hamirpur', '177401', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/6B/401', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1812, 'Hamirpur', '177501', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/6B/501', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1813, 'JAHU', '177601', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-12/17C/601', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1814, 'PALAMPUR ', '179092', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'HR/SOH/PMM', 'HIMACHAL PRADESH', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1815, 'JAMMU', '180001', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1816, 'JAMMU', '180002', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1817, 'JAMMU', '180003', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1818, 'JAMMU', '180004', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1819, 'JAMMU', '180005', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1820, 'JAMMU', '180006', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1821, 'JAMMU', '180007', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1822, 'MIRANSAHIB', '180008', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/MNB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1823, 'MIRANSAHIB', '180009', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/MNB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1824, 'JAMMU', '180010', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1825, 'JAMMU', '180011', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1826, 'JAMMU', '180012', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1827, 'JAMMU', '180013', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1828, 'JAMMU', '180014', 'TRUE', 'TRUE', 'FALSE', 'z_e', '', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1829, 'JAMMU', '180015', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1830, 'JAMMU', '180016', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1831, 'BATHINDI', '180017', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/BXI', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1832, 'JAMMU', '180018', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1833, 'JAMMU', '180019', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1834, 'JAMMU', '180020', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1835, 'JAMMU', '181001', 'TRUE', 'TRUE', 'FALSE', 'z_e', '', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1836, 'JAMMU', '181008', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/JMB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1837, 'JAMMU', '181101', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1838, 'MIRANSAHIB', '181102', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/MNB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1839, 'MIRANSAHIB', '181103', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/MNB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1840, 'MIRANSAHIB', '181104', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/MNB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1841, 'MIRANSAHIB', '181105', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/MNB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1842, 'MIRANSAHIB', '181111', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/MNB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1843, 'MIRANSAHIB', '181112', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/MNB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1844, 'JAMMU', '181113', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1845, 'JAMMU', '181114', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1846, 'JAMMU', '181121', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1847, 'AKHNOOR', '181122', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/AKO', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1848, 'JAMMU', '181123', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1849, 'JAMMU', '181124', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1850, 'MIRANSAHIB', '181131', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/MNB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1851, 'MIRANSAHIB', '181132', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/MNB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1852, 'JAMMU', '181133', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1853, 'JAMMU', '181134', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1854, 'SAMBA', '181141', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/VJY', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1855, 'JAMMU', '181142', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1856, 'SAMBA', '181143', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/VJY', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1857, 'JAMMU', '181144', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1858, 'JAMMU', '181145', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1859, 'BATHINDI', '181151', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/BXI', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1860, 'JAMMU', '181152', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1861, 'AKHNOOR', '181201', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/AKO', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1862, 'AKHNOOR', '181202', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/AKO', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1863, 'AKHNOOR', '181203', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/AKO', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1864, 'AKHNOOR', '181204', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/AKO', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1865, 'JAMMU', '181205', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1866, 'AKHNOOR', '181206', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/AKO', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1867, 'AKHNOOR', '181207', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/AKO', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1868, 'AKHNOOR', '181208', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/AKO', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1869, 'JAMMU', '181209', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/JMB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1870, 'JAMMU', '181221', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1871, 'JAMMU', '181223', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/JMA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1872, 'MANWAL', '181224', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/9C/224', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1873, 'UDHAMPUR', '182101', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'UDM', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1874, 'UDHAMPUR', '182103', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/UHP', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1875, 'UDHAMPUR', '182104', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'UDM', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1876, 'MANWAL', '182117', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/7A/117', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1877, 'UDHAMPUR', '182121', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'UDM', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1878, 'RAMNAGAR', '182122', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/RNX/RNX', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1879, 'UDHAMPUR', '182123', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/UHP', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1880, 'Udhampur', '182124', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/2C/124', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1881, 'Udhampur', '182126', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/2C/126', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1882, 'MANWAL', '182127', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/7A/127', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1883, 'CHENANI', '182141', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/9A/141', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1884, 'CHENANI', '182142', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/9A/142', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1885, 'RAMBAN', '182144', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/7B/144', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1886, 'DODA', '182202', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/DDX', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1887, 'BAHDERWAH', '182222', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/BDY', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1888, 'KATRA', '182301', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/GOD', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1889, 'KATRA', '182302', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/GOD', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1890, 'KATRA', '182311', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/REA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1891, 'KATRA', '182312', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/REA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1892, 'KATRA', '182313', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/REA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1893, 'KATRA', '182314', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/GOD', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1894, 'JHAJJAR KOTLI', '182320', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/9C/320', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1895, 'KATHUA', '184101', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/KTA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1896, 'KATHUA', '184102', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/KTA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1897, 'KATHUA', '184103', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/KTA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1898, 'KATHUA', '184104', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/KTA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1899, 'SAMBA', '184120', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/VJY', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1900, 'SAMBA', '184121', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/SBZ', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1901, 'KATHUA', '184141', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/KTA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1902, 'KATHUA', '184142', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/KTA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1903, 'KATHUA', '184143', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/KTA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1904, 'KATHUA', '184144', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/KTA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1905, 'SAMBA', '184145', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/SBZ', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1906, 'KATHUA', '184146', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/KTA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1907, 'KATHUA', '184147', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/KTA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1908, 'KATHUA', '184148', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/KTA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1909, 'KATHUA', '184151', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/KTA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1910, 'KATHUA', '184152', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/KTA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1911, 'BASHOLI', '184201', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/JMH/BXO', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1912, 'MANPUR', '184202', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/9B/202', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1913, 'MANPUR', '184203', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/9B/203', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1914, 'BILLAWAR', '184204', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/BXW/BXW', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1915, 'MANPUR', '184205', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/9B/205', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1916, 'POONCH', '185101', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/5A/101', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1917, 'RAJOURI', '185131', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/8C/131', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1918, 'RAJOURI', '185132', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/10C/132', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1919, 'NOWSHERA', '185151', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/3B/151', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1920, 'NOWSHERA', '185152', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/3B/152', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1921, 'SUNDERBANI', '185153', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/3C/153', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1922, 'NOWSHERA', '185155', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/3B/155', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28');
INSERT INTO `pincodes` (`id`, `City`, `Pincode`, `Has_Cod`, `Has_Prepaid`, `Has_Reverse`, `Shiprocket_Delivery`, `Routing_Code`, `State`, `created_at`, `updated_at`) VALUES
(1923, 'SUNDERBANI', '185156', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/3C/156', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1924, 'SRINAGAR', '190000', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXF/SXF', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1925, 'SRINAGAR', '190001', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXF/SXF', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1926, 'SRINAGAR', '190002', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXD/SXD', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1927, 'SRINAGAR', '190003', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXD/SXD', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1928, 'SRINAGAR', '190004', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXC/SXC', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1929, 'SRINAGAR', '190005', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXA/SXA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1930, 'SRINAGAR', '190006', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXB/SXB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1931, 'SRINAGAR', '190007', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXA/SXA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1932, 'SRINAGAR', '190008', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXC/SXC', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1933, 'SRINAGAR', '190009', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXC/SXC', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1934, 'SRINAGAR', '190010', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXD/SXD', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1935, 'SRINAGAR', '190011', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXB/SXB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1936, 'SRINAGAR', '190012', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXA/SXA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1937, 'SRINAGAR', '190013', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXE/SXE', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1938, 'SRINAGAR', '190014', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXA/SXA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1939, 'SRINAGAR', '190015', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXE/SXE', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1940, 'SRINAGAR', '190016', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXB/SXB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1941, 'NARBAL', '190017', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/NBL', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1942, 'SRINAGAR', '190018', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXC/SXC', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1943, 'SRINAGAR', '190019', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXE/SXE', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1944, 'SRINAGAR', '190020', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXB/SXB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1945, 'SRINAGAR', '190021', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXA/SXA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1946, 'SRINAGAR', '190022', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXD/SXD', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1947, 'SRINAGAR', '190023', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXB/SXB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1948, 'SRINAGAR', '190024', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXB/SXB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1949, 'SRINAGAR', '190025', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXF/SXF', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1950, 'SRINAGAR', '191101', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'N/S-16/1B/101', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1951, 'BUDGAM', '191111', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BUD', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1952, 'CHADORA BUDGAM ', '191112', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/CRB/CRB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1953, 'CHADORA BUDGAM ', '191113', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/CRB/CRB', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1954, 'SRINAGAR', '191121', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXF/SXF', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1955, 'SRINAGAR', '191123', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXF/SXF', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1956, 'GANDERBAL', '191131', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/GND', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1957, 'SRINAGAR', '191132', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXA/SXA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1958, 'SRINAGAR', '191141', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXD/SXD', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1959, 'GANDERBAL', '191201', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/GND', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1960, 'GANDERBAL', '191202', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/GND', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1961, 'GANDERBAL', '191203', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/GND', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1962, 'GANDERBAL', '191204', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/GND', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1963, 'GANDERBAL', '191205', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/GND', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1964, 'ANANTNAG', '192101', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/ANA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1965, 'ANANTNAG', '192102', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/ANA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1966, 'BIJBIHARA', '192122', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BIJ', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1967, 'BIJBIHARA', '192123', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BIJ', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1968, 'BIJBIHARA', '192124', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BIJ', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1969, 'ANANTNAG', '192125', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/ANA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1970, 'ANANTNAG', '192126', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/ANA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1971, 'ANANTNAG', '192127', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/ANA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1972, 'ANANTNAG', '192202', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/ANA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1973, 'ANANTNAG', '192203', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/ANA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1974, 'ANANTNAG', '192211', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/ANA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1975, 'ANANTNAG', '192212', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/ANA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1976, 'KULGAM', '192230', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/KUL', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1977, 'KULGAM', '192231', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/KUL', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1978, 'KULGAM', '192232', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/KUL', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1979, 'KULGAM', '192233', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/KUL', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1980, 'KULGAM', '192234', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/KUL', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1981, 'PULWAMA', '192301', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/PWM', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1982, 'SHOPIAN', '192302', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/SYN', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1983, 'SHOPIAN', '192303', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/SYN', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1984, 'PULWAMA', '192304', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/PWM', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1985, 'SHOPIAN', '192305', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/SYN', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1986, 'PULWAMA', '192306', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/PWM', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1987, 'PULWAMA', '192307', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/PWM', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1988, 'PULWAMA', '192308', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/PWM', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1989, 'PULWAMA', '192309', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/PWM', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1990, 'BIJBIHARA', '192401', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BIJ', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1991, 'BIJBIHARA', '192403', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BIJ', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1992, 'BARAMULLA', '193101', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1993, 'BARAMULLA', '193102', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1994, 'BARAMULLA', '193103', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1995, 'BARAMULLA', '193105', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1996, 'BARAMULLA', '193106', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1997, 'BARAMULLA', '193107', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1998, 'PATTAN', '193108', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/PBA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(1999, 'BARAMULLA', '193109', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:52:28', '2021-10-06 17:52:28'),
(2000, 'PATTAN', '193121', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/PBA', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2001, 'BARAMULLA', '193123', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2002, 'BARAMULLA', '193124', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2003, 'BARAMULLA', '193125', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2004, 'BARAMULLA', '193130', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2005, 'BARAMULLA', '193131', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2006, 'BARAMULLA', '193132', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2007, 'SOPORE', '193201', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/SOO', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2008, 'SOPORE', '193202', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/SOO', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2009, 'BARAMULLA', '193208', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2010, 'SOPORE', '193209', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/SOO', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2011, 'SOPORE', '193211', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/SOO', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2012, 'SOPORE', '193212', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/SOO', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2013, 'HANDWARA', '193221', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-15/10A/221', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2014, 'KUPWARA', '193222', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/KUW/KUW', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2015, 'BARAMULLA', '193301', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2016, 'BARAMULLA', '193302', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2017, 'BARAMULLA', '193303', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BAA', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2018, 'NARBAL', '193401', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/NBL', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2019, 'NARBAL', '193402', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/NBL', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2020, 'NARBAL', '193403', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/NBL', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2021, 'MAGAM', '193404', 'FALSE', 'TRUE', 'FALSE', 'z_e', 'N/S-16/3C/404', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2022, 'BUDGAM', '193411', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/SXH/BUD', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2023, 'BANDIPORA', '193502', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'JK/BIO/BIO', 'JAMMU AND KASHMIR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2024, 'GHAZIABAD', '200101', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2025, 'GHAZIABAD', '201000', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GZD/GZD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2026, 'GHAZIABAD', '201001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2027, 'GHAZIABAD', '201002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2028, 'GHAZIABAD', '201003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2029, 'GHAZIABAD', '201004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GIP', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2030, 'GHAZIABAD', '201005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GIP', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2031, 'GHAZIABAD', '201006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2032, 'GHAZIABAD', '201007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GIP', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2033, 'DHAULANA', '201008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/DUL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2034, 'GHAZIABAD', '201009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2035, 'GHAZIABAD', '201010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GIP', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2036, 'GHAZIABAD', '201011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GIP', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2037, 'GHAZIABAD', '201012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GIP', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2038, 'GHAZIABAD', '201013', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2039, 'GHAZIABAD', '201014', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GIP', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2040, 'GHAZIABAD', '201015', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GZC/GZC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2041, 'GHAZIABAD', '201016', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GCR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2042, 'GHAZIABAD', '201017', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GZC/GZC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2043, 'GHAZIABAD', '201018', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GZD/GZD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2044, 'GHAZIABAD', '201019', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GZD/GZD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2045, 'GHAZIABAD', '201020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GZA/GZA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2046, 'BAGHPAT', '201101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BTZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2047, 'LONI', '201102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/LON', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2048, 'LONI', '201103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/LON', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2049, 'GHAZIABAD', '201106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GZC/GZC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2050, 'NOIDA-ETAIL DELIVERY/RTO', '201111', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'NDE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2051, 'UNCHAHAR', '201112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2052, 'MODINAGAR', '201201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MDN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2053, 'MODINAGAR', '201202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MDN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2054, 'MODINAGAR', '201204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MDN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2055, 'MODINAGAR', '201205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MDN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2056, 'MODINAGAR', '201206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MDN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2057, 'NOIDA', '201300', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ICA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2058, 'NOIDA', '201301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2059, 'NOIDA', '201302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/NDD/NDD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2060, 'NOIDA', '201303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2061, 'NOIDA', '201304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NGN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2062, 'NOIDA', '201305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NGN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2063, 'NOIDA', '201306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NGN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2064, 'NOIDA', '201307', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NDI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2065, 'NOIDA', '201308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GNO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2066, 'NOIDA', '201309', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NDI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2067, 'NOIDA', '201310', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GNO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2068, 'NOIDA', '201311', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NGN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2069, 'NOIDA', '201312', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'GNO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2070, 'NOIDA', '201313', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'NGN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2071, 'GREATER NOIDA', '201314', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GNA/GNA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2072, 'GREATER NOIDA', '201315', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GNA/GNA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2073, 'GREATER NOIDA', '201316', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GNA/GNA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2074, 'GREATER NOIDA', '201317', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GNA/GNA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2075, 'ALIGARH', '202001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2076, 'ALIGARH', '202002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2077, 'ALIGARH', '202004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/ALI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2078, 'ALIGARH', '202117', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/ALI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2079, 'ALIGARH', '202118', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/ALI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2080, 'ALIGARH', '202119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/ALI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2081, 'SIKANDRA RAO', '202120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/SKN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2082, 'SIKANDRA RAO', '202121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/SKN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2083, 'ALIGARH', '202122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/ALI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2084, 'IGLAS', '202123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/IGL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2085, 'IGLAS', '202124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/IGL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2086, 'ALIGARH', '202125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/ALI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2087, 'ALIGARH', '202126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/ALI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2088, 'ATRAULI', '202127', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2089, 'ALIGARH', '202128', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/ALI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2090, 'ATRAULI', '202129', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2091, 'ATRAULI', '202130', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2092, 'ATRAULI', '202131', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2093, 'KHURJA', '202132', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/KJX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2094, 'ATRAULI', '202133', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2095, 'KASGANJ', '202134', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KAS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2096, 'KHAIR', '202135', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KHX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2097, 'KHAIR', '202136', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KHX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2098, 'JEWAR', '202137', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JEW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2099, 'KHAIR', '202138', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KHX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2100, 'HATHRAS', '202139', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2101, 'KHAIR', '202140', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KHX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2102, 'KHAIR', '202141', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KHX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2103, 'KHAIR', '202142', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KHX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2104, 'KHAIR', '202143', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KHX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2105, 'IGLAS', '202144', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/IGL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2106, 'IGLAS', '202145', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/IGL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2107, 'IGLAS', '202146', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/IGL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2108, 'ALIGARH', '202150', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/ALI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2109, 'ALIGARH', '202151', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/ALI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2110, 'KHAIR', '202155', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/KHX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2111, 'JEWAR', '202165', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JEW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2112, 'SIKANDRA RAO', '202170', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/SKN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2113, 'ALIGARH', '202171', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/ALI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2114, 'ATRAULI', '202280', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2115, 'ATRAULI', '202281', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2116, 'ATRAULI', '202282', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2117, 'ATRAULI', '202305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2118, 'ATRAULI', '202308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2119, 'ATRAULI', '202383', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2120, 'DIBAI', '202389', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2121, 'ANUPSHAHAR', '202390', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/AUS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2122, 'ANUPSHAHAR', '202391', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/AUS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2123, 'DIBAI', '202392', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2124, 'DIBAI', '202393', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2125, 'ANUPSHAHAR', '202394', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/AUS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2126, 'KHURJA', '202395', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/KJX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2127, 'DIBAI', '202396', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2128, 'DIBAI', '202397', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2129, 'ANUPSHAHAR', '202398', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/AUS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2130, 'DIBAI', '202399', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2131, 'CHANDAUSI', '202410', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CSI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2132, 'BILARI', '202411', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BMI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2133, 'CHANDAUSI', '202412', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CSI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2134, 'BILARI', '202413', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BMI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2135, 'CHANDAUSI', '202414', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CSI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2136, 'BILARI', '202415', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BMI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2137, 'ATRAULI', '202416', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2138, 'ATRAULI', '202720', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2139, 'ATRAULI', '202721', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2140, 'ATRAULI', '202722', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2141, 'ATRAULI', '202723', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2142, 'ATRAULI', '202724', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ARL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2143, 'BULANDSHAHR', '203001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BSR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2144, 'BULANDSHAHR', '203002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BUL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2145, 'BULANDSHAHR', '203121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BUL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2146, 'KHURJA', '203129', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/KJX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2147, 'KHURJA', '203131', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/KJX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2148, 'KHURJA', '203132', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/KJX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2149, 'KHURJA', '203133', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/KJX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2150, 'JEWAR', '203135', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JEW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2151, 'JEWAR', '203141', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JEW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2152, 'BULANDSHAHR', '203145', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BUL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2153, 'BULANDSHAHR', '203150', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BUL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2154, 'JEWAR', '203155', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JEW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2155, 'GREATER NOIDA', '203201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GNA/GNA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2156, 'GREATER NOIDA', '203202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GNA/GNA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2157, 'JEWAR', '203203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JEW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2158, 'BULANDSHAHR', '203205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SKB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2159, 'BULANDSHAHR', '203206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BUL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2160, 'NOIDA', '203207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2161, 'DHAULANA', '203208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/DUL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2162, 'JEWAR', '203209', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JEW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2163, 'BULANDSHAHR', '203298', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BUL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2164, 'BABRALA', '203389', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2165, 'ANUPSHAHAR', '203390', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/AUS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2166, 'ANUPSHAHAR', '203391', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/AUS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2167, 'DIBAI', '203392', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2168, 'DIBAI', '203393', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2169, 'ANUPSHAHAR', '203394', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/AUS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2170, 'KHURJA', '203395', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/KJX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2171, 'DIBAI', '203396', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2172, 'DIBAI', '203397', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2173, 'ANUPSHAHAR', '203398', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/AUS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2174, 'DIBAI', '203399', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2175, 'SIYANA', '203401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2176, 'SIYANA', '203402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2177, 'SIYANA', '203403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2178, 'SIYANA', '203405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2179, 'SIYANA', '203407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2180, 'DHAULANA', '203408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/DUL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2181, 'BULANDSHAHR', '203409', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BUL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2182, 'SIYANA', '203411', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2183, 'SIYANA', '203412', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2184, 'BULANDSHAHR', '203428', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'N/S-06/14C/428', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2185, 'FIROZABAD', '203551', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/FRZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2186, 'SIYANA', '203636', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2187, 'HATHRAS', '204001', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2188, 'HATHRAS', '204101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2189, 'HATHRAS', '204102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2190, 'HATHRAS', '204103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2191, 'HATHRAS', '204104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2192, 'HATHRAS', '204105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2193, 'HATHRAS', '204106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2194, 'HATHRAS', '204141', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2195, 'HATHRAS', '204205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2196, 'HATHRAS', '204206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2197, 'HATHRAS', '204207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2198, 'HATHRAS', '204208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2199, 'HATHRAS', '204209', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2200, 'SIKANDRA RAO', '204210', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/SKN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2201, 'SIKANDRA RAO', '204211', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/SKN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2202, 'JALESAR', '204212', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/JLS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2203, 'HATHRAS', '204213', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2204, 'SIKANDRA RAO', '204214', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/SKN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2205, 'SIKANDRA RAO', '204215', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/SKN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2206, 'HATHRAS', '204216', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/HHA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2207, 'MAINPURI', '205001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2208, 'MAINPURI', '205119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2209, 'JASRANA', '205120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/JSN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2210, 'JASRANA', '205121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/JSN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2211, 'JASRANA', '205122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/JSN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2212, 'JASRANA', '205125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/JSN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2213, 'JASRANA', '205126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/JSN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2214, 'JASRANA', '205130', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/JSN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2215, 'JASRANA', '205135', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/JSN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2216, 'SHIKOHABAD', '205151', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'N/S-6/14A/151', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2217, 'MAINPURI', '205247', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2218, 'MAINPURI', '205261', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2219, 'MAINPURI', '205262', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2220, 'MAINPURI', '205263', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2221, 'MAINPURI', '205264', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2222, 'MAINPURI', '205265', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2223, 'MAINPURI', '205266', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2224, 'MAINPURI', '205267', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2225, 'KISHNI', '205268', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KIS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2226, 'KISHNI', '205301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KIS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2227, 'FARRUKHABAD', '205302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2228, 'KISHNI', '205303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KIS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2229, 'KISHNI', '205304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KIS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2230, 'ETAWAH', '206001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/ETW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2231, 'ETAWAH', '206002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/ETW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2232, 'ETAWAH', '206003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/ETW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2233, 'BHARTHANA', '206120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BRN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2234, 'AURAIYA', '206121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/AUA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2235, 'AURAIYA', '206122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/AUA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2236, 'KISHNI', '206123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KIS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2237, 'BHARTHANA', '206124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BRN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2238, 'BHARTHANA', '206125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BRN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2239, 'ETAWAH', '206126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/ETW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2240, 'BHARTHANA', '206127', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BRN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2241, 'BHARTHANA', '206128', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BRN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2242, 'AURAIYA', '206129', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/AUA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2243, 'ETAWAH', '206130', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/ETW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2244, 'ETAWAH', '206131', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/ETW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2245, 'BAKEWAR', '206167', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'N/S-8/12B/167', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2246, 'BIDHUNA', '206241', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2247, 'BHARTHANA', '206242', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BRN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2248, 'BIDHUNA', '206243', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2249, 'DIBIYAPUR', '206244', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/DYA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2250, 'ETAWAH', '206245', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/ETW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2251, 'DIBIYAPUR', '206246', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/DYA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2252, 'DIBIYAPUR', '206247', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/DYA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2253, 'BIDHUNA', '206248', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2254, 'BIDHUNA', '206249', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2255, 'DIBIYAPUR', '206250', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/DYA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2256, 'BIDHUNA', '206251', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2257, 'BIDHUNA', '206252', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2258, 'ETAWAH', '206253', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/ETW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2259, 'RASULABAD', '206254', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/RLB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2260, 'RASULABAD', '206255', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/RLB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2261, 'RASULABAD', '206308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/RLB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2262, 'ETAH', '207001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ETA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2263, 'ETAH', '207002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ETA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2264, 'ETAH', '207003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ETA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2265, 'ETAH', '207023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ETA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2266, 'ETAH', '207120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ETA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2267, 'ETAH', '207121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ETA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2268, 'ETAH', '207122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ETA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2269, 'KASGANJ', '207123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KAS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2270, 'KASGANJ', '207124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KAS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2271, 'KASGANJ', '207125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KAS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2272, 'KASGANJ', '207126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KAS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2273, 'KASGANJ', '207241', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KAS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2274, 'PATIYALI', '207242', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PAY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2275, 'PATIYALI', '207243', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PAY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2276, 'ALIGANJ', '207244', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ALG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2277, 'KASGANJ', '207245', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KAS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2278, 'PATIYALI', '207246', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PAY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2279, 'ALIGANJ', '207247', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ALG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2280, 'PATIYALI', '207248', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PAY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2281, 'ALIGANJ', '207249', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ALG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2282, 'ALIGANJ', '207250', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ALG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2283, 'ETAH', '207301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/ETA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2284, 'JALESAR', '207302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/AGH/JLS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2285, 'KASGANJ', '207401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KAS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35');
INSERT INTO `pincodes` (`id`, `City`, `Pincode`, `Has_Cod`, `Has_Prepaid`, `Has_Reverse`, `Shiprocket_Delivery`, `Routing_Code`, `State`, `created_at`, `updated_at`) VALUES
(2286, 'KASGANJ', '207402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KAS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2287, 'KASGANJ', '207403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KAS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2288, 'KASGANJ', '207404', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KAS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2289, 'KASGANJ', '207441', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KAS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2290, 'KANPUR DEHAT', '208001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2291, 'KANPUR NAGAR', '208002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2292, 'KANPUR NAGAR', '208003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2293, 'KANPUR NAGAR', '208004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2294, 'KANPUR NAGAR', '208005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2295, 'KANPUR NAGAR', '208006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2296, 'KANPUR NAGAR', '208007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2297, 'KANPUR NAGAR', '208008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2298, 'KANPUR NAGAR', '208009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2299, 'KANPUR NAGAR', '208010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2300, 'KANPUR NAGAR', '208011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2301, 'KANPUR NAGAR', '208012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2302, 'KANPUR NAGAR', '208013', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2303, 'KANPUR NAGAR', '208014', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2304, 'KANPUR NAGAR', '208015', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2305, 'KANPUR NAGAR', '208016', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2306, 'KANPUR NAGAR', '208017', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2307, 'KANPUR', '208018', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2308, 'KANPUR NAGAR', '208019', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2309, 'KANPUR NAGAR', '208020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2310, 'KANPUR NAGAR', '208021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2311, 'KANPUR NAGAR', '208022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2312, 'KANPUR NAGAR', '208023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2313, 'KANPUR NAGAR', '208024', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2314, 'KANPUR NAGAR', '208025', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2315, 'KANPUR NAGAR', '208026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2316, 'KANPUR NAGAR', '208027', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2317, 'KANPUR', '208039', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/KNB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2318, 'UNNAO', '208120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/UNN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2319, 'KANPUR', '208221', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2320, 'KANPUR', '208581', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2321, 'KANPUR', '208923', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2322, 'FARRUKHABAD', '209025', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2323, 'AKBARPUR-KANPUR DEHAT', '209101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/ABK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2324, 'BHOGNIPUR', '209111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BOU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2325, 'BHOGNIPUR', '209112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BOU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2326, 'BHOGNIPUR', '209115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BOU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2327, 'GHATAMPUR', '209121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/GTM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2328, 'AURAIYA', '209125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/AUA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2329, 'KANPUR', '209201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/KNB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2330, 'BILHAUR', '209202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2331, 'BILHAUR', '209203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2332, 'BILHAUR', '209204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2333, 'BILHAUR', '209205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2334, 'GHATAMPUR', '209206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/GTM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2335, 'GHATAMPUR', '209207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/GTM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2336, 'GHATAMPUR', '209208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/GTM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2337, 'GHATAMPUR', '209209', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/GTM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2338, 'BILHAUR', '209210', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2339, 'GHATAMPUR', '209214', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/GTM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2340, 'KANPUR', '209217', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/KNB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2341, 'KANPUR', '209261', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/KNB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2342, 'BILHAUR', '209293', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2343, 'AKBARPUR-KANPUR DEHAT', '209301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/ABK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2344, 'RASULABAD', '209302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/RLB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2345, 'AKBARPUR-KANPUR DEHAT', '209303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/ABK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2346, 'KANPUR ', '209304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/KNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2347, 'KANPUR ', '209305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/KNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2348, 'RASULABAD', '209306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/RLB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2349, 'AKBARPUR-KANPUR DEHAT', '209307', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/ABK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2350, 'GHATAMPUR', '209308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/GTM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2351, 'RASULABAD', '209309', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/RLB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2352, 'RASULABAD', '209310', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/RLB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2353, 'AKBARPUR-KANPUR DEHAT', '209311', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/ABK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2354, 'BHOGNIPUR', '209312', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BOU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2355, 'GHATAMPUR', '209393', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/GTM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2356, 'GHATAMPUR', '209401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/GTM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2357, 'BINDKI', '209402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BKI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2358, 'BINDKI', '209407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BKI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2359, 'KAIMGANJ', '209501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KMJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2360, 'KAIMGANJ', '209502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KMJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2361, 'KAIMGANJ', '209503', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KMJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2362, 'FARRUKHABAD', '209504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2363, 'KAIMGANJ', '209505', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KMJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2364, 'BIGHAPUR', '209506', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BXG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2365, 'FARRUKHABAD', '209601', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2366, 'FARRUKHABAD', '209602', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FOO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2367, 'FARRUKHABAD', '209608', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2368, 'FARRUKHABAD', '209621', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2369, 'FARRUKHABAD', '209622', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2370, 'FARRUKHABAD', '209624', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FOO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2371, 'FARRUKHABAD', '209625', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FOO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2372, 'FARRUKHABAD', '209651', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2373, 'FARRUKHABAD', '209652', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2374, 'KAIMGANJ', '209701', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KMJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2375, 'AURAIYA', '209715', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/AUA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2376, 'CHHIBRAMAU', '209720', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2377, 'CHHIBRAMAU', '209721', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2378, 'KANNAUJ', '209722', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/KAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2379, 'KANNAUJ', '209723', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/KAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2380, 'FARRUKHABAD', '209724', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2381, 'KANNAUJ', '209725', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KNJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2382, 'KANNAUJ', '209726', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KNJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2383, 'KANNAUJ', '209727', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KNJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2384, 'CHHIBRAMAU', '209728', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2385, 'CHHIBRAMAU', '209729', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2386, 'CHHIBRAMAU', '209731', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2387, 'KANNAUJ', '209732', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/KAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2388, 'KANNAUJ', '209733', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/KAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2389, 'KANNAUJ', '209734', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/KAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2390, 'CHHIBRAMAU', '209735', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2391, 'KANNAUJ', '209736', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/KAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2392, 'KANNAUJ', '209738', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/KAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2393, 'CHHIBRAMAU', '209739', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2394, 'CHHIBRAMAU', '209743', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2395, 'FARRUKHABAD', '209744', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2396, 'FARRUKHABAD', '209745', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2397, 'CHHIBRAMAU', '209746', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2398, 'CHHIBRAMAU', '209747', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2399, 'FARRUKHABAD', '209748', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2400, 'FARRUKHABAD', '209749', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2401, 'UNNAO', '209800', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/UNN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2402, 'UNNAO', '209801', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UNN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2403, 'UNNAO', '209808', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/UNN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2404, 'BACHRARAWAN', '209821', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BCN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2405, 'MOHANLALGANJ', '209822', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MLJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2406, 'UNNAO', '209825', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/UNN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2407, 'BIGHAPUR', '209827', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BXG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2408, 'UNNAO', '209831', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/UNN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2409, 'HASANGANJ', '209841', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HSJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2410, 'UNNAO', '209859', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/UNN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2411, 'UNNAO', '209860', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/UNN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2412, 'UNNAO', '209861', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KAO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2413, 'UNNAO', '209862', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/UNN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2414, 'BIGHAPUR', '209863', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BXG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2415, 'BIGHAPUR', '209864', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BXG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2416, 'BIGHAPUR', '209865', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BXG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2417, 'BIGHAPUR', '209866', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BXG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2418, 'BIGHAPUR', '209867', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BXG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2419, 'SAFIPUR', '209868', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/SAF', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2420, 'SAFIPUR', '209869', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/SAF', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2421, 'HASANGANJ', '209870', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HSJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2422, 'SAFIPUR', '209871', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/SAF', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2423, 'HASANGANJ', '209881', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HSJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2424, 'BANDA-UP', '210001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2425, 'BANDA-UP', '210002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2426, 'BANDA-UP', '210003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2427, 'BANDA-UP', '210004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2428, 'BANDA-UP', '210005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2429, 'BANDA-UP', '210006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2430, 'BANDA-UP', '210007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2431, 'BANDA-UP', '210008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2432, 'ALLAHABAD', '210009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2433, 'ALLAHABAD', '210010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2434, 'GHAZIABAD', '210011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GZC/GZC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2435, 'GHAZIABAD', '210012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/GZA/GZA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2436, 'ALLAHABAD', '210100', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2437, 'ALLAHABAD', '210101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2438, 'CHITRAKOOT', '210105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MP/KAH/CRK', 'MADHYA PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2439, 'ATARRA', '210120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/AAT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2440, 'BABERU', '210121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BBE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2441, 'BANDA-UP', '210123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2442, 'BABERU', '210125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BBE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2443, 'HAMIRPUR', '210126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HMU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2444, 'BABERU', '210128', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BBE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2445, 'ATARRA', '210129', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/AAT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2446, 'ATARRA', '210201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/AAT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2447, 'ATARRA', '210202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/AAT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2448, 'BABERU', '210203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BBE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2449, 'CHITRAKOOT', '210204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MP/KAH/CRK', 'MADHYA PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2450, 'CHITRAKOOT', '210205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MP/KAH/CRK', 'MADHYA PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2451, 'CHITRAKOOT', '210206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MP/KAH/CRK', 'MADHYA PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2452, 'MANJHANPUR', '210207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2453, 'KALYANPUR', '210208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KYN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2454, 'KALYANPUR', '210209', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KYN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2455, 'HAMIRPUR', '210301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HMU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2456, 'HAMIRPUR', '210302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HMU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2457, 'HAMIRPUR', '210341', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HMU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2458, 'MAHOBA', '210421', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MHO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2459, 'RATH', '210422', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/RHT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2460, 'MAHOBA', '210423', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MHO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2461, 'MAHOBA', '210424', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MHO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2462, 'BEWAR', '210425', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BEW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2463, 'MAHOBA', '210426', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MHO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2464, 'MAHOBA', '210427', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MHO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2465, 'RATH', '210428', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/RHT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2466, 'RATH', '210429', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/RHT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2467, 'RATH', '210430', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/RHT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2468, 'RATH', '210431', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/RHT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2469, 'BEWAR', '210432', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BEW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2470, 'MAHOBA', '210433', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MHO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2471, 'RATH', '210434', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/RHT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2472, 'BEWAR', '210501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BEW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2473, 'HAMIRPUR', '210502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HMU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2474, 'MAUDAHA', '210504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2475, 'HAMIRPUR', '210505', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HMU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2476, 'BEWAR', '210506', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BEW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2477, 'MAUDAHA', '210507', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2478, 'HAMIRPUR', '210526', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HMU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2479, 'MAUDAHA', '210594', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2480, 'ALLAHABAD', '211001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2481, 'ALLAHABAD', '211002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2482, 'ALLAHABAD', '211003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2483, 'ALLAHABAD', '211004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2484, 'ALLAHABAD', '211005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2485, 'ALLAHABAD', '211006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2486, 'ALLAHABAD', '211007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2487, 'ALLAHABAD', '211008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2488, 'ALLAHABAD', '211009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2489, 'ALLAHABAD', '211010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2490, 'ALLAHABAD', '211011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2491, 'ALLAHABAD', '211012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2492, 'ALLAHABAD', '211013', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2493, 'ALLAHABAD', '211014', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2494, 'ALLAHABAD', '211015', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2495, 'ALLAHABAD', '211016', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2496, 'ALLAHABAD', '211017', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2497, 'ALLAHABAD', '211018', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2498, 'ALLAHABAD', '211019', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2499, 'ALLAHABAD', '211021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2500, 'ALLAHABAD', '211022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2501, 'ALLAHABAD', '211104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2502, 'KORAON', '212104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KOO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2503, 'ALLAHABAD', '212105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2504, 'KORAON', '212106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KOO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2505, 'MAU-UP', '212107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MAX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2506, 'MAU-UP', '212108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MAX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2507, 'PHOOLPUR', '212109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2508, 'MEJA ROAD', '212111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2509, 'ALLAHABAD', '212128', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2510, 'ALLAHABAD', '212141', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2511, 'ALLAHABAD', '212165', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2512, 'MANJHANPUR', '212201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2513, 'CHAIL', '212202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2514, 'CHAIL', '212203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2515, 'KUNDA', '212204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2516, 'UNCHAHAR', '212205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2517, 'MANJHANPUR', '212206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2518, 'MANJHANPUR', '212207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2519, 'CHAIL', '212208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2520, 'CHAIL', '212211', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2521, 'CHAIL', '212212', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2522, 'CHAIL', '212213', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2523, 'MANJHANPUR', '212214', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2524, 'MAU-UP', '212215', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MAX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2525, 'CHAIL', '212216', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2526, 'MANJHANPUR', '212217', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2527, 'CHAIL', '212218', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2528, 'MEJA ROAD', '212301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2529, 'MEJA ROAD', '212302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2530, 'MEJA ROAD', '212303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2531, 'MEJA ROAD', '212304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2532, 'MEJA ROAD', '212305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2533, 'KORAON', '212306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KOO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2534, 'MEJA ROAD', '212307', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2535, 'MEJA ROAD', '212308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2536, 'HANDIA', '212401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/HNI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2537, 'PHOOLPUR', '212402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2538, 'PHOOLPUR', '212403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2539, 'PHOOLPUR', '212404', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2540, 'PHOOLPUR', '212405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2541, 'PHOOLPUR', '212410', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2542, 'PHOOLPUR', '212501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2543, 'ALLAHABAD', '212502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2544, 'ALLAHABAD', '212503', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2545, 'PHOOLPUR', '212507', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2546, 'PHOOLPUR', '212508', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2547, 'FATEHPUR', '212601', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FHP', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2548, 'FATEHPUR-UP', '212620', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/FTU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2549, 'FATEHPUR-UP', '212621', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/FTU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2550, 'KHAGA', '212622', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KGA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2551, 'KHAGA', '212623', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KGA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2552, 'HAMIRPUR', '212631', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HMU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2553, 'BINDKI', '212635', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BKI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2554, 'MANJHANPUR', '212641', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2555, 'FATEHPUR-UP', '212645', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/FTU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2556, 'KHAGA', '212650', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KGA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2557, 'FATEHPUR-UP', '212651', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/FTU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2558, 'KHAGA', '212652', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KGA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2559, 'KHAGA', '212653', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KGA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2560, 'FATEHPUR-UP', '212654', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/FTU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2561, 'KHAGA', '212655', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KGA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2562, 'KHAGA', '212656', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KGA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2563, 'BINDKI', '212657', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BKI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2564, 'KHAGA', '212658', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KGA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2565, 'GHATAMPUR', '212659', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/GTM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2566, 'KHAGA', '212660', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KGA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2567, 'BINDKI', '212661', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BKI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2568, 'FATEHPUR-UP', '212662', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/FTU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2569, 'FATEHPUR-UP', '212663', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/FTU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2570, 'BINDKI', '212664', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BKI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2571, 'BINDKI', '212665', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BKI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2572, 'BINDKI', '212666', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BKI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2573, 'LUCKNOW', '220006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2574, 'LUCKNOW', '220007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2575, 'BINDKI', '220009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BKI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2576, 'LUCKNOW', '220016', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2577, 'VARANASI', '221001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2578, 'VARANASI', '221002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2579, 'VARANASI', '221003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2580, 'VARANASI', '221004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2581, 'VARANASI', '221005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2582, 'VARANASI', '221006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2583, 'VARANASI', '221007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2584, 'VARANASI', '221008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2585, 'CHANDAULI', '221009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2586, 'VARANASI', '221010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2587, 'VARANASI', '221011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2588, 'VARANASI', '221012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2589, 'VARANASI', '221101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2590, 'VARANASI', '221102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/VRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2591, 'VARANASI', '221103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2592, 'SAIDPUR', '221104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/SDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2593, 'VARANASI', '221105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2594, 'VARANASI', '221106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2595, 'VARANASI', '221107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2596, 'VARANASI', '221108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2597, 'VARANASI', '221109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2598, 'CHANDAULI', '221110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2599, 'SAIDPUR', '221111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/SDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2600, 'VARANASI', '221112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2601, 'SAIDPUR', '221113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/SDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2602, 'SAIDPUR', '221115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/SDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2603, 'SAIDPUR', '221116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/SDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2604, 'SAIDPUR', '221131', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/SDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2605, 'PINDRA', '221201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PIN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2606, 'PINDRA', '221202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PIN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2607, 'PINDRA', '221204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PIN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2608, 'PINDRA', '221205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PIN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2609, 'PINDRA', '221206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PIN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2610, 'PINDRA', '221207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PIN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2611, 'PINDRA', '221208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PIN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2612, 'PINDRA', '221209', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PIN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2613, 'PINDRA', '221210', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PIN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2614, 'PINDRA', '221211', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PIN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2615, 'BHADOHI', '221301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2616, 'VARANASI', '221302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/VRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2617, 'SANT RAVIDAS NAGAR', '221303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BDH', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2618, 'BHADOHI', '221304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2619, 'CHUNAR', '221305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2620, 'VARANASI', '221306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BDH', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2621, 'CHUNAR', '221307', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2622, 'HANDIA', '221308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/HNI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2623, 'HANDIA', '221309', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/HNI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2624, 'HANDIA', '221310', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/HNI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2625, 'CHUNAR', '221311', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2626, 'BHADOHI', '221312', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2627, 'CHUNAR', '221313', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2628, 'BHADOHI', '221314', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2629, 'SANT RAVIDAS NAGAR', '221401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BDH', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2630, 'BHADOHI', '221402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2631, 'BHADOHI', '221403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2632, 'BHADOHI', '221404', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2633, 'BHADOHI', '221405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2634, 'BHADOHI', '221406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2635, 'BHADOHI', '221407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2636, 'BHADOHI', '221408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2637, 'BHADOHI', '221409', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2638, 'HANDIA', '221501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/HNI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2639, 'HANDIA', '221502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/HNI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2640, 'HANDIA', '221503', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/HNI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2641, 'HANDIA', '221504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/HNI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2642, 'HANDIA', '221505', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/HNI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2643, 'ALLAHABAD', '221506', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2644, 'PHOOLPUR', '221507', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2645, 'HANDIA', '221508', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/HNI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2646, 'BELTHARA ROAD', '221601', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BRX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2647, 'BELTHARA ROAD', '221602', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BRX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2648, 'BELTHARA ROAD', '221603', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BRX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2649, 'FORBESGANJ', '221605', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BH/BGH/FBG', 'BIHAR', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2650, 'RASRA', '221701', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/RSA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2651, 'MAUNATH BHANJAN', '221705', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/MUB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35');
INSERT INTO `pincodes` (`id`, `City`, `Pincode`, `Has_Cod`, `Has_Prepaid`, `Has_Reverse`, `Shiprocket_Delivery`, `Routing_Code`, `State`, `created_at`, `updated_at`) VALUES
(2652, 'RASRA', '221706', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/RSA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2653, 'RASRA', '221709', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/RSA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2654, 'RASRA', '221711', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/RSA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2655, 'RASRA', '221712', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/RSA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2656, 'BALLIA', '221713', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BXL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2657, 'BALLIA', '221714', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BXL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2658, 'BELTHARA ROAD', '221715', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BRX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2659, 'BELTHARA ROAD', '221716', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BRX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2660, 'SIKANDERPUR', '221717', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SKU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2661, 'BELTHARA ROAD', '221718', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BRX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2662, 'BALLIA', '221719', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BXL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2663, 'BELTHARA ROAD', '221720', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BRX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2664, 'JAUNPUR', '222001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2665, 'JAUNPUR', '222002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2666, 'JAUNPUR', '222003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2667, 'SHAHGANJ', '222101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2668, 'JAUNPUR', '222102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2669, 'JAUNPUR', '222103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2670, 'SHAHGANJ', '222104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2671, 'JAUNPUR', '222105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2672, 'JAUNPUR', '222107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2673, 'BADLAPUR', '222108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BJZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2674, 'BADLAPUR', '222109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BJZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2675, 'JAUNPUR', '222110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2676, 'BADLAPUR', '222111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BJZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2677, 'JAUNPUR', '222112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2678, 'SHAHGANJ', '222113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2679, 'BADLAPUR', '222125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BJZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2680, 'MACHHALI SHAHAR', '222127', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MCS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2681, 'JAUNPUR', '222128', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2682, 'KERAKAT', '222129', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UKT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2683, 'MACHHALI SHAHAR', '222131', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MCS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2684, 'JAUNPUR', '222132', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2685, 'JAUNPUR', '222133', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2686, 'MACHHALI SHAHAR', '222135', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MCS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2687, 'PINDRA', '222136', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PIN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2688, 'JAUNPUR', '222137', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2689, 'JAUNPUR', '222138', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2690, 'SHAHGANJ', '222139', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2691, 'BADLAPUR', '222141', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BJZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2692, 'KERAKAT', '222142', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UKT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2693, 'MACHHALI SHAHAR', '222143', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MCS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2694, 'MACHHALI SHAHAR', '222144', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MCS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2695, 'BADLAPUR', '222145', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BJZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2696, 'KERAKAT', '222146', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UKT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2697, 'KERAKAT', '222148', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UKT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2698, 'KERAKAT', '222149', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UKT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2699, 'JAUNPUR', '222161', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2700, 'MACHHALI SHAHAR', '222162', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MCS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2701, 'MACHHALI SHAHAR', '222165', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MCS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2702, 'KERAKAT', '222170', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UKT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2703, 'KERAKAT', '222172', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UKT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2704, 'BADLAPUR', '222175', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BJZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2705, 'JAUNPUR', '222180', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/JNU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2706, 'KERAKAT', '222181', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UKT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2707, 'MACHHALI SHAHAR', '222201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MCS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2708, 'PHOOLPUR', '222202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2709, 'BHADOHI', '222203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2710, 'PHOOLPUR', '222204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2711, 'DELHI WAREHOUSE', '222222', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'DWH', 'DELHI', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2712, 'PHOOLPUR', '222226', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2713, 'LAMBHUA', '222301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/LAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2714, 'LAMBHUA', '222302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/LAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2715, 'LAMBHUA', '222303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/LAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2716, 'LAMBHUA', '222304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/LAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2717, 'GURGAON CPC', '222333', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'GGE', 'HARYANA', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2718, 'FAIZABAD', '222411', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2719, 'LUCKNOW', '222601', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2720, 'SHAHGANJ', '223101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2721, 'SHAHGANJ', '223102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2722, 'SHAHGANJ', '223103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2723, 'SHAHGANJ', '223104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2724, 'SHAHGANJ', '223105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2725, 'SHAHGANJ', '223106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2726, 'SHAHGANJ', '223107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2727, 'BURHANPUR', '223221', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BZX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2728, 'SHAHGANJ', '223222', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2729, 'BURHANPUR', '223223', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BZX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2730, 'SHAHGANJ', '223224', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2731, 'SHAHGANJ', '223225', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2732, 'SHAHGANJ', '223226', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2733, 'AZAMGARH', '223227', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AZM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2734, 'FAIZABAD', '224001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2735, 'RUDAULI', '224116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2736, 'RUDAULI', '224117', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2737, 'RUDAULI', '224118', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2738, 'RUDAULI', '224119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2739, 'RUDAULI', '224120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2740, 'MILKIPUR', '224121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/MIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2741, 'AKBARPUR-AMBEDKAR NAGAR', '224122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2742, 'FAIZABAD', '224123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/FAZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2743, 'BURHANPUR', '224125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BZX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2744, 'RUDAULI', '224126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2745, 'MILKIPUR', '224127', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/MIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2746, 'TANDA', '224129', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2747, 'KUREBHAR', '224132', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KUE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2748, 'FAIZABAD', '224133', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2749, 'FAIZABAD', '224135', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2750, 'BURHANPUR', '224137', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BZX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2751, 'BURHANPUR', '224138', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BZX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2752, 'BURHANPUR', '224139', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BZX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2753, 'AKBARPUR-AMBEDKAR NAGAR', '224141', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2754, 'TANDA', '224143', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2755, 'AKBARPUR-AMBEDKAR NAGAR', '224145', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2756, 'AKBARPUR-AMBEDKAR NAGAR', '224146', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2757, 'BURHANPUR', '224147', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BZX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2758, 'AKBARPUR-AMBEDKAR NAGAR', '224149', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2759, 'AKBARPUR-AMBEDKAR NAGAR', '224151', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2760, 'AKBARPUR-AMBEDKAR NAGAR', '224152', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2761, 'MILKIPUR', '224153', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/MIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2762, 'TANDA', '224155', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2763, 'AKBARPUR-AMBEDKAR NAGAR', '224157', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2764, 'MILKIPUR', '224158', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/MIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2765, 'AKBARPUR-AMBEDKAR NAGAR', '224159', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2766, 'FAIZABAD', '224161', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/FAZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2767, 'MILKIPUR', '224164', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/MIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2768, 'SHAHGANJ', '224166', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/SHJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2769, 'FAIZABAD', '224167', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/FAZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2770, 'AKBARPUR-AMBEDKAR NAGAR', '224168', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2771, 'FAIZABAD', '224171', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/FAZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2772, 'BIKAPUR', '224172', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2773, 'BURHANPUR', '224175', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BZX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2774, 'BURHANPUR', '224176', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BZX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2775, 'BURHANPUR', '224181', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BZX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2776, 'FAIZABAD', '224182', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/FAZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2777, 'BURHANPUR', '224183', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BZX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2778, 'BURHANPUR', '224184', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BZX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2779, 'AKBARPUR-AMBEDKAR NAGAR', '224186', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2780, 'FAIZABAD', '224188', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/FAZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2781, 'RUDAULI', '224189', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2782, 'TANDA', '224190', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2783, 'BIKAPUR', '224195', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2784, 'FAIZABAD', '224198', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/FAZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2785, 'FAIZABAD', '224201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'FBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2786, 'BIKAPUR', '224202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2787, 'BIKAPUR', '224203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2788, 'BIKAPUR', '224204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2789, 'KUREBHAR', '224205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KUE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2790, 'BIKAPUR', '224206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2791, 'BIKAPUR', '224207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2792, 'BIKAPUR', '224208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2793, 'BIKAPUR', '224209', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2794, 'AKBARPUR-AMBEDKAR NAGAR', '224210', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2795, 'FAIZABAD', '224211', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/FAZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2796, 'TANDA', '224212', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2797, 'TANDA', '224213', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2798, 'TANDA', '224214', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2799, 'TANDA', '224215', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2800, 'TANDA', '224216', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2801, 'TANDA', '224217', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2802, 'TANDA', '224218', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2803, 'TANDA', '224219', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2804, 'TANDA', '224220', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2805, 'TANDA', '224221', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2806, 'TANDA', '224222', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2807, 'FAIZABAD', '224223', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/FAZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2808, 'MILKIPUR', '224224', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/MIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2809, 'MILKIPUR', '224225', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/MIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2810, 'LUCKNOW', '224226', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2811, 'AKBARPUR-AMBEDKAR NAGAR', '224227', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2812, 'MILKIPUR', '224228', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/MIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2813, 'MILKIPUR', '224229', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/MIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2814, 'AKBARPUR-AMBEDKAR NAGAR', '224230', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2815, 'AKBARPUR-AMBEDKAR NAGAR', '224231', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2816, 'BURHANPUR', '224232', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BZX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2817, 'HARAIYA', '224233', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/HRY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2818, 'TANDA', '224234', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/TAD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2819, 'AKBARPUR-AMBEDKAR NAGAR', '224235', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2820, 'AKBARPUR-AMBEDKAR NAGAR', '224236', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2821, 'AKBARPUR-AMBEDKAR NAGAR', '224237', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2822, 'AKBARPUR-AMBEDKAR NAGAR', '224238', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/AAN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2823, 'BIKAPUR', '224264', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2824, 'BIKAPUR', '224284', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2825, 'BIKAPUR', '224401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2826, 'BIKAPUR', '224409', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/BKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2827, 'BARABANKI', '225001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BBK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2828, 'BARABANKI', '225002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BBK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2829, 'BARA BANKI', '225003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BBK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2830, 'BARA BANKI', '225016', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BBK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2831, 'HAIDARGARH', '225119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/HAI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2832, 'HAIDARGARH', '225120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/HAI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2833, 'BARA BANKI', '225121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BBK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2834, 'BARA BANKI', '225122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BBK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2835, 'BARA BANKI', '225123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BBK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2836, 'HAIDARGARH', '225124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/HAI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2837, 'HAIDARGARH', '225125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/HAI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2838, 'HAIDARGARH', '225126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/HAI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2839, 'HAIDARGARH', '225131', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/HAI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2840, 'RAMNAGAR-UP', '225201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RRU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2841, 'RAMNAGAR-UP', '225202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RRU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2842, 'BARA BANKI', '225203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BBK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2843, 'BARA BANKI', '225204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BBK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2844, 'RAMNAGAR-UP', '225205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RRU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2845, 'RAMNAGAR-UP', '225206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RRU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2846, 'RAMNAGAR-UP', '225207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RRU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2847, 'RAMNAGAR-UP', '225208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RRU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2848, 'BARA BANKI', '225301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BBK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2849, 'BARA BANKI', '225302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BBK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2850, 'RAMNAGAR-UP', '225303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RRU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2851, 'RAMNAGAR-UP', '225304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RRU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2852, 'MAHMUDABAD', '225305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2853, 'MAHMUDABAD', '225306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2854, 'RUDAULI', '225401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2855, 'RAM SANEHI GHAT', '225402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RSG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2856, 'RAM SANEHI GHAT', '225403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RSG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2857, 'RAM SANEHI GHAT', '225404', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RSG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2858, 'RAM SANEHI GHAT', '225405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RSG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2859, 'RAM SANEHI GHAT', '225406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RSG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2860, 'RAM SANEHI GHAT', '225407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RSG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2861, 'RAM SANEHI GHAT', '225408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RSG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2862, 'RAM SANEHI GHAT', '225409', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RSG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2863, 'RUDAULI', '225411', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2864, 'BARA BANKI', '225412', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BBK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2865, 'RAM SANEHI GHAT', '225413', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RSG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2866, 'RAM SANEHI GHAT', '225414', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RSG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2867, 'RAM SANEHI GHAT', '225415', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RSG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2868, 'HAIDARGARH', '225416', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/HAI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2869, 'LUCKNOW', '226000', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2870, 'LUCKNOW', '226001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCH', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2871, 'LUCKNOW', '226002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCH', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2872, 'LUCKNOW', '226003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCH', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2873, 'LUCKNOW', '226004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCH', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2874, 'LUCKNOW', '226005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2875, 'LUCKNOW', '226006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2876, 'LUCKNOW', '226007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2877, 'LUCKNOW', '226008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2878, 'LUCKNOW', '226009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2879, 'LUCKNOW', '226010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LTG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2880, 'LUCKNOW', '226011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2881, 'LUCKNOW', '226012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2882, 'LUCKNOW', '226013', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2883, 'LUCKNOW', '226014', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2884, 'LUCKNOW', '226015', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2885, 'LUCKNOW', '226016', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2886, 'LUCKNOW', '226017', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2887, 'LUCKNOW', '226018', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCH', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2888, 'LUCKNOW', '226019', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2889, 'LUCKNOW', '226020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2890, 'LUCKNOW', '226021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2891, 'LUCKNOW', '226022', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2892, 'LUCKNOW', '226023', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2893, 'LUCKNOW', '226024', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2894, 'LUCKNOW', '226025', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2895, 'LUCKNOW', '226026', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2896, 'LUCKNOW', '226027', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2897, 'LUCKNOW', '226028', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2898, 'LUCKNOW', '226029', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2899, 'LUCKNOW', '226030', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2900, 'LUCKNOW', '226031', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2901, 'MALIHABAD', '226101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2902, 'MALIHABAD', '226102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2903, 'MALIHABAD', '226103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2904, 'MALIHABAD', '226104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2905, 'LUCKNOW', '226106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2906, 'LUCKNOW', '226201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2907, 'ITAUNJA', '226202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/INJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2908, 'ITAUNJA', '226203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/INJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2909, 'ITAUNJA', '226204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/INJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2910, 'LUCKNOW', '226301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2911, 'BACHRARAWAN', '226302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BCN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2912, 'MOHANLALGANJ', '226303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MLJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2913, 'LUCKNOW', '226401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2914, 'LUCKNOW', '226501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCH', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2915, 'MOHANLALGANJ', '227000', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MLJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2916, 'ITAUNJA', '227005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/INJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2917, 'LUCKNOW', '227015', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2918, 'LUCKNOW', '227101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2919, 'LUCKNOW', '227105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'LCG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2920, 'LUCKNOW', '227106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2921, 'MALIHABAD', '227107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2922, 'MALIHABAD', '227115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/MIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2923, 'LUCKNOW', '227116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2924, 'LUCKNOW', '227119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2925, 'LUCKNOW', '227120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2926, 'MOHANLALGANJ', '227125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MLJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2927, 'HAIDARGARH', '227131', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/HAI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2928, 'LUCKNOW', '227132', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2929, 'LUCKNOW', '227202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2930, 'ITAUNJA', '227205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/INJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2931, 'LUCKNOW', '227207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2932, 'LUCKNOW', '227208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LKD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2933, 'HAIDARGARH', '227302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/HAI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2934, 'LAMBHUA', '227304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/LAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2935, 'MOHANLALGANJ', '227305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MLJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2936, 'MOHANLALGANJ', '227308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MLJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2937, 'BACHRARAWAN', '227309', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BCN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2938, 'AMETHI', '227405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/AME', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2939, 'AMETHI', '227406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/AME', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2940, 'AMETHI', '227407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/AME', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2941, 'SULTANPUR', '227408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/STN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2942, 'GAURIGANJ', '227409', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2943, 'AMETHI', '227411', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/AME', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2944, 'AMETHI', '227412', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/AME', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2945, 'AMETHI', '227413', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/AME', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2946, 'MUSAFIRKHANA', '227801', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MFK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2947, 'MUSAFIRKHANA', '227802', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MFK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2948, 'MUSAFIRKHANA', '227805', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MFK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2949, 'MUSAFIRKHANA', '227806', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MFK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2950, 'GAURIGANJ', '227807', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2951, 'SULTANPUR', '227808', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/STN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2952, 'TILOI', '227809', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/TIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2953, 'HAIDARGARH', '227811', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/HAI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2954, 'SULTANPUR', '227812', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/STN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2955, 'MUSAFIRKHANA', '227813', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MFK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2956, 'KUREBHAR', '227814', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KUE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2957, 'MILKIPUR', '227815', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/MIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2958, 'TILOI', '227816', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/TIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2959, 'TILOI', '227817', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/TIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2960, 'SULTANPUR', '228001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SUL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2961, 'SULTANPUR', '228115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/STN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2962, 'SULTANPUR', '228118', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/STN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2963, 'SULTANPUR', '228119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/STN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2964, 'LAMBHUA', '228120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/LAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2965, 'KUREBHAR', '228121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KUE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2966, 'KUREBHAR', '228124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KUE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2967, 'KUREBHAR', '228125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KUE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2968, 'KADIPUR', '228131', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KKZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2969, 'KADIPUR', '228132', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KKZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2970, 'LAMBHUA', '228133', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/LAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2971, 'KUREBHAR', '228141', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KUE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2972, 'KUREBHAR', '228142', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KUE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2973, 'KADIPUR', '228145', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KKZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2974, 'KUREBHAR', '228150', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KUE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2975, 'KUREBHAR', '228151', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KUE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2976, 'SULTANPUR', '228155', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/STN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2977, 'SULTANPUR', '228159', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/STN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2978, 'KADIPUR', '228161', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KKZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2979, 'KADIPUR', '228171', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/FZH/KKZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2980, 'RAEBARELI', '229001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RBI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2981, 'RAI BAREILY', '229002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2982, 'RAI BAREILY', '229003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2983, 'RAEBARELI', '229010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RBI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2984, 'HAIDARGARH', '229103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/HAI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2985, 'RAI BAREILY', '229120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2986, 'RAI BAREILY', '229121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2987, 'RAI BAREILY', '229122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2988, 'BACHRARAWAN', '229123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BCN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2989, 'UNCHAHAR', '229124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2990, 'RAI BAREILY', '229125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2991, 'TILOI', '229126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/TIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2992, 'UNCHAHAR', '229127', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2993, 'RAI BAREILY', '229128', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2994, 'RAI BAREILY', '229129', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2995, 'RAI BAREILY', '229130', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2996, 'TILOI', '229135', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/TIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2997, 'LALGANJ-RAEBARELI', '229201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2998, 'LALGANJ-RAEBARELI', '229202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(2999, 'LALGANJ-RAEBARELI', '229203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3000, 'UNCHAHAR', '229204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3001, 'LALGANJ-RAEBARELI', '229205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3002, 'LALGANJ-RAEBARELI', '229206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3003, 'LALGANJ-RAEBARELI', '229207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3004, 'LALGANJ-RAEBARELI', '229208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3005, 'LALGANJ-RAEBARELI', '229209', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3006, 'LALGANJ-RAEBARELI', '229210', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3007, 'LALGANJ-RAEBARELI', '229211', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3008, 'LALGANJ-RAEBARELI', '229212', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3009, 'LALGANJ-RAEBARELI', '229215', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3010, 'LALGANJ-RAEBARELI', '229216', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LRB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3011, 'BACHRARAWAN', '229301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BCN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3012, 'RAI BAREILY', '229302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3013, 'RAI BAREILY', '229303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35');
INSERT INTO `pincodes` (`id`, `City`, `Pincode`, `Has_Cod`, `Has_Prepaid`, `Has_Reverse`, `Shiprocket_Delivery`, `Routing_Code`, `State`, `created_at`, `updated_at`) VALUES
(3014, 'TILOI', '229304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/TIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3015, 'GAURIGANJ', '229305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3016, 'RAI BAREILY', '229306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3017, 'GAURIGANJ', '229307', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3018, 'HAIDARGARH', '229308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/HAI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3019, 'TILOI', '229309', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/TIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3020, 'RAI BAREILY', '229310', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3021, 'BACHRARAWAN', '229311', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BCN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3022, 'MOHANLALGANJ', '229313', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MLJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3023, 'RAI BAREILY', '229315', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3024, 'RAI BAREILY', '229316', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3025, 'UNCHAHAR', '229401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3026, 'RAI BAREILY', '229402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/RBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3027, 'UNCHAHAR', '229403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3028, 'UNCHAHAR', '229404', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3029, 'RAEBARELI', '229405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RBI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3030, 'UNCHAHAR', '229406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3031, 'UNCHAHAR', '229407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3032, 'UNCHAHAR', '229408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3033, 'GAURIGANJ', '229409', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3034, 'GAURIGANJ', '229410', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3035, 'ALLAHABAD', '229411', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3036, 'ALLAHABAD', '229412', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ALL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3037, 'KUNDA', '229413', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3038, 'KUNDA', '229414', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3039, 'KUNDA', '229415', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3040, 'BIGHAPUR', '229501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BXG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3041, 'BIGHAPUR', '229502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BXG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3042, 'BIGHAPUR', '229503', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BXG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3043, 'BIGHAPUR', '229504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BXG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3044, 'TILOI', '229801', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/TIL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3045, 'HAIDARGARH', '229802', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/HAI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3046, 'HAIDARGARH', '229827', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/HAI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3047, 'HASANGANJ', '229841', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HSJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3048, 'HASANGANJ', '229881', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HSJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3049, 'PRATAPGARH-UP', '230001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3050, 'PRATAPGARH-UP', '230002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3051, 'BADLAPUR', '230121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BJZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3052, 'PRATAPGARH-UP', '230122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3053, 'BADLAPUR', '230123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BJZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3054, 'BADLAPUR', '230124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BJZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3055, 'GAURIGANJ', '230125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3056, 'PRATAPGARH-UP', '230126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3057, 'PRATAPGARH-UP', '230127', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3058, 'KUNDA', '230128', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3059, 'PRATAPGARH-UP', '230129', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3060, 'PRATAPGARH-UP', '230130', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3061, 'PRATAPGARH-UP', '230131', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3062, 'PRATAPGARH-UP', '230132', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3063, 'PRATAPGARH-UP', '230133', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3064, 'PRATAPGARH-UP', '230134', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3065, 'LAMBHUA', '230135', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/LAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3066, 'PRATAPGARH-UP', '230136', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3067, 'PRATAPGARH-UP', '230137', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3068, 'LAMBHUA', '230138', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/LAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3069, 'GAURIGANJ', '230139', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3070, 'UNCHAHAR', '230140', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3071, 'UNCHAHAR', '230141', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/UNC', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3072, 'PRATAPGARH-UP', '230142', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3073, 'KUNDA', '230143', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3074, 'PRATAPGARH-UP', '230144', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3075, 'PRATAPGARH-UP', '230145', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3076, 'PRATAPGARH-UP', '230146', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3077, 'KUNDA', '230201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3078, 'KUNDA', '230202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3079, 'KUNDA', '230204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KUD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3080, 'PHOOLPUR', '230301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3081, 'PRATAPGARH-UP', '230302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3082, 'PRATAPGARH-UP', '230303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3083, 'PRATAPGARH-UP', '230304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3084, 'PRATAPGARH-UP', '230305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3085, 'PHOOLPUR', '230306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/POO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3086, 'PRATAPGARH-UP', '230401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3087, 'PRATAPGARH-UP', '230402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3088, 'PRATAPGARH-UP', '230403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3089, 'PRATAPGARH-UP', '230404', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3090, 'PRATAPGARH-UP', '230405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3091, 'PRATAPGARH-UP', '230406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3092, 'AMETHI', '230501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/AME', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3093, 'PRATAPGARH-UP', '230502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/PGU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3094, 'AMETHI', '230503', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/AME', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3095, 'MIRZAPUR', '231001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MZU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3096, 'MIRZAPUR', '231002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MZU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3097, 'OBRA', '231205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/OBA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3098, 'ROBERTSGANJ', '231206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/RBT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3099, 'OBRA', '231207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/OBA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3100, 'DUDHINAGAR', '231208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/DUN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3101, 'ROBERTSGANJ', '231209', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/RBT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3102, 'MARIHAN', '231210', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MRX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3103, 'KORAON', '231211', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/KOO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3104, 'DUDHINAGAR', '231212', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/DUN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3105, 'ROBERTSGANJ', '231213', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/RBT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3106, 'ROBERTSGANJ', '231214', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/RBT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3107, 'ROBERTSGANJ', '231215', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/RBT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3108, 'ROBERTSGANJ', '231216', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/RBT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3109, 'RENUKOOT', '231217', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/RNQ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3110, 'ANPARA', '231218', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ANZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3111, 'OBRA', '231219', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/OBA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3112, 'ANPARA', '231220', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ANZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3113, 'RENUKOOT', '231221', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/RNQ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3114, 'ANPARA', '231222', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ANZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3115, 'BEEJPUR', '231223', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/BEJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3116, 'ANPARA', '231224', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ANZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3117, 'ANPARA', '231225', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ANZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3118, 'DUDHINAGAR', '231226', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/DUN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3119, 'CHUNAR', '231301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3120, 'CHAKIA', '231302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CAK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3121, 'MIRZAPUR', '231303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MZU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3122, 'CHUNAR', '231304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3123, 'CHUNAR', '231305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3124, 'CHUNAR', '231306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3125, 'MIRZAPUR', '231307', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MZU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3126, 'MARIHAN', '231309', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MRX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3127, 'MARIHAN', '231310', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MRX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3128, 'CHUNAR', '231311', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3129, 'MIRZAPUR', '231312', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MZU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3130, 'MEJA ROAD', '231313', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MJD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3131, 'CHUNAR', '231314', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3132, 'MIRZAPUR', '231501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MZU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3133, 'Bundi', '232001', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'RAJASTHAN', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3134, 'CHANDAULI', '232101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'VRS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3135, 'CHANDAULI', '232102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3136, 'CHAKIA', '232103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CAK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3137, 'CHANDAULI', '232104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3138, 'ZAMANIA', '232105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3139, 'ZAMANIA', '232106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3140, 'SAIDPUR', '232107', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/SDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3141, 'CHANDAULI', '232108', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3142, 'CHANDAULI', '232109', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3143, 'CHANDAULI', '232110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3144, 'ROBERTSGANJ', '232111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/RBT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3145, 'CHAKIA', '232112', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CAK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3146, 'CHAKIA', '232113', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CAK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3147, 'CHAKIA', '232114', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CAK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3148, 'CHAKIA', '232115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CAK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3149, 'CHAKIA', '232116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CAK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3150, 'CHAKIA', '232117', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CAK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3151, 'CHAKIA', '232118', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CAK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3152, 'CHANDAULI', '232119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3153, 'CHANDAULI', '232120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/CUI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3154, 'ZAMANIA', '232325', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3155, 'ZAMANIA', '232326', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3156, 'ZAMANIA', '232327', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3157, 'GHAZIPUR', '232328', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3158, 'ZAMANIA', '232329', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3159, 'ZAMANIA', '232330', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3160, 'ZAMANIA', '232331', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3161, 'GHAZIPUR', '232332', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3162, 'ZAMANIA', '232333', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3163, 'ZAMANIA', '232334', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3164, 'ZAMANIA', '232335', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3165, 'ZAMANIA', '232336', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3166, 'ZAMANIA', '232338', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3167, 'ZAMANIA', '232339', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3168, 'ZAMANIA', '232340', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3169, 'ZAMANIA', '232341', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3170, 'ZAMANIA', '232342', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3171, 'ZAMANIA', '232398', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/ZAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3172, 'GHAZIPUR', '233001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3173, 'GHAZIPUR', '233002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3174, 'SAIDPUR', '233221', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/SDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3175, 'MUHAMMADABAD', '233222', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MMM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3176, 'SAIDPUR', '233223', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/SDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3177, 'GHAZIPUR', '233224', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3178, 'MUHAMMADABAD', '233225', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MMM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3179, 'MARDAH', '233226', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MRD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3180, 'MUHAMMADABAD', '233227', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MMM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3181, 'MUHAMMADABAD', '233228', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MMM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3182, 'MUHAMMADABAD', '233229', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MMM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3183, 'MARDAH', '233230', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MRD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3184, 'MUHAMMADABAD', '233231', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MMM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3185, 'GHAZIPUR', '233232', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3186, 'MUHAMMADABAD', '233233', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MMM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3187, 'MUHAMMADABAD', '233234', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MMM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3188, 'MUHAMMADABAD', '233235', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MMM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3189, 'MARDAH', '233300', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MRD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3190, 'MUHAMMADABAD', '233301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MMM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3191, 'GHAZIPUR', '233302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3192, 'MUHAMMADABAD', '233303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MMM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3193, 'SAIDPUR', '233304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/SDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3194, 'GHAZIPUR', '233305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3195, 'SAIDPUR', '233306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/SDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3196, 'SAIDPUR', '233307', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/SDX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3197, 'MARDAH', '233308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MRD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3198, 'MARDAH', '233309', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MRD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3199, 'MARDAH', '233310', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/MRD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3200, 'GHAZIPUR', '233311', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3201, 'GHAZIPUR', '233312', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/ALH/GHZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3202, 'ALIGARH', '240101', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3203, 'HARDOI', '241001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HDO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3204, 'HARDOI', '241121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HDI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3205, 'HARDOI', '241122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HDI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3206, 'SHAHBAD-HARDOI', '241123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3207, 'SHAHBAD-HARDOI', '241124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3208, 'SHAHBAD-HARDOI', '241125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3209, 'SANDILA', '241126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/SDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3210, 'SANDILA', '241127', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/SDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3211, 'SANDILA', '241201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/SDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3212, 'ITAUNJA', '241202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/INJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3213, 'SANDILA', '241203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/SDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3214, 'SANDILA', '241204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/SDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3215, 'BILGRAM', '241301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BGZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3216, 'BILGRAM', '241302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BGZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3217, 'BILGRAM', '241303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BGZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3218, 'MISRIKAH', '241304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MIS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3219, 'SANDILA', '241305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/SDZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3220, 'HARDOI', '241401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HDI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3221, 'BILGRAM', '241402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BGZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3222, 'BILGRAM', '241403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/BGZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3223, 'PIHANI', '241404', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3224, 'HARDOI', '241405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/HDI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3225, 'PIHANI', '241406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3226, 'PIHANI', '241407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3227, 'SAFIPUR', '241501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/SAF', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3228, 'SAFIPUR', '241502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/SAF', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3229, 'SAFIPUR', '241503', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/SAF', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3230, 'SAFIPUR', '241504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/KPH/SAF', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3231, 'SHAHJAHANPUR', '242001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SJU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3232, 'SHAHJAHANPUR', '242005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SJU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3233, 'BABRALA', '242021', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3234, 'POWAYAN', '242042', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/POW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3235, 'SHAHJAHANPUR', '242101', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3236, 'SHAHJAHANPUR', '242102', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3237, 'PURANPUR', '242123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PPA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3238, 'JALALABAD-SHAHJAHANPUR', '242127', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/JLL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3239, 'JALALABAD-SHAHJAHANPUR', '242220', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/JLL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3240, 'JALALABAD-SHAHJAHANPUR', '242221', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/JLL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3241, 'JALALABAD-SHAHJAHANPUR', '242222', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/JLL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3242, 'JALALABAD-SHAHJAHANPUR', '242223', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/JLL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3243, 'SHAHJAHANPUR', '242225', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SJU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3244, 'SHAHJAHANPUR', '242226', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SJU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3245, 'SHAHJAHANPUR', '242227', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SJU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3246, 'SHAHJAHANPUR', '242228', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SJU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3247, 'SHAHJAHANPUR', '242230', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3248, 'SHAHJAHANPUR', '242232', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3249, 'SHAHJAHANPUR', '242234', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3250, 'TILHAR', '242301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/TIA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3251, 'DATAGANJ', '242302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DGJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3252, 'DATAGANJ', '242303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DGJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3253, 'TILHAR', '242305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/TIA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3254, 'SHAHJAHANPUR', '242306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SJU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3255, 'TILHAR', '242307', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/TIA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3256, 'TILHAR', '242308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/TIA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3257, 'TILHAR', '242309', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/TIA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3258, 'SHAHJAHANPUR', '242312', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3259, 'SHAHJAHANPUR', '242313', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3260, 'SHAHJAHANPUR', '242314', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3261, 'SHAHJAHANPUR', '242315', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3262, 'POWAYAN', '242401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/POW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3263, 'POWAYAN', '242402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/POW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3264, 'POWAYAN', '242404', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/POW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3265, 'POWAYAN', '242405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/POW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3266, 'SHAHJAHANPUR', '242406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SJU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3267, 'TILHAR', '242407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/TIA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3268, 'TILHAR', '242408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/TIA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3269, 'TILHAR', '242409', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/TIA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3270, 'SHAHJAHANPUR', '242411', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3271, 'SHAHJAHANPUR', '242413', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3272, 'BAREILLY', '243001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3273, 'BAREILLY', '243002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3274, 'BAREILLY', '243003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3275, 'BAREILLY', '243004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BRY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3276, 'BAREILLY', '243005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3277, 'BAREILLY', '243006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3278, 'BAREILLY', '243122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3279, 'FARIDPUR', '243123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3280, 'FARIDPUR', '243124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3281, 'FARIDPUR', '243125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3282, 'FARIDPUR', '243126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3283, 'FARIDPUR', '243127', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3284, 'BAHERI', '243201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BYB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3285, 'BAREILLY', '243202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BRY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3286, 'BAHERI', '243203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BYB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3287, 'BAHERI', '243204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BYB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3288, 'BAHERI', '243205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BYB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3289, 'BAHERI', '243206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BYB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3290, 'BAHERI', '243208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BYB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3291, 'BAHERI', '243215', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BYB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3292, 'AONIA', '243301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/AON', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3293, 'AONIA', '243302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/AON', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3294, 'SHAHBAD-RAMPUR', '243303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SAB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3295, 'MIRGANJ', '243304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MAJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3296, 'MIRGANJ', '243305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MAJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3297, 'AONIA', '243400', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/AON', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3298, 'AONIA', '243401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/AON', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3299, 'BAREILLY', '243402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BRY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3300, 'AONIA', '243403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/AON', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3301, 'AONIA', '243404', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/AON', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3302, 'NAWABGANJ', '243406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NWB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3303, 'NAWABGANJ', '243407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NWB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3304, 'NAWABGANJ', '243408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NWB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3305, 'BAREILLY', '243501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BRY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3306, 'BAREILLY', '243502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3307, 'FARIDPUR', '243503', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3308, 'MIRGANJ', '243504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MAJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3309, 'BILASPUR-UP', '243505', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BXU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3310, 'FARIDPUR', '243506', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/FRI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3311, 'BAHERI', '243509', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BYB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3312, 'BUDAUN', '243601', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3313, 'DATAGANJ', '243630', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DGJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3314, 'DATAGANJ', '243631', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DGJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3315, 'BISAULI', '243632', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BBS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3316, 'BISAULI', '243633', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BBS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3317, 'BUDAUN', '243634', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3318, 'DATAGANJ', '243635', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DGJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3319, 'SAHASWAN', '243636', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SSW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3320, 'BUDAUN', '243637', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3321, 'SAHASWAN', '243638', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SSW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3322, 'BUDAUN', '243639', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3323, 'KAIMGANJ', '243641', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KMJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3324, 'KAIMGANJ', '243642', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KMJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3325, 'KAIMGANJ', '243643', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/KMJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3326, 'MIRGANJ', '243701', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MAJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3327, 'RAMPUR', '243702', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3328, 'BISAULI', '243720', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BBS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3329, 'BABRALA', '243722', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3330, 'CHANDAUSI', '243723', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CSI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3331, 'BISAULI', '243724', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BBS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3332, 'BISAULI', '243725', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BBS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3333, 'AONIA', '243726', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/AON', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3334, 'ANUPSHAHAR', '243727', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/AUS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3335, 'BABRALA', '243751', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BBL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3336, 'MORADABAD', '244001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3337, 'MORADABAD', '244002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MOR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3338, 'SAMBHAL', '244003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SHL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3339, 'MORADABAD', '244004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MOR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3340, 'MORADABAD', '244102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3341, 'MORADABAD', '244103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MOR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3342, 'MORADABAD', '244104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MOR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3343, 'MORADABAD', '244105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MOR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3344, 'JYOTIBA PHULE NAGAR', '244221', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'AMO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3345, 'AMROHA', '244222', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/AMO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3346, 'HASANPUR', '244223', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/HSA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3347, 'KANTH', '244224', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/KNT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3348, 'GAJRAULA', '244225', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/GAJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3349, 'KANTH', '244226', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/KNT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3350, 'KANTH', '244227', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-6/5C/227', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3351, 'GAJRAULA', '244231', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/GAJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3352, 'GAJRAULA', '244232', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/GAJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3353, 'GAJRAULA', '244235', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/GAJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3354, 'GAJRAULA', '244236', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/GAJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3355, 'HASANPUR', '244241', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/HSA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3356, 'HASANPUR', '244242', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/HSA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3357, 'AMROHA', '244245', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/AMO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3358, 'MORADABAD', '244249', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MOR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3359, 'AMROHA', '244251', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/AMO', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3360, 'HASANPUR', '244255', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/HSA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3361, 'SAMBHAL', '244301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SHL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3362, 'SAMBHAL', '244302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SHL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3363, 'SAMBHAL', '244303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SHL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3364, 'SAMBHAL', '244304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SHL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3365, 'THAKURDWARA', '244401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/THK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3366, 'MORADABAD', '244402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MOR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3367, 'CHANDAUSI', '244410', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CSI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3368, 'BILARI', '244411', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BMI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3369, 'CHANDAUSI', '244412', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CSI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3370, 'BILARI', '244413', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BMI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3371, 'CHANDAUSI', '244414', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/CSI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3372, 'BILARI', '244415', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BMI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3373, 'BILARI', '244443', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BMI', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3374, 'KANTH', '244500', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/KNT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3375, 'KANTH', '244501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/KNT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3376, 'KANTH', '244502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/KNT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3377, 'MORADABAD', '244504', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MOR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35');
INSERT INTO `pincodes` (`id`, `City`, `Pincode`, `Has_Cod`, `Has_Prepaid`, `Has_Reverse`, `Shiprocket_Delivery`, `Routing_Code`, `State`, `created_at`, `updated_at`) VALUES
(3378, 'THAKURDWARA', '244601', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/THK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3379, 'THAKURDWARA', '244602', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/THK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3380, 'MIRGANJ', '244701', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MAJ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3381, 'MORADABAD', '244711', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MOR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3382, 'KASHIPUR', '244712', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UK/MEH/KPV', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3383, 'UDHAM SINGH NAGAR', '244713', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KHX', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3384, 'KASHIPUR', '244714', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UK/MEH/KPV', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3385, 'KASHIPUR', '244715', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UK/MEH/KPV', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3386, 'KASHIPUR', '244716', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UK/MEH/KPV', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3387, 'MORADABAD', '244801', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MOR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3388, 'RAMPUR', '244823', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3389, 'RAMPUR', '244901', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RMP', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3390, 'RAMPUR', '244902', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/RPZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3391, 'BILASPUR-UP', '244921', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BXU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3392, 'SHAHBAD-RAMPUR', '244922', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SAB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3393, 'BILASPUR-UP', '244923', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BXU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3394, 'SUAR', '244924', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SUU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3395, 'SUAR', '244925', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/SUU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3396, 'RAMPUR', '244926', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/RPZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3397, 'RAMPUR', '244927', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/RPZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3398, 'BILASPUR-UP', '244928', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BXU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3399, 'HAPUR', '245101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HPU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3400, 'HAPUR', '245102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HPU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3401, 'HAPUR', '245201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HPU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3402, 'SIYANA', '245205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3403, 'HAPUR', '245206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HPU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3404, 'SIYANA', '245207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3405, 'SIYANA', '245208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3406, 'DHAULANA', '245301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/DUL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3407, 'HAPUR', '245304', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/HPU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3408, 'SIYANA', '245401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3409, 'SIYANA', '245402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3410, 'SIYANA', '245403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3411, 'GULAWATI', '245404', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'N/S-06/24C/404', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3412, 'SIYANA', '245405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3413, 'JEWAR', '245406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/JEW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3414, 'SIYANA', '245407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3415, 'DHAULANA', '245408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/I1H/DUL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3416, 'BULANDSHAHR', '245409', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/I1H/BUL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3417, 'SIYANA', '245411', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3418, 'SIYANA', '245412', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SIY', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3419, 'KOTDWAR', '246149', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-6/12A/149', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3420, 'SRINAGAR GARHWAL', '246174', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-6/12B/174', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3421, 'MORADABAD', '246247', 'TRUE', 'TRUE', 'FALSE', 'z_d', '', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3422, 'KARNAPRAYAG', '246429', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-6/21A/429', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3423, 'KARNAPRAYAG', '246444', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-6/21A/444', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3424, 'KARNAPRAYAG', '246455', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-6/21A/455', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3425, 'BIJNOR', '246700', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BJN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3426, 'BIJNOR', '246701', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BJN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3427, 'BIJNOR', '246721', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BJN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3428, 'THAKURDWARA', '246722', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/THK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3429, 'NAJIBABAD', '246723', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NJB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3430, 'NAGINA', '246724', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NAG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3431, 'CHANDPUR', '246725', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/CHN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3432, 'CHANDPUR', '246726', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/CHN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3433, 'CHANDPUR', '246727', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/CHN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3434, 'BIJNOR', '246728', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BJN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3435, 'CHANDPUR', '246729', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/CHN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3436, 'NAJIBABAD', '246731', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NJB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3437, 'NAJIBABAD', '246732', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NJB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3438, 'DHAMPUR', '246733', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/DAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3439, 'CHANDPUR', '246734', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/CHN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3440, 'DHAMPUR', '246735', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/DAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3441, 'CHANDPUR', '246736', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/CHN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3442, 'CHANDPUR', '246737', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/CHN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3443, 'CHANDPUR', '246738', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/CHN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3444, 'KANTH', '246745', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/KNT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3445, 'DHAMPUR', '246746', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/DAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3446, 'DHAMPUR', '246747', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/DAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3447, 'NAJIBABAD', '246748', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NJB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3448, 'NAJIBABAD', '246749', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NJB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3449, 'NAJIBABAD', '246751', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NJB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3450, 'DHAMPUR', '246761', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/DAM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3451, 'NAGINA', '246762', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NAG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3452, 'NAJIBABAD', '246763', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NJB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3453, 'NAGINA', '246764', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NAG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3454, 'NAGINA', '246765', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NAG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3455, 'NAGINA', '246766', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NAG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3456, 'SAHARANPUR', '247001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SPX', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3457, 'SAHARANPUR', '247002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SPR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3458, 'BEHAT', '247111', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BEZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3459, 'BEHAT', '247120', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BEZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3460, 'BEHAT', '247121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BEZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3461, 'BEHAT', '247122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BEZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3462, 'BEHAT', '247129', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BEZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3463, 'SAHARANPUR', '247231', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SPR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3464, 'SAHARANPUR', '247232', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SPR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3465, 'SAHARANPUR', '247239', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SPR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3466, 'SAHARANPUR', '247323', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SPR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3467, 'SAHARANPUR', '247325', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SPR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3468, 'NAKUR', '247340', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NAK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3469, 'NAKUR', '247341', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NAK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3470, 'NAKUR', '247342', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NAK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3471, 'JALALABAD-SHAMLI', '247343', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/JLM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3472, 'SAHARANPUR', '247402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SPR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3473, 'SAHARANPUR', '247451', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SPR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3474, 'JALALABAD-SHAMLI', '247452', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/JLM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3475, 'DEOBAND', '247453', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/DOB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3476, 'DEOBAND', '247470', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/DOB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3477, 'DEOBAND', '247471', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/DOB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3478, 'DEOBAND', '247551', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/DOB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3479, 'DEOBAND', '247554', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/DOB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3480, 'ROORKEE', '247656', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ROO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3481, 'HARIDWAR', '247661', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'BGP', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3482, 'BEHAT', '247662', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BEZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3483, 'ROORKEE', '247663', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/LKS', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3484, 'HARIDWAR', '247664', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HRD', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3485, 'ROORKEE', '247665', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ROO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3486, 'ROORKEE', '247666', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ROO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3487, 'HARIDWAR', '247667', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'ROO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3488, 'ROORKEE', '247668', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ROO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3489, 'SAHARANPUR', '247669', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SPR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3490, 'ROORKEE', '247670', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/ROO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3491, 'ROORKEE', '247671', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/LKS', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3492, 'SAHARANPUR', '247672', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SPR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3493, 'SAHARANPUR', '247673', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SPR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3494, 'SAHARANPUR', '247769', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SPR', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3495, 'SHAMLI', '247771', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SLM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3496, 'JALALABAD-SHAMLI', '247772', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/JLM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3497, 'SHAMLI', '247773', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SLM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3498, 'SHAMLI', '247774', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SLM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3499, 'SHAMLI', '247775', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SLM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3500, 'SHAMLI', '247776', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SLM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3501, 'JALALABAD-SHAMLI', '247777', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/JLM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3502, 'SHAMLI', '247778', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SLM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3503, 'DEHRADUN', '248001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3504, 'DEHRADUN', '248002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3505, 'DEHRADUN', '248003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3506, 'DEHRADUN', '248004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3507, 'DEHRADUN', '248005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3508, 'DEHRADUN', '248006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3509, 'DEHRADUN', '248007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3510, 'DEHRADUN', '248008', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3511, 'DEHRADUN', '248009', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3512, 'DEHRADUN', '248010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3513, 'Selaqui', '248011', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SLQ', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3514, 'DEHRADUN', '248012', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3515, 'DEHRADUN', '248013', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3516, 'DEHRADUN', '248014', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3517, 'Selaqui', '248015', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/SLQ', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3518, 'Dehradun', '248018', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-6/16B/018', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3519, 'DEHRADUN', '248102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3520, 'DEHRADUN', '248110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3521, 'DEHRADUN', '248115', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3522, 'DEHRADUN', '248116', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3523, 'DEHRADUN', '248119', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3524, 'DEHRADUN', '248121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3525, 'DEHRADUN', '248122', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3526, 'DEHRADUN', '248123', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3527, 'DEHRADUN', '248124', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3528, 'DEHRADUN', '248125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3529, 'DEHRADUN', '248126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3530, 'DEHRADUN', '248140', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DLJ', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3531, 'DEHRADUN', '248141', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3532, 'HARBERTPUR', '248142', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-6/15B/142', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3533, 'Doiwala', '248143', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DOW', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3534, 'RISHIKESH', '248144', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RSK', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3535, 'Doiwala', '248145', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DOW', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3536, 'DEHRADUN', '248146', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3537, 'DEHRADUN', '248147', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRC', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3538, 'DEHRADUN', '248148', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRC', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3539, 'DEHRADUN', '248158', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3540, 'DEHRADUN', '248159', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3541, 'DEHRADUN', '248160', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3542, 'DEHRADUN', '248161', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HRD', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3543, 'DEHRADUN', '248171', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3544, 'DEHRADUN', '248179', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'MUE', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3545, 'DEHRADUN', '248195', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DRO', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3546, 'DEHRADUN', '248196', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3547, 'DEHRADUN', '248197', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SEL', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3548, 'DEHRADUN', '248198', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-6/15B/198', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3549, 'DEHRADUN', '248199', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3550, 'DEHRADUN', '248201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3551, 'Doiwala', '248202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DOW', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3552, 'DEHRADUN', '248203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/DRB', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3553, 'RISHIKESH', '249137', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RSK', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3554, 'RISHIKESH', '249191', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RSK', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3555, 'DEHRADUN', '249201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RKH', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3556, 'DEHRADUN', '249202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RKH', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3557, 'DEHRADUN', '249203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RKH', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3558, 'DEHRADUN', '249204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RKH', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3559, 'RISHIKESH', '249205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RSK', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3560, 'RISHIKESH', '249206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RSK', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3561, 'PAURI GARHWAL', '249302', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'RKH', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3562, 'RISHIKESH', '249306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/RSK', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3563, 'HARIDWAR', '249401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HRD', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3564, 'HARIDWAR', '249402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HRD', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3565, 'HARIDWAR', '249403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HRD', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3566, 'HARIDWAR', '249404', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HRD', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3567, 'HARIDWAR', '249405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HRD', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3568, 'HARIDWAR', '249406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HR/SOH/HRD', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3569, 'HARIDWAR', '249407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HRD', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3570, 'HARIDWAR', '249408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HRD', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3571, 'HARIDWAR', '249409', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HRD', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3572, 'HARIDWAR', '249410', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HRD', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3573, 'HARIDWAR', '249411', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HRD', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3574, 'MEERUT', '250001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MCL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3575, 'MEERUT', '250002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MCL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3576, 'MEERUT', '250003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MCL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3577, 'MEERUT', '250004', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MCL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3578, 'MEERUT', '250005', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MCL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3579, 'MEERUT', '250006', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MEE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3580, 'MEERUT', '250007', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MEE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3581, 'MEERUT', '250010', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MEE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3582, 'MEERUT', '250013', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MEE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3583, 'MEERUT', '250020', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MEE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3584, 'BAGHPAT', '250101', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BTZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3585, 'MEERUT', '250102', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MEE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3586, 'MEERUT', '250103', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MCL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3587, 'MAWANA', '250104', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MWN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3588, 'MEERUT', '250105', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MCL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3589, 'MAWANA', '250106', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MWN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3590, 'MEERUT', '250110', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MDP', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3591, 'MEERUT', '250134', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MEE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3592, 'MODINAGAR', '250205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MDN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3593, 'MEERUT', '250211', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MEE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3594, 'SARDHANA', '250221', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SNZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3595, 'MAWANA', '250222', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MWN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3596, 'SARDHANA', '250223', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SNZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3597, 'NAGINA', '250233', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/NAG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3598, 'SARDHANA', '250341', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SNZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3599, 'SARDHANA', '250342', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SNZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3600, 'SARDHANA', '250344', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SNZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3601, 'BARAUT', '250345', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BUT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3602, 'MAWANA', '250401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MWN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3603, 'MAWANA', '250402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MWN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3604, 'MAWANA', '250403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MWN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3605, 'MAWANA', '250404', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MWN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3606, 'MAWANA', '250406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MWN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3607, 'MEERUT', '250501', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MEE', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3608, 'SARDHANA', '250502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SNZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3609, 'BAGHPAT', '250601', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BTZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3610, 'BARAUT', '250602', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BUT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3611, 'BARAUT', '250604', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BUT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3612, 'BAGHPAT', '250606', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BTZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3613, 'BAGHPAT', '250609', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BTZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3614, 'BARAUT', '250611', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BUT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3615, 'BARAUT', '250612', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BUT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3616, 'BAGHPAT', '250615', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BTZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3617, 'BARAUT', '250617', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BUT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3618, 'BARAUT', '250619', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BUT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3619, 'BARAUT', '250620', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BUT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3620, 'BARAUT', '250621', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BUT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3621, 'BARAUT', '250622', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BUT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3622, 'BARAUT', '250623', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BUT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3623, 'BARAUT', '250625', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BUT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3624, 'BAGHPAT', '250626', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/BTZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3625, 'MUZAFFARNAGAR', '251001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DMZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3626, 'MUZAFFARNAGAR', '251002', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DMZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3627, 'MUZAFFARNAGAR', '251003', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'DMZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3628, 'MUZZAFARNAGAR', '251201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MZN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3629, 'MUZZAFARNAGAR', '251202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MZN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3630, 'MUZZAFARNAGAR', '251203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MZN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3631, 'MUZZAFARNAGAR', '251210', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MZN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3632, 'SHAMLI', '251301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SLM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3633, 'SHAMLI', '251305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SLM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3634, 'MUZZAFARNAGAR', '251306', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MZN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3635, 'MUZZAFARNAGAR', '251307', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MZN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3636, 'MUZZAFARNAGAR', '251308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MZN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3637, 'SARDHANA', '251309', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SNZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3638, 'MUZZAFARNAGAR', '251310', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MZN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3639, 'MUZZAFARNAGAR', '251311', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MZN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3640, 'MUZZAFARNAGAR', '251314', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MZN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3641, 'MAWANA', '251315', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MWN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3642, 'MUZZAFARNAGAR', '251316', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MZN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3643, 'MUZZAFARNAGAR', '251317', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MZN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3644, 'MUZZAFARNAGAR', '251318', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MZN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3645, 'SHAMLI', '251319', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/SLM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3646, 'MAWANA', '251320', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MWN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3647, 'MUZZAFARNAGAR', '251327', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/MEH/MZN', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3648, 'SITAPUR', '261001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'TPU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3649, 'LAHARPUR', '261121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3650, 'SITAPUR', '261125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/STZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3651, 'SITAPUR', '261131', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/STZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3652, 'LAHARPUR', '261135', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3653, 'LAHARPUR', '261136', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3654, 'SITAPUR', '261141', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/STZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3655, 'BISWAN', '261145', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BWW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3656, 'PIHANI', '261151', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3657, 'BISWAN', '261201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BWW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3658, 'BISWAN', '261202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BWW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3659, 'MAHMUDABAD', '261203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3660, 'MAHMUDABAD', '261204', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MBD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3661, 'BISWAN', '261205', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BWW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3662, 'BISWAN', '261206', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/BWW', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3663, 'LAHARPUR', '261207', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3664, 'LAHARPUR', '261208', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/LAU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3665, 'SIDHAULI', '261301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/SDD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3666, 'SIDHAULI', '261302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/SDD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3667, 'SIDHAULI', '261303', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/SDD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3668, 'MISRIKAH', '261401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MIS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3669, 'MISRIKAH', '261402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MIS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3670, 'MISRIKAH', '261403', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MIS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3671, 'MISRIKAH', '261404', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/MIS', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3672, 'SITAPUR', '261405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/LKH/STZ', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3673, 'LAKHIMPUR', '261501', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'UP/BUH/LKM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3674, 'DHAURAHARA', '261502', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DUU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3675, 'MOHAMMADI', '261505', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MMD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3676, 'LAKHIMPUR', '261506', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'UP/BUH/LKM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3677, 'PILIBHIT', '262001', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3678, 'PILIBHIT', '262121', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3679, 'PURANPUR', '262122', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PPA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3680, 'PURANPUR', '262123', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PPA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3681, 'PURANPUR', '262124', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PPA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3682, 'PURANPUR', '262125', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PPA', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3683, 'BISALPUR', '262201', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BSL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3684, 'BISALPUR', '262202', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BSL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3685, 'BISALPUR', '262203', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/BSL', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3686, 'PILIBHIT', '262301', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3687, 'PILIBHIT', '262302', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3688, 'PILIBHIT', '262305', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PIB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3689, 'NANAKMATTA', '262308', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NKM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3690, 'TANAKPUR', '262309', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'N/S-06/2A/309', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3691, 'TANAKPUR', '262310', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'N/S-06/2A/310', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3692, 'NANAKMATTA', '262311', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NKM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3693, 'BAZPUR', '262401', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-3/2B/401', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3694, 'RUDRAPUR', '262402', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-6/6B/402', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3695, 'HALDWANI', '262404', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3696, 'UDHAM SINGH NAGAR', '262405', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'SIT', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3697, 'NAWABGANJ', '262406', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NWB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3698, 'NAWABGANJ', '262407', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NWB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3699, 'NAWABGANJ', '262408', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NWB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3700, 'NAWABGANJ', '262409', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NWB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3701, 'NAWABGANJ', '262410', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NWB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3702, 'NAWABGANJ', '262411', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NWB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3703, 'NAWABGANJ', '262412', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NWB', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3704, 'PIHANI', '262505', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/PII', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3705, 'KHERI', '262701', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MPK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3706, 'LAKHIMPUR', '262702', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'UP/BUH/LKM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3707, 'LAKHIMPUR', '262721', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'UP/BUH/LKM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3708, 'DHAURAHARA', '262722', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DUU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3709, 'DHAURAHARA', '262723', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DUU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3710, 'DHAURAHARA', '262724', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/DUU', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3711, 'LAKHIMPUR', '262725', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'UP/BUH/LKM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3712, 'LAKHIMPUR', '262726', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'UP/BUH/LKM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3713, 'LAKHIMPUR', '262727', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'UP/BUH/LKM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3714, 'LAKHIMPUR', '262728', 'TRUE', 'TRUE', 'FALSE', 'z_e', 'UP/BUH/LKM', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3715, 'GOLA GOKARANNATH', '262801', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/GGT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3716, 'KHERI', '262802', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'MPK', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3717, 'GOLA GOKARANNATH', '262803', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/GGT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3718, 'MOHAMMADI', '262804', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/MMD', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3719, 'GOLA GOKARANNATH', '262805', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/GGT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3720, 'GOLA GOKARANNATH', '262901', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/GGT', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3721, 'NIGHASAN', '262902', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NIG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3722, 'NIGHASAN', '262903', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NIG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3723, 'NIGHASAN', '262904', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NIG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3724, 'NIGHASAN', '262905', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NIG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3725, 'NIGHASAN', '262906', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NIG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3726, 'NIGHASAN', '262907', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NIG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3727, 'NIGHASAN', '262908', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UP/BUH/NIG', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3728, 'NAINITAL', '263001', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'N/S-03/5A/001', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3729, 'NAINITAL', '263002', 'FALSE', 'TRUE', 'FALSE', 'z_d', 'N/S-03/5A/002', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3730, 'Haldwani', '263126', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-06/10C/126', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3731, 'RAUDRAPUR', '263136', 'FALSE', 'TRUE', 'FALSE', 'z_d', '', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3732, 'NAINITAL', '263139', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HDW', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3733, 'NAINITAL', '263141', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'HDW', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3734, 'RUDRAPUR', '263143', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UK/BUH/RUP', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3735, 'RUDRAPUR', '263145', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RDP', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3736, 'RUDRAPUR', '263146', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UK/BUH/RUP', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3737, 'RUDRAPUR', '263147', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UK/BUH/RUP', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3738, 'UDHAM SINGH NAGAR', '263148', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KCH', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3739, 'RUDRAPUR', '263149', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-6/6B/149', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3740, 'RUDRAPUR', '263150', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-3/2B/150', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3741, 'SITARGANJ', '263151', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'N/S-6/17C/151', 'UTTAR PRADESH', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3742, 'RUDRAPUR', '263152', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'KCH', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3743, 'UDHAM SINGH NAGAR', '263153', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'RDP', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3744, 'RUDRAPUR', '263154', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UK/BUH/RUP', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35'),
(3745, 'RUDRAPUR', '263155', 'TRUE', 'TRUE', 'FALSE', 'z_d', 'UK/BUH/RUP', 'UTTARAKHAND', '2021-10-06 17:53:35', '2021-10-06 17:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 1,
  `title` varchar(500) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `title_slug` varchar(500) DEFAULT NULL,
  `title_hash` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `summary` varchar(5000) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `category_id` int(11) DEFAULT 0,
  `image_big` varchar(255) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `image_slider` varchar(255) DEFAULT NULL,
  `image_mid` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `image_mime` varchar(20) DEFAULT 'jpg',
  `image_storage` varchar(20) DEFAULT 'local',
  `optional_url` varchar(1000) DEFAULT NULL,
  `pageviews` int(11) DEFAULT 0,
  `need_auth` tinyint(1) DEFAULT 0,
  `is_slider` tinyint(1) DEFAULT 0,
  `slider_order` tinyint(1) DEFAULT 1,
  `is_featured` tinyint(1) DEFAULT 0,
  `featured_order` tinyint(1) DEFAULT 1,
  `is_recommended` tinyint(1) DEFAULT 0,
  `is_breaking` tinyint(1) DEFAULT 1,
  `is_scheduled` tinyint(1) DEFAULT 0,
  `visibility` tinyint(1) DEFAULT 1,
  `show_right_column` tinyint(1) DEFAULT 1,
  `post_type` varchar(50) DEFAULT 'post',
  `video_path` varchar(255) DEFAULT NULL,
  `video_storage` varchar(20) DEFAULT 'local',
  `image_url` varchar(2000) DEFAULT NULL,
  `video_url` varchar(2000) DEFAULT NULL,
  `video_embed_code` varchar(2000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `feed_id` int(11) DEFAULT NULL,
  `post_url` varchar(1000) DEFAULT NULL,
  `show_post_url` tinyint(1) DEFAULT 1,
  `image_description` varchar(500) DEFAULT NULL,
  `show_item_numbers` tinyint(1) DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `post_image_id` varchar(10) DEFAULT NULL,
  `post_selected_file_id` varchar(500) DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `lang_id`, `title`, `tags`, `title_slug`, `title_hash`, `keywords`, `summary`, `content`, `category_id`, `image_big`, `image_default`, `image_slider`, `image_mid`, `image_small`, `image_mime`, `image_storage`, `optional_url`, `pageviews`, `need_auth`, `is_slider`, `slider_order`, `is_featured`, `featured_order`, `is_recommended`, `is_breaking`, `is_scheduled`, `visibility`, `show_right_column`, `post_type`, `video_path`, `video_storage`, `image_url`, `video_url`, `video_embed_code`, `user_id`, `status`, `feed_id`, `post_url`, `show_post_url`, `image_description`, `show_item_numbers`, `updated_at`, `created_at`, `post_image_id`, `post_selected_file_id`, `added_by`) VALUES
(5, 1, 'The 10 most valuable waste management solutions providers', NULL, 'the-10-most-valuable-waste-management-solutions-providers', NULL, NULL, NULL, '<section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-8eed96d elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"8eed96d\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-d41efdc\" data-id=\"d41efdc\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-e957f96 elementor-widget elementor-widget-text-editor\" data-id=\"e957f96\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-text-editor elementor-clearfix\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><p style=\"margin-right: 0px; margin-bottom: 17px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">hen&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">making any move in a forward direction, we, human beings have a naïve tendency to leave ‘something’ behind. In the maddening rush to make forward advancements, the utter negligence of effects and conditions of ‘What we have left behind’ is a humongous problem which we are battling.</span><br><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">The case of advancing electronic industry at paramount pace resulting in piles of non-attended e-waste left behind is no different. However, every single problem comes with its own solution nearby. In the form of E-waste Management service providers, we have found the panacea to this problem too.</span></p><p style=\"margin-right: 0px; margin-bottom: 17px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO SYNERGY PVT. LTD.&nbsp;</span><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">&nbsp;is one amongst a few which have made a respectable and reputed mark of its own in the e-waste management sector. Be it with their advanced methodology of e-waste recycling or with their acceptance of innovations with changing times,&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO SYNERGY PVT. LTD.</span>&nbsp;is making all the right kind of noises that this industry needed for long. The noises of the rupturing of the status quo. The noises of bringing the long due changes.</span></p></div></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-8b01d7c elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"8b01d7c\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-d2558bc\" data-id=\"d2558bc\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-ba34d5c elementor-widget elementor-widget-heading\" data-id=\"ba34d5c\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><h5 class=\"elementor-heading-title elementor-size-default\" style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-size: 24px; font-weight: 800; font-style: inherit; vertical-align: baseline; color: rgb(35, 35, 35); line-height: 1;\">The Start which Mattered</h5></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-9855b1f elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"9855b1f\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-45c8263\" data-id=\"45c8263\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-8d5910a elementor-widget elementor-widget-text-editor\" data-id=\"8d5910a\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-text-editor elementor-clearfix\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">The&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO</span>&nbsp;Group of companies is a well-known name in the fields of top-branded IT products. After the establishment of&nbsp;</span><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO COMPUTERS PVT. LTD.<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">&nbsp;</span></span><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">in 1993, the company has pioneered in technology re-distribution while serving as a leading IT Rental Service and Solution Provider and imports of high-end electronic products.</span><br><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">From the environmental perspective, the significant advancement came once&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO</span>&nbsp;group established the e-waste management and IT asset disposition solutions through its associate sister concern&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO SYNERGY PVT. LTD</span></span><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">. &nbsp;</span><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">Since then, the company has served the country as Cradle-to-Cradle solution providers. Not only, do they sell the computer parts and accessories, but also, they provide the means to efficiently dispose or recycle the same once they attain the end of life.&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO SYNERGY PVT. LTD.</span>&nbsp;is committed to maintaining quality, trust, and reliability for bringing additional values to the customer’s investments. Their efforts are entirely dedicated to serving their customers to the highest level of satisfaction.</span></p></div></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-3c52b2a elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"3c52b2a\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-21fadb4\" data-id=\"21fadb4\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-0f16895 elementor-widget elementor-widget-heading\" data-id=\"0f16895\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><h5 class=\"elementor-heading-title elementor-size-default\" style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-size: 24px; font-weight: 800; font-style: inherit; vertical-align: baseline; color: rgb(35, 35, 35); line-height: 1;\">Brain Behind the Inception of SOGO</h5></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-ffbc3ee elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"ffbc3ee\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-4d8a4f7\" data-id=\"4d8a4f7\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-542d675 elementor-widget elementor-widget-text-editor\" data-id=\"542d675\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-text-editor elementor-clearfix\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">Mr G Jayamuni Rao,</span><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">&nbsp;the</span><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">&nbsp;</span>Chairman &amp; Managing Director<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">&nbsp;</span></span><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">of&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO</span>&nbsp;Group of Companies, is the guiding light enabling the continuous advancement of the company on the roads of success. &nbsp;He was judicious in gauging the fact that advanced technologies are the major contributors in discarding older electronic equipment as waste and that recycling is one critical aspect which is being overlooked. Until now, very few companies have realised the potential of this emerging business. He considered that the investment in this new sector would lead to a win-win situation for e-waste generator, recycler, and the government.</span><br><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">Moreover, the fact that it will further support the country tremendously by putting e-waste into productive use served as the motivation he required for setting of e-waste management business. The dedication and zeal to achieve success can be measured by the fact that he started his business journey as a travel agent but today, he leads a 300 -crore worth business of&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO</span>&nbsp;Group of Companies.</span></p></div></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-cc28f9a elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"cc28f9a\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; margin-top: 20px; margin-bottom: 50px; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-5f1b34a\" data-id=\"5f1b34a\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-9a4ad81 elementor-widget elementor-widget-text-editor\" data-id=\"9a4ad81\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-text-editor elementor-clearfix\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><blockquote style=\"margin-bottom: 0px; border: 0px; outline: 0px; padding: 0px 0px 0px 31px; font-size: 24px; font-weight: 700; font-style: inherit; vertical-align: baseline; display: inline-block; position: relative; z-index: 1; line-height: 40px; color: rgb(35, 35, 35);\"><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">“ Our efforts are dedicated for serving our customers to the best satisfaction even after post-sales”</p><p style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><cite style=\"margin: 15px 0px 0px; border: 0px; outline: 0px; padding: 0px; font-size: 14px; font-style: normal; vertical-align: baseline; display: block; position: relative; line-height: 1.3; color: rgb(197, 197, 197); text-transform: uppercase;\">-G JAYAMUNI RAO</cite></p></blockquote></div></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-11ce0de elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"11ce0de\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-2a6194d\" data-id=\"2a6194d\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-94d8273 elementor-widget elementor-widget-heading\" data-id=\"94d8273\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><h5 class=\"elementor-heading-title elementor-size-default\" style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-size: 24px; font-weight: 800; font-style: inherit; vertical-align: baseline; color: rgb(35, 35, 35); line-height: 1;\">Talent Development at SOGO</h5></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-e4d754a elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"e4d754a\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-140556c\" data-id=\"140556c\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-9b49466 elementor-widget elementor-widget-text-editor\" data-id=\"9b49466\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-text-editor elementor-clearfix\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">The company encourages their employees to take ownership of their jobs and to strive for personal excellence. They share knowledge of each activity of scientific e-waste management while providing referrals to do their job independently. It’s Vision and Mission to drive the company as a leading IT Infrastructure Solution Provider by providing focus on various Market Challenges with consistency in Excellence to its Customers.&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO SYNERGY PVT. LTD.</span>&nbsp;has the blend of success for themselves and service for the society in this aspect. They aim to be the top achiever in the process of e-waste by observing scientific methods of recycling as approved under the environment protection act. The company is consistently making efforts to becoming a role model in e-waste recycling for productive uses and recovery of precious metals.</span></p></div></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-0ab9f29 elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"0ab9f29\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-0925073\" data-id=\"0925073\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-963236c elementor-widget elementor-widget-heading\" data-id=\"963236c\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><h5 class=\"elementor-heading-title elementor-size-default\" style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-size: 24px; font-weight: 800; font-style: inherit; vertical-align: baseline; color: rgb(35, 35, 35); line-height: 1;\">Philosophy determines the Methodology</h5></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-fdda732 elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"fdda732\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-d86b4d6\" data-id=\"d86b4d6\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-b6f29a6 elementor-widget elementor-widget-text-editor\" data-id=\"b6f29a6\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-text-editor elementor-clearfix\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">While performing all E-waste Management Services,&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO SYNERGY PVT. LTD.</span>&nbsp;agrees to comply with all applicable permits of central Govt., State Govt., local laws and regulations all duly constituted authorities.</span><br><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO SYNERGY PVT. LTD.</span>&nbsp;has adopted the essence of the ZERO WASTE movement as a recycler so that the resources of e-waste do not need to be discarded. They strive to ensure that all electronic equipment be refurbished, reused and recycled instead of being dumped in a landfilled.</span><br><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">As a Recycler,&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO SYNERGY PVT. LTD.</span>&nbsp;goes for ZERO Waste Technology by Recycling and Re-using the electronic scrap material without any wastage in the Landfill or Dumping sites. By doing so, the environment is greatly benefitted, and these landfills can be put to more for productive uses such as agriculture and infrastructure development activities.</span></p></div></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-2de1e58 elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"2de1e58\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-06624b3\" data-id=\"06624b3\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-215d963 elementor-widget elementor-widget-heading\" data-id=\"215d963\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><h5 class=\"elementor-heading-title elementor-size-default\" style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-size: 24px; font-weight: 800; font-style: inherit; vertical-align: baseline; color: rgb(35, 35, 35); line-height: 1;\">Overcoming Challenges</h5></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-6294c8f elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"6294c8f\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-c75b7b0\" data-id=\"c75b7b0\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-cb63ed4 elementor-widget elementor-widget-text-editor\" data-id=\"cb63ed4\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-text-editor elementor-clearfix\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">The biggest challenge before the recycling industry is financial constraints in establishment of a sophisticated factory with machinery which does not harm the environment and ignorance. The unwillingness of the ones generating e-waste is also one major challenge in the way of safe recycling. In light of this, the recycler needs Govt. support to establish recycling facilities by observing stringent environmental regulations as well as manage a better model for recycling of e-waste.&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO SYNERGY PVT. LTD.</span>&nbsp;is well prepared to battle these with their tools of innovation and unwavering dedication.</span></p></div></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-33706aa elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"33706aa\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-ddc39a4\" data-id=\"ddc39a4\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-80d6733 elementor-widget elementor-widget-heading\" data-id=\"80d6733\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><h5 class=\"elementor-heading-title elementor-size-default\" style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-size: 24px; font-weight: 800; font-style: inherit; vertical-align: baseline; color: rgb(35, 35, 35); line-height: 1;\">Goals for the Future</h5></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-15ef42a elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"15ef42a\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-3032674\" data-id=\"3032674\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-2a9c16e elementor-widget elementor-widget-text-editor\" data-id=\"2a9c16e\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-text-editor elementor-clearfix\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">The primary objective of&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO SYNERGY PVT. LTD.</span>&nbsp;is to establish a recycling unit with the principle to ‘GO FOR ZERO WASTE’ to enable the Govt. to use Landfill/Dumping yard for other productive uses. The company also aims to increase the recycling rate by observing environmental regulations for proper disposal of e-waste by creating awareness among the generators on proper disposal of e-waste and start a recycling movement under the principle of “Reduce-Recycle-Reuse”. They are continually moving towards more sophisticated technologies for achieving the targets they have set for themselves and for the tomorrow they have dreamt of for the society.</span></p></div></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-a2d0e7c elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"a2d0e7c\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-e69deed\" data-id=\"e69deed\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-c8f6a38 elementor-widget elementor-widget-heading\" data-id=\"c8f6a38\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><h5 class=\"elementor-heading-title elementor-size-default\" style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-size: 24px; font-weight: 800; font-style: inherit; vertical-align: baseline; color: rgb(35, 35, 35); line-height: 1;\">Faith Brightens the Future</h5></div></div></div></div></div></div></div></section><section data-particle_enable=\"false\" data-particle-mobile-disabled=\"false\" class=\"elementor-section elementor-top-section elementor-element elementor-element-df23adf elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"df23adf\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; color: rgb(97, 97, 97); font-family: Muli; font-size: 16px;\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1170px;\"><div class=\"elementor-row\" style=\"margin: -10px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; width: calc(100% + 20px); display: flex;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-d1a1cf8\" data-id=\"d1a1cf8\" data-element_type=\"column\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-column-wrap elementor-element-populated\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; display: flex; width: 1190px;\"><div class=\"elementor-widget-wrap\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 10px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; position: relative; width: 1190px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-7fc73f7 elementor-widget elementor-widget-text-editor\" data-id=\"7fc73f7\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1170px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-text-editor elementor-clearfix\" style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><p style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">The past is never in our hands. All that we have in our control is the present and hope for the future. The best feature of&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO SYNERGY PVT. LTD.</span>&nbsp;is that the company is not only making continual efforts to safeguard our present but also, they are creating the much requisite awareness among the masses at large to secure our future.</span><br><span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline;\">Victory has always gone to the sides of the one who has the strength in faith and conviction in efforts.&nbsp;<span style=\"margin: 0px; border: 0px; outline: 0px; padding: 0px; font-family: inherit; font-weight: 700; font-style: inherit; vertical-align: baseline;\">SOGO SYNERGY PVT. LTD.</span>&nbsp;has a perfect blend of both. Undoubtedly, they will be victorious rider on the roads to cent percent efficient e-waste management, ensuring a cleaner, greener and better tomorrow.</span></p></div></div></div></div></div></div></div></div></section>', 0, 'uploads/blogs/serve/594461688733016.webp', NULL, 'uploads/blogs/serve/594461688733016.webp', 'uploads/blogs/serve/594461688733016.webp', 'uploads/blogs/serve/594461688733016.webp', 'jpg', 'local', NULL, 0, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, 1, NULL, 'article', NULL, 'local', NULL, NULL, NULL, 1, 1, NULL, NULL, 1, NULL, 1, '2023-07-07 07:00:16', '2023-07-07 07:00:16', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subparent_id` varchar(255) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `brands_id` int(11) DEFAULT NULL,
  `product_desc` text DEFAULT NULL,
  `product_actual_price` varchar(255) DEFAULT NULL,
  `product_selling_price` varchar(255) DEFAULT NULL,
  `product_min_order` varchar(255) DEFAULT NULL,
  `product_max_order` varchar(255) DEFAULT NULL,
  `product_sku_id` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `img_alt` varchar(255) DEFAULT NULL,
  `productgallery` varchar(255) DEFAULT NULL,
  `gallery_img_alt` varchar(255) DEFAULT NULL,
  `video_type` varchar(255) DEFAULT NULL,
  `product_video` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `is_featured` varchar(255) DEFAULT NULL,
  `flash_sale` varchar(255) DEFAULT NULL,
  `flash_price` varchar(255) DEFAULT NULL,
  `flash_price_start_date` varchar(255) DEFAULT NULL,
  `flash_price_end_date` varchar(255) DEFAULT NULL,
  `flash_product_status` varchar(255) DEFAULT NULL,
  `special_product` varchar(255) DEFAULT NULL,
  `special_price` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `length` varchar(255) DEFAULT NULL,
  `breadth` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `product_max_selling_price` varchar(255) DEFAULT NULL,
  `special_price_start_date` varchar(255) DEFAULT NULL,
  `special_price_end_date` varchar(255) DEFAULT NULL,
  `special_product_status` varchar(255) DEFAULT NULL,
  `product_short_desc` text DEFAULT NULL,
  `product_coupon` varchar(255) DEFAULT NULL,
  `category_discount` varchar(255) DEFAULT NULL,
  `category_discount_type` varchar(255) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `discount_pecent` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `added_by` varchar(100) DEFAULT NULL,
  `is_approved` enum('yes','no') NOT NULL DEFAULT 'no',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `additional_pay_on_delivery` varchar(255) DEFAULT NULL,
  `additional_return_within` varchar(255) DEFAULT NULL,
  `addtional_delivery_within` varchar(255) DEFAULT NULL,
  `addtional_size_and_fit` varchar(255) DEFAULT NULL,
  `addtional_material_care` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_desc` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `fb_og_type` varchar(255) DEFAULT NULL,
  `fb_og_url` varchar(255) DEFAULT NULL,
  `fb_og_title` varchar(255) DEFAULT NULL,
  `fb_og_desc` varchar(222) DEFAULT NULL,
  `twitter_og_type` varchar(222) DEFAULT NULL,
  `twitter_og_url` varchar(222) DEFAULT NULL,
  `twitter_og_title` varchar(222) DEFAULT NULL,
  `twitter_og_desc` varchar(222) DEFAULT NULL,
  `fb_og_image` varchar(222) DEFAULT NULL,
  `twitter_og_img` varchar(222) DEFAULT NULL,
  `highlights` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `parent_id`, `subparent_id`, `section_id`, `brands_id`, `product_desc`, `product_actual_price`, `product_selling_price`, `product_min_order`, `product_max_order`, `product_sku_id`, `photo`, `img_alt`, `productgallery`, `gallery_img_alt`, `video_type`, `product_video`, `video_url`, `is_featured`, `flash_sale`, `flash_price`, `flash_price_start_date`, `flash_price_end_date`, `flash_product_status`, `special_product`, `special_price`, `slug`, `length`, `breadth`, `height`, `weight`, `units`, `product_max_selling_price`, `special_price_start_date`, `special_price_end_date`, `special_product_status`, `product_short_desc`, `product_coupon`, `category_discount`, `category_discount_type`, `stock`, `discount_pecent`, `status`, `added_by`, `is_approved`, `created_at`, `updated_at`, `additional_pay_on_delivery`, `additional_return_within`, `addtional_delivery_within`, `addtional_size_and_fit`, `addtional_material_care`, `meta_title`, `meta_desc`, `meta_keywords`, `fb_og_type`, `fb_og_url`, `fb_og_title`, `fb_og_desc`, `twitter_og_type`, `twitter_og_url`, `twitter_og_title`, `twitter_og_desc`, `fb_og_image`, `twitter_og_img`, `highlights`) VALUES
(25, 'Product 123', NULL, NULL, 1, 4, '<p>Produc tdesct sc top potnsdvo  vsfsf </p>', '2500', NULL, '1', '10', NULL, 'images/webp/53951690716747.webp', NULL, '[\"images\\/webp\\/42731690716747.webp\",\"images\\/webp\\/72571690716748.webp\"]', NULL, NULL, NULL, NULL, 'no', 'no', NULL, NULL, NULL, NULL, NULL, NULL, 'product', NULL, NULL, NULL, NULL, NULL, '6000', NULL, NULL, NULL, 'sdsa jlf oplrfjis fjl yuf sfop afsl nf pasda', NULL, NULL, NULL, NULL, NULL, 'active', NULL, 'yes', '2023-07-30 11:32:28', '2023-08-05 18:01:13', 'yes', '0', NULL, NULL, NULL, NULL, NULL, 'Amsterdam,Sydney,Cairo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(26, 'Burberry', NULL, NULL, 2, 4, '<h6 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.714rem; padding: 0px; font-stretch: normal;\"><span style=\"box-sizing: inherit; margin: 0px;\">Burberry Touch For Women By Burberry Eau De Parfum Spray&nbsp;&nbsp;</span>BURBERRY TOUCH FOR WOMEN BY BURBERRY EAU DE PARFUM SPRAY&nbsp; BURBERRY TOUCH FOR WOMEN BY BURBERRY EAU DE PARFUM SPRAY&nbsp; BURBERRY TOUCH FOR WOMEN BY BURBERRY EAU DE PARFUM SPRAY&nbsp;</h6>', NULL, NULL, '1', '100', NULL, 'images/webp/94641690887573.webp', NULL, '[\"images\\/webp\\/37751690887574.webp\",\"images\\/webp\\/61681690887574.webp\",\"images\\/webp\\/58621690887574.webp\",\"images\\/webp\\/91681690887576.webp\"]', NULL, NULL, NULL, NULL, 'no', 'no', NULL, NULL, NULL, NULL, NULL, NULL, 'burberry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BURBERRY TOUCH FOR WOMEN BY BURBERRY EAU DE PARFUM SPRAY  BURBERRY TOUCH FOR WOMEN BY BURBERRY EAU DE PARFUM SPRAY', NULL, NULL, NULL, NULL, NULL, 'active', NULL, 'yes', '2023-08-01 10:59:36', '2023-08-01 10:59:36', 'yes', '0', NULL, NULL, NULL, NULL, NULL, 'Amsterdam,Sydney,Cairo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, 'Davidoff', NULL, NULL, 3, 9, '<p>Davidoff</p>', '100', NULL, '10', '100', NULL, 'images/webp/56031690890001.webp', NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'no', NULL, NULL, NULL, NULL, NULL, NULL, 'davidoff', NULL, NULL, NULL, NULL, NULL, '150', NULL, NULL, NULL, 'EDP', NULL, NULL, NULL, NULL, NULL, 'active', NULL, 'yes', '2023-08-01 11:40:01', '2023-08-01 11:40:01', 'yes', '0', NULL, NULL, NULL, NULL, NULL, 'Amsterdam,Sydney,Cairo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `product_actual_price` varchar(255) NOT NULL,
  `product_selling_price` varchar(255) NOT NULL,
  `attribute_id` varchar(255) NOT NULL,
  `attribute_value` varchar(255) NOT NULL,
  `is_default` enum('yes','no') NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_size_attributes`
--

CREATE TABLE `product_size_attributes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `msp` varchar(255) DEFAULT NULL,
  `flash_sale` varchar(255) DEFAULT NULL,
  `flash_price` varchar(255) DEFAULT NULL,
  `discount_pecent` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `length` varchar(10) NOT NULL DEFAULT '10',
  `width` varchar(10) NOT NULL DEFAULT '10',
  `height` varchar(10) NOT NULL DEFAULT '10',
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_size_attributes`
--

INSERT INTO `product_size_attributes` (`id`, `product_id`, `sku`, `size`, `msp`, `flash_sale`, `flash_price`, `discount_pecent`, `price`, `qty`, `image`, `length`, `width`, `height`, `created_at`, `updated_at`) VALUES
(1, 25, NULL, '10Ml', NULL, 'no', NULL, '', '10', 10, 'images/webp/53511690978278.webp', '11', '11', '11', '2023-07-30 11:48:28', '2023-08-08 04:00:07'),
(2, 26, 'PROD-L-001', '10ml', '6000', 'no', NULL, '17', '5000', 500, 'images/webp/53511690978278.webp', '10', '10', '10', '2023-08-01 11:00:02', '2023-08-01 11:00:02'),
(3, 26, NULL, '15ml', NULL, 'no', NULL, '', '8000', 500, 'images/webp/43611690979357.webp', '10', '10', '10', '2023-08-01 11:01:21', '2023-08-02 12:29:19'),
(4, 27, 'DVD-01', '10ml', '150', 'no', NULL, '34', '100', 10, NULL, '10', '10', '10', '2023-08-01 12:04:12', '2023-08-01 12:04:12'),
(5, 27, 'DVD-02', '10ml', '650', 'no', NULL, '24', '500', 20, NULL, '10', '10', '10', '2023-08-01 12:05:59', '2023-08-01 12:05:59'),
(7, 25, '', '5ML', NULL, 'no', NULL, '', '500', 10, 'images/webp/92731690977861.webp', '10', '10', '10', '2023-08-02 12:04:22', '2023-08-02 12:04:22'),
(8, 25, NULL, '5oz', NULL, 'yes', '900', '', '1200', 10, 'images/webp/26391691241081.webp', '10', '10', '10', '2023-08-05 13:11:22', '2023-08-05 13:14:24');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `heading` varchar(500) DEFAULT NULL,
  `project_content` text DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `yt_vdo` varchar(255) DEFAULT NULL,
  `show_on_home` int(11) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT 1,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `heading`, `project_content`, `featured_image`, `yt_vdo`, `show_on_home`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Waste Segregation', '<p class=\"text1 gap1\" style=\"margin-bottom: 2.196vw; font-size: 1.318vw; letter-spacing: 0.082vw; line-height: 1.3; color: rgb(61, 61, 59); font-family: Avenir; text-align: center;\">This is perhaps the easiest way to express our love for the environment, and we are taking up the challenge to make dry and wet waste segregation a habit for those living in the poorer neighbourhoods of cities. Our approach will be a combination of creating not just awareness and education but also of giving incentives for neighbourhoods that make waste segregation a part of their daily routine. This initiative will also reach out to housing societies, schools and offices to help them to earn the tag of Zero Waste Creators.</p><p class=\"text1 gap1\" style=\"margin-bottom: 2.196vw; font-size: 1.318vw; letter-spacing: 0.082vw; line-height: 1.3; color: rgb(61, 61, 59); font-family: Avenir; text-align: center;\">We took our waste segregation practice to a new realm by making the first zero-waste film in the country. Teaming up with Skrap, we managed over 16,138 kgs* of waste at the Chandigarh Kare Aashiqui film shoot from October 26 to December 21, 2020. Of this, 15,352 kgs or 95.1% was recycled. 578.7 kgs or 3.6% of non-recyclable waste was sent for co-processing/ incineration. 207.5 kgs or 1.3% was handed over to Municipality as Reject waste. Further, the food salvage efforts helped collect and distribute over 1,200 meals in low-income communities.</p>', 'uploads/blogs/serve/614021677758531.jpg', NULL, 1, 1, '2023-03-02 11:56:36', '2023-03-02 12:02:11'),
(6, 'Back to the Roots', '<p><span style=\"color: rgb(61, 61, 59); font-family: Avenir; font-size: 18.0039px; letter-spacing: 1.12012px; text-align: center;\">Let’s hug trees. But first, let’s plant them, and protect them – in the countryside, in cities, in skyscrapers even. We are finding unique ways of creating and protecting forests by involving individuals and corporates, and our focus is on urban forestation, creating forest areas to rehabilitate animals, as well as preserving existing forests. As with everything else, we are creating awareness and imparting education about the importance of living in harmony with nature and how forests are needed for survival – of animals and of us.</span><br></p>', 'uploads/blogs/serve/704311679808178.jpg', NULL, 1, 1, '2023-03-26 05:22:58', '2023-03-30 11:27:21'),
(7, 'Relief Operation', '<p><span style=\"color: rgb(61, 61, 59); font-family: Avenir; font-size: 18.0039px; letter-spacing: 1.12012px; text-align: center;\">The migrant daily-wage workers happened to be the worst-affected sections of our society due to the COVID lockdown. Deprived of their daily income and the means to return home, they are rendered helpless. At Ek Saath, we vowed to do everything in our capacity to support their cause and help them sustain this period. We managed to provide the essential rations to 12,000 such stranded families in dire need location across different areas in the city. Further, To help households without proper cooking facilities, our relief kitchen served over 5000 meals on a daily-basis to the needy families amounting to 1.5 lakh meals in total.</span><br></p>', 'uploads/blogs/serve/739971679808207.jpg', NULL, 1, 1, '2023-03-26 05:23:27', '2023-03-30 11:27:17'),
(8, 'Sustainable Development', '<p><span style=\"color: rgb(61, 61, 59); font-family: Avenir; font-size: 18.0039px; letter-spacing: 1.12012px; text-align: center;\">It is possible for all institutions to be Earth-friendly. We believe they are ready, but just don’t know how, or where to begin. Our aim is to help people choose a sustainable way of running businesses, schools, hospitals etc. through education, by creating options, and by enabling them to put appropriate systems in place. We will invest in programmes and ideas needed to bridge gaps that empower people to choose sustainability as a way of life.</span><br></p>', 'uploads/blogs/serve/119491679808284.jpg', NULL, 1, 1, '2023-03-26 05:24:44', '2023-03-26 15:39:13'),
(11, 'Celebrate Oceans', '<p class=\"text1\" style=\"font-size: 1.318vw; letter-spacing: 0.082vw; line-height: 1.3; color: rgb(61, 61, 59); font-family: Avenir; text-align: center;\">Of all places on Earth, the ocean is busiest with life. It is also the most fragile and vulnerable to pollution. The saddest part is, we can’t see the full extent of damage we are causing to this home of diverse life. Perhaps the only visible signs are things that wash up on our beaches. So that’s where we have started – with an ongoing activity to clean our beaches, awareness campaigns about the dangers of pollution, especially those caused by plastic waste, and by creating sustainable solutions to prevent and put an end to pollution.</p><p class=\"text1 gap1\" style=\"margin-bottom: 2.196vw; font-size: 1.318vw; letter-spacing: 0.082vw; line-height: 1.3; color: rgb(61, 61, 59); font-family: Avenir; text-align: center;\">With time, we will also go deeper with our activities that encompass protection and preservation of all marine life.</p>', 'uploads/blogs/serve/935901680955792.jpg', NULL, 0, 1, '2023-04-08 12:09:52', '2023-04-08 12:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `project_details`
--

CREATE TABLE `project_details` (
  `id` int(11) NOT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `heading` varchar(500) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `project_content` text DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `yt_vdo` varchar(255) DEFAULT NULL,
  `show_on_home` int(11) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT 1,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_details`
--

INSERT INTO `project_details` (`id`, `project_id`, `heading`, `slug`, `project_content`, `featured_image`, `yt_vdo`, `show_on_home`, `status`, `created_at`, `updated_at`) VALUES
(3, '3', 'Celebrate Oceans Project 1', 'Celebrate Oceans Project 1', '<p class=\"text1\" style=\"font-size: 1.318vw; letter-spacing: 0.082vw; line-height: 1.3; color: rgb(61, 61, 59); font-family: Avenir; text-align: center;\">Of all places on Earth, the ocean is busiest with life. It is also the most fragile and vulnerable to pollution. The saddest part is, we can’t see the full extent of damage we are causing to this home of diverse life. Perhaps the only visible signs are things that wash up on our beaches. So that’s where we have started – with an ongoing activity to clean our beaches, awareness campaigns about the dangers of pollution, especially those caused by plastic waste, and by creating sustainable solutions to prevent and put an end to pollution.</p><p class=\"text1 gap1\" style=\"margin-bottom: 2.196vw; font-size: 1.318vw; letter-spacing: 0.082vw; line-height: 1.3; color: rgb(61, 61, 59); font-family: Avenir; text-align: center;\">With time, we will also go deeper with our activities that encompass protection and preservation of all marine life.</p>', 'uploads/blogs/serve/231791680955878.jpg', NULL, 0, 1, '2023-04-08 12:11:18', '2023-04-12 11:06:08'),
(4, '3', 'Celebrate Oceans Project 2', 'Celebrate Oceans Project 2', '<p>causes&nbsp;Celebrate Oceans Project 2&nbsp;Celebrate Oceans Project 2&nbsp;Celebrate Oceans Project 2&nbsp;Celebrate Oceans Project 2&nbsp;Celebrate Oceans Project 2<br></p>', 'uploads/blogs/serve/407321681296943.png', NULL, 0, 1, '2023-04-12 10:55:43', '2023-04-12 11:05:57'),
(5, '3', 'Waste Segregation 1', 'Waste Segregation 1', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 'uploads/blogs/serve/882331681297510.jpg', NULL, 0, 1, '2023-04-12 11:05:10', '2023-04-12 11:05:10'),
(6, '3', 'Waste Segregation 2', 'Waste Segregation 2', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 'uploads/blogs/serve/281791681297542.jpg', NULL, 0, 1, '2023-04-12 11:05:42', '2023-04-12 11:05:42'),
(7, '3', 'Waste Segregation 3', 'Waste-Segregation-3', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 'uploads/blogs/serve/623941681297846.jpg', NULL, 0, 1, '2023-04-12 11:10:46', '2023-04-12 11:10:46');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `rating` varchar(25) DEFAULT NULL,
  `review` varchar(500) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `username`, `product_id`, `rating`, `review`, `status`, `created_at`, `updated_at`) VALUES
(1, '0', '25', '4', 'test', 0, '2023-08-09 12:48:12', '2023-08-09 12:48:12'),
(2, '0', '25', '4', 'test', 0, '2023-08-09 12:49:48', '2023-08-09 12:49:48'),
(3, '0', '25', '5', 'test', 0, '2023-08-09 12:50:22', '2023-08-09 12:50:22'),
(4, '0', '25', '2', 'test', 0, '2023-08-09 12:52:39', '2023-08-09 12:52:39'),
(5, NULL, '25', '5', 'get', 0, '2023-08-09 13:19:32', '2023-08-09 13:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Director', '1', '2023-01-01 09:12:37', '2023-03-01 16:38:00'),
(2, 'CTO', '1', '2023-01-01 09:13:24', '2023-01-01 09:14:36'),
(4, 'Advisory', '1', '2023-03-01 16:38:16', '2023-03-01 16:38:21'),
(5, 'Volunteers', '1', '2023-03-01 16:38:36', '2023-03-01 16:38:40'),
(6, 'Chairman & Co-Founder', '1', '2023-07-05 06:41:38', '2023-07-05 06:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `addedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_models`
--

CREATE TABLE `service_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_text_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_summary_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_bg_image_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_icon_image_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_text_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_summary_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_bg_image_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_icon_image_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_text_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_summary_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_bg_image_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_icon_image_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_models`
--

INSERT INTO `service_models` (`id`, `service_category`, `service_name`, `service_image`, `banner_image`, `service_summary`, `service_description`, `block_text_1`, `block_summary_1`, `block_bg_image_1`, `block_icon_image_1`, `block_text_2`, `block_summary_2`, `block_bg_image_2`, `block_icon_image_2`, `block_text_3`, `block_summary_3`, `block_bg_image_3`, `block_icon_image_3`, `upload_gallery`, `status`, `created_at`, `updated_at`, `url_slug`) VALUES
(6, 'none', 'Physical Asset Verification', 'uploads/blogs/serve/WhatsApp-Image-2021-02-08-at-7.19.34-PM-1-1.jpeg', 'uploads/blogs/serve/mining-machine.jpg', 'We securely process IT assets to be retired or reused. We follow strict disposal norms as per the central and state pollution control board.', '&nbsp;We securely process IT assets to be retired or reused. We follow strict disposal norms as per the central and state pollution control board.We securely process IT assets to be retired or reused. We follow strict disposal norms as per the central and state pollution control board.We securely process IT assets to be retired or reused. We follow strict disposal norms as per the central and state pollution control board.We securely process IT assets to be retired or reused. We follow strict disposal norms as per the central and state pollution control board.We securely process IT assets to be retired or reused. We follow strict disposal norms as per the central and state pollution control board.We securely process IT assets to be retired or reused. We follow strict disposal norms as per the central and state pollution control board.', 'Block Text 1', 'We securely process IT assets to be retired or reused. We follow strict disposal norms as per the central and state pollution control board.', 'uploads/blogs/serve/SOGO-LANDING-PAGE-ICONS_001.png', 'uploads/blogs/serve/mining-machine.jpg', 'Block Text 2', 'We securely process IT assets to be retired or reused. We follow strict disposal norms as per the central and state pollution control board.', 'uploads/blogs/serve/SOGO-LANDING-PAGE-ICONS_001.png', 'uploads/blogs/serve/mining-machine.jpg', 'Block Text 3', 'We securely process IT assets to be retired or reused. We follow strict disposal norms as per the central and state pollution control board.', 'uploads/blogs/serve/SOGO-LANDING-PAGE-ICONS_001.png', 'uploads/blogs/serve/mining-machine.jpg', '[\"uploads\\/blogs\\/serve\\/SOGO-LANDING-PAGE-ICONS_001.png\"]', '1', '2023-07-03 04:27:28', '2023-07-03 04:27:29', 'Physical Asset Verification'),
(7, 'data-destruction', 'Data Destruction Data Destruction', 'uploads/blogs/serve/data-destruction-icon.png', 'uploads/blogs/serve/data-destruction.png', 'Your privacy is important to us, we can guarantee the untraceable destruction of confidential data via on-site or off-site destruction methods.', 'Your privacy is important to us, we can guarantee the untraceable destruction of confidential data via on-site or off-site destruction methods.Your privacy is important to us, we can guarantee the untraceable destruction of confidential data via on-site or off-site destruction methods.Your privacy is important to us, we can guarantee the untraceable destruction of confidential data via on-site or off-site destruction methods.Your privacy is important to us, we can guarantee the untraceable destruction of confidential data via on-site or off-site destruction methods.Your privacy is important to us, we can guarantee the untraceable destruction of confidential data via on-site or off-site destruction methods.Your privacy is important to us, we can guarantee the untraceable destruction of confidential data via on-site or off-site destruction methods.Your privacy is important to us, we can guarantee the untraceable destruction of confidential data via on-site or off-site destruction methods.Your privacy is important to us, we can guarantee the untraceable destruction of confidential data via on-site or off-site destruction methods.Your privacy is important to us, we can guarantee the untraceable destruction of confidential data via on-site or off-site destruction methods.Your privacy is important to us, we can guarantee the untraceable destruction of confidential data via on-site or off-site destruction methods.Your privacy is important to us, we can guarantee the untraceable destruction of confidential data via on-site or off-site destruction methods.Your privacy is important to us, we can guarantee the untraceable destruction of confidential data via on-site or off-site destruction methods.Your privacy is important to us, we can guarantee the untraceable destruction of confidential data via on-site or off-site destruction methods.', 'Block Text 1', 'Shree Balaji Group is a trusted name for its quality control and customer oriented services. We are ISO 9001 certified company as well as recognized worldwide for best of our services and commitment.', 'uploads/blogs/serve/data-destruction.png', 'uploads/blogs/serve/data.png', 'Block Text 2', 'Shree Balaji Group is a trusted name for its quality control and customer oriented services. We are ISO 9001 certified company as well as recognized worldwide for best of our services and commitment.', 'uploads/blogs/serve/data-destruction.png', 'uploads/blogs/serve/data.png', 'Block Text 3', 'Shree Balaji Group is a trusted name for its quality control and customer oriented services. We are ISO 9001 certified company as well as recognized worldwide for best of our services and commitment.', 'uploads/blogs/serve/data-destruction.png', 'uploads/blogs/serve/data.png', '[\"uploads\\/blogs\\/serve\\/data-destruction.png\",\"uploads\\/blogs\\/serve\\/data-destruction-icon.png\",\"uploads\\/blogs\\/serve\\/mining-machine.jpg\",\"uploads\\/blogs\\/serve\\/SOGO-LANDING-PAGE-ICONS_001.png\"]', '1', '2023-07-03 04:51:26', '2023-07-05 08:24:37', 'data-destruction-data-destruction'),
(8, 'none', 'Mining', 'uploads/blogs/serve/data-destruction.png', 'uploads/blogs/serve/about-us-banner.jpg', 'Balaji Group Limited aims to be among the best mining companies in the world: global in outlook, while sensitive and responsive to national and local issues; efficient and able to capture the benefits of scale; organized in a way that streamlines decision making; and the ‘preferred developer’ in countries and communities where we wish to operate.', '<p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Balaji Group Limited aims to be among the best mining companies in the world: global in outlook, while sensitive and responsive to national and local issues; efficient and able to capture the benefits of scale; organized in a way that streamlines decision making; and the ‘preferred developer’ in countries and communities where we wish to operate.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">&nbsp;</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">At Balaji Group Limited, there is always a suite of quality projects under development or appraisal, and a portfolio of global exploration projects to ensure profitable development opportunities for the future.</p>', 'Block Text 1', 'Balaji Group Limited aims to be among the best mining companies in the world: global in outlook, while sensitive and responsive to national and local issues; efficient and able to capture the benefits of scale; organized in a way that streamlines decision making; and the ‘preferred developer’ in countries and communities where we wish to operate.\r\n\r\n \r\n\r\nAt Balaji Group Limited, there is always a suite of quality projects under development or appraisal, and a portfolio of global exploration projects to ensure profitable development opportunities for the future.', 'uploads/blogs/serve/education.png', 'uploads/blogs/serve/recycle.png', 'Block Text 2', 'Balaji Group Limited aims to be among the best mining companies in the world: global in outlook, while sensitive and responsive to national and local issues; efficient and able to capture the benefits of scale; organized in a way that streamlines decision making; and the ‘preferred developer’ in countries and communities where we wish to operate.\r\n\r\n \r\n\r\nAt Balaji Group Limited, there is always a suite of quality projects under development or appraisal, and a portfolio of global exploration projects to ensure profitable development opportunities for the future.', 'uploads/blogs/serve/mining-industry.png', 'uploads/blogs/serve/settings.png', 'Block Text 3', 'Balaji Group Limited aims to be among the best mining companies in the world: global in outlook, while sensitive and responsive to national and local issues; efficient and able to capture the benefits of scale; organized in a way that streamlines decision making; and the ‘preferred developer’ in countries and communities where we wish to operate.\r\n\r\n \r\n\r\nAt Balaji Group Limited, there is always a suite of quality projects under development or appraisal, and a portfolio of global exploration projects to ensure profitable development opportunities for the future.', 'uploads/blogs/serve/education.png', 'uploads/blogs/serve/settings.png', '[\"uploads\\/blogs\\/serve\\/data-destruction.png\"]', '1', '2023-07-05 05:54:55', '2023-07-05 05:54:55', 'mining'),
(9, 'none', 'Refinery', 'uploads/blogs/serve/data-destruction.png', 'uploads/blogs/serve/about-us-banner.jpg', 'Balaji Group Limited aims to be among the best mining companies in the world: global in outlook, while sensitive and responsive to national and local issues; efficient and able to capture the benefits of scale; organized in a way that streamlines decision making; and the ‘preferred developer’ in countries and communities where we wish to operate.', '<p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Balaji Group Limited aims to be among the best mining companies in the world: global in outlook, while sensitive and responsive to national and local issues; efficient and able to capture the benefits of scale; organized in a way that streamlines decision making; and the ‘preferred developer’ in countries and communities where we wish to operate.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">&nbsp;</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">At Balaji Group Limited, there is always a suite of quality projects under development or appraisal, and a portfolio of global exploration projects to ensure profitable development opportunities for the future.</p>', 'Block Text 1', 'At Balaji Group Limited, there is always a suite of quality projects under development or appraisal, and a portfolio of global exploration projects to ensure profitable development opportunities for the future.', 'uploads/blogs/serve/education.png', 'uploads/blogs/serve/mining-industry.png', 'Block Text 2', 'At Balaji Group Limited, there is always a suite of quality projects under development or appraisal, and a portfolio of global exploration projects to ensure profitable development opportunities for the future.', 'uploads/blogs/serve/education.png', 'uploads/blogs/serve/settings.png', 'Block Text 3', 'At Balaji Group Limited, there is always a suite of quality projects under development or appraisal, and a portfolio of global exploration projects to ensure profitable development opportunities for the future.', 'uploads/blogs/serve/recycle.png', 'uploads/blogs/serve/mining-industry.png', '[\"uploads\\/blogs\\/serve\\/about.jpg\",\"uploads\\/blogs\\/serve\\/data-destruction.png\",\"uploads\\/blogs\\/serve\\/mining-machine.jpg\"]', '1', '2023-07-05 06:04:24', '2023-07-05 06:04:24', 'refinery'),
(10, 'refinery', 'REFINING SERVICE', 'uploads/blogs/serve/data-destruction.png', 'uploads/blogs/serve/about-us-banner.jpg', 'Shree Balaji Group is a trusted name for its quality control and customer oriented services. We are ISO 9001 certified company as well as recognized worldwide for best of our services and commitment.', '<p><span style=\"color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Shree Balaji Group is a trusted name for its quality control and customer oriented services. We are ISO 9001 certified company as well as recognized worldwide for best of our services and commitment.</span><span style=\"color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Shree Balaji Group is a trusted name for its quality control and customer oriented services. We are ISO 9001 certified company as well as recognized worldwide for best of our services and commitment.</span><br></p>', 'Block Text 1', 'Shree Balaji Group is a trusted name for its quality control and customer oriented services. We are ISO 9001 certified company as well as recognized worldwide for best of our services and commitment.', 'uploads/blogs/serve/education.png', 'uploads/blogs/serve/recycle.png', 'Block Text 2', 'Shree Balaji Group is a trusted name for its quality control and customer oriented services. We are ISO 9001 certified company as well as recognized worldwide for best of our services and commitment.', 'uploads/blogs/serve/mining-industry.png', 'uploads/blogs/serve/settings.png', 'Block Text 3', 'Shree Balaji Group is a trusted name for its quality control and customer oriented services. We are ISO 9001 certified company as well as recognized worldwide for best of our services and commitment.', 'uploads/blogs/serve/recycle.png', 'uploads/blogs/serve/mining-industry.png', '[\"uploads\\/blogs\\/serve\\/about.jpg\",\"uploads\\/blogs\\/serve\\/data-destruction.png\",\"uploads\\/blogs\\/serve\\/mining-machine.jpg\"]', '1', '2023-07-05 06:07:02', '2023-07-05 06:07:02', 'refining-service');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 1,
  `logo_header` varchar(500) DEFAULT NULL,
  `logo_footer` varchar(500) DEFAULT NULL,
  `site_title` varchar(255) DEFAULT NULL,
  `home_title` varchar(255) DEFAULT 'Index',
  `site_description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `application_name` varchar(255) DEFAULT NULL,
  `primary_font` smallint(6) DEFAULT 19,
  `secondary_font` smallint(6) DEFAULT 25,
  `tertiary_font` smallint(6) DEFAULT 32,
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `instagram_url` varchar(500) DEFAULT NULL,
  `pinterest_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `vk_url` varchar(500) DEFAULT NULL,
  `telegram_url` varchar(500) DEFAULT NULL,
  `youtube_url` varchar(500) DEFAULT NULL,
  `optional_url_button_name` varchar(500) DEFAULT 'Click Here To See More',
  `about_footer` varchar(1000) DEFAULT NULL,
  `contact_text` text DEFAULT NULL,
  `contact_address` varchar(500) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `copyright` varchar(500) DEFAULT NULL,
  `cookies_warning` tinyint(1) DEFAULT 0,
  `cookies_warning_text` text DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `block_text_1` varchar(500) DEFAULT NULL,
  `block_heading_1` varchar(500) DEFAULT NULL,
  `block_text_2` varchar(255) DEFAULT NULL,
  `block_heading_2` varchar(500) DEFAULT NULL,
  `block_text_3` varchar(500) DEFAULT NULL,
  `block_heading_3` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `lang_id`, `logo_header`, `logo_footer`, `site_title`, `home_title`, `site_description`, `keywords`, `application_name`, `primary_font`, `secondary_font`, `tertiary_font`, `facebook_url`, `twitter_url`, `instagram_url`, `pinterest_url`, `linkedin_url`, `vk_url`, `telegram_url`, `youtube_url`, `optional_url_button_name`, `about_footer`, `contact_text`, `contact_address`, `contact_email`, `contact_phone`, `copyright`, `cookies_warning`, `cookies_warning_text`, `updated_at`, `block_text_1`, `block_heading_1`, `block_text_2`, `block_heading_2`, `block_text_3`, `block_heading_3`) VALUES
(1, 1, '/uploads/2191690604839.png', '/uploads/4241690604839.png', 'Lifragrances', '24x7 Live India - Read Latest News | News Today | Breaking News | India News and Current News on Politics | Bollywood and Sports', '24x7 Live India', '24x7liveindia.com, Shashidhar Bhat, English News, Read Latest News, News Today, Breaking News, India News and Current News on Politics, Bollywood and Sports, india news today, india news hindi, india news online, india news latest, india news covid, india news live tv, india news google, india news tv, india news china, china india news, times of india news, air india news, covid india news, google india news, pubg mobile india news, pakistan india news, one india news tamil, latest china india,', '24x7 Live India', 29, 29, 29, 'https://www.facebook.com/Long-Island-Fragrances-117685804710901', NULL, 'https://www.instagram.com/longisland_fragrances/', '', NULL, '', '', 'https://www.youtube.com/channel/UCCmAyPWbSfDO46n0qWn3zAQ/videos', 'www.24x7liveindia.com', 'Lifragrances', '', NULL, 'lifragrancesny@gmail.com', '+1(516) 814-1663', '2023 © All Copyright Reserved- Lifragrances', 0, '<p>This site uses cookies. By continuing to browse the site you are agreeing to our use of cookies.</p>', '2023-07-31 16:27:40', 'One Day Delivery', 'Delivery', 'Shop Now Pay Later', 'EMIs', '50+ Varieties of Perfume', 'Variety');

-- --------------------------------------------------------

--
-- Table structure for table `social_impact_models`
--

CREATE TABLE `social_impact_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `left_image` varchar(255) DEFAULT NULL,
  `right_image` varchar(255) DEFAULT NULL,
  `right_section_heading` text DEFAULT NULL,
  `right_section_content` text DEFAULT NULL,
  `right_section_link` text DEFAULT NULL,
  `left_section_heading` text DEFAULT NULL,
  `left_section_content` text DEFAULT NULL,
  `left_section_link` varchar(500) DEFAULT NULL,
  `volunteer_section_heading` varchar(500) DEFAULT NULL,
  `volunteer_section_content` text DEFAULT NULL,
  `volunteer_image` varchar(500) DEFAULT NULL,
  `created_at` varchar(500) DEFAULT NULL,
  `updated_at` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `banner_image`, `left_image`, `right_image`, `right_section_heading`, `right_section_content`, `right_section_link`, `left_section_heading`, `left_section_content`, `left_section_link`, `volunteer_section_heading`, `volunteer_section_content`, `volunteer_image`, `created_at`, `updated_at`) VALUES
(1, 'uploads/blogs/serve/268371681302532.jpg', 'uploads/blogs/serve/339181680794483.jpg', 'uploads/blogs/serve/770221680794483.jpg', 'Be a part of our Journey', 'Ek Saath is a journey of positivity that seeks to preserve the delicate relationship between us and nature.', NULL, 'Plant With us', 'Lorem ipsum is dummy text Lorem ipsum is dummy text Lorem ipsum is dummy text', NULL, 'Volunteer Section Heading', 'volunteer section content', 'uploads/blogs/serve/915761680798753.jpg', NULL, '2023-04-12 12:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `sustainabilities`
--

CREATE TABLE `sustainabilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sustainability_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sustainabilities`
--

INSERT INTO `sustainabilities` (`id`, `banner_image`, `text`, `gallery`, `sustainability_type`, `created_at`, `updated_at`) VALUES
(1, 'uploads/blogs/serve/247451688568000.jpg', '<p><font color=\"#212121\" face=\"Montserrat\"><span style=\"font-size: 15px;\">overview&nbsp;</span></font><span style=\"color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Responsible Stewardship means ensuring we have effective and appropriate business processes, including robust compliance and risk management, protecting the health and safety of our employees and responsibly managing our environmental and social impacts.</span><br></p>', '[\"uploads\\/blogs\\/serve\\/about.jpg\",\"uploads\\/blogs\\/serve\\/mining-machine.jpg\",\"uploads\\/blogs\\/serve\\/vladimir-patkachakov-ZAP1duyEIR4-unsplash.jpg\"]', 'overview', NULL, '2023-07-05 09:25:40'),
(2, 'uploads/blogs/serve/247451688568000.jpg', '<p><font color=\"#212121\" face=\"Montserrat\"><span style=\"font-size: 15px;\">approach&nbsp;</span></font><span style=\"color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Responsible Stewardship means ensuring we have effective and appropriate business processes, including robust compliance and risk management, protecting the health and safety of our employees and responsibly managing our environmental and social impacts.</span><br></p>', '[\"uploads\\/blogs\\/serve\\/about.jpg\",\"uploads\\/blogs\\/serve\\/mining-machine.jpg\",\"uploads\\/blogs\\/serve\\/vladimir-patkachakov-ZAP1duyEIR4-unsplash.jpg\"]', 'approach', NULL, '2023-07-05 09:26:02'),
(3, 'uploads/blogs/serve/247451688568000.jpg', '<p><font color=\"#212121\" face=\"Montserrat\"><span style=\"font-size: 15px;\">stewardship&nbsp;</span></font><span style=\"color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Responsible Stewardship means ensuring we have effective and appropriate business processes, including robust compliance and risk management, protecting the health and safety of our employees and responsibly managing our environmental and social impacts.</span><br></p>', '[\"uploads\\/blogs\\/serve\\/about.jpg\",\"uploads\\/blogs\\/serve\\/mining-machine.jpg\",\"uploads\\/blogs\\/serve\\/vladimir-patkachakov-ZAP1duyEIR4-unsplash.jpg\"]', 'stewardship', NULL, '2023-07-05 09:26:22'),
(4, 'uploads/blogs/serve/247451688568000.jpg', '<p><font color=\"#212121\" face=\"Montserrat\"><span style=\"font-size: 15px;\">&nbsp;strong-relationstewardship&nbsp;</span></font><span style=\"color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Responsible Stewardship means ensuring we have effective and appropriate business processes, including robust compliance and risk management, protecting the health and safety of our employees and responsibly managing our environmental and social impacts.</span><br></p>', '[\"uploads\\/blogs\\/serve\\/about.jpg\",\"uploads\\/blogs\\/serve\\/mining-machine.jpg\",\"uploads\\/blogs\\/serve\\/vladimir-patkachakov-ZAP1duyEIR4-unsplash.jpg\"]', 'strong-relation', NULL, '2023-07-05 09:27:43'),
(5, 'uploads/blogs/serve/247451688568000.jpg', '<p><span style=\"background-color: rgb(247, 250, 255); color: rgb(6, 125, 23); font-family: &quot;JetBrains Mono&quot;, monospace; font-size: 9.8pt;\">sharing-value&nbsp;</span><font color=\"#212121\" face=\"Montserrat\"><span style=\"font-size: 15px;\">&nbsp;strong-relationstewardship&nbsp;</span></font><span style=\"color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Responsible Stewardship means ensuring we have effective and appropriate business processes, including robust compliance and risk management, protecting the health and safety of our employees and responsibly managing our environmental and social impacts.</span><br></p>', '[\"uploads\\/blogs\\/serve\\/about.jpg\",\"uploads\\/blogs\\/serve\\/mining-machine.jpg\",\"uploads\\/blogs\\/serve\\/vladimir-patkachakov-ZAP1duyEIR4-unsplash.jpg\"]', 'sharing-value', NULL, '2023-07-05 09:29:21'),
(6, 'uploads/blogs/serve/247451688568000.jpg', '<p><font color=\"#067d17\" face=\"JetBrains Mono, monospace\"><span style=\"font-size: 13.0667px;\">community-impact&nbsp;</span></font><span style=\"background-color: rgb(247, 250, 255); color: rgb(6, 125, 23); font-family: &quot;JetBrains Mono&quot;, monospace; font-size: 9.8pt;\">sharing-value&nbsp;</span><font color=\"#212121\" face=\"Montserrat\"><span style=\"font-size: 15px;\">&nbsp;strong-relationstewardship&nbsp;</span></font><span style=\"color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Responsible Stewardship means ensuring we have effective and appropriate business processes, including robust compliance and risk management, protecting the health and safety of our employees and responsibly managing our environmental and social impacts.</span><br></p>', '[\"uploads\\/blogs\\/serve\\/about.jpg\",\"uploads\\/blogs\\/serve\\/mining-machine.jpg\",\"uploads\\/blogs\\/serve\\/vladimir-patkachakov-ZAP1duyEIR4-unsplash.jpg\"]', 'community-impact', NULL, '2023-07-05 09:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `sustainabilities_approach`
--

CREATE TABLE `sustainabilities_approach` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sustainabilities_approach`
--

INSERT INTO `sustainabilities_approach` (`id`, `banner_image`, `text`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'uploads/blogs/serve/852331688566373.jpg', '<p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">We aim to deliver growth and long-term value while upholding sustainable development through our diversified portfolio of large, long-life and low-cost assets.</p><p style=\"margin-bottom: 0px; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Our Sustainable Development Model, which comprises the four pillars of Responsible Stewardship, Building Strong Relationships, Adding and Sharing Value and Strategic Communications provides us with a robust structure for driving our future growth, advancing our business outcomes and offering significant benefits to the communities that host our operations.</p>', '[\"uploads\\/blogs\\/serve\\/about-us-banner.jpg\",\"uploads\\/blogs\\/serve\\/data-destruction.png\"]', NULL, '2023-07-05 08:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `sustainabilities_stewardship`
--

CREATE TABLE `sustainabilities_stewardship` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sustainabilities_stewardship`
--

INSERT INTO `sustainabilities_stewardship` (`id`, `banner_image`, `text`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'uploads/blogs/serve/384371688568023.jpg', '<p><span style=\"color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Responsible Stewardship means ensuring we have effective and appropriate business processes, including robust compliance and risk management, protecting the health and safety of our employees and responsibly managing our environmental and social impacts.</span><br></p>', '[\"uploads\\/blogs\\/serve\\/mining-machine.jpg\"]', NULL, '2023-07-05 09:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `agent_id` varchar(255) DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `insta` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `sequence` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `url_slug` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `designation`, `photo`, `about`, `email`, `phone`, `agent_id`, `fb`, `insta`, `twitter`, `linkedin`, `sequence`, `status`, `url_slug`, `created_at`, `updated_at`) VALUES
(15, 'Dr Raghavendra Gowda', 'Chairman & Co-Founder', 'uploads/blogs/serve/268011688542334.jpg', '<p><span style=\"color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Since Dr Raghavendra Gowda appointment as CMD in July 2008 Srii Balaji Group has successfully brought two mines into production, collectively reduced overhead and operating costs by almost half, and used internally generated funds to cut debt levels by a third, despite the sharply lower gold price. During this period overall safety trends have improved and the company has sharpened its focus on improving sustainable free cash flow and returns.</span><br></p>', NULL, NULL, NULL, '#', '#', '#', '#', '1', '1', 'dr-raghavendra-gowda/711', '2023-07-05 07:32:14', '2023-07-05 07:40:52'),
(16, 'Harishree Mehta', 'Director', 'uploads/blogs/serve/858821688543111.jpg', '<p><span style=\"color: rgb(33, 33, 33); font-family: Montserrat; font-size: 15px;\">Harishree has been a Broadcast Journalist with a track record of two decades of outstanding accomplishments across Business &amp; Political Journalism in India. She had set up Greenfield Ventures – India’s Top Three National mainstream News channels e.g. CNBC Mumbai, TIMES NOW Mumbai (including its Business Desk), and Doordarshan. She has extensively interviewed the Crème de la Creme of India including the Chairmen, CEOs of Business Houses, Corporate Honchos and Political Leaders, the likes of Mukesh Ambani, Kumar Mangalam Birla, L N Mittal, Rakesh Jhunjhunwala.</span><br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '1', 'harishree-mehta/121', '2023-07-05 07:45:11', '2023-07-05 07:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1 => admin, 2 => editor, 3 => , 4 => ',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `salt_password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '2023-01-29 06:24:24', '$2y$10$X3xQS61WKDzo2RHMfZbQXuLJgZXhhPuR5E84HTI1smHoh1itVTiza', 'admin@123', '1', 'hC6WZ0Sq7HtZkvTVsPY2QLWG9TrertgCNHk0NooMgRHnVIQQZdF48wEj7lrw', '2023-01-29 06:24:24', '2023-01-29 06:24:24'),
(3, 'test', 'test@test.com', NULL, '$2y$10$XxMMpYv3vbTfS8.L2qqUt.bQjgv/bTBhSGCJWIZZwyCHschWQ/5Fm', 'anand', '2', NULL, '2023-08-04 09:59:13', '2023-08-04 09:59:13'),
(4, 'test2t', 'test2@gmail.com', NULL, '$2y$10$xE4ZR9/pLQgAbQifHOI0s.5j3BCR4sgXMisgKX1m027zGsoU..hXa', '12346', '1', NULL, '2023-08-04 10:00:15', '2023-08-04 10:00:15'),
(5, 'sonu', 'sonu@sonu.com', NULL, '$2y$10$HpQ42ccAD5TUbelAmvObre61oyXJGIwC4qLIcPf91DV3585PQoTk.', 'sonu123', '2', NULL, '2023-08-04 10:22:50', '2023-08-04 10:22:50'),
(6, 'lorem', 'lorem@doe.com', NULL, '$2y$10$jwlP5OJ/JL9pg1KkoxBuK.EjUhaRurezhi8JkaMPJiVUrwiHHZU1y', '12345', '2', NULL, '2023-08-04 10:27:35', '2023-08-04 10:27:35'),
(7, 'huma', 'huam@nam.com', NULL, '$2y$10$/fW/IqcSXRMBMuJ2rMUauOhnvrv6VUS7W0JeC362qY.bYe8pL12lS', 'huma@naum', '2', NULL, '2023-08-04 10:33:35', '2023-08-04 10:33:35'),
(10, 'jar', 'jar@jar.com', NULL, '$2y$10$/WohAnwYkqw/SgiTT0SHPeIB/fZhx6.70FOv9mciua7Pzr.veL6t2', '00000000', '2', NULL, '2023-08-04 10:36:31', '2023-08-04 11:33:23'),
(11, 'om', 'om@om.com', NULL, '$2y$10$PGd3DQ8g/fba4DFF4OX20utlq8Ihf6FH.DZYV9JzABkOnkJ3/j.fm', 'om@om.com', '2', NULL, '2023-08-05 01:52:58', '2023-08-05 01:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `first_name`, `last_name`, `company_name`, `country`, `address_1`, `address_2`, `city`, `state`, `pincode`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 11, 'Anand', 'Singh', NULL, 'India', 'Varanasi', 'Chetganj', 'Attingal', 'Kerala', '221001', '09876543210', 'anandsingh678970@gmail.com', '2023-08-05 22:12:56', '2023-08-05 22:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `who_we_are`
--

CREATE TABLE `who_we_are` (
  `id` int(11) NOT NULL,
  `banner_video` varchar(255) DEFAULT NULL,
  `our_vision_content` text NOT NULL,
  `our_vision_image` varchar(255) NOT NULL,
  `our_mission_content` text NOT NULL,
  `our_mission_image` varchar(255) NOT NULL,
  `our_ambition_content` text DEFAULT NULL,
  `our_ambition_image` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `who_we_are`
--

INSERT INTO `who_we_are` (`id`, `banner_video`, `our_vision_content`, `our_vision_image`, `our_mission_content`, `our_mission_image`, `our_ambition_content`, `our_ambition_image`, `created_at`, `updated_at`) VALUES
(1, 'uploads/blogs/serve/637001678471113.mp4', 'To build an eco-friendly sustainable world collectively for the future of humankind and wildlife.', 'uploads/blogs/serve/420391678471967.png', 'Mission\r\n\r\nTo create an environment free from ignorance and exploitation by developing an eco-friendly environment through plantation of trees in urban and rural areas, by eradicating plastic pollution that harms human, aquatic and wild life and to maximize reforestation to protect the wildlife and bring people closer to nature.\r\n\r\nTo do this by engaging people at the grass roots level through education and awareness about the environment.', 'uploads/blogs/serve/976281678471967.jpg', 'To create a bond between humans and nature, and get society involved in preserving and understanding nature by bridging the gap that separates us.', 'uploads/blogs/serve/166021680793053.jpg', '', '2023-04-06 14:57:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_models`
--
ALTER TABLE `about_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes_values`
--
ALTER TABLE `attributes_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_models`
--
ALTER TABLE `banner_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colllabs`
--
ALTER TABLE `colllabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_compentancies`
--
ALTER TABLE `core_compentancies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `founder_models`
--
ALTER TABLE `founder_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metals`
--
ALTER TABLE `metals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mission_models`
--
ALTER TABLE `mission_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `offers_code_unique` (`code`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_size_attributes`
--
ALTER TABLE `product_size_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_details`
--
ALTER TABLE `project_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_models`
--
ALTER TABLE `service_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_impact_models`
--
ALTER TABLE `social_impact_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sustainabilities`
--
ALTER TABLE `sustainabilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sustainabilities_approach`
--
ALTER TABLE `sustainabilities_approach`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sustainabilities_stewardship`
--
ALTER TABLE `sustainabilities_stewardship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `who_we_are`
--
ALTER TABLE `who_we_are`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_models`
--
ALTER TABLE `about_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes_values`
--
ALTER TABLE `attributes_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_models`
--
ALTER TABLE `banner_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `colllabs`
--
ALTER TABLE `colllabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `core_compentancies`
--
ALTER TABLE `core_compentancies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `founder_models`
--
ALTER TABLE `founder_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `metals`
--
ALTER TABLE `metals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mission_models`
--
ALTER TABLE `mission_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_size_attributes`
--
ALTER TABLE `product_size_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `project_details`
--
ALTER TABLE `project_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_models`
--
ALTER TABLE `service_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `social_impact_models`
--
ALTER TABLE `social_impact_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sustainabilities`
--
ALTER TABLE `sustainabilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sustainabilities_approach`
--
ALTER TABLE `sustainabilities_approach`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sustainabilities_stewardship`
--
ALTER TABLE `sustainabilities_stewardship`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `who_we_are`
--
ALTER TABLE `who_we_are`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
