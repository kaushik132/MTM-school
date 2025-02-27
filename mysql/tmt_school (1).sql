-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2025 at 11:47 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tmt_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `image`, `alt`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'images/HyUAbbjS8DPJxCXggd8t0Dxiy6VWQ7IZcUOwVHvq.jpeg', 'Annual Day', 'Annual Day', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2025-02-27 00:00:56', '2025-02-27 00:00:56'),
(2, 'images/k_1527750852e.jpg', 'Sports Day', 'Sports Day', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2025-02-27 00:05:40', '2025-02-27 00:05:40'),
(3, 'images/Scientific-demonstration-and-activities-during-National-Science-Day-celebration-at-IITGN-3.jpg', 'Science Fair', 'Science Fair', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2025-02-27 00:06:03', '2025-02-27 00:06:03'),
(4, 'images/indian-festival-kathak-fb.jpg', 'Cultural Fest', 'Cultural Fest', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2025-02-27 00:06:24', '2025-02-27 00:06:24'),
(5, 'images/02-1-1024x682.jpg', 'Debates & Quiz', 'Debates & Quiz', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2025-02-27 00:06:44', '2025-02-27 00:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'icon-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 8, 'Helpers', 'icon-cogs', '', NULL, '2025-02-21 04:26:55', '2025-02-26 23:55:08'),
(9, 8, 9, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2025-02-21 04:26:55', '2025-02-26 23:55:08'),
(10, 8, 10, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2025-02-21 04:26:55', '2025-02-26 23:55:08'),
(11, 8, 11, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2025-02-21 04:26:55', '2025-02-26 23:55:08'),
(12, 8, 12, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2025-02-21 04:26:55', '2025-02-26 23:55:08'),
(13, 0, 13, 'Home-banners', 'icon-file', 'home-banners', NULL, '2025-02-25 23:24:50', '2025-02-26 23:55:08'),
(14, 0, 14, 'Facilities', 'icon-file', 'facilities', NULL, '2025-02-26 00:22:09', '2025-02-26 23:55:08'),
(15, 0, 15, 'Gallery', 'icon-air-freshener', NULL, '*', '2025-02-26 01:38:57', '2025-02-26 23:55:08'),
(16, 15, 16, 'Gallery-images', 'icon-file', 'gallery-images', NULL, '2025-02-26 01:42:43', '2025-02-26 23:55:08'),
(17, 15, 17, 'Gallery-videos', 'icon-file', 'gallery-videos', NULL, '2025-02-26 01:46:23', '2025-02-26 23:55:08'),
(18, 0, 17, 'Activities', 'icon-file', 'activities', NULL, '2025-02-26 23:56:53', '2025-02-26 23:56:53'),
(19, 0, 17, 'Teachers', 'icon-file', 'teachers', NULL, '2025-02-27 00:52:54', '2025-02-27 00:52:54'),
(21, 0, 17, 'Quick-facts', 'icon-file', 'quick-facts', NULL, '2025-02-27 01:36:28', '2025-02-27 01:36:28'),
(22, 0, 17, 'Why-choose-uses', 'icon-file', 'why-choose-uses', NULL, '2025-02-27 02:01:46', '2025-02-27 02:01:46'),
(23, 0, 17, 'Faqs', 'icon-file', 'faqs', NULL, '2025-02-27 03:22:09', '2025-02-27 03:22:09'),
(24, 0, 17, 'Contacts', 'icon-file', 'contacts', NULL, '2025-02-27 04:11:12', '2025-02-27 04:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-25 23:10:40', '2025-02-25 23:10:40'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-25 23:10:51', '2025-02-25 23:10:51'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-25 23:10:51', '2025-02-25 23:10:51'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-25 23:11:59', '2025-02-25 23:11:59'),
(5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-25 23:12:17', '2025-02-25 23:12:17'),
(6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-25 23:12:20', '2025-02-25 23:12:20'),
(7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-25 23:12:30', '2025-02-25 23:12:30'),
(8, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2025-02-25 23:12:48', '2025-02-25 23:12:48'),
(9, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-25 23:12:50', '2025-02-25 23:12:50'),
(10, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-25 23:14:47', '2025-02-25 23:14:47'),
(11, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-25 23:15:31', '2025-02-25 23:15:31'),
(12, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2025-02-25 23:15:39', '2025-02-25 23:15:39'),
(13, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$12$ZKX3m.jLBnqTx.4Nhb5BaOUCiFM.1ZuaQJuNRuJ2yz9jkaiMcUlqu\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-25 23:15:55', '2025-02-25 23:15:55'),
(14, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2025-02-25 23:15:56', '2025-02-25 23:15:56'),
(15, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2025-02-25 23:15:59', '2025-02-25 23:15:59'),
(16, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-25 23:16:20', '2025-02-25 23:16:20'),
(17, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-25 23:21:11', '2025-02-25 23:21:11'),
(18, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"H\",\"model_name\":\"App\\\\Models\\\\\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-25 23:21:18', '2025-02-25 23:21:18'),
(19, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-25 23:21:19', '2025-02-25 23:21:19'),
(20, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"homebanner\",\"model_name\":\"App\\\\Models\\\\HomeBanner\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\HomeBannerController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"short_description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"bgcolor\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"about_more\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"learn_more\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-25 23:24:50', '2025-02-25 23:24:50'),
(21, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-25 23:24:53', '2025-02-25 23:24:53'),
(22, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-25 23:25:03', '2025-02-25 23:25:03'),
(23, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-25 23:25:06', '2025-02-25 23:25:06'),
(24, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-25 23:25:36', '2025-02-25 23:25:36'),
(25, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-25 23:29:02', '2025-02-25 23:29:02'),
(26, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-25 23:29:07', '2025-02-25 23:29:07'),
(27, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-25 23:29:44', '2025-02-25 23:29:44'),
(28, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-25 23:30:21', '2025-02-25 23:30:21'),
(29, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-25 23:30:31', '2025-02-25 23:30:31'),
(30, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-25 23:30:45', '2025-02-25 23:30:45'),
(31, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-25 23:31:03', '2025-02-25 23:31:03'),
(32, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-25 23:31:56', '2025-02-25 23:31:56'),
(33, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-25 23:32:19', '2025-02-25 23:32:19'),
(34, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-25 23:40:52', '2025-02-25 23:40:52'),
(35, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-25 23:41:50', '2025-02-25 23:41:50'),
(36, 1, 'admin/home-banners', 'POST', '127.0.0.1', '{\"title\":\"<p>Start Your Beautiful and <span style=\\\"color: red; font-weight: bold;\\\">Bright<\\/span> Future<\\/p>\",\"short_description\":null,\"bgcolor\":null,\"about_more\":null,\"learn_more\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-25 23:46:52', '2025-02-25 23:46:52'),
(37, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-25 23:46:53', '2025-02-25 23:46:53'),
(38, 1, 'admin/home-banners/1/edit', 'GET', '127.0.0.1', '[]', '2025-02-25 23:46:56', '2025-02-25 23:46:56'),
(39, 1, 'admin/home-banners/1', 'PUT', '127.0.0.1', '{\"title\":\"<p>Start Your Beautiful and <strong>Bright<\\/strong> Future<\\/p>\",\"short_description\":\"Step into a world of endless possibilities, growth, and success\\u2014build the future you\'ve always dreamed of starting today!\",\"bgcolor\":null,\"about_more\":null,\"learn_more\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-25 23:56:37', '2025-02-25 23:56:37'),
(40, 1, 'admin/home-banners/1/edit', 'GET', '127.0.0.1', '[]', '2025-02-25 23:56:38', '2025-02-25 23:56:38'),
(41, 1, 'admin/home-banners/1', 'PUT', '127.0.0.1', '{\"title\":\"<p>Start Your Beautiful and <strong>Bright<\\/strong> Future<\\/p>\",\"short_description\":\"Step into a world of endless possibilities, growth, and success\\u2014build the future you\'ve always dreamed of starting today!\",\"about_more\":null,\"learn_more\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-25 23:56:55', '2025-02-25 23:56:55'),
(42, 1, 'admin/home-banners/1/edit', 'GET', '127.0.0.1', '[]', '2025-02-25 23:56:55', '2025-02-25 23:56:55'),
(43, 1, 'admin/home-banners/1', 'PUT', '127.0.0.1', '{\"title\":\"<p>Start Your Beautiful and <strong>Bright<\\/strong> Future<\\/p>\",\"short_description\":\"Step into a world of endless possibilities, growth, and success\\u2014build the future you\'ve always dreamed of starting today!\",\"about_more\":null,\"learn_more\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-25 23:57:12', '2025-02-25 23:57:12'),
(44, 1, 'admin/home-banners/1/edit', 'GET', '127.0.0.1', '[]', '2025-02-25 23:57:12', '2025-02-25 23:57:12'),
(45, 1, 'admin/home-banners/1', 'PUT', '127.0.0.1', '{\"title\":\"<p>Start Your Beautiful and <strong>Bright<\\/strong> Future<\\/p>\",\"short_description\":\"Step into a world of endless possibilities, growth, and success\\u2014build the future you\'ve always dreamed of starting today!\",\"about_more\":null,\"learn_more\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:00:23', '2025-02-26 00:00:23'),
(46, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:00:23', '2025-02-26 00:00:23'),
(47, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-26 00:01:23', '2025-02-26 00:01:23'),
(48, 1, 'admin/home-banners', 'POST', '127.0.0.1', '{\"title\":\"<p>&lt;p&gt;Start Your Beautiful and &lt;span style=&quot;color: red; font-weight: bold;&quot;&gt;Bright&lt;\\/span&gt; Future&lt;\\/p&gt;<\\/p>\",\"short_description\":null,\"about_more\":null,\"learn_more\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-26 00:01:52', '2025-02-26 00:01:52'),
(49, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:01:53', '2025-02-26 00:01:53'),
(50, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-26 00:01:59', '2025-02-26 00:01:59'),
(51, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-26 00:05:06', '2025-02-26 00:05:06'),
(52, 1, 'admin/home-banners', 'POST', '127.0.0.1', '{\"title\":\"<h1>title<\\/h1>\",\"short_description\":\"Step into a world of endless possibilities, growth, and success\\u2014build the future you\'ve always dreamed of starting today!\",\"about_more\":null,\"learn_more\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-26 00:05:27', '2025-02-26 00:05:27'),
(53, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:05:27', '2025-02-26 00:05:27'),
(54, 1, 'admin/home-banners/2/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:05:33', '2025-02-26 00:05:33'),
(55, 1, 'admin/home-banners/2', 'PUT', '127.0.0.1', '{\"title\":\"<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Start Your Beautiful and <strong>Bright<\\/strong> Future<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"short_description\":\"Step into a world of endless possibilities, growth, and success\\u2014build the future you\'ve always dreamed of starting today!\",\"about_more\":null,\"learn_more\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:05:37', '2025-02-26 00:05:37'),
(56, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:05:37', '2025-02-26 00:05:37'),
(57, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:05:41', '2025-02-26 00:05:41'),
(58, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:09:02', '2025-02-26 00:09:02'),
(59, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:09:20', '2025-02-26 00:09:20'),
(60, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:09:26', '2025-02-26 00:09:26'),
(61, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:09:39', '2025-02-26 00:09:39'),
(62, 1, 'admin/home-banners/1/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:16:00', '2025-02-26 00:16:00'),
(63, 1, 'admin/home-banners/1', 'PUT', '127.0.0.1', '{\"title\":\"<h1>Start Your Beautiful and <strong>Bright<\\/strong> Future<\\/h1>\",\"short_description\":\"Step into a world of endless possibilities, growth, and success\\u2014build the future you\'ve always dreamed of starting today!\",\"about_more\":null,\"learn_more\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:16:54', '2025-02-26 00:16:54'),
(64, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:16:54', '2025-02-26 00:16:54'),
(65, 1, 'admin/home-banners/2/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:16:57', '2025-02-26 00:16:57'),
(66, 1, 'admin/home-banners/2', 'PUT', '127.0.0.1', '{\"title\":\"<p>&nbsp;<\\/p>\\r\\n\\r\\n<h1>Start Your Beautiful and Bright Freutu<\\/h1>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"short_description\":\"Step into a world of endless possibilities, growth, and success\\u2014build the future you\'ve always dreamed of starting today!\",\"about_more\":null,\"learn_more\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:17:07', '2025-02-26 00:17:07'),
(67, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:17:07', '2025-02-26 00:17:07'),
(68, 1, 'admin/home-banners/1/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:18:25', '2025-02-26 00:18:25'),
(69, 1, 'admin/home-banners/1', 'PUT', '127.0.0.1', '{\"title\":\"<h1>Start Your Beautiful and <strong>Bright<\\/strong> Future<\\/h1>\",\"short_description\":\"Step into a world of endless possibilities, growth, and success\\u2014build the future you\'ve always dreamed of starting today!\",\"about_more\":\"http:\\/\\/127.0.0.1:8000\\/about-us\",\"learn_more\":\"http:\\/\\/127.0.0.1:8000\\/about-us\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:18:30', '2025-02-26 00:18:30'),
(70, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:18:30', '2025-02-26 00:18:30'),
(71, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:19:55', '2025-02-26 00:19:55'),
(72, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-26 00:21:30', '2025-02-26 00:21:30'),
(73, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"facility\",\"model_name\":\"App\\\\Models\\\\Facility\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\FacilityController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"content\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-26 00:22:09', '2025-02-26 00:22:09'),
(74, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-26 00:22:09', '2025-02-26 00:22:09'),
(75, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-26 00:22:23', '2025-02-26 00:22:23'),
(76, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:22:26', '2025-02-26 00:22:26'),
(77, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:28:21', '2025-02-26 00:28:21'),
(78, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:28:31', '2025-02-26 00:28:31'),
(79, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:29:22', '2025-02-26 00:29:22'),
(80, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:29:36', '2025-02-26 00:29:36'),
(81, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:36:29', '2025-02-26 00:36:29'),
(82, 1, 'admin/facilities/1/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:36:35', '2025-02-26 00:36:35'),
(83, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:38:37', '2025-02-26 00:38:37'),
(84, 1, 'admin/home-banners/1/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:38:40', '2025-02-26 00:38:40'),
(85, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 00:43:10', '2025-02-26 00:43:10'),
(86, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:43:13', '2025-02-26 00:43:13'),
(87, 1, 'admin/facilities/17/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:43:16', '2025-02-26 00:43:16'),
(88, 1, 'admin/facilities/17', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:43:36', '2025-02-26 00:43:36'),
(89, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:43:37', '2025-02-26 00:43:37'),
(90, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:44:18', '2025-02-26 00:44:18'),
(91, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:44:36', '2025-02-26 00:44:36'),
(92, 1, 'admin/facilities/17/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:44:41', '2025-02-26 00:44:41'),
(93, 1, 'admin/facilities/17', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:44:57', '2025-02-26 00:44:57'),
(94, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:44:58', '2025-02-26 00:44:58'),
(95, 1, 'admin/facilities/17/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:45:10', '2025-02-26 00:45:10'),
(96, 1, 'admin/facilities/17', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:45:18', '2025-02-26 00:45:18'),
(97, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:45:18', '2025-02-26 00:45:18'),
(98, 1, 'admin/facilities/17/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:45:22', '2025-02-26 00:45:22'),
(99, 1, 'admin/facilities/17', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:45:27', '2025-02-26 00:45:27'),
(100, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:45:27', '2025-02-26 00:45:27'),
(101, 1, 'admin/facilities/18/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:45:39', '2025-02-26 00:45:39'),
(102, 1, 'admin/facilities/18', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:45:45', '2025-02-26 00:45:45'),
(103, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:45:46', '2025-02-26 00:45:46'),
(104, 1, 'admin/facilities/18/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:49:27', '2025-02-26 00:49:27'),
(105, 1, 'admin/facilities/18', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/facility-2.png,\",\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:49:35', '2025-02-26 00:49:35'),
(106, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:49:36', '2025-02-26 00:49:36'),
(107, 1, 'admin/facilities/18/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:50:06', '2025-02-26 00:50:06'),
(108, 1, 'admin/facilities/18', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:50:10', '2025-02-26 00:50:10'),
(109, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:50:11', '2025-02-26 00:50:11'),
(110, 1, 'admin/facilities/19/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:50:14', '2025-02-26 00:50:14'),
(111, 1, 'admin/facilities/19', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:50:20', '2025-02-26 00:50:20'),
(112, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:50:20', '2025-02-26 00:50:20'),
(113, 1, 'admin/facilities/19/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:50:23', '2025-02-26 00:50:23'),
(114, 1, 'admin/facilities/19', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/facility-3.png,\",\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:50:26', '2025-02-26 00:50:26'),
(115, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:50:26', '2025-02-26 00:50:26'),
(116, 1, 'admin/facilities/20/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:50:30', '2025-02-26 00:50:30'),
(117, 1, 'admin/facilities/20', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/facility-4.png,\",\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:50:36', '2025-02-26 00:50:36'),
(118, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:50:36', '2025-02-26 00:50:36'),
(119, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:51:49', '2025-02-26 00:51:49'),
(120, 1, 'admin/facilities/19/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:51:52', '2025-02-26 00:51:52'),
(121, 1, 'admin/facilities/19', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:51:56', '2025-02-26 00:51:56'),
(122, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:51:56', '2025-02-26 00:51:56'),
(123, 1, 'admin/facilities/20/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:51:58', '2025-02-26 00:51:58'),
(124, 1, 'admin/facilities/20', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:52:04', '2025-02-26 00:52:04'),
(125, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:52:04', '2025-02-26 00:52:04'),
(126, 1, 'admin/facilities/21/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:52:07', '2025-02-26 00:52:07'),
(127, 1, 'admin/facilities/21', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:52:12', '2025-02-26 00:52:12'),
(128, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:52:12', '2025-02-26 00:52:12'),
(129, 1, 'admin/facilities/22/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:52:14', '2025-02-26 00:52:14'),
(130, 1, 'admin/facilities/22', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:52:19', '2025-02-26 00:52:19'),
(131, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:52:20', '2025-02-26 00:52:20'),
(132, 1, 'admin/facilities/23/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:52:22', '2025-02-26 00:52:22'),
(133, 1, 'admin/facilities/23', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:52:27', '2025-02-26 00:52:27'),
(134, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:52:27', '2025-02-26 00:52:27'),
(135, 1, 'admin/facilities/24/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:52:29', '2025-02-26 00:52:29'),
(136, 1, 'admin/facilities/24', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:52:35', '2025-02-26 00:52:35'),
(137, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:52:35', '2025-02-26 00:52:35'),
(138, 1, 'admin/facilities/25/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:52:38', '2025-02-26 00:52:38'),
(139, 1, 'admin/facilities/25', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:52:43', '2025-02-26 00:52:43'),
(140, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:52:44', '2025-02-26 00:52:44'),
(141, 1, 'admin/facilities/26/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:52:47', '2025-02-26 00:52:47'),
(142, 1, 'admin/facilities/26', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:52:52', '2025-02-26 00:52:52'),
(143, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:52:53', '2025-02-26 00:52:53'),
(144, 1, 'admin/facilities/27/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:52:56', '2025-02-26 00:52:56'),
(145, 1, 'admin/facilities/27', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:53:01', '2025-02-26 00:53:01'),
(146, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:53:02', '2025-02-26 00:53:02'),
(147, 1, 'admin/facilities/28/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:53:04', '2025-02-26 00:53:04'),
(148, 1, 'admin/facilities/28', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:53:09', '2025-02-26 00:53:09'),
(149, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:53:10', '2025-02-26 00:53:10'),
(150, 1, 'admin/facilities/29/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:53:12', '2025-02-26 00:53:12'),
(151, 1, 'admin/facilities/29', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:53:17', '2025-02-26 00:53:17'),
(152, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:53:17', '2025-02-26 00:53:17'),
(153, 1, 'admin/facilities/30/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:53:20', '2025-02-26 00:53:20'),
(154, 1, 'admin/facilities/30', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:53:25', '2025-02-26 00:53:25'),
(155, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:53:26', '2025-02-26 00:53:26'),
(156, 1, 'admin/facilities/31/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:53:28', '2025-02-26 00:53:28'),
(157, 1, 'admin/facilities/31', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:53:35', '2025-02-26 00:53:35'),
(158, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:53:35', '2025-02-26 00:53:35'),
(159, 1, 'admin/facilities/32/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 00:53:38', '2025-02-26 00:53:38'),
(160, 1, 'admin/facilities/32', 'PUT', '127.0.0.1', '{\"name\":\"Digital education\",\"content\":\"It is a long established fact that a reader will be distracted.\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 00:53:43', '2025-02-26 00:53:43'),
(161, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 00:53:43', '2025-02-26 00:53:43'),
(162, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 01:01:22', '2025-02-26 01:01:22'),
(163, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 01:20:58', '2025-02-26 01:20:58'),
(164, 1, 'admin/facilities/32/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 01:21:01', '2025-02-26 01:21:01'),
(165, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 01:21:11', '2025-02-26 01:21:11'),
(166, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-26 01:38:01', '2025-02-26 01:38:01'),
(167, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 01:38:32', '2025-02-26 01:38:32'),
(168, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Galley\",\"icon\":\"icon-air-freshener\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-26 01:38:57', '2025-02-26 01:38:57'),
(169, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 01:38:57', '2025-02-26 01:38:57'),
(170, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 01:39:00', '2025-02-26 01:39:00'),
(171, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-26 01:41:39', '2025-02-26 01:41:39'),
(172, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"gallery_image\",\"model_name\":\"App\\\\Models\\\\GalleryImage\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\GalleryImageController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alt\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-26 01:42:42', '2025-02-26 01:42:42'),
(173, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-26 01:42:45', '2025-02-26 01:42:45'),
(174, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-26 01:42:59', '2025-02-26 01:42:59'),
(175, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 01:43:05', '2025-02-26 01:43:05'),
(176, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 01:43:09', '2025-02-26 01:43:09'),
(177, 1, 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"15\",\"search_terms\":null,\"title\":\"Gallery-images\",\"icon\":\"icon-file\",\"uri\":\"gallery-images\",\"roles\":[null],\"permission\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 01:43:14', '2025-02-26 01:43:14'),
(178, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 01:43:14', '2025-02-26 01:43:14'),
(179, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 01:43:17', '2025-02-26 01:43:17'),
(180, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 01:43:21', '2025-02-26 01:43:21'),
(181, 1, 'admin/gallery-images/create', 'GET', '127.0.0.1', '[]', '2025-02-26 01:43:24', '2025-02-26 01:43:24'),
(182, 1, 'admin/gallery-images', 'POST', '127.0.0.1', '{\"alt\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-26 01:43:35', '2025-02-26 01:43:35'),
(183, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 01:43:35', '2025-02-26 01:43:35'),
(184, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 01:43:57', '2025-02-26 01:43:57'),
(185, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 01:44:07', '2025-02-26 01:44:07'),
(186, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 01:44:13', '2025-02-26 01:44:13'),
(187, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-26 01:44:23', '2025-02-26 01:44:23'),
(188, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"gallery_video\",\"model_name\":\"App\\\\Models\\\\GalleryVideo\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\GalleryVideoController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"0\":{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"alt\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"1\":{\"name\":\"video_link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-26 01:46:23', '2025-02-26 01:46:23'),
(189, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-26 01:46:24', '2025-02-26 01:46:24'),
(190, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-26 01:46:42', '2025-02-26 01:46:42'),
(191, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-26 01:46:47', '2025-02-26 01:46:47'),
(192, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 01:46:54', '2025-02-26 01:46:54'),
(193, 1, 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 01:46:56', '2025-02-26 01:46:56'),
(194, 1, 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"parent_id\":\"15\",\"search_terms\":null,\"title\":\"Gallery-videos\",\"icon\":\"icon-file\",\"uri\":\"gallery-videos\",\"roles\":[null],\"permission\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 01:47:00', '2025-02-26 01:47:00'),
(195, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 01:47:01', '2025-02-26 01:47:01'),
(196, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 01:47:03', '2025-02-26 01:47:03'),
(197, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-26 01:47:06', '2025-02-26 01:47:06'),
(198, 1, 'admin/gallery-videos/create', 'GET', '127.0.0.1', '[]', '2025-02-26 01:47:08', '2025-02-26 01:47:08'),
(199, 1, 'admin/gallery-videos', 'POST', '127.0.0.1', '{\"alt\":\"Nature Image\",\"video_link\":\"https:\\/\\/www.youtube.com\\/embed\\/-5krrl0eiKc?si=OU2BP1t1d86ksS74\",\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-26 01:47:57', '2025-02-26 01:47:57'),
(200, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-26 01:47:58', '2025-02-26 01:47:58'),
(201, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-26 01:48:22', '2025-02-26 01:48:22'),
(202, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-26 01:48:31', '2025-02-26 01:48:31'),
(203, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 01:56:25', '2025-02-26 01:56:25'),
(204, 1, 'admin/gallery-images/1/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 01:56:26', '2025-02-26 01:56:26'),
(205, 1, 'admin/gallery-images/1', 'PUT', '127.0.0.1', '{\"alt\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\",\"_method\":\"PUT\"}', '2025-02-26 01:56:36', '2025-02-26 01:56:36'),
(206, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 01:56:36', '2025-02-26 01:56:36'),
(207, 1, 'admin/gallery-images/1/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 01:56:38', '2025-02-26 01:56:38'),
(208, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 01:56:40', '2025-02-26 01:56:40'),
(209, 1, 'admin/gallery-images/create', 'GET', '127.0.0.1', '[]', '2025-02-26 01:56:41', '2025-02-26 01:56:41'),
(210, 1, 'admin/gallery-images', 'POST', '127.0.0.1', '{\"alt\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-26 01:56:47', '2025-02-26 01:56:47'),
(211, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 01:56:47', '2025-02-26 01:56:47'),
(212, 1, 'admin/gallery-images/create', 'GET', '127.0.0.1', '[]', '2025-02-26 01:56:49', '2025-02-26 01:56:49'),
(213, 1, 'admin/gallery-images', 'POST', '127.0.0.1', '{\"alt\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-26 01:56:54', '2025-02-26 01:56:54'),
(214, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 01:56:55', '2025-02-26 01:56:55'),
(215, 1, 'admin/gallery-images/create', 'GET', '127.0.0.1', '[]', '2025-02-26 01:56:56', '2025-02-26 01:56:56'),
(216, 1, 'admin/gallery-images', 'POST', '127.0.0.1', '{\"alt\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-26 01:57:02', '2025-02-26 01:57:02'),
(217, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 01:57:02', '2025-02-26 01:57:02'),
(218, 1, 'admin/gallery-images/create', 'GET', '127.0.0.1', '[]', '2025-02-26 01:57:03', '2025-02-26 01:57:03'),
(219, 1, 'admin/gallery-images', 'POST', '127.0.0.1', '{\"alt\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-26 01:57:08', '2025-02-26 01:57:08'),
(220, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 01:57:09', '2025-02-26 01:57:09'),
(221, 1, 'admin/gallery-images/create', 'GET', '127.0.0.1', '[]', '2025-02-26 01:57:10', '2025-02-26 01:57:10'),
(222, 1, 'admin/gallery-images', 'POST', '127.0.0.1', '{\"alt\":null,\"_token\":\"ioJKaj0iUaaL07KD77B1nosNxI192cjkIjWiy9Rw\"}', '2025-02-26 01:57:15', '2025-02-26 01:57:15'),
(223, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 01:57:16', '2025-02-26 01:57:16'),
(224, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-26 02:02:48', '2025-02-26 02:02:48'),
(225, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 02:02:50', '2025-02-26 02:02:50'),
(226, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 02:02:51', '2025-02-26 02:02:51'),
(227, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-26 23:53:39', '2025-02-26 23:53:39'),
(228, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-26 23:53:45', '2025-02-26 23:53:45'),
(229, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-26 23:53:49', '2025-02-26 23:53:49'),
(230, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-26 23:53:53', '2025-02-26 23:53:53'),
(231, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 23:53:55', '2025-02-26 23:53:55'),
(232, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 23:54:15', '2025-02-26 23:54:15'),
(233, 1, 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 23:54:18', '2025-02-26 23:54:18'),
(234, 1, 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Gallery\",\"icon\":\"icon-air-freshener\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\",\"_method\":\"PUT\"}', '2025-02-26 23:54:30', '2025-02-26 23:54:30'),
(235, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 23:54:31', '2025-02-26 23:54:31'),
(236, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-26 23:54:35', '2025-02-26 23:54:35'),
(237, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 23:54:41', '2025-02-26 23:54:41'),
(238, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '[]', '2025-02-26 23:54:43', '2025-02-26 23:54:43'),
(239, 1, 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"15\",\"search_terms\":null,\"title\":\"Gallery-images\",\"icon\":\"icon-file\",\"uri\":\"gallery-images\",\"roles\":[null],\"permission\":null,\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\",\"_method\":\"PUT\"}', '2025-02-26 23:54:50', '2025-02-26 23:54:50'),
(240, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 23:54:50', '2025-02-26 23:54:50'),
(241, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-26 23:54:53', '2025-02-26 23:54:53'),
(242, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 23:54:54', '2025-02-26 23:54:54'),
(243, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"},{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"15\\\",\\\"children\\\":[{\\\"id\\\":\\\"16\\\"},{\\\"id\\\":\\\"17\\\"}]}]\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-26 23:55:08', '2025-02-26 23:55:08'),
(244, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 23:55:08', '2025-02-26 23:55:08'),
(245, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-26 23:55:11', '2025-02-26 23:55:11'),
(246, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-26 23:56:09', '2025-02-26 23:56:09'),
(247, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"activities\",\"model_name\":\"App\\\\Models\\\\Activities\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ActivitiesController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alt\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"content\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-26 23:56:52', '2025-02-26 23:56:52'),
(248, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-26 23:56:56', '2025-02-26 23:56:56'),
(249, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-26 23:57:08', '2025-02-26 23:57:08'),
(250, 1, 'admin/activities', 'GET', '127.0.0.1', '[]', '2025-02-26 23:57:11', '2025-02-26 23:57:11'),
(251, 1, 'admin/activities', 'GET', '127.0.0.1', '[]', '2025-02-26 23:57:25', '2025-02-26 23:57:25'),
(252, 1, 'admin/activities/create', 'GET', '127.0.0.1', '[]', '2025-02-27 00:00:19', '2025-02-27 00:00:19'),
(253, 1, 'admin/activities', 'POST', '127.0.0.1', '{\"alt\":\"Annual Day\",\"name\":\"Annual Day\",\"content\":\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\\r\\n\\r\\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 00:00:56', '2025-02-27 00:00:56'),
(254, 1, 'admin/activities', 'GET', '127.0.0.1', '[]', '2025-02-27 00:00:57', '2025-02-27 00:00:57'),
(255, 1, 'admin/activities', 'GET', '127.0.0.1', '[]', '2025-02-27 00:05:08', '2025-02-27 00:05:08'),
(256, 1, 'admin/activities/create', 'GET', '127.0.0.1', '[]', '2025-02-27 00:05:17', '2025-02-27 00:05:17'),
(257, 1, 'admin/activities', 'POST', '127.0.0.1', '{\"alt\":\"Sports Day\",\"name\":\"Sports Day\",\"content\":\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\\r\\n\\r\\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 00:05:40', '2025-02-27 00:05:40'),
(258, 1, 'admin/activities', 'GET', '127.0.0.1', '[]', '2025-02-27 00:05:40', '2025-02-27 00:05:40'),
(259, 1, 'admin/activities/create', 'GET', '127.0.0.1', '[]', '2025-02-27 00:05:47', '2025-02-27 00:05:47'),
(260, 1, 'admin/activities', 'POST', '127.0.0.1', '{\"alt\":\"Science Fair\",\"name\":\"Science Fair\",\"content\":\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\\r\\n\\r\\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 00:06:02', '2025-02-27 00:06:02'),
(261, 1, 'admin/activities', 'GET', '127.0.0.1', '[]', '2025-02-27 00:06:03', '2025-02-27 00:06:03'),
(262, 1, 'admin/activities/create', 'GET', '127.0.0.1', '[]', '2025-02-27 00:06:10', '2025-02-27 00:06:10'),
(263, 1, 'admin/activities', 'POST', '127.0.0.1', '{\"alt\":\"Cultural Fest\",\"name\":\"Cultural Fest\",\"content\":\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\\r\\n\\r\\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 00:06:24', '2025-02-27 00:06:24'),
(264, 1, 'admin/activities', 'GET', '127.0.0.1', '[]', '2025-02-27 00:06:24', '2025-02-27 00:06:24'),
(265, 1, 'admin/activities/create', 'GET', '127.0.0.1', '[]', '2025-02-27 00:06:26', '2025-02-27 00:06:26'),
(266, 1, 'admin/activities', 'POST', '127.0.0.1', '{\"alt\":\"Debates & Quiz\",\"name\":\"Debates & Quiz\",\"content\":\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\\r\\n\\r\\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 00:06:44', '2025-02-27 00:06:44'),
(267, 1, 'admin/activities', 'GET', '127.0.0.1', '[]', '2025-02-27 00:06:44', '2025-02-27 00:06:44'),
(268, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-27 00:50:45', '2025-02-27 00:50:45'),
(269, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 00:50:52', '2025-02-27 00:50:52'),
(270, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"teachers\",\"model_name\":\"App\\\\Models\\\\Teachers\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TeacherController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alt\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"profession\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 00:52:54', '2025-02-27 00:52:54'),
(271, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 00:52:54', '2025-02-27 00:52:54'),
(272, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 00:53:17', '2025-02-27 00:53:17'),
(273, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2025-02-27 00:53:23', '2025-02-27 00:53:23'),
(274, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2025-02-27 00:58:34', '2025-02-27 00:58:34'),
(275, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '[]', '2025-02-27 00:58:37', '2025-02-27 00:58:37'),
(276, 1, 'admin/teachers', 'POST', '127.0.0.1', '{\"alt\":\"Rajesh Sharma\",\"name\":\"Rajesh Sharma\",\"profession\":\"Rajesh Sharma \\u2013 Mathematics Teacher\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 00:59:27', '2025-02-27 00:59:27'),
(277, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2025-02-27 00:59:28', '2025-02-27 00:59:28'),
(278, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2025-02-27 00:59:49', '2025-02-27 00:59:49'),
(279, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '[]', '2025-02-27 01:00:11', '2025-02-27 01:00:11'),
(280, 1, 'admin/teachers', 'POST', '127.0.0.1', '{\"alt\":\"Anita Iyer\",\"name\":\"Anita Iyer\",\"profession\":\"Anita Iyer \\u2013 English Literature Teacher\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 01:00:37', '2025-02-27 01:00:37'),
(281, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2025-02-27 01:00:38', '2025-02-27 01:00:38'),
(282, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '[]', '2025-02-27 01:00:44', '2025-02-27 01:00:44'),
(283, 1, 'admin/teachers', 'POST', '127.0.0.1', '{\"alt\":\"Vikram Patel\",\"name\":\"Vikram Patel\",\"profession\":\"Physics Teacher\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 01:01:14', '2025-02-27 01:01:14'),
(284, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2025-02-27 01:01:14', '2025-02-27 01:01:14'),
(285, 1, 'admin/teachers/2/edit', 'GET', '127.0.0.1', '[]', '2025-02-27 01:01:18', '2025-02-27 01:01:18'),
(286, 1, 'admin/teachers/2', 'PUT', '127.0.0.1', '{\"alt\":\"Anita Iyer\",\"name\":\"Anita Iyer\",\"profession\":\"English Literature Teacher\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\",\"_method\":\"PUT\"}', '2025-02-27 01:01:23', '2025-02-27 01:01:23'),
(287, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2025-02-27 01:01:23', '2025-02-27 01:01:23'),
(288, 1, 'admin/teachers/1/edit', 'GET', '127.0.0.1', '[]', '2025-02-27 01:01:26', '2025-02-27 01:01:26'),
(289, 1, 'admin/teachers/1', 'PUT', '127.0.0.1', '{\"alt\":\"Rajesh Sharma\",\"name\":\"Rajesh Sharma\",\"profession\":\"Mathematics Teacher\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\",\"_method\":\"PUT\"}', '2025-02-27 01:01:35', '2025-02-27 01:01:35'),
(290, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2025-02-27 01:01:35', '2025-02-27 01:01:35');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(291, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2025-02-27 01:01:37', '2025-02-27 01:01:37'),
(292, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '[]', '2025-02-27 01:01:42', '2025-02-27 01:01:42'),
(293, 1, 'admin/teachers', 'POST', '127.0.0.1', '{\"alt\":\"Meera Nair\",\"name\":\"Meera Nair\",\"profession\":\"History Teacher\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 01:02:08', '2025-02-27 01:02:08'),
(294, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2025-02-27 01:02:09', '2025-02-27 01:02:09'),
(295, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '[]', '2025-02-27 01:02:21', '2025-02-27 01:02:21'),
(296, 1, 'admin/teachers', 'POST', '127.0.0.1', '{\"alt\":\"Sandeep Verma\",\"name\":\"Sandeep Verma\",\"profession\":\"Computer Science Teacher\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 01:02:41', '2025-02-27 01:02:41'),
(297, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2025-02-27 01:02:41', '2025-02-27 01:02:41'),
(298, 1, 'admin/teachers/5/edit', 'GET', '127.0.0.1', '[]', '2025-02-27 01:02:43', '2025-02-27 01:02:43'),
(299, 1, 'admin/teachers/5', 'PUT', '127.0.0.1', '{\"alt\":\"Sandeep Verma\",\"name\":\"Sandeep Verma\",\"profession\":\"Computer Science Teacher\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\",\"_method\":\"PUT\"}', '2025-02-27 01:02:50', '2025-02-27 01:02:50'),
(300, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2025-02-27 01:02:50', '2025-02-27 01:02:50'),
(301, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 01:32:09', '2025-02-27 01:32:09'),
(302, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"quickfacts\",\"model_name\":\"App\\\\Models\\\\QuickFacts\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\QuickFactsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"student\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"teachers\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"winawards\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"classes\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 01:33:34', '2025-02-27 01:33:34'),
(303, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 01:33:37', '2025-02-27 01:33:37'),
(304, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 01:33:49', '2025-02-27 01:33:49'),
(305, 1, 'admin/quick-facts', 'GET', '127.0.0.1', '[]', '2025-02-27 01:33:53', '2025-02-27 01:33:53'),
(306, 1, 'admin/quick-facts', 'GET', '127.0.0.1', '[]', '2025-02-27 01:34:03', '2025-02-27 01:34:03'),
(307, 1, 'admin/quick-facts', 'GET', '127.0.0.1', '[]', '2025-02-27 01:34:05', '2025-02-27 01:34:05'),
(308, 1, 'admin/quick-facts', 'GET', '127.0.0.1', '[]', '2025-02-27 01:34:10', '2025-02-27 01:34:10'),
(309, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-27 01:34:29', '2025-02-27 01:34:29'),
(310, 1, 'admin/auth/menu/20', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 01:34:34', '2025-02-27 01:34:34'),
(311, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-27 01:34:35', '2025-02-27 01:34:35'),
(312, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-27 01:34:58', '2025-02-27 01:34:58'),
(313, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 01:35:01', '2025-02-27 01:35:01'),
(314, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"quick_facts\",\"model_name\":\"App\\\\Models\\\\QuickFacts\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\QuickFactsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"student\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"teacher\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"win_awards\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"classes\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 01:36:27', '2025-02-27 01:36:27'),
(315, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 01:36:29', '2025-02-27 01:36:29'),
(316, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 01:36:39', '2025-02-27 01:36:39'),
(317, 1, 'admin/quick-facts', 'GET', '127.0.0.1', '[]', '2025-02-27 01:36:41', '2025-02-27 01:36:41'),
(318, 1, 'admin/quick-facts', 'GET', '127.0.0.1', '[]', '2025-02-27 01:37:50', '2025-02-27 01:37:50'),
(319, 1, 'admin/quick-facts/create', 'GET', '127.0.0.1', '[]', '2025-02-27 01:38:07', '2025-02-27 01:38:07'),
(320, 1, 'admin/quick-facts', 'POST', '127.0.0.1', '{\"student\":\"1150\",\"teacher\":\"150\",\"win_awards\":\"60\",\"classes\":\"90\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 01:38:22', '2025-02-27 01:38:22'),
(321, 1, 'admin/quick-facts', 'GET', '127.0.0.1', '[]', '2025-02-27 01:38:23', '2025-02-27 01:38:23'),
(322, 1, 'admin/quick-facts/1/edit', 'GET', '127.0.0.1', '[]', '2025-02-27 01:45:54', '2025-02-27 01:45:54'),
(323, 1, 'admin/quick-facts/1', 'PUT', '127.0.0.1', '{\"student\":\"1150\",\"teacher\":\"150\",\"win_awards\":\"60\",\"classes\":\"80\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\",\"_method\":\"PUT\"}', '2025-02-27 01:46:02', '2025-02-27 01:46:02'),
(324, 1, 'admin/quick-facts', 'GET', '127.0.0.1', '[]', '2025-02-27 01:46:02', '2025-02-27 01:46:02'),
(325, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-27 01:53:48', '2025-02-27 01:53:48'),
(326, 1, 'admin/gallery-videos/create', 'GET', '127.0.0.1', '[]', '2025-02-27 01:53:50', '2025-02-27 01:53:50'),
(327, 1, 'admin/gallery-videos', 'POST', '127.0.0.1', '{\"alt\":\"Dance Video\",\"video_link\":\"https:\\/\\/www.youtube.com\\/watch?v=Imhi98dHa5w&list=PLRqSftyTJ5ZzRnmo-nmQqepm4b8Ni17rZ&index=1&ab_channel=KooKoo\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 01:54:58', '2025-02-27 01:54:58'),
(328, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-27 01:54:59', '2025-02-27 01:54:59'),
(329, 1, 'admin/gallery-videos/2/edit', 'GET', '127.0.0.1', '[]', '2025-02-27 01:56:29', '2025-02-27 01:56:29'),
(330, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-27 01:56:39', '2025-02-27 01:56:39'),
(331, 1, 'admin/gallery-videos/2/edit', 'GET', '127.0.0.1', '[]', '2025-02-27 01:56:41', '2025-02-27 01:56:41'),
(332, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-27 01:56:42', '2025-02-27 01:56:42'),
(333, 1, 'admin/gallery-videos/1/edit', 'GET', '127.0.0.1', '[]', '2025-02-27 01:56:44', '2025-02-27 01:56:44'),
(334, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-27 01:56:48', '2025-02-27 01:56:48'),
(335, 1, 'admin/gallery-videos/2/edit', 'GET', '127.0.0.1', '[]', '2025-02-27 01:56:50', '2025-02-27 01:56:50'),
(336, 1, 'admin/gallery-videos/2', 'PUT', '127.0.0.1', '{\"alt\":\"Dance Video\",\"video_link\":\"https:\\/\\/www.youtube.com\\/watch?v=Imhi98dHa5w&list=PLRqSftyTJ5ZzRnmo-nmQqepm4b8Ni17rZ\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\",\"_method\":\"PUT\"}', '2025-02-27 01:57:05', '2025-02-27 01:57:05'),
(337, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-27 01:57:05', '2025-02-27 01:57:05'),
(338, 1, 'admin/gallery-videos/2/edit', 'GET', '127.0.0.1', '[]', '2025-02-27 01:57:23', '2025-02-27 01:57:23'),
(339, 1, 'admin/gallery-videos/2', 'PUT', '127.0.0.1', '{\"alt\":\"Dance Video\",\"video_link\":\"https:\\/\\/www.youtube.com\\/watch?v=NXDcea-5IfA&ab_channel=T-SeriesBollywoodClassics\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\",\"_method\":\"PUT\"}', '2025-02-27 01:57:26', '2025-02-27 01:57:26'),
(340, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-27 01:57:27', '2025-02-27 01:57:27'),
(341, 1, 'admin/gallery-videos/2/edit', 'GET', '127.0.0.1', '[]', '2025-02-27 01:58:15', '2025-02-27 01:58:15'),
(342, 1, 'admin/gallery-videos/2', 'PUT', '127.0.0.1', '{\"alt\":\"Dance Video\",\"video_link\":null,\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\",\"_method\":\"PUT\"}', '2025-02-27 01:58:19', '2025-02-27 01:58:19'),
(343, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-27 01:58:20', '2025-02-27 01:58:20'),
(344, 1, 'admin/gallery-videos/1/edit', 'GET', '127.0.0.1', '[]', '2025-02-27 01:58:21', '2025-02-27 01:58:21'),
(345, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-27 01:58:27', '2025-02-27 01:58:27'),
(346, 1, 'admin/gallery-videos/2/edit', 'GET', '127.0.0.1', '[]', '2025-02-27 01:58:29', '2025-02-27 01:58:29'),
(347, 1, 'admin/gallery-videos/2', 'PUT', '127.0.0.1', '{\"alt\":\"Dance Video\",\"video_link\":\"https:\\/\\/www.youtube.com\\/embed\\/-5krrl0eiKc?si=OU2BP1t1d86ksS74\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\",\"_method\":\"PUT\"}', '2025-02-27 01:58:32', '2025-02-27 01:58:32'),
(348, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-27 01:58:32', '2025-02-27 01:58:32'),
(349, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 02:00:40', '2025-02-27 02:00:40'),
(350, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"why_choose_us\",\"model_name\":\"App\\\\Models\\\\WhyChooseUs\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\WhyChooseUsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alt\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"content\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 02:01:46', '2025-02-27 02:01:46'),
(351, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 02:01:46', '2025-02-27 02:01:46'),
(352, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 02:02:01', '2025-02-27 02:02:01'),
(353, 1, 'admin/why-choose-uses', 'GET', '127.0.0.1', '[]', '2025-02-27 02:03:00', '2025-02-27 02:03:00'),
(354, 1, 'admin/why-choose-uses', 'GET', '127.0.0.1', '[]', '2025-02-27 02:03:07', '2025-02-27 02:03:07'),
(355, 1, 'admin/why-choose-uses', 'GET', '127.0.0.1', '[]', '2025-02-27 02:03:30', '2025-02-27 02:03:30'),
(356, 1, 'admin/why-choose-uses/create', 'GET', '127.0.0.1', '[]', '2025-02-27 02:03:32', '2025-02-27 02:03:32'),
(357, 1, 'admin/why-choose-uses', 'POST', '127.0.0.1', '{\"alt\":\"Quality Education\",\"name\":\"Quality Education\",\"content\":\"CBSE\\/ICSE\\/State Board curriculum ke saath high-quality education aur modern teaching methods.\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 02:04:40', '2025-02-27 02:04:40'),
(358, 1, 'admin/why-choose-uses', 'GET', '127.0.0.1', '[]', '2025-02-27 02:04:40', '2025-02-27 02:04:40'),
(359, 1, 'admin/why-choose-uses', 'GET', '127.0.0.1', '[]', '2025-02-27 02:05:01', '2025-02-27 02:05:01'),
(360, 1, 'admin/why-choose-uses/create', 'GET', '127.0.0.1', '[]', '2025-02-27 02:05:04', '2025-02-27 02:05:04'),
(361, 1, 'admin/why-choose-uses', 'POST', '127.0.0.1', '{\"alt\":\"Quality Education\",\"name\":\"Quality Education\",\"content\":null,\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 02:05:13', '2025-02-27 02:05:13'),
(362, 1, 'admin/why-choose-uses', 'GET', '127.0.0.1', '[]', '2025-02-27 02:05:13', '2025-02-27 02:05:13'),
(363, 1, 'admin/why-choose-uses/2/edit', 'GET', '127.0.0.1', '[]', '2025-02-27 02:05:16', '2025-02-27 02:05:16'),
(364, 1, 'admin/why-choose-uses/2', 'PUT', '127.0.0.1', '{\"alt\":\"Quality Education\",\"name\":\"Quality Education\",\"content\":\"CBSE\\/ICSE\\/State Board curriculum ke saath high-quality education aur modern teaching methods.\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\",\"_method\":\"PUT\"}', '2025-02-27 02:05:22', '2025-02-27 02:05:22'),
(365, 1, 'admin/why-choose-uses', 'GET', '127.0.0.1', '[]', '2025-02-27 02:05:22', '2025-02-27 02:05:22'),
(366, 1, 'admin/why-choose-uses/create', 'GET', '127.0.0.1', '[]', '2025-02-27 02:05:24', '2025-02-27 02:05:24'),
(367, 1, 'admin/why-choose-uses', 'POST', '127.0.0.1', '{\"alt\":\"Quality Education\",\"name\":\"Quality Education\",\"content\":\"CBSE\\/ICSE\\/State Board curriculum ke saath high-quality education aur modern teaching methods.\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 02:05:37', '2025-02-27 02:05:37'),
(368, 1, 'admin/why-choose-uses', 'GET', '127.0.0.1', '[]', '2025-02-27 02:05:37', '2025-02-27 02:05:37'),
(369, 1, 'admin/why-choose-uses/create', 'GET', '127.0.0.1', '[]', '2025-02-27 02:05:39', '2025-02-27 02:05:39'),
(370, 1, 'admin/why-choose-uses', 'POST', '127.0.0.1', '{\"alt\":\"Quality Education\",\"name\":\"Quality Education\",\"content\":\"CBSE\\/ICSE\\/State Board curriculum ke saath high-quality education aur modern teaching methods.\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 02:05:55', '2025-02-27 02:05:55'),
(371, 1, 'admin/why-choose-uses', 'GET', '127.0.0.1', '[]', '2025-02-27 02:05:56', '2025-02-27 02:05:56'),
(372, 1, 'admin/why-choose-uses/create', 'GET', '127.0.0.1', '[]', '2025-02-27 02:05:58', '2025-02-27 02:05:58'),
(373, 1, 'admin/why-choose-uses', 'POST', '127.0.0.1', '{\"alt\":\"Quality Education\",\"name\":\"Quality Education\",\"content\":\"CBSE\\/ICSE\\/State Board curriculum ke saath high-quality education aur modern teaching methods.\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 02:06:10', '2025-02-27 02:06:10'),
(374, 1, 'admin/why-choose-uses', 'GET', '127.0.0.1', '[]', '2025-02-27 02:06:10', '2025-02-27 02:06:10'),
(375, 1, 'admin/why-choose-uses/create', 'GET', '127.0.0.1', '[]', '2025-02-27 02:06:13', '2025-02-27 02:06:13'),
(376, 1, 'admin/why-choose-uses', 'POST', '127.0.0.1', '{\"alt\":\"Quality Education\",\"name\":\"Quality Education\",\"content\":\"CBSE\\/ICSE\\/State Board curriculum ke saath high-quality education aur modern teaching methods.\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 02:06:25', '2025-02-27 02:06:25'),
(377, 1, 'admin/why-choose-uses', 'GET', '127.0.0.1', '[]', '2025-02-27 02:06:25', '2025-02-27 02:06:25'),
(378, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 03:21:21', '2025-02-27 03:21:21'),
(379, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"faq\",\"model_name\":\"App\\\\Models\\\\Faq\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\FaqController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"question\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"answer\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 03:22:09', '2025-02-27 03:22:09'),
(380, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 03:22:10', '2025-02-27 03:22:10'),
(381, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 03:22:22', '2025-02-27 03:22:22'),
(382, 1, 'admin/faqs', 'GET', '127.0.0.1', '[]', '2025-02-27 03:22:24', '2025-02-27 03:22:24'),
(383, 1, 'admin/faqs', 'GET', '127.0.0.1', '[]', '2025-02-27 03:22:41', '2025-02-27 03:22:41'),
(384, 1, 'admin/faqs/create', 'GET', '127.0.0.1', '[]', '2025-02-27 03:22:43', '2025-02-27 03:22:43'),
(385, 1, 'admin/faqs/create', 'GET', '127.0.0.1', '[]', '2025-02-27 03:22:56', '2025-02-27 03:22:56'),
(386, 1, 'admin/faqs', 'POST', '127.0.0.1', '{\"question\":\"Question\",\"answer\":\"Placeholder content for this accordion, which is intended to demonstrate the .accordion-flush class. This is the first item\'s accordion body.\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/faqs\"}', '2025-02-27 03:26:36', '2025-02-27 03:26:36'),
(387, 1, 'admin/faqs', 'GET', '127.0.0.1', '[]', '2025-02-27 03:26:36', '2025-02-27 03:26:36'),
(388, 1, 'admin/faqs/create', 'GET', '127.0.0.1', '[]', '2025-02-27 03:26:38', '2025-02-27 03:26:38'),
(389, 1, 'admin/faqs', 'POST', '127.0.0.1', '{\"question\":\"Question\",\"answer\":\"Placeholder content for this accordion, which is intended to demonstrate the .accordion-flush class. This is the first item\'s accordion body.\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 03:26:47', '2025-02-27 03:26:47'),
(390, 1, 'admin/faqs', 'GET', '127.0.0.1', '[]', '2025-02-27 03:26:47', '2025-02-27 03:26:47'),
(391, 1, 'admin/faqs/create', 'GET', '127.0.0.1', '[]', '2025-02-27 03:26:48', '2025-02-27 03:26:48'),
(392, 1, 'admin/faqs', 'POST', '127.0.0.1', '{\"question\":\"Question\",\"answer\":\"Placeholder content for this accordion, which is intended to demonstrate the .accordion-flush class. This is the first item\'s accordion body.\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 03:26:57', '2025-02-27 03:26:57'),
(393, 1, 'admin/faqs', 'GET', '127.0.0.1', '[]', '2025-02-27 03:26:57', '2025-02-27 03:26:57'),
(394, 1, 'admin/faqs', 'GET', '127.0.0.1', '[]', '2025-02-27 03:43:00', '2025-02-27 03:43:00'),
(395, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 04:10:20', '2025-02-27 04:10:20'),
(396, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"contact\",\"model_name\":\"App\\\\Models\\\\Contact\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ContactController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"subject\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"message\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 04:11:12', '2025-02-27 04:11:12'),
(397, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 04:11:13', '2025-02-27 04:11:13'),
(398, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-27 04:11:30', '2025-02-27 04:11:30'),
(399, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-02-27 04:11:34', '2025-02-27 04:11:34'),
(400, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-02-27 04:11:50', '2025-02-27 04:11:50'),
(401, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-02-27 04:31:02', '2025-02-27 04:31:02'),
(402, 1, 'admin/contacts/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 04:43:53', '2025-02-27 04:43:53'),
(403, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-02-27 04:43:53', '2025-02-27 04:43:53'),
(404, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-02-27 04:47:37', '2025-02-27 04:47:37'),
(405, 1, 'admin/contacts/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"itfqrSGRqdf9f6KqdFitv56GTUMYZcqn9sHj8U5h\"}', '2025-02-27 04:47:41', '2025-02-27 04:47:41'),
(406, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-02-27 04:47:41', '2025-02-27 04:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2025-02-21 04:26:55', '2025-02-21 04:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2025-02-21 04:18:34', '2025-02-21 04:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$ZKX3m.jLBnqTx.4Nhb5BaOUCiFM.1ZuaQJuNRuJ2yz9jkaiMcUlqu', 'Administrator', 'images/user.jpg', NULL, '2025-02-21 04:18:34', '2025-02-25 23:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`id`, `image`, `name`, `content`, `created_at`, `updated_at`) VALUES
(17, 'images/facility-1.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:45:27'),
(18, 'images/facility-2.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:50:11'),
(19, 'images/facility-3.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:51:56'),
(20, 'images/facility-4.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:52:04'),
(21, 'images/facility-5.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:52:12'),
(22, 'images/facility-6.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:52:19'),
(23, 'images/facility-7.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:52:27'),
(24, 'images/facility-8.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:52:35'),
(25, 'images/facility-9.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:52:43'),
(26, 'images/facility-4_1.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:52:52'),
(27, 'images/facility-6_1.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:53:01'),
(28, 'images/facility-2_1.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:53:09'),
(29, 'images/facility-1_1.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:53:17'),
(30, 'images/facility-8_1.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:53:25'),
(31, 'images/facility-5_1.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:53:35'),
(32, 'images/facility-7_1.png', 'Digital education', 'It is a long established fact that a reader will be distracted.', NULL, '2025-02-26 00:53:43');

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
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Question', 'Placeholder content for this accordion, which is intended to demonstrate the .accordion-flush class. This is the first item\'s accordion body.', '2025-02-27 03:26:36', '2025-02-27 03:26:36'),
(2, 'Question', 'Placeholder content for this accordion, which is intended to demonstrate the .accordion-flush class. This is the first item\'s accordion body.', '2025-02-27 03:26:47', '2025-02-27 03:26:47'),
(3, 'Question', 'Placeholder content for this accordion, which is intended to demonstrate the .accordion-flush class. This is the first item\'s accordion body.', '2025-02-27 03:26:57', '2025-02-27 03:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_image`
--

CREATE TABLE `gallery_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_image`
--

INSERT INTO `gallery_image` (`id`, `image`, `alt`, `created_at`, `updated_at`) VALUES
(1, 'images/smart-kids-pupils-writing-down-data-notebook-communicating-classmates-lesson-school-daytime-diligent-249028972.webp', NULL, '2025-02-26 01:43:35', '2025-02-26 01:56:36'),
(2, 'images/istockphoto-1144235214-612x612.webp', NULL, '2025-02-26 01:56:47', '2025-02-26 01:56:47'),
(3, 'images/istockphoto-950887376-612x612.webp', NULL, '2025-02-26 01:56:54', '2025-02-26 01:56:54'),
(4, 'images/istockphoto-1144235214-612x612_1.webp', NULL, '2025-02-26 01:57:02', '2025-02-26 01:57:02'),
(5, 'images/240_F_53048436_7uKgLgRO5kcfcZc6glMF37YB0JrJCrRA.webp', NULL, '2025-02-26 01:57:08', '2025-02-26 01:57:08'),
(6, 'images/smart-kids-pupils-writing-down-data-notebook-communicating-classmates-lesson-school-daytime-diligent-249028972_1.webp', NULL, '2025-02-26 01:57:15', '2025-02-26 01:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_video`
--

CREATE TABLE `gallery_video` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_video`
--

INSERT INTO `gallery_video` (`id`, `image`, `alt`, `video_link`, `created_at`, `updated_at`) VALUES
(1, 'images/login-page-bg_1.png', 'Nature Image', 'https://www.youtube.com/embed/-5krrl0eiKc?si=OU2BP1t1d86ksS74', '2025-02-26 01:47:57', '2025-02-26 01:47:57'),
(2, 'images/indian-festival-kathak-fb_1.jpg', 'Dance Video', 'https://www.youtube.com/embed/-5krrl0eiKc?si=OU2BP1t1d86ksS74', '2025-02-27 01:54:58', '2025-02-27 01:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `homebanner`
--

CREATE TABLE `homebanner` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bgcolor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_more` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `learn_more` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homebanner`
--

INSERT INTO `homebanner` (`id`, `title`, `short_description`, `image`, `bgcolor`, `about_more`, `learn_more`, `created_at`, `updated_at`) VALUES
(1, '<h1>Start Your Beautiful and <strong>Bright</strong> Future</h1>', 'Step into a world of endless possibilities, growth, and success—build the future you\'ve always dreamed of starting today!', 'images/asian-student-girl-wears-school-uniform-pointing-fingers-copy-space-yellow-background-isolated-clipping-paths-design-work-empty_45996-2125.webp', NULL, 'http://127.0.0.1:8000/about-us', 'http://127.0.0.1:8000/about-us', '2025-02-25 23:46:53', '2025-02-26 00:18:30'),
(2, '<p>&nbsp;</p>\r\n\r\n<h1>Start Your Beautiful and Bright Freutu</h1>\r\n\r\n<p>&nbsp;</p>', 'Step into a world of endless possibilities, growth, and success—build the future you\'ve always dreamed of starting today!', 'images/happy-teen-girls-casual-checkered-shirt-carry-backpack-education-portrait-schoolgirl-student_545934-22385.webp', NULL, NULL, NULL, '2025-02-26 00:01:52', '2025-02-26 00:17:07'),
(3, '<h1>title</h1>', 'Step into a world of endless possibilities, growth, and success—build the future you\'ve always dreamed of starting today!', 'images/schoolgirl-with-backpack-wearing-casual-jeans-denim-shirt-outfit_113725-3150.webp', NULL, NULL, NULL, '2025-02-26 00:05:27', '2025-02-26 00:05:27');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2025_02_26_045450_create_homebanner_table', 2),
(7, '2025_02_26_055209_create_facility_table', 3),
(8, '2025_02_26_071242_create_gallery_image_table', 4),
(9, '2025_02_26_071623_create_gallery_video_table', 5),
(10, '2025_02_27_052652_create_activities_table', 6),
(11, '2025_02_27_062254_create_teachers_table', 7),
(12, '2025_02_27_070334_create_quickfacts_table', 8),
(13, '2025_02_27_070627_create_quick_facts_table', 9),
(14, '2025_02_27_073146_create_why_choose_us_table', 10),
(15, '2025_02_27_085209_create_faq_table', 11),
(16, '2025_02_27_094112_create_contact_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `quickfacts`
--

CREATE TABLE `quickfacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `student` int(11) DEFAULT NULL,
  `teachers` int(11) DEFAULT NULL,
  `winawards` int(11) DEFAULT NULL,
  `classes` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quick_facts`
--

CREATE TABLE `quick_facts` (
  `id` int(10) UNSIGNED NOT NULL,
  `student` int(11) DEFAULT NULL,
  `teacher` int(11) DEFAULT NULL,
  `win_awards` int(11) DEFAULT NULL,
  `classes` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quick_facts`
--

INSERT INTO `quick_facts` (`id`, `student`, `teacher`, `win_awards`, `classes`, `created_at`, `updated_at`) VALUES
(1, 1150, 150, 60, 80, '2025-02-27 01:38:22', '2025-02-27 01:46:02');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `image`, `alt`, `name`, `profession`, `created_at`, `updated_at`) VALUES
(1, 'images/DALL·E 2025-02-27 11.58.50 - A professional Indian male mathematics teacher in a classroom, wearing a formal shirt and glasses, explaining a math concept on the board. The backgro.webp', 'Rajesh Sharma', 'Rajesh Sharma', 'Mathematics Teacher', '2025-02-27 00:59:28', '2025-02-27 01:01:35'),
(2, 'images/DALL·E 2025-02-27 11.58.52 - A professional Indian female English literature teacher in a classroom, wearing a saree and glasses, holding a book while explaining literature to stu.webp', 'Anita Iyer', 'Anita Iyer', 'English Literature Teacher', '2025-02-27 01:00:37', '2025-02-27 01:01:23'),
(3, 'images/DALL·E 2025-02-27 11.58.53 - A professional Indian male physics teacher in a classroom, wearing a formal shirt and a blazer, explaining a physics concept with a model of an atom i.webp', 'Vikram Patel', 'Vikram Patel', 'Physics Teacher', '2025-02-27 01:01:14', '2025-02-27 01:01:14'),
(4, 'images/DALL·E 2025-02-27 11.58.55 - A professional Indian female history teacher in a classroom, wearing a traditional kurta and a scarf, holding a pointer while explaining a historical .webp', 'Meera Nair', 'Meera Nair', 'History Teacher', '2025-02-27 01:02:09', '2025-02-27 01:02:09'),
(5, 'images/DALL·E 2025-02-27 11.58.56 - A professional Indian male biology teacher in a classroom, wearing a lab coat and glasses, explaining a biological diagram on a digital screen. He is .webp', 'Sandeep Verma', 'Sandeep Verma', 'Computer Science Teacher', '2025-02-27 01:02:41', '2025-02-27 01:02:50');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_us`
--

CREATE TABLE `why_choose_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_choose_us`
--

INSERT INTO `why_choose_us` (`id`, `image`, `alt`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'images/choose-icon1.png', 'Quality Education', 'Quality Education', 'CBSE/ICSE/State Board curriculum ke saath high-quality education aur modern teaching methods.', '2025-02-27 02:04:40', '2025-02-27 02:04:40'),
(2, 'images/choose-icon2.png', 'Quality Education', 'Quality Education', 'CBSE/ICSE/State Board curriculum ke saath high-quality education aur modern teaching methods.', '2025-02-27 02:05:13', '2025-02-27 02:05:22'),
(3, 'images/choose-icon3.png', 'Quality Education', 'Quality Education', 'CBSE/ICSE/State Board curriculum ke saath high-quality education aur modern teaching methods.', '2025-02-27 02:05:37', '2025-02-27 02:05:37'),
(4, 'images/choose-icon4.png', 'Quality Education', 'Quality Education', 'CBSE/ICSE/State Board curriculum ke saath high-quality education aur modern teaching methods.', '2025-02-27 02:05:55', '2025-02-27 02:05:55'),
(5, 'images/choose-icon5.png', 'Quality Education', 'Quality Education', 'CBSE/ICSE/State Board curriculum ke saath high-quality education aur modern teaching methods.', '2025-02-27 02:06:10', '2025-02-27 02:06:10'),
(6, 'images/choose-icon6.png', 'Quality Education', 'Quality Education', 'CBSE/ICSE/State Board curriculum ke saath high-quality education aur modern teaching methods.', '2025-02-27 02:06:25', '2025-02-27 02:06:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_image`
--
ALTER TABLE `gallery_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_video`
--
ALTER TABLE `gallery_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homebanner`
--
ALTER TABLE `homebanner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `quickfacts`
--
ALTER TABLE `quickfacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_facts`
--
ALTER TABLE `quick_facts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery_image`
--
ALTER TABLE `gallery_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gallery_video`
--
ALTER TABLE `gallery_video`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `homebanner`
--
ALTER TABLE `homebanner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quickfacts`
--
ALTER TABLE `quickfacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quick_facts`
--
ALTER TABLE `quick_facts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
