-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2025 at 05:39 PM
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
-- Database: `mtm_school`
--

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
(1, 0, 4, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, '2024-05-02 07:50:00'),
(2, 0, 5, 'Admin', 'icon-server', '', NULL, NULL, '2024-05-02 07:50:00'),
(3, 2, 6, 'Users', 'icon-users', 'auth/users', NULL, NULL, '2024-05-02 07:50:00'),
(4, 2, 7, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, '2024-05-02 07:50:00'),
(5, 2, 8, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, '2024-05-02 07:50:00'),
(6, 2, 9, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, '2024-05-02 07:50:00'),
(7, 2, 10, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, '2024-05-02 07:50:00'),
(8, 0, 11, 'Helpers', 'icon-cogs', '', NULL, '2024-05-01 00:10:04', '2024-05-02 07:50:00'),
(9, 8, 12, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2024-05-01 00:10:04', '2024-05-02 07:50:00'),
(10, 8, 13, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2024-05-01 00:10:04', '2024-05-02 07:50:00'),
(11, 8, 14, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2024-05-01 00:10:04', '2024-05-02 07:50:00'),
(12, 8, 15, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2024-05-01 00:10:04', '2024-05-02 07:50:00'),
(29, 0, 0, 'HomeBanner', 'icon-address-book', 'home-banners', '*', '2025-02-28 00:05:12', '2025-02-28 00:05:12'),
(31, 0, 0, 'Gallery', 'icon-air-freshener', NULL, NULL, '2025-02-28 00:15:42', '2025-02-28 00:15:42'),
(32, 31, 0, 'Gallery Image', 'icon-align-left', 'gallery-images', '*', '2025-02-28 00:16:59', '2025-02-28 00:16:59'),
(33, 31, 0, 'Gallery Video', 'icon-align-left', 'gallery-videos', '*', '2025-02-28 00:18:05', '2025-02-28 00:18:05'),
(34, 0, 0, 'Facility', 'icon-archive', 'facilities', '*', '2025-02-28 00:18:54', '2025-02-28 00:18:54');

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
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-01 00:13:39', '2024-05-01 00:13:39'),
(2, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-05-01 00:25:33', '2024-05-01 00:25:33'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-01 00:30:04', '2024-05-01 00:30:04'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-01 03:59:23', '2024-05-01 03:59:23'),
(5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-01 06:56:56', '2024-05-01 06:56:56'),
(6, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-01 06:57:01', '2024-05-01 06:57:01'),
(7, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"contact\",\"model_name\":\"App\\\\Models\\\\Contact\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ContactController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"company\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"company_website\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"subject\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"budget\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"message\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"KnVkTQpgeUANdQB4oKuFKcFOMgarGJ1FRhdfc75W\"}', '2024-05-01 07:25:31', '2024-05-01 07:25:31'),
(8, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-01 07:25:34', '2024-05-01 07:25:34'),
(9, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-01 07:25:50', '2024-05-01 07:25:50'),
(10, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-01 07:25:52', '2024-05-01 07:25:52'),
(11, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-01 07:25:56', '2024-05-01 07:25:56'),
(12, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-01 07:33:34', '2024-05-01 07:33:34'),
(13, 1, 'admin/contacts/create', 'GET', '127.0.0.1', '[]', '2024-05-01 07:33:38', '2024-05-01 07:33:38'),
(14, 1, 'admin/contacts', 'POST', '127.0.0.1', '{\"name\":\"Damian Mcguire\",\"email\":\"wuzetunu@mailinator.com\",\"company\":\"Lang Kaufman Co\",\"company_website\":\"Horne Stafford Inc\",\"subject\":\"Rerum quasi ab fugit\",\"budget\":\"Veniam voluptatum b\",\"message\":\"Qui quibusdam perfer\",\"_token\":\"KnVkTQpgeUANdQB4oKuFKcFOMgarGJ1FRhdfc75W\"}', '2024-05-01 07:33:42', '2024-05-01 07:33:42'),
(15, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-01 07:33:42', '2024-05-01 07:33:42'),
(16, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 01:17:21', '2024-05-02 01:17:21'),
(17, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-02 01:17:25', '2024-05-02 01:17:25'),
(18, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Contact\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchDelete\",\"_key\":\"1,2,3,4,5,6,7,8,9,10,11,12,13\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 01:17:31', '2024-05-02 01:17:31'),
(19, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-02 01:17:31', '2024-05-02 01:17:31'),
(20, 1, 'admin/contacts/1,2,3,4,5,6,7,8,9,10,11,12,13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 01:17:32', '2024-05-02 01:17:32'),
(21, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-02 01:17:32', '2024-05-02 01:17:32'),
(22, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-02 01:17:34', '2024-05-02 01:17:34'),
(23, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 01:49:30', '2024-05-02 01:49:30'),
(24, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 01:49:30', '2024-05-02 01:49:30'),
(25, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-02 01:49:34', '2024-05-02 01:49:34'),
(26, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-02 01:49:36', '2024-05-02 01:49:36'),
(27, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 01:59:55', '2024-05-02 01:59:55'),
(28, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"blog_category\",\"model_name\":\"App\\\\Models\\\\BlogCategory\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\BlogCategoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_keyword\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:02:53', '2024-05-02 02:02:53'),
(29, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 02:02:53', '2024-05-02 02:02:53'),
(30, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 02:03:05', '2024-05-02 02:03:05'),
(31, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:03:07', '2024-05-02 02:03:07'),
(32, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:09:02', '2024-05-02 02:09:02'),
(33, 1, 'admin/blog-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:09:12', '2024-05-02 02:09:12'),
(34, 1, 'admin/blog-categories', 'POST', '127.0.0.1', '{\"name\":\"Digital Marketing\",\"slug\":null,\"seo_title\":\"Seo Title\",\"seo_description\":\"Seo Description\",\"seo_keyword\":\"Seo Keyword\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:09:51', '2024-05-02 02:09:51'),
(35, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:09:52', '2024-05-02 02:09:52'),
(36, 1, 'admin/blog-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:09:55', '2024-05-02 02:09:55'),
(37, 1, 'admin/blog-categories', 'POST', '127.0.0.1', '{\"name\":\"UI UX Design\",\"slug\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:10:03', '2024-05-02 02:10:03'),
(38, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:03', '2024-05-02 02:10:03'),
(39, 1, 'admin/blog-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:12', '2024-05-02 02:10:12'),
(40, 1, 'admin/blog-categories', 'POST', '127.0.0.1', '{\"name\":\"End to End Ecommerce Solution\",\"slug\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:10:15', '2024-05-02 02:10:15'),
(41, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:15', '2024-05-02 02:10:15'),
(42, 1, 'admin/blog-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:26', '2024-05-02 02:10:26'),
(43, 1, 'admin/blog-categories', 'POST', '127.0.0.1', '{\"name\":\"Website Design & Development\",\"slug\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:10:29', '2024-05-02 02:10:29'),
(44, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:30', '2024-05-02 02:10:30'),
(45, 1, 'admin/blog-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:38', '2024-05-02 02:10:38'),
(46, 1, 'admin/blog-categories', 'POST', '127.0.0.1', '{\"name\":\"APP Design & Development\",\"slug\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:10:41', '2024-05-02 02:10:41'),
(47, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:41', '2024-05-02 02:10:41'),
(48, 1, 'admin/blog-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:47', '2024-05-02 02:10:47'),
(49, 1, 'admin/blog-categories', 'POST', '127.0.0.1', '{\"name\":\"Custom Software Development\",\"slug\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:10:51', '2024-05-02 02:10:51'),
(50, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:51', '2024-05-02 02:10:51'),
(51, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:12:14', '2024-05-02 02:12:14'),
(52, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:12:43', '2024-05-02 02:12:43'),
(53, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:12:59', '2024-05-02 02:12:59'),
(54, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-02 02:13:21', '2024-05-02 02:13:21'),
(55, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:13:23', '2024-05-02 02:13:23'),
(56, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 02:13:42', '2024-05-02 02:13:42'),
(57, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"blogs\",\"model_name\":\"App\\\\Models\\\\Blog\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\BlogController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"short_content\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alt\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"url\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_keyword\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"question\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"answer\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":\"1\",\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:17:54', '2024-05-02 02:17:54'),
(58, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 02:17:55', '2024-05-02 02:17:55'),
(59, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 02:18:20', '2024-05-02 02:18:20'),
(60, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:18:22', '2024-05-02 02:18:22'),
(61, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:18:24', '2024-05-02 02:18:24'),
(62, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:18:30', '2024-05-02 02:18:30'),
(63, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:20:23', '2024-05-02 02:20:23'),
(64, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:21:09', '2024-05-02 02:21:09'),
(65, 1, 'admin/blogs', 'POST', '127.0.0.1', '{\"title\":\"Hello\",\"slug\":null,\"short_content\":null,\"alt\":null,\"url\":null,\"description\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"question\":null,\"answer\":null,\"status\":\"1\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:21:17', '2024-05-02 02:21:17'),
(66, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:21:17', '2024-05-02 02:21:17'),
(67, 1, 'admin/blogs/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 02:21:29', '2024-05-02 02:21:29'),
(68, 1, 'admin/blogs/1', 'PUT', '127.0.0.1', '{\"title\":\"APP Design & Development\",\"slug\":\"hello\",\"short_content\":null,\"alt\":null,\"url\":null,\"description\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"question\":null,\"answer\":null,\"status\":\"1\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 02:21:32', '2024-05-02 02:21:32'),
(69, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:21:32', '2024-05-02 02:21:32'),
(70, 1, 'admin/blogs/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 02:21:38', '2024-05-02 02:21:38'),
(71, 1, 'admin/blogs/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:21:44', '2024-05-02 02:21:44'),
(72, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:21:44', '2024-05-02 02:21:44'),
(73, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:22:47', '2024-05-02 02:22:47'),
(74, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:22:49', '2024-05-02 02:22:49'),
(75, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:24:35', '2024-05-02 02:24:35'),
(76, 1, 'admin/blogs', 'POST', '127.0.0.1', '{\"title\":null,\"slug\":null,\"short_content\":null,\"alt\":null,\"url\":null,\"description\":\"<p><strong>hello<\\/strong><\\/p>\",\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"question\":null,\"answer\":null,\"status\":\"1\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/blogs\"}', '2024-05-02 02:24:52', '2024-05-02 02:24:52'),
(77, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:24:53', '2024-05-02 02:24:53'),
(78, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:27:22', '2024-05-02 02:27:22'),
(79, 1, 'admin/blogs/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 02:27:24', '2024-05-02 02:27:24'),
(80, 1, 'admin/blogs/2', 'PUT', '127.0.0.1', '{\"title\":null,\"slug\":null,\"short_content\":null,\"alt\":null,\"url\":null,\"description\":\"<p><strong>hello<\\/strong><\\/p>\",\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"question\":null,\"answer\":null,\"status\":\"1\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 02:27:34', '2024-05-02 02:27:34'),
(81, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:27:35', '2024-05-02 02:27:35'),
(82, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:27:49', '2024-05-02 02:27:49'),
(83, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 03:33:15', '2024-05-02 03:33:15'),
(84, 1, 'admin/blogs/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 03:33:19', '2024-05-02 03:33:19'),
(85, 1, 'admin/blogs/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 03:33:24', '2024-05-02 03:33:24'),
(86, 1, 'admin/blogs/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 03:34:41', '2024-05-02 03:34:41'),
(87, 1, 'admin/blogs/2', 'PUT', '127.0.0.1', '{\"category_id\":\"5\",\"search_terms\":null,\"title\":\"Culpa harum aut dol\",\"slug\":null,\"short_content\":\"Impedit architecto\",\"alt\":\"Et impedit tempora\",\"url\":\"https:\\/\\/www.voc.tv\",\"description\":\"<p><strong>hello<\\/strong><\\/p>\",\"seo_title\":\"Commodi impedit eni\",\"seo_description\":\"Laborum Proident i\",\"seo_keyword\":\"Consectetur volupta\",\"question\":\"Ex non ullam ut volu\",\"answer\":\"Quis fugiat autem ve\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"after-save\":\"view\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/blogs\"}', '2024-05-02 03:35:12', '2024-05-02 03:35:12'),
(88, 1, 'admin/blogs/2', 'GET', '127.0.0.1', '[]', '2024-05-02 03:35:12', '2024-05-02 03:35:12'),
(89, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 03:35:16', '2024-05-02 03:35:16'),
(90, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 03:38:28', '2024-05-02 03:38:28'),
(91, 1, 'admin/blogs', 'POST', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Aut dignissimos sapi\",\"slug\":null,\"short_content\":\"Aut incidunt nesciu\",\"alt\":\"Omnis rem in rerum n\",\"url\":\"https:\\/\\/www.lucikitazam.org.uk\",\"description\":\"<p><em><strong>XasaSsSAs<\\/strong><\\/em><\\/p>\",\"seo_title\":\"Excepturi excepturi\",\"seo_description\":\"Eiusmod quisquam cul\",\"seo_keyword\":\"Velit illum quis a\",\"question\":\"Aut velit sit numqua\",\"answer\":\"Laboris est dolor v\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"after-save\":\"view\"}', '2024-05-02 03:38:48', '2024-05-02 03:38:48'),
(92, 1, 'admin/blogs/3', 'GET', '127.0.0.1', '[]', '2024-05-02 03:38:48', '2024-05-02 03:38:48'),
(93, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 03:38:50', '2024-05-02 03:38:50'),
(94, 1, 'admin/blogs', 'POST', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Labore sit iusto am\",\"slug\":null,\"short_content\":\"Quaerat deleniti eum\",\"alt\":\"Expedita dolores lab\",\"url\":\"https:\\/\\/www.lecali.info\",\"description\":\"<p>ZXZXzxzXzxxzxzxzxz<a href=\\\"https:\\/\\/ahitechno.com\\/\\\">https:\\/\\/ahitechno.com\\/<\\/a><\\/p>\",\"seo_title\":\"Sint deserunt ut im\",\"seo_description\":\"Est alias id et vol\",\"seo_keyword\":\"Porro amet maxime q\",\"question\":\"Et nobis rerum nemo\",\"answer\":\"Eaque excepteur do t\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 03:39:26', '2024-05-02 03:39:26'),
(95, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 03:39:27', '2024-05-02 03:39:27'),
(96, 1, 'admin/blogs/4/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 03:39:30', '2024-05-02 03:39:30'),
(97, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 03:39:45', '2024-05-02 03:39:45'),
(98, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 04:04:40', '2024-05-02 04:04:40'),
(99, 1, 'admin/blogs', 'POST', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Porro aliquam doloru\",\"slug\":null,\"short_content\":\"Possimus velit sus\",\"image_file_del_\":\"new\\/Heaven\'s Lost Property.jpg,\",\"alt\":\"Optio magni totam e\",\"url\":\"https:\\/\\/www.bore.tv\",\"description\":\"<p>utiut7tutuytuytuytuv tu uytuy&nbsp; utu utuytuyt<\\/p>\",\"seo_title\":\"In sed itaque offici\",\"seo_description\":\"Pariatur Doloremque\",\"seo_keyword\":\"Exercitationem culpa\",\"question\":\"Sint aut sunt accus\",\"answer\":\"Porro laborum Simil\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"after-save\":\"view\"}', '2024-05-02 04:05:07', '2024-05-02 04:05:07'),
(100, 1, 'admin/blogs/5', 'GET', '127.0.0.1', '[]', '2024-05-02 04:05:07', '2024-05-02 04:05:07'),
(101, 1, 'admin/blogs/5', 'GET', '127.0.0.1', '[]', '2024-05-02 04:05:09', '2024-05-02 04:05:09'),
(102, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 04:05:11', '2024-05-02 04:05:11'),
(103, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 04:05:25', '2024-05-02 04:05:25'),
(104, 1, 'admin/blogs/5', 'PUT', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Porro aliquam doloru\",\"slug\":\"porro-aliquam-doloru\",\"short_content\":\"Possimus velit sus\",\"alt\":\"Optio magni totam e\",\"url\":\"https:\\/\\/www.bore.tv\",\"description\":\"<p>utiut7tutuytuytuytuv tu uytuy&nbsp; utu utuytuyt<\\/p>\",\"seo_title\":\"In sed itaque offici\",\"seo_description\":\"Pariatur Doloremque\",\"seo_keyword\":\"Exercitationem culpa\",\"question\":\"Sint aut sunt accus\",\"answer\":\"Porro laborum Simil\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 04:05:32', '2024-05-02 04:05:32'),
(105, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 04:05:33', '2024-05-02 04:05:33'),
(106, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 06:15:29', '2024-05-02 06:15:29'),
(107, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 06:15:36', '2024-05-02 06:15:36'),
(108, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 06:15:36', '2024-05-02 06:15:36'),
(109, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 06:15:39', '2024-05-02 06:15:39'),
(110, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"title\",\"model_name\":\"App\\\\Models\\\\Title\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TitleController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"seo_title_home\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_home\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_home\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_about\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_about\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_about\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_services\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_services\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_services\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_blog\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_blog\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_blog\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_case\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_case\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_case\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_contact\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_contact\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_contact\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 06:25:01', '2024-05-02 06:25:01'),
(111, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 06:25:04', '2024-05-02 06:25:04'),
(112, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 06:25:24', '2024-05-02 06:25:24'),
(113, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-02 06:25:26', '2024-05-02 06:25:26'),
(114, 1, 'admin/titles/create', 'GET', '127.0.0.1', '[]', '2024-05-02 06:25:28', '2024-05-02 06:25:28'),
(115, 1, 'admin/titles/create', 'GET', '127.0.0.1', '[]', '2024-05-02 06:25:38', '2024-05-02 06:25:38'),
(116, 1, 'admin/titles', 'POST', '127.0.0.1', '{\"seo_title_home\":\"home title\",\"seo_des_home\":\"home des\",\"seo_key_home\":\"home key\",\"seo_title_about\":null,\"seo_des_about\":null,\"seo_key_about\":null,\"seo_title_services\":null,\"seo_des_services\":null,\"seo_key_services\":null,\"seo_title_blog\":null,\"seo_des_blog\":null,\"seo_key_blog\":null,\"seo_title_case\":null,\"seo_des_case\":null,\"seo_key_case\":null,\"seo_title_contact\":null,\"seo_des_contact\":null,\"seo_key_contact\":null,\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 06:39:39', '2024-05-02 06:39:39'),
(117, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-02 06:39:39', '2024-05-02 06:39:39'),
(118, 1, 'admin/titles/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 06:40:49', '2024-05-02 06:40:49'),
(119, 1, 'admin/titles/1', 'PUT', '127.0.0.1', '{\"seo_title_home\":\"home title\",\"seo_des_home\":\"home des\",\"seo_key_home\":\"home key\",\"seo_title_about\":\"about title\",\"seo_des_about\":\"about des\",\"seo_key_about\":\"about key\",\"seo_title_services\":\"services title\",\"seo_des_services\":\"services des\",\"seo_key_services\":\"services key\",\"seo_title_blog\":\"blog title\",\"seo_des_blog\":\"blog des\",\"seo_key_blog\":\"blog key\",\"seo_title_case\":\"case title\",\"seo_des_case\":\"case des\",\"seo_key_case\":\"case key\",\"seo_title_contact\":\"contact title\",\"seo_des_contact\":\"contact des\",\"seo_key_contact\":\"contact key\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 06:43:03', '2024-05-02 06:43:03'),
(120, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-02 06:43:03', '2024-05-02 06:43:03'),
(121, 1, 'admin/titles/create', 'GET', '127.0.0.1', '[]', '2024-05-02 07:10:44', '2024-05-02 07:10:44'),
(122, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-02 07:10:46', '2024-05-02 07:10:46'),
(123, 1, 'admin/titles/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:10:48', '2024-05-02 07:10:48'),
(124, 1, 'admin/titles/1', 'PUT', '127.0.0.1', '{\"seo_title_home\":\"home title\",\"seo_des_home\":\"home des\",\"seo_key_home\":\"home key\",\"seo_title_about\":\"about title\",\"seo_des_about\":\"about des\",\"seo_key_about\":\"about key\",\"seo_title_services\":null,\"seo_des_services\":null,\"seo_key_services\":null,\"seo_title_blog\":\"blog title\",\"seo_des_blog\":\"blog des\",\"seo_key_blog\":\"blog key\",\"seo_title_case\":\"case title\",\"seo_des_case\":\"case des\",\"seo_key_case\":\"case key\",\"seo_title_contact\":\"contact title\",\"seo_des_contact\":\"contact des\",\"seo_key_contact\":\"contact key\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 07:11:02', '2024-05-02 07:11:02'),
(125, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-02 07:11:03', '2024-05-02 07:11:03'),
(126, 1, 'admin/titles/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:17:22', '2024-05-02 07:17:22'),
(127, 1, 'admin/titles/1', 'PUT', '127.0.0.1', '{\"seo_title_home\":\"home title\",\"seo_des_home\":\"home des\",\"seo_key_home\":\"home key\",\"seo_title_about\":\"about title\",\"seo_des_about\":\"about des\",\"seo_key_about\":\"about key\",\"seo_title_services\":\"services Title\",\"seo_des_services\":\"services des\",\"seo_key_services\":\"services key\",\"seo_title_blog\":\"blog title\",\"seo_des_blog\":\"blog des\",\"seo_key_blog\":\"blog key\",\"seo_title_case\":\"case title\",\"seo_des_case\":\"case des\",\"seo_key_case\":\"case key\",\"seo_title_contact\":\"contact title\",\"seo_des_contact\":\"contact des\",\"seo_key_contact\":\"contact key\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 07:17:53', '2024-05-02 07:17:53'),
(128, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-02 07:17:53', '2024-05-02 07:17:53'),
(129, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 07:43:22', '2024-05-02 07:43:22'),
(130, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"service_category\",\"model_name\":\"App\\\\Models\\\\ServiceCategory\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ServiceCategoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 07:47:37', '2024-05-02 07:47:37'),
(131, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 07:47:37', '2024-05-02 07:47:37'),
(132, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 07:47:51', '2024-05-02 07:47:51'),
(133, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:47:53', '2024-05-02 07:47:53'),
(134, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:48:02', '2024-05-02 07:48:02'),
(135, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Blog Section\",\"icon\":\"icon-align-justify\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 07:48:26', '2024-05-02 07:48:26'),
(136, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:48:26', '2024-05-02 07:48:26'),
(137, 1, 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:49:01', '2024-05-02 07:49:01'),
(138, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:49:03', '2024-05-02 07:49:03'),
(139, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"15\\\"},{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"},{\\\"id\\\":\\\"16\\\"},{\\\"id\\\":\\\"17\\\"}]\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 07:50:00', '2024-05-02 07:50:00'),
(140, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:50:00', '2024-05-02 07:50:00'),
(141, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:50:02', '2024-05-02 07:50:02'),
(142, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:50:15', '2024-05-02 07:50:15'),
(143, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:50:19', '2024-05-02 07:50:19'),
(144, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 07:51:29', '2024-05-02 07:51:29'),
(145, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-05-02 07:51:33', '2024-05-02 07:51:33'),
(146, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:51:36', '2024-05-02 07:51:36'),
(147, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:51:59', '2024-05-02 07:51:59'),
(148, 1, 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"parent_id\":\"18\",\"search_terms\":null,\"title\":\"Blog Section\",\"icon\":\"icon-align-justify\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 07:52:04', '2024-05-02 07:52:04'),
(149, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:05', '2024-05-02 07:52:05'),
(150, 1, 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Blog Section\",\"icon\":\"icon-align-justify\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 07:52:13', '2024-05-02 07:52:13'),
(151, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:14', '2024-05-02 07:52:14'),
(152, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:17', '2024-05-02 07:52:17'),
(153, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:27', '2024-05-02 07:52:27'),
(154, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:40', '2024-05-02 07:52:40'),
(155, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:46', '2024-05-02 07:52:46'),
(156, 1, 'admin/auth/menu/18', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 07:52:49', '2024-05-02 07:52:49'),
(157, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:49', '2024-05-02 07:52:49'),
(158, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:52', '2024-05-02 07:52:52'),
(159, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:54', '2024-05-02 07:52:54'),
(160, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:55', '2024-05-02 07:52:55'),
(161, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:56', '2024-05-02 07:52:56'),
(162, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:58', '2024-05-02 07:52:58'),
(163, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:53:00', '2024-05-02 07:53:00'),
(164, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:56:49', '2024-05-02 07:56:49'),
(165, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 07:56:51', '2024-05-02 07:56:51'),
(166, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Micah Ayala\",\"slug\":\"Blanditiis eum incid\",\"seo_title\":\"Modi dolores fugiat\",\"seo_des\":\"Qui ex neque nisi re\",\"seo_key\":\"Qui ut ducimus veri\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 07:56:53', '2024-05-02 07:56:53'),
(167, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:56:53', '2024-05-02 07:56:53'),
(168, 1, 'admin/service-categories/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:58:36', '2024-05-02 07:58:36'),
(169, 1, 'admin/service-categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Micah Ayala\",\"slug\":null,\"seo_title\":\"Modi dolores fugiat\",\"seo_des\":\"Qui ex neque nisi re\",\"seo_key\":\"Qui ut ducimus veri\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 07:58:41', '2024-05-02 07:58:41'),
(170, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:58:41', '2024-05-02 07:58:41'),
(171, 1, 'admin/service-categories/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:58:45', '2024-05-02 07:58:45'),
(172, 1, 'admin/service-categories/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 07:58:47', '2024-05-02 07:58:47'),
(173, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:58:48', '2024-05-02 07:58:48'),
(174, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 23:46:57', '2024-05-02 23:46:57'),
(175, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-05-02 23:47:13', '2024-05-02 23:47:13'),
(176, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrators\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$12$UgWURSXv5Odv0QDp2Wd2Rub8veZ3hA6wiFO0R9\\/mIiQPyhPsWi7gC\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-02 23:47:17', '2024-05-02 23:47:17'),
(177, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-05-02 23:47:17', '2024-05-02 23:47:17'),
(178, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-05-02 23:47:20', '2024-05-02 23:47:20'),
(179, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 23:47:22', '2024-05-02 23:47:22'),
(180, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 23:47:24', '2024-05-02 23:47:24'),
(181, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-05-02 23:47:27', '2024-05-02 23:47:27'),
(182, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:50:38', '2024-05-02 23:50:38'),
(183, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 23:50:48', '2024-05-02 23:50:48'),
(184, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:50:56', '2024-05-02 23:50:56'),
(185, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 23:50:57', '2024-05-02 23:50:57'),
(186, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:51:01', '2024-05-02 23:51:01'),
(187, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:53:04', '2024-05-02 23:53:04'),
(188, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:53:38', '2024-05-02 23:53:38'),
(189, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:53:49', '2024-05-02 23:53:49'),
(190, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:53:55', '2024-05-02 23:53:55'),
(191, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:54:15', '2024-05-02 23:54:15'),
(192, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:54:51', '2024-05-02 23:54:51'),
(193, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 23:54:57', '2024-05-02 23:54:57'),
(194, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:54:59', '2024-05-02 23:54:59'),
(195, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 23:55:04', '2024-05-02 23:55:04'),
(196, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:55:34', '2024-05-02 23:55:34'),
(197, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:56:04', '2024-05-02 23:56:04'),
(198, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 23:56:07', '2024-05-02 23:56:07'),
(199, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:56:18', '2024-05-02 23:56:18'),
(200, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:56:55', '2024-05-02 23:56:55'),
(201, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:56:57', '2024-05-02 23:56:57'),
(202, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Marcia Rose\",\"slug\":null,\"seo_title\":\"Aliquid aut dolor po\",\"seo_description\":\"Consequatur soluta\",\"seo_keyword\":\"Amet omnis optio m\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-02 23:57:03', '2024-05-02 23:57:03'),
(203, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:57:05', '2024-05-02 23:57:05'),
(204, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:57:41', '2024-05-02 23:57:41'),
(205, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Unity Hunt\",\"slug\":null,\"seo_title\":\"Sunt est pariatur Q\",\"seo_des\":\"Et eiusmod mollit si\",\"seo_key\":\"Commodi eveniet ani\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-02 23:57:44', '2024-05-02 23:57:44'),
(206, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:57:44', '2024-05-02 23:57:44'),
(207, 1, 'admin/service-categories/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-02 23:57:53', '2024-05-02 23:57:53'),
(208, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:57:53', '2024-05-02 23:57:53'),
(209, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:58:04', '2024-05-02 23:58:04'),
(210, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Digital Marketing\",\"slug\":null,\"seo_title\":\"Veritatis mollitia l\",\"seo_des\":\"In fugiat consequat\",\"seo_key\":\"Et similique minim d\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-02 23:58:22', '2024-05-02 23:58:22'),
(211, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:58:22', '2024-05-02 23:58:22'),
(212, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:58:28', '2024-05-02 23:58:28'),
(213, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"UI UX Design\",\"slug\":null,\"seo_title\":\"Delectus odit quis\",\"seo_des\":\"Distinctio Eligendi\",\"seo_key\":\"Sit lorem veniam vo\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"after-save\":\"view\"}', '2024-05-02 23:58:33', '2024-05-02 23:58:33'),
(214, 1, 'admin/service-categories/4', 'GET', '127.0.0.1', '[]', '2024-05-02 23:58:33', '2024-05-02 23:58:33'),
(215, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:58:42', '2024-05-02 23:58:42'),
(216, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:58:43', '2024-05-02 23:58:43'),
(217, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"End to End Ecommerce Solution\",\"slug\":null,\"seo_title\":\"Velit deleniti recu\",\"seo_des\":\"Blanditiis ut esse\",\"seo_key\":\"Non culpa praesenti\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"after-save\":\"continue_creating\"}', '2024-05-02 23:58:54', '2024-05-02 23:58:54'),
(218, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:58:55', '2024-05-02 23:58:55'),
(219, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Website Design & Development\",\"slug\":null,\"seo_title\":\"Qui eaque sequi mole\",\"seo_des\":\"Incidunt nostrum el\",\"seo_key\":\"Nulla hic iure conse\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"after-save\":\"view\"}', '2024-05-02 23:59:09', '2024-05-02 23:59:09'),
(220, 1, 'admin/service-categories/6', 'GET', '127.0.0.1', '[]', '2024-05-02 23:59:09', '2024-05-02 23:59:09'),
(221, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:59:16', '2024-05-02 23:59:16'),
(222, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:59:27', '2024-05-02 23:59:27'),
(223, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"APP Design & Development\",\"slug\":null,\"seo_title\":\"Consequuntur volupta\",\"seo_des\":\"Pariatur Ea perfere\",\"seo_key\":\"Consectetur aut ex\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-02 23:59:33', '2024-05-02 23:59:33'),
(224, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:59:33', '2024-05-02 23:59:33'),
(225, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:59:40', '2024-05-02 23:59:40'),
(226, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Custom Software Development\",\"slug\":null,\"seo_title\":\"Consequatur Assumen\",\"seo_des\":\"Deserunt laborum nes\",\"seo_key\":\"Aut quas iusto non v\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-02 23:59:46', '2024-05-02 23:59:46'),
(227, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:59:46', '2024-05-02 23:59:46'),
(228, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:59:51', '2024-05-02 23:59:51'),
(229, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-03 00:05:14', '2024-05-03 00:05:14'),
(230, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"services\",\"model_name\":\"App\\\\Models\\\\Service\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ServiceController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"service_category_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"short_content\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"home_image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alt\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"url\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_keyword\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"question\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"answer\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"integer\",\"key\":null,\"default\":\"1\",\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 00:17:37', '2024-05-03 00:17:37'),
(231, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-03 00:17:39', '2024-05-03 00:17:39'),
(232, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-03 00:18:00', '2024-05-03 00:18:00'),
(233, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-03 00:19:30', '2024-05-03 00:19:30'),
(234, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 00:19:32', '2024-05-03 00:19:32'),
(235, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 00:35:48', '2024-05-03 00:35:48'),
(236, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 00:35:49', '2024-05-03 00:35:49'),
(237, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 00:41:38', '2024-05-03 00:41:38'),
(238, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"3\",\"search_terms\":null,\"title\":\"Fugiat est quisquam\",\"slug\":null,\"short_content\":\"Voluptatum qui nobis\",\"alt\":\"Maxime molestiae vol\",\"url\":\"https:\\/\\/www.wosypi.cm\",\"description\":\"<p>wwqwqewqewqe<strong>&nbsp;wwqewewe eqwewqe&nbsp;<\\/strong><\\/p>\",\"seo_title\":\"Aut vitae qui assume\",\"seo_description\":\"Placeat ad animi i\",\"seo_keyword\":\"Aliquip ipsa aut id\",\"question\":\"Quos facere commodi\",\"answer\":\"Dolor sint perferend\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 00:58:16', '2024-05-03 00:58:16'),
(239, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 00:58:17', '2024-05-03 00:58:17'),
(240, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 00:59:22', '2024-05-03 00:59:22'),
(241, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 00:59:59', '2024-05-03 00:59:59'),
(242, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"4\",\"search_terms\":null,\"title\":\"Nulla quo culpa aute\",\"slug\":null,\"short_content\":\"Ut nobis aut vel aut\",\"alt\":\"In non a consectetur\",\"url\":\"https:\\/\\/www.coqunuderifyx.org.uk\",\"description\":\"<p>UI UX De<\\/p>\",\"seo_title\":\"Officia sit asperio\",\"seo_description\":\"Voluptas dignissimos\",\"seo_keyword\":\"Adipisicing sunt ut\",\"question\":\"Illum voluptatem qu\",\"answer\":\"Eaque assumenda et u\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 01:02:06', '2024-05-03 01:02:06'),
(243, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 01:02:07', '2024-05-03 01:02:07'),
(244, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 01:02:11', '2024-05-03 01:02:11'),
(245, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"service_category_id\":\"3\",\"search_terms\":null,\"title\":\"Fugiat est quisquam\",\"slug\":\"fugiat-est-quisquam\",\"short_content\":\"Voluptatum qui nobis\",\"alt\":\"Maxime molestiae vol\",\"url\":\"https:\\/\\/www.wosypi.cm\",\"description\":\"<h3>CodePin: Your All-in-One Digital Marketing Powerhouse<\\/h3>\\r\\n\\r\\n<p><strong>We&#39;re a data-driven digital marketing agency obsessed with results.<\\/strong>&nbsp;Our passionate team of SEO specialists, content marketing wizards, social media ninjas, and PPC pros collaborate closely with you to craft a customized digital strategy that gets you noticed online.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/new\\/images\\/digital-marketing4.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>Looking to dominate search engines, skyrocket social media engagement, and achieve real business growth?<\\/strong>&nbsp;Look no further than CodePin!<\\/p>\\r\\n\\r\\n<p><strong>No matter your industry (education, SaaS, healthcare, finance, or beyond) or digital marketing experience level (beginner or seasoned pro), we&#39;ve got you covered.<\\/strong>&nbsp;We leverage the latest and most effective tools to create high-quality, results-oriented strategies.<\\/p>\\r\\n\\r\\n<p>Here&#39;s how CodePin empowers your digital presence:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li><strong>SEO Optimization:<\\/strong>&nbsp;Increase your website traffic through targeted keyword research and strategic on-page and off-page optimization.<\\/li>\\r\\n\\t<li><strong>Content Marketing:<\\/strong>&nbsp;Captivate your audience with engaging, informative content that positions you as an industry leader.<\\/li>\\r\\n\\t<li><strong>Social Media Marketing:<\\/strong>&nbsp;Build a thriving online community, boost brand awareness, and drive conversions through strategic social media management.<\\/li>\\r\\n\\t<li><strong>Pay-Per-Click (PPC) Advertising:<\\/strong>&nbsp;Reach your ideal customers with laser-focused PPC campaigns that deliver a high return on investment (ROI).<\\/li>\\r\\n<\\/ul>\",\"seo_title\":\"Aut vitae qui assume\",\"seo_description\":\"Placeat ad animi i\",\"seo_keyword\":\"Aliquip ipsa aut id\",\"question\":\"Quos facere commodi\",\"answer\":\"Dolor sint perferend\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 01:02:34', '2024-05-03 01:02:34');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(246, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 01:02:34', '2024-05-03 01:02:34'),
(247, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"service_category_id\":\"3\",\"search_terms\":null,\"title\":\"Fugiat est quisquam\",\"slug\":\"fugiat-est-quisquam\",\"short_content\":\"Voluptatum qui nobis\",\"alt\":\"Maxime molestiae vol\",\"url\":\"https:\\/\\/www.wosypi.cm\",\"description\":\"<h3>CodePin: Your All-in-One Digital Marketing Powerhouse<\\/h3>\\r\\n\\r\\n<p><strong>We&#39;re a data-driven digital marketing agency obsessed with results.<\\/strong>&nbsp;Our passionate team of SEO specialists, content marketing wizards, social media ninjas, and PPC pros collaborate closely with you to craft a customized digital strategy that gets you noticed online.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/new\\/images\\/digital-marketing4.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>Looking to dominate search engines, skyrocket social media engagement, and achieve real business growth?<\\/strong>&nbsp;Look no further than CodePin!<\\/p>\\r\\n\\r\\n<p><strong>No matter your industry (education, SaaS, healthcare, finance, or beyond) or digital marketing experience level (beginner or seasoned pro), we&#39;ve got you covered.<\\/strong>&nbsp;We leverage the latest and most effective tools to create high-quality, results-oriented strategies.<\\/p>\\r\\n\\r\\n<p>Here&#39;s how CodePin empowers your digital presence:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li><strong>SEO Optimization:<\\/strong>&nbsp;Increase your website traffic through targeted keyword research and strategic on-page and off-page optimization.<\\/li>\\r\\n\\t<li><strong>Content Marketing:<\\/strong>&nbsp;Captivate your audience with engaging, informative content that positions you as an industry leader.<\\/li>\\r\\n\\t<li><strong>Social Media Marketing:<\\/strong>&nbsp;Build a thriving online community, boost brand awareness, and drive conversions through strategic social media management.<\\/li>\\r\\n\\t<li><strong>Pay-Per-Click (PPC) Advertising:<\\/strong>&nbsp;Reach your ideal customers with laser-focused PPC campaigns that deliver a high return on investment (ROI).<\\/li>\\r\\n<\\/ul>\",\"seo_title\":\"Aut vitae qui assume\",\"seo_description\":\"Placeat ad animi i\",\"seo_keyword\":\"Aliquip ipsa aut id\",\"question\":\"Quos facere commodi\",\"answer\":\"Dolor sint perferend\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 01:03:16', '2024-05-03 01:03:16'),
(248, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 01:03:17', '2024-05-03 01:03:17'),
(249, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 01:03:23', '2024-05-03 01:03:23'),
(250, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"5\",\"search_terms\":null,\"title\":\"Esse quaerat eveniet\",\"slug\":null,\"short_content\":\"Fugiat non totam ci\",\"alt\":\"Non recusandae Ea a\",\"url\":\"https:\\/\\/www.qaronyzewaxo.me.uk\",\"description\":\"<p>asdsadsdsdsadasdsd<\\/p>\",\"seo_title\":\"Obcaecati aliqua Qu\",\"seo_description\":\"Reiciendis voluptas\",\"seo_keyword\":\"Enim hic laborum Eu\",\"question\":\"Rerum exercitation a\",\"answer\":\"Nam omnis perferendi\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 01:04:21', '2024-05-03 01:04:21'),
(251, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 01:04:21', '2024-05-03 01:04:21'),
(252, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 01:04:24', '2024-05-03 01:04:24'),
(253, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"6\",\"search_terms\":null,\"title\":\"Consequatur volupta\",\"slug\":null,\"short_content\":\"Voluptatibus dolorem\",\"alt\":\"Ut consectetur et q\",\"url\":\"https:\\/\\/www.lypomonogyn.cc\",\"description\":\"<p>asdsadas asdd asd&nbsp; a ds dsad adsads akjkja la kjlal s sa<\\/p>\",\"seo_title\":\"Dolor sunt aliquip a\",\"seo_description\":\"Nulla ut qui pariatu\",\"seo_keyword\":\"Quo porro quae recus\",\"question\":\"Quod quia cupidatat\",\"answer\":\"Animi necessitatibu\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 01:05:10', '2024-05-03 01:05:10'),
(254, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 01:05:10', '2024-05-03 01:05:10'),
(255, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 01:05:14', '2024-05-03 01:05:14'),
(256, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"7\",\"search_terms\":null,\"title\":\"Eos eveniet tempore\",\"slug\":null,\"short_content\":\"Doloribus reprehende\",\"alt\":\"Accusamus et iure ut\",\"url\":\"https:\\/\\/www.zijojocupe.cm\",\"description\":\"<p><strong>&nbsp;App design&nbsp;<\\/strong><\\/p>\",\"seo_title\":\"Aut id officiis und\",\"seo_description\":\"Perferendis corrupti\",\"seo_keyword\":\"Dolor delectus natu\",\"question\":\"Sit est voluptate a\",\"answer\":\"Ipsa non placeat p\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"after-save\":\"view\"}', '2024-05-03 01:07:16', '2024-05-03 01:07:16'),
(257, 1, 'admin/services/5', 'GET', '127.0.0.1', '[]', '2024-05-03 01:07:17', '2024-05-03 01:07:17'),
(258, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 01:07:19', '2024-05-03 01:07:19'),
(259, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 01:07:27', '2024-05-03 01:07:27'),
(260, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 01:07:38', '2024-05-03 01:07:38'),
(261, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"8\",\"search_terms\":null,\"title\":\"Laborum Laboris sun\",\"slug\":null,\"short_content\":\"Omnis voluptatem pla\",\"alt\":\"Est voluptate verita\",\"url\":\"https:\\/\\/www.mynycumyc.co.uk\",\"description\":\"<p><strong>Custom Software<\\/strong><\\/p>\",\"seo_title\":\"Est molestias totam\",\"seo_description\":\"Quisquam reprehender\",\"seo_keyword\":\"Cupiditate modi expe\",\"question\":\"Non et minus adipisc\",\"answer\":\"Eaque velit unde do\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 01:08:27', '2024-05-03 01:08:27'),
(262, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 01:08:27', '2024-05-03 01:08:27'),
(263, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 04:42:22', '2024-05-03 04:42:22'),
(264, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 04:44:05', '2024-05-03 04:44:05'),
(265, 1, 'admin/titles/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 04:44:14', '2024-05-03 04:44:14'),
(266, 1, 'admin/titles/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 04:45:04', '2024-05-03 04:45:04'),
(267, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 04:45:20', '2024-05-03 04:45:20'),
(268, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 04:45:21', '2024-05-03 04:45:21'),
(269, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 04:57:49', '2024-05-03 04:57:49'),
(270, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 05:00:21', '2024-05-03 05:00:21'),
(271, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 05:00:42', '2024-05-03 05:00:42'),
(272, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 05:00:59', '2024-05-03 05:00:59'),
(273, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:01:28', '2024-05-03 05:01:28'),
(274, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Blog Section\",\"icon\":\"icon-archive\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 05:01:57', '2024-05-03 05:01:57'),
(275, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:01:58', '2024-05-03 05:01:58'),
(276, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:01:59', '2024-05-03 05:01:59'),
(277, 1, 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:04', '2024-05-03 05:02:04'),
(278, 1, 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"20\",\"search_terms\":null,\"title\":\"Blogs\",\"icon\":\"icon-file\",\"uri\":\"blogs\",\"roles\":[null],\"permission\":null,\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 05:02:09', '2024-05-03 05:02:09'),
(279, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:09', '2024-05-03 05:02:09'),
(280, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:11', '2024-05-03 05:02:11'),
(281, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:13', '2024-05-03 05:02:13'),
(282, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:21', '2024-05-03 05:02:21'),
(283, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:26', '2024-05-03 05:02:26'),
(284, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"20\",\"search_terms\":null,\"title\":\"Blog-categories\",\"icon\":\"icon-file\",\"uri\":\"blog-categories\",\"roles\":[null],\"permission\":null,\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 05:02:30', '2024-05-03 05:02:30'),
(285, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:30', '2024-05-03 05:02:30'),
(286, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:31', '2024-05-03 05:02:31'),
(287, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Service Section\",\"icon\":\"icon-briefcase\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 05:03:27', '2024-05-03 05:03:27'),
(288, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:03:27', '2024-05-03 05:03:27'),
(289, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:03:29', '2024-05-03 05:03:29'),
(290, 1, 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 05:03:36', '2024-05-03 05:03:36'),
(291, 1, 'admin/auth/menu/19', 'PUT', '127.0.0.1', '{\"parent_id\":\"21\",\"search_terms\":null,\"title\":\"Services\",\"icon\":\"icon-file\",\"uri\":\"services\",\"roles\":[null],\"permission\":null,\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 05:03:45', '2024-05-03 05:03:45'),
(292, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:03:45', '2024-05-03 05:03:45'),
(293, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:03:47', '2024-05-03 05:03:47'),
(294, 1, 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 05:03:58', '2024-05-03 05:03:58'),
(295, 1, 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"parent_id\":\"21\",\"search_terms\":null,\"title\":\"Service-categories\",\"icon\":\"icon-file\",\"uri\":\"service-categories\",\"roles\":[null],\"permission\":null,\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 05:04:06', '2024-05-03 05:04:06'),
(296, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:04:06', '2024-05-03 05:04:06'),
(297, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:04:08', '2024-05-03 05:04:08'),
(298, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:04:42', '2024-05-03 05:04:42'),
(299, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:05:16', '2024-05-03 05:05:16'),
(300, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:05:33', '2024-05-03 05:05:33'),
(301, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:05:46', '2024-05-03 05:05:46'),
(302, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:01', '2024-05-03 05:06:01'),
(303, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:04', '2024-05-03 05:06:04'),
(304, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:08', '2024-05-03 05:06:08'),
(305, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:16', '2024-05-03 05:06:16'),
(306, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:28', '2024-05-03 05:06:28'),
(307, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:40', '2024-05-03 05:06:40'),
(308, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:44', '2024-05-03 05:06:44'),
(309, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:46', '2024-05-03 05:06:46'),
(310, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:49', '2024-05-03 05:06:49'),
(311, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:07:58', '2024-05-03 05:07:58'),
(312, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:21:04', '2024-05-03 05:21:04'),
(313, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:17', '2024-05-03 06:12:17'),
(314, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:21', '2024-05-03 06:12:21'),
(315, 1, 'admin/blogs/5', 'PUT', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Porro aliquam doloru\",\"slug\":\"porro-aliquam-doloru\",\"short_content\":\"Possimus velit sus\",\"alt\":\"Optio magni totam e\",\"url\":\"https:\\/\\/www.bore.tv\",\"description\":\"<p>utiut7tutuytuytuytuv tu uytuy&nbsp; utu utuytuyt<\\/p>\",\"seo_title\":\"In sed itaque offici\",\"seo_description\":\"Pariatur Doloremque\",\"seo_keyword\":\"Exercitationem culpa\",\"question\":\"Sint aut sunt accus\",\"answer\":\"Porro laborum Simil\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 06:12:30', '2024-05-03 06:12:30'),
(316, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:30', '2024-05-03 06:12:30'),
(317, 1, 'admin/blogs/4/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:32', '2024-05-03 06:12:32'),
(318, 1, 'admin/blogs/4', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Labore sit iusto am\",\"slug\":\"labore-sit-iusto-am\",\"short_content\":\"Quaerat deleniti eum\",\"alt\":\"Expedita dolores lab\",\"url\":\"https:\\/\\/www.lecali.info\",\"description\":\"<p>ZXZXzxzXzxxzxzxzxz<a href=\\\"https:\\/\\/ahitechno.com\\/\\\">https:\\/\\/ahitechno.com\\/<\\/a><\\/p>\",\"seo_title\":\"Sint deserunt ut im\",\"seo_description\":\"Est alias id et vol\",\"seo_keyword\":\"Porro amet maxime q\",\"question\":\"Et nobis rerum nemo\",\"answer\":\"Eaque excepteur do t\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 06:12:40', '2024-05-03 06:12:40'),
(319, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:40', '2024-05-03 06:12:40'),
(320, 1, 'admin/blogs/3/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:43', '2024-05-03 06:12:43'),
(321, 1, 'admin/blogs/3', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Aut dignissimos sapi\",\"slug\":\"aut-dignissimos-sapi\",\"short_content\":\"Aut incidunt nesciu\",\"alt\":\"Omnis rem in rerum n\",\"url\":\"https:\\/\\/www.lucikitazam.org.uk\",\"description\":\"<p><em><strong>XasaSsSAs<\\/strong><\\/em><\\/p>\",\"seo_title\":\"Excepturi excepturi\",\"seo_description\":\"Eiusmod quisquam cul\",\"seo_keyword\":\"Velit illum quis a\",\"question\":\"Aut velit sit numqua\",\"answer\":\"Laboris est dolor v\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 06:12:50', '2024-05-03 06:12:50'),
(322, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:50', '2024-05-03 06:12:50'),
(323, 1, 'admin/blogs/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:52', '2024-05-03 06:12:52'),
(324, 1, 'admin/blogs/2', 'PUT', '127.0.0.1', '{\"category_id\":\"5\",\"search_terms\":null,\"title\":\"Culpa harum aut dol\",\"slug\":\"culpa-harum-aut-dol\",\"short_content\":\"Impedit architecto\",\"alt\":\"Et impedit tempora\",\"url\":\"https:\\/\\/www.voc.tv\",\"description\":\"<p><strong>hello<\\/strong><\\/p>\",\"seo_title\":\"Commodi impedit eni\",\"seo_description\":\"Laborum Proident i\",\"seo_keyword\":\"Consectetur volupta\",\"question\":\"Ex non ullam ut volu\",\"answer\":\"Quis fugiat autem ve\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 06:13:05', '2024-05-03 06:13:05'),
(325, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:13:06', '2024-05-03 06:13:06'),
(326, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 06:13:07', '2024-05-03 06:13:07'),
(327, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:13:09', '2024-05-03 06:13:09'),
(328, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:13:15', '2024-05-03 06:13:15'),
(329, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:13:24', '2024-05-03 06:13:24'),
(330, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-12 05:52:00', '2024-08-12 05:52:00'),
(331, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-12 05:52:06', '2024-08-12 05:52:06'),
(332, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-08-12 05:59:21', '2024-08-12 05:59:21'),
(333, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-08-12 06:16:49', '2024-08-12 06:16:49'),
(334, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-12 06:16:50', '2024-08-12 06:16:50'),
(335, 1, 'admin/contacts/18/edit', 'GET', '127.0.0.1', '[]', '2024-08-12 06:16:58', '2024-08-12 06:16:58'),
(336, 1, 'admin/contacts/18/edit', 'GET', '127.0.0.1', '[]', '2024-08-12 06:17:30', '2024-08-12 06:17:30'),
(337, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-12 06:17:48', '2024-08-12 06:17:48'),
(338, 1, 'admin/contacts/18/edit', 'GET', '127.0.0.1', '[]', '2024-08-12 06:17:53', '2024-08-12 06:17:53'),
(339, 1, 'admin/contacts/18', 'PUT', '127.0.0.1', '{\"name\":\"ChandlerWiggins\",\"email\":\"bifekos@mailinator.com\",\"image_file_del_\":\"1723463133.jpg,\",\"company\":\"Powers and Freeman Inc\",\"company_website\":\"Ballard and Levy LLC\",\"subject\":\"Mobile App Development\",\"budget\":\"\\u20b9250,000+\",\"message\":\"Aliquid laboris ad m\",\"_token\":\"p2lL84zbnV1BsyEYfO2DT33Ff430fOQyEdrY2f7b\",\"_method\":\"PUT\"}', '2024-08-12 06:18:57', '2024-08-12 06:18:57'),
(340, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-12 06:18:58', '2024-08-12 06:18:58'),
(341, 1, 'admin/contacts/18/edit', 'GET', '127.0.0.1', '[]', '2024-08-12 06:19:04', '2024-08-12 06:19:04'),
(342, 1, 'admin/contacts/18/edit', 'GET', '127.0.0.1', '[]', '2024-08-12 06:25:00', '2024-08-12 06:25:00'),
(343, 1, 'admin/contacts/18/edit', 'GET', '127.0.0.1', '[]', '2024-08-12 06:25:06', '2024-08-12 06:25:06'),
(344, 1, 'admin/contacts/18', 'PUT', '127.0.0.1', '{\"name\":\"ChandlerWiggins\",\"email\":\"bifekos@mailinator.com\",\"company\":\"Powers and Freeman Inc\",\"company_website\":\"Ballard and Levy LLC\",\"subject\":\"Mobile App Development\",\"budget\":\"\\u20b9250,000+\",\"message\":\"Aliquid laboris ad m\",\"_token\":\"p2lL84zbnV1BsyEYfO2DT33Ff430fOQyEdrY2f7b\",\"_method\":\"PUT\"}', '2024-08-12 06:25:14', '2024-08-12 06:25:14'),
(345, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-12 06:25:14', '2024-08-12 06:25:14'),
(346, 1, 'admin/contacts/18/edit', 'GET', '127.0.0.1', '[]', '2024-08-12 06:25:19', '2024-08-12 06:25:19'),
(347, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-12 06:26:22', '2024-08-12 06:26:22'),
(348, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-12 06:26:23', '2024-08-12 06:26:23'),
(349, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-08-12 06:28:54', '2024-08-12 06:28:54'),
(350, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-08-12 06:31:16', '2024-08-12 06:31:16'),
(351, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-08-12 06:39:34', '2024-08-12 06:39:34'),
(352, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-08-12 06:39:35', '2024-08-12 06:39:35'),
(353, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-08-12 06:39:37', '2024-08-12 06:39:37'),
(354, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-08-12 06:39:46', '2024-08-12 06:39:46'),
(355, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-12 06:46:44', '2024-08-12 06:46:44'),
(356, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-08-12 06:46:45', '2024-08-12 06:46:45'),
(357, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-08-12 07:02:07', '2024-08-12 07:02:07'),
(358, 1, 'admin/titles/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-12 07:02:12', '2024-08-12 07:02:12'),
(359, 1, 'admin/titles/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-12 07:02:44', '2024-08-12 07:02:44'),
(360, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-08-12 07:02:48', '2024-08-12 07:02:48'),
(361, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-13 00:54:43', '2024-08-13 00:54:43'),
(362, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-13 00:54:54', '2024-08-13 00:54:54'),
(363, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"sampla\",\"model_name\":\"App\\\\Models\\\\Sample\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SampleController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"module_code\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"module_name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"assignment_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"pages\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"pricing\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"words\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"category\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":\"index\",\"default\":\"1\",\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"VfBfIRIeqeH5x2bFttc3NeCN0HMDuXgJv9pXRpOq\"}', '2024-08-13 00:58:32', '2024-08-13 00:58:32'),
(364, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-13 00:58:35', '2024-08-13 00:58:35'),
(365, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-13 00:58:52', '2024-08-13 00:58:52'),
(366, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 00:58:54', '2024-08-13 00:58:54'),
(367, 1, 'admin/samples/create', 'GET', '127.0.0.1', '[]', '2024-08-13 01:03:21', '2024-08-13 01:03:21'),
(368, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-08-13 01:04:32', '2024-08-13 01:04:32'),
(369, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-08-13 01:08:54', '2024-08-13 01:08:54'),
(370, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:08:55', '2024-08-13 01:08:55'),
(371, 1, 'admin/samples/create', 'GET', '127.0.0.1', '[]', '2024-08-13 01:08:58', '2024-08-13 01:08:58'),
(372, 1, 'admin/samples/create', 'GET', '127.0.0.1', '[]', '2024-08-13 01:09:32', '2024-08-13 01:09:32'),
(373, 1, 'admin/samples', 'POST', '127.0.0.1', '{\"category\":\"7\",\"search_terms\":null,\"module_code\":\"001\",\"module_name\":\"Module Name\",\"assignment_title\":\"Assignment title\",\"pages\":\"12\",\"pricing\":\"28\",\"words\":\"1200\",\"status\":\"1\",\"_token\":\"VfBfIRIeqeH5x2bFttc3NeCN0HMDuXgJv9pXRpOq\"}', '2024-08-13 01:10:23', '2024-08-13 01:10:23'),
(374, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:10:23', '2024-08-13 01:10:23'),
(375, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-08-13 01:10:27', '2024-08-13 01:10:27'),
(376, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-08-13 01:10:28', '2024-08-13 01:10:28'),
(377, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-08-13 01:10:29', '2024-08-13 01:10:29'),
(378, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-08-13 01:10:33', '2024-08-13 01:10:33'),
(379, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-08-13 01:10:34', '2024-08-13 01:10:34'),
(380, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:11:25', '2024-08-13 01:11:25'),
(381, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 01:11:37', '2024-08-13 01:11:37'),
(382, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"category\":\"7\",\"search_terms\":null,\"module_code\":\"001\",\"module_name\":\"Module Name\",\"assignment_title\":\"Assignment title\",\"pages\":\"12\",\"pricing\":\"28\",\"words\":\"1200\",\"status\":\"1\",\"_token\":\"VfBfIRIeqeH5x2bFttc3NeCN0HMDuXgJv9pXRpOq\",\"_method\":\"PUT\"}', '2024-08-13 01:11:43', '2024-08-13 01:11:43'),
(383, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:11:44', '2024-08-13 01:11:44'),
(384, 1, 'admin/samples/create', 'GET', '127.0.0.1', '[]', '2024-08-13 01:11:45', '2024-08-13 01:11:45'),
(385, 1, 'admin/samples', 'POST', '127.0.0.1', '{\"category\":\"8\",\"search_terms\":null,\"module_code\":\"002\",\"module_name\":\"Module Name\",\"assignment_title\":\"Assignment Title\",\"pages\":\"90\",\"pricing\":\"234\",\"words\":\"1233\",\"status\":\"1\",\"_token\":\"VfBfIRIeqeH5x2bFttc3NeCN0HMDuXgJv9pXRpOq\"}', '2024-08-13 01:12:25', '2024-08-13 01:12:25'),
(386, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:12:26', '2024-08-13 01:12:26'),
(387, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:12:37', '2024-08-13 01:12:37'),
(388, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:13:10', '2024-08-13 01:13:10'),
(389, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-08-13 01:13:16', '2024-08-13 01:13:16'),
(390, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrators\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$12$UgWURSXv5Odv0QDp2Wd2Rub8veZ3hA6wiFO0R9\\/mIiQPyhPsWi7gC\",\"_token\":\"VfBfIRIeqeH5x2bFttc3NeCN0HMDuXgJv9pXRpOq\",\"_method\":\"PUT\"}', '2024-08-13 01:13:26', '2024-08-13 01:13:26'),
(391, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-08-13 01:13:26', '2024-08-13 01:13:26'),
(392, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:13:29', '2024-08-13 01:13:29'),
(393, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:13:31', '2024-08-13 01:13:31'),
(394, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 01:33:41', '2024-08-13 01:33:41'),
(395, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"category\":\"7\",\"search_terms\":null,\"module_code\":\"001\",\"module_name\":\"Module Name\",\"assignment_title\":\"Assignment title\",\"pages\":\"12\",\"pricing\":\"28\",\"words\":\"1200\",\"status\":\"0\",\"_token\":\"VfBfIRIeqeH5x2bFttc3NeCN0HMDuXgJv9pXRpOq\",\"_method\":\"PUT\"}', '2024-08-13 01:33:45', '2024-08-13 01:33:45'),
(396, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:33:46', '2024-08-13 01:33:46'),
(397, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 01:33:53', '2024-08-13 01:33:53'),
(398, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"category\":\"7\",\"search_terms\":null,\"module_code\":\"001\",\"module_name\":\"Module Name\",\"assignment_title\":\"Assignment title\",\"pages\":\"12\",\"pricing\":\"28\",\"words\":\"1200\",\"status\":\"1\",\"_token\":\"VfBfIRIeqeH5x2bFttc3NeCN0HMDuXgJv9pXRpOq\",\"_method\":\"PUT\"}', '2024-08-13 01:33:55', '2024-08-13 01:33:55'),
(399, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:33:56', '2024-08-13 01:33:56'),
(400, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:37:50', '2024-08-13 01:37:50'),
(401, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 01:37:52', '2024-08-13 01:37:52'),
(402, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:37:54', '2024-08-13 01:37:54'),
(403, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:38:43', '2024-08-13 01:38:43'),
(404, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 01:38:45', '2024-08-13 01:38:45'),
(405, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:38:45', '2024-08-13 01:38:45'),
(406, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 01:38:46', '2024-08-13 01:38:46'),
(407, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:38:46', '2024-08-13 01:38:46'),
(408, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 01:38:47', '2024-08-13 01:38:47'),
(409, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 01:38:47', '2024-08-13 01:38:47'),
(410, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:38:48', '2024-08-13 01:38:48'),
(411, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:38:48', '2024-08-13 01:38:48'),
(412, 1, 'admin/samples/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 01:38:56', '2024-08-13 01:38:56'),
(413, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:38:57', '2024-08-13 01:38:57'),
(414, 1, 'admin/samples/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 01:38:58', '2024-08-13 01:38:58'),
(415, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:38:59', '2024-08-13 01:38:59'),
(416, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:38:59', '2024-08-13 01:38:59'),
(417, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 01:39:01', '2024-08-13 01:39:01'),
(418, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:39:02', '2024-08-13 01:39:02'),
(419, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 01:39:05', '2024-08-13 01:39:05'),
(420, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:39:05', '2024-08-13 01:39:05'),
(421, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:39:10', '2024-08-13 01:39:10'),
(422, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-13 01:39:22', '2024-08-13 01:39:22'),
(423, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-13 01:39:31', '2024-08-13 01:39:31'),
(424, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:39:35', '2024-08-13 01:39:35'),
(425, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 01:39:36', '2024-08-13 01:39:36'),
(426, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:39:36', '2024-08-13 01:39:36'),
(427, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 01:39:49', '2024-08-13 01:39:49'),
(428, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:39:50', '2024-08-13 01:39:50'),
(429, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:40:17', '2024-08-13 01:40:17'),
(430, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 01:40:19', '2024-08-13 01:40:19'),
(431, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:40:19', '2024-08-13 01:40:19'),
(432, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:41:50', '2024-08-13 01:41:50'),
(433, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 01:41:52', '2024-08-13 01:41:52'),
(434, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:41:52', '2024-08-13 01:41:52'),
(435, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 01:41:54', '2024-08-13 01:41:54'),
(436, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:41:55', '2024-08-13 01:41:55'),
(437, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 01:41:55', '2024-08-13 01:41:55'),
(438, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:41:56', '2024-08-13 01:41:56'),
(439, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 01:44:12', '2024-08-13 01:44:12'),
(440, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-13 01:44:31', '2024-08-13 01:44:31'),
(441, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-08-13 01:44:39', '2024-08-13 01:44:39'),
(442, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-13 01:44:41', '2024-08-13 01:44:41'),
(443, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-13 01:47:03', '2024-08-13 01:47:03'),
(444, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-13 01:47:07', '2024-08-13 01:47:07'),
(445, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-13 01:47:50', '2024-08-13 01:47:50'),
(446, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-13 01:50:08', '2024-08-13 01:50:08'),
(447, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-08-13 01:50:17', '2024-08-13 01:50:17'),
(448, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-13 01:50:17', '2024-08-13 01:50:17'),
(449, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-13 03:24:26', '2024-08-13 03:24:26'),
(450, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-08-13 03:25:30', '2024-08-13 03:25:30'),
(451, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-08-13 03:25:32', '2024-08-13 03:25:32'),
(452, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-13 03:25:33', '2024-08-13 03:25:33'),
(453, 1, 'admin/auth/menu/22', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"j7JW6IriK2oV1GsVfU4Wwf8HMkHdECmkWCYl2R7p\"}', '2024-08-13 03:25:40', '2024-08-13 03:25:40'),
(454, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-13 03:25:41', '2024-08-13 03:25:41'),
(455, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-13 03:26:20', '2024-08-13 03:26:20'),
(456, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-13 03:26:23', '2024-08-13 03:26:23'),
(457, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-13 03:26:58', '2024-08-13 03:26:58'),
(458, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-08-13 03:27:02', '2024-08-13 03:27:02'),
(459, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-13 03:29:33', '2024-08-13 03:29:33'),
(460, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"sample\",\"model_name\":\"App\\\\Models\\\\sample\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SampleController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"category\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"module_name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"module_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"price\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"assignment_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"pages\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"words\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"details\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":\"1\",\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"j7JW6IriK2oV1GsVfU4Wwf8HMkHdECmkWCYl2R7p\"}', '2024-08-13 03:33:28', '2024-08-13 03:33:28'),
(461, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-13 03:33:31', '2024-08-13 03:33:31'),
(462, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-13 03:33:46', '2024-08-13 03:33:46'),
(463, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 03:33:48', '2024-08-13 03:33:48'),
(464, 1, 'admin/samples/create', 'GET', '127.0.0.1', '[]', '2024-08-13 03:33:50', '2024-08-13 03:33:50'),
(465, 1, 'admin/samples/create', 'GET', '127.0.0.1', '[]', '2024-08-13 03:35:05', '2024-08-13 03:35:05'),
(466, 1, 'admin/samples/create', 'GET', '127.0.0.1', '[]', '2024-08-13 03:37:26', '2024-08-13 03:37:26'),
(467, 1, 'admin/samples', 'POST', '127.0.0.1', '{\"category\":\"7\",\"search_terms\":null,\"module_name\":\"Audra Tran\",\"module_title\":\"Ut dolore eveniet q\",\"price\":\"958\",\"assignment_title\":\"Iste voluptatem ut d\",\"pages\":\"Officia quia enim al\",\"words\":\"Dolor atque omnis in\",\"details\":\"<p>dsadsads<\\/p>\",\"status\":\"1\",\"_token\":\"j7JW6IriK2oV1GsVfU4Wwf8HMkHdECmkWCYl2R7p\",\"after-save\":\"view\"}', '2024-08-13 03:37:37', '2024-08-13 03:37:37'),
(468, 1, 'admin/samples/1', 'GET', '127.0.0.1', '[]', '2024-08-13 03:37:37', '2024-08-13 03:37:37'),
(469, 1, 'admin/samples/create', 'GET', '127.0.0.1', '[]', '2024-08-13 03:37:40', '2024-08-13 03:37:40'),
(470, 1, 'admin/samples', 'POST', '127.0.0.1', '{\"category\":\"8\",\"search_terms\":null,\"module_name\":\"Rhiannon Grimes\",\"module_title\":\"Asperiores minim et\",\"price\":\"779\",\"assignment_title\":\"Dolor dolores dolore\",\"pages\":\"Ipsum fugiat esse d\",\"words\":\"Ut veniam voluptati\",\"details\":\"<p>weryybgbbb<\\/p>\",\"status\":\"1\",\"_token\":\"j7JW6IriK2oV1GsVfU4Wwf8HMkHdECmkWCYl2R7p\"}', '2024-08-13 03:37:55', '2024-08-13 03:37:55'),
(471, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 03:37:55', '2024-08-13 03:37:55'),
(472, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 03:40:43', '2024-08-13 03:40:43'),
(473, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 03:41:00', '2024-08-13 03:41:00'),
(474, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 03:41:30', '2024-08-13 03:41:30'),
(475, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 03:42:02', '2024-08-13 03:42:02'),
(476, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 03:44:57', '2024-08-13 03:44:57'),
(477, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-08-13 04:05:43', '2024-08-13 04:05:43'),
(478, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-13 04:05:44', '2024-08-13 04:05:44'),
(479, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 04:05:50', '2024-08-13 04:05:50'),
(480, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-08-13 04:05:58', '2024-08-13 04:05:58'),
(481, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 04:05:59', '2024-08-13 04:05:59'),
(482, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-13 06:42:43', '2024-08-13 06:42:43'),
(483, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:42:46', '2024-08-13 06:42:46'),
(484, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 06:42:49', '2024-08-13 06:42:49'),
(485, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:42:49', '2024-08-13 06:42:49'),
(486, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:43:09', '2024-08-13 06:43:09'),
(487, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:43:12', '2024-08-13 06:43:12'),
(488, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"category\":\"7\",\"search_terms\":null,\"module_name\":\"Audra Tran\",\"module_title\":\"Ut dolore eveniet q\",\"price\":\"958\",\"assignment_title\":\"Iste voluptatem ut d\",\"pages\":\"Officia quia enim al\",\"words\":\"Dolor atque omnis in\",\"details\":\"<p>dsadsads<\\/p>\",\"status\":\"0\",\"_token\":\"GP71Ts8fYzN0VoDeqJgN3NHqjseBy1Qrk5vYSagx\",\"_method\":\"PUT\"}', '2024-08-13 06:43:17', '2024-08-13 06:43:17'),
(489, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:43:18', '2024-08-13 06:43:18'),
(490, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:43:20', '2024-08-13 06:43:20'),
(491, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 06:43:23', '2024-08-13 06:43:23'),
(492, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:43:23', '2024-08-13 06:43:23'),
(493, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:44:03', '2024-08-13 06:44:03'),
(494, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 06:44:05', '2024-08-13 06:44:05'),
(495, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:44:05', '2024-08-13 06:44:05'),
(496, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:44:23', '2024-08-13 06:44:23'),
(497, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 06:44:25', '2024-08-13 06:44:25'),
(498, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:44:25', '2024-08-13 06:44:25'),
(499, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:18', '2024-08-13 06:45:18'),
(500, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 06:45:20', '2024-08-13 06:45:20'),
(501, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:21', '2024-08-13 06:45:21'),
(502, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:24', '2024-08-13 06:45:24'),
(503, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:26', '2024-08-13 06:45:26'),
(504, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:27', '2024-08-13 06:45:27'),
(505, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:27', '2024-08-13 06:45:27'),
(506, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:28', '2024-08-13 06:45:28'),
(507, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:28', '2024-08-13 06:45:28'),
(508, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:29', '2024-08-13 06:45:29'),
(509, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:29', '2024-08-13 06:45:29'),
(510, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:30', '2024-08-13 06:45:30'),
(511, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:30', '2024-08-13 06:45:30'),
(512, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:31', '2024-08-13 06:45:31'),
(513, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:31', '2024-08-13 06:45:31'),
(514, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:32', '2024-08-13 06:45:32'),
(515, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:33', '2024-08-13 06:45:33'),
(516, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:33', '2024-08-13 06:45:33'),
(517, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:34', '2024-08-13 06:45:34'),
(518, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:34', '2024-08-13 06:45:34'),
(519, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:35', '2024-08-13 06:45:35'),
(520, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:35', '2024-08-13 06:45:35'),
(521, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:36', '2024-08-13 06:45:36'),
(522, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:36', '2024-08-13 06:45:36'),
(523, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:37', '2024-08-13 06:45:37'),
(524, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:38', '2024-08-13 06:45:38'),
(525, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:38', '2024-08-13 06:45:38'),
(526, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:39', '2024-08-13 06:45:39'),
(527, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:39', '2024-08-13 06:45:39'),
(528, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:40', '2024-08-13 06:45:40'),
(529, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:40', '2024-08-13 06:45:40'),
(530, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:41', '2024-08-13 06:45:41'),
(531, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:41', '2024-08-13 06:45:41'),
(532, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:42', '2024-08-13 06:45:42'),
(533, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:43', '2024-08-13 06:45:43'),
(534, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:43', '2024-08-13 06:45:43'),
(535, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:44', '2024-08-13 06:45:44'),
(536, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:44', '2024-08-13 06:45:44'),
(537, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:45', '2024-08-13 06:45:45'),
(538, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:45', '2024-08-13 06:45:45'),
(539, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:46', '2024-08-13 06:45:46'),
(540, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:46', '2024-08-13 06:45:46'),
(541, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:47', '2024-08-13 06:45:47'),
(542, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:48', '2024-08-13 06:45:48'),
(543, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:48', '2024-08-13 06:45:48'),
(544, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:45:49', '2024-08-13 06:45:49'),
(545, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:09', '2024-08-13 06:46:09'),
(546, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:09', '2024-08-13 06:46:09'),
(547, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:10', '2024-08-13 06:46:10'),
(548, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:10', '2024-08-13 06:46:10'),
(549, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:11', '2024-08-13 06:46:11'),
(550, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 06:46:11', '2024-08-13 06:46:11'),
(551, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:12', '2024-08-13 06:46:12'),
(552, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:12', '2024-08-13 06:46:12'),
(553, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:13', '2024-08-13 06:46:13'),
(554, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 06:46:14', '2024-08-13 06:46:14'),
(555, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:14', '2024-08-13 06:46:14'),
(556, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 06:46:15', '2024-08-13 06:46:15'),
(557, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:15', '2024-08-13 06:46:15'),
(558, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:16', '2024-08-13 06:46:16'),
(559, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:16', '2024-08-13 06:46:16'),
(560, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:17', '2024-08-13 06:46:17'),
(561, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:17', '2024-08-13 06:46:17'),
(562, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:18', '2024-08-13 06:46:18'),
(563, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:18', '2024-08-13 06:46:18'),
(564, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:19', '2024-08-13 06:46:19'),
(565, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:20', '2024-08-13 06:46:20'),
(566, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:20', '2024-08-13 06:46:20'),
(567, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:21', '2024-08-13 06:46:21'),
(568, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:21', '2024-08-13 06:46:21'),
(569, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 06:46:22', '2024-08-13 06:46:22'),
(570, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:22', '2024-08-13 06:46:22'),
(571, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 06:46:23', '2024-08-13 06:46:23'),
(572, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:23', '2024-08-13 06:46:23'),
(573, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:24', '2024-08-13 06:46:24'),
(574, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:25', '2024-08-13 06:46:25'),
(575, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:25', '2024-08-13 06:46:25'),
(576, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:26', '2024-08-13 06:46:26'),
(577, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:26', '2024-08-13 06:46:26'),
(578, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:27', '2024-08-13 06:46:27'),
(579, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:27', '2024-08-13 06:46:27'),
(580, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:28', '2024-08-13 06:46:28'),
(581, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:46:28', '2024-08-13 06:46:28'),
(582, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:47:19', '2024-08-13 06:47:19');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(583, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-13 06:48:44', '2024-08-13 06:48:44'),
(584, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"category\":\"7\",\"search_terms\":null,\"module_name\":\"Audra Tran\",\"module_title\":\"Ut dolore eveniet q\",\"price\":\"958\",\"assignment_title\":\"Iste voluptatem ut d\",\"pages\":\"Officia quia enim al\",\"words\":\"Dolor atque omnis in\",\"details\":\"<p>dsadsads<\\/p>\",\"status\":\"on\",\"status_cb\":\"on\",\"_token\":\"GP71Ts8fYzN0VoDeqJgN3NHqjseBy1Qrk5vYSagx\",\"_method\":\"PUT\"}', '2024-08-13 06:48:49', '2024-08-13 06:48:49'),
(585, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:48:49', '2024-08-13 06:48:49'),
(586, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 06:48:51', '2024-08-13 06:48:51'),
(587, 1, 'admin/samples/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 06:48:53', '2024-08-13 06:48:53'),
(588, 1, 'admin/samples/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 06:48:54', '2024-08-13 06:48:54'),
(589, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 06:48:55', '2024-08-13 06:48:55'),
(590, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 06:49:01', '2024-08-13 06:49:01'),
(591, 1, 'admin/samples/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-13 06:49:02', '2024-08-13 06:49:02'),
(592, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 06:49:03', '2024-08-13 06:49:03'),
(593, 1, 'admin/samples/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-13 06:49:04', '2024-08-13 06:49:04'),
(594, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-13 06:49:07', '2024-08-13 06:49:07'),
(595, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-13 23:37:55', '2024-08-13 23:37:55'),
(596, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-14 01:21:51', '2024-08-14 01:21:51'),
(597, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-14 01:21:56', '2024-08-14 01:21:56'),
(598, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-14 01:22:03', '2024-08-14 01:22:03'),
(599, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-14 01:22:05', '2024-08-14 01:22:05'),
(600, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-14 01:23:23', '2024-08-14 01:23:23'),
(601, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-14 01:23:24', '2024-08-14 01:23:24'),
(602, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-14 07:42:44', '2024-08-14 07:42:44'),
(603, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-14 07:42:55', '2024-08-14 07:42:55'),
(604, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-14 07:43:04', '2024-08-14 07:43:04'),
(605, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-14 07:43:08', '2024-08-14 07:43:08'),
(606, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-08-14 07:43:11', '2024-08-14 07:43:11'),
(607, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-14 07:43:20', '2024-08-14 07:43:20'),
(608, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-14 07:43:22', '2024-08-14 07:43:22'),
(609, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-16 00:32:24', '2024-08-16 00:32:24'),
(610, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-16 00:32:31', '2024-08-16 00:32:31'),
(611, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-16 00:32:36', '2024-08-16 00:32:36'),
(612, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-16 00:32:41', '2024-08-16 00:32:41'),
(613, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-08-16 00:32:44', '2024-08-16 00:32:44'),
(614, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-16 00:32:45', '2024-08-16 00:32:45'),
(615, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-16 00:36:41', '2024-08-16 00:36:41'),
(616, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-17 01:06:09', '2024-08-17 01:06:09'),
(617, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-17 01:06:17', '2024-08-17 01:06:17'),
(618, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-17 01:06:22', '2024-08-17 01:06:22'),
(619, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-17 01:12:53', '2024-08-17 01:12:53'),
(620, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-17 01:15:47', '2024-08-17 01:15:47'),
(621, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-17 01:17:13', '2024-08-17 01:17:13'),
(622, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-17 01:17:27', '2024-08-17 01:17:27'),
(623, 1, 'admin/contacts/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"PKWOg3yDBe2QFxyCp8SIxhjQK44n1xEO2ZUiVRoL\"}', '2024-08-17 01:17:38', '2024-08-17 01:17:38'),
(624, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-17 01:17:39', '2024-08-17 01:17:39'),
(625, 1, 'admin/contacts/17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"PKWOg3yDBe2QFxyCp8SIxhjQK44n1xEO2ZUiVRoL\"}', '2024-08-17 01:17:42', '2024-08-17 01:17:42'),
(626, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-17 01:17:43', '2024-08-17 01:17:43'),
(627, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Contact\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchDelete\",\"_key\":\"18,19\",\"_token\":\"PKWOg3yDBe2QFxyCp8SIxhjQK44n1xEO2ZUiVRoL\"}', '2024-08-17 01:17:48', '2024-08-17 01:17:48'),
(628, 1, 'admin/contacts/18,19', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"PKWOg3yDBe2QFxyCp8SIxhjQK44n1xEO2ZUiVRoL\"}', '2024-08-17 01:17:51', '2024-08-17 01:17:51'),
(629, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-17 01:17:51', '2024-08-17 01:17:51'),
(630, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-17 01:17:52', '2024-08-17 01:17:52'),
(631, 1, 'admin/contacts/20/edit', 'GET', '127.0.0.1', '[]', '2024-08-17 01:17:56', '2024-08-17 01:17:56'),
(632, 1, 'admin/contacts/20/edit', 'GET', '127.0.0.1', '[]', '2024-08-17 01:18:44', '2024-08-17 01:18:44'),
(633, 1, 'admin/contacts/20', 'PUT', '127.0.0.1', '{\"fname\":\"ShafiraCobb\",\"lname\":\"ClarkSpears\",\"email\":\"wycoronena@mailinator.com\",\"phone\":\"+19512151142\",\"message\":\"Aspernatur culpa su\",\"_token\":\"PKWOg3yDBe2QFxyCp8SIxhjQK44n1xEO2ZUiVRoL\",\"_method\":\"PUT\"}', '2024-08-17 01:18:53', '2024-08-17 01:18:53'),
(634, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-17 01:18:53', '2024-08-17 01:18:53'),
(635, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 06:26:50', '2024-08-28 06:26:50'),
(636, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-28 06:27:01', '2024-08-28 06:27:01'),
(637, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-28 06:27:07', '2024-08-28 06:27:07'),
(638, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-28 06:27:23', '2024-08-28 06:27:23'),
(639, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-28 07:16:11', '2024-08-28 07:16:11'),
(640, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-28 07:16:14', '2024-08-28 07:16:14'),
(641, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-28 07:16:18', '2024-08-28 07:16:18'),
(642, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-28 07:16:25', '2024-08-28 07:16:25'),
(643, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"off\",\"after-save\":\"exit\"}', '2024-08-28 07:44:00', '2024-08-28 07:44:00'),
(644, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-28 07:44:06', '2024-08-28 07:44:06'),
(645, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 23:40:36', '2024-08-29 23:40:36'),
(646, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-08-29 23:40:50', '2024-08-29 23:40:50'),
(647, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-08-29 23:40:53', '2024-08-29 23:40:53'),
(648, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-08-29 23:41:55', '2024-08-29 23:41:55'),
(649, 1, 'admin/blogs/5', 'PUT', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Porro aliquam doloru\",\"slug\":\"porro-aliquam-doloru\",\"short_content\":\"Possimus velit sus\",\"alt\":\"Optio magni totam e\",\"url\":\"https:\\/\\/www.bore.tv\",\"description\":\"<p>utiut7tutuytuytuytuv tu uytuy&nbsp; utu utuytuyt<\\/p>\",\"seo_title\":\"In sed itaque offici\",\"seo_description\":\"Pariatur Doloremque\",\"seo_keyword\":\"Exercitationem culpa\",\"question\":\"How can I rank my newly launched website on search engines__\\r\\nWhy are keywords important for my website\'s ranking__\\r\\nHow can I improve my website\'s user experience__\\r\\nHow does social media impact my website\\u2019s ranking__\\r\\nWhat security measures should I take to protect my website\'s ranking\",\"answer\":\"<p>To rank a new website, focus on finding the right keywords, creating a user-friendly website, and regularly updating your content. Additionally, ensure your site is mobile-friendly and optimized for local searches.<\\/p>__\\r\\n<p>Keywords help search engines understand what your site is about. By using relevant and targeted keywords, you increase the chances of your website appearing in search results when users look for related content.<\\/p>__\\r\\n<p>Enhance user experience by ensuring your site is fast, easy to navigate, and accessible on all devices. Use clear menus, readable fonts, and a simple design that guides visitors to the information they need.<\\/p>__\\r\\n<p>Sharing your site on social media can drive more traffic and increase visibility. Engaging content and regular updates on social platforms can lead to higher rankings in search engines.<\\/p>__\\r\\n<p>Protect your website by installing an SSL certificate, using strong passwords, keeping software updated, and regularly backing up your site. A secure website is more likely to rank well and avoid penalties from search engines.<\\/p>\",\"whatapp\":null,\"facebook\":null,\"linkedin\":null,\"_token\":\"9bI2V2ibcZ0TFneIh5wkvVbda3Ui9PV5Jvfrm019\",\"_method\":\"PUT\"}', '2024-08-29 23:42:16', '2024-08-29 23:42:16'),
(650, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-08-29 23:42:18', '2024-08-29 23:42:18'),
(651, 1, 'admin/blogs/5', 'PUT', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Porro aliquam doloru\",\"slug\":\"porro-aliquam-doloru\",\"short_content\":\"Possimus velit sus\",\"alt\":\"Optio magni totam e\",\"url\":\"https:\\/\\/www.bore.tv\",\"description\":\"<p>utiut7tutuytuytuytuv tu uytuy&nbsp; utu utuytuyt<\\/p>\",\"seo_title\":\"In sed itaque offici\",\"seo_description\":\"Pariatur Doloremque\",\"seo_keyword\":\"Exercitationem culpa\",\"question\":\"How can I rank my newly launched website on search engines__\\r\\nWhy are keywords important for my website\'s ranking__\\r\\nHow can I improve my website\'s user experience__\\r\\nHow does social media impact my website\\u2019s ranking__\\r\\nWhat security measures should I take to protect my website\'s ranking\",\"answer\":\"<p>To rank a new website, focus on finding the right keywords, creating a user-friendly website, and regularly updating your content. Additionally, ensure your site is mobile-friendly and optimized for local searches.<\\/p>__\\r\\n<p>Keywords help search engines understand what your site is about. By using relevant and targeted keywords, you increase the chances of your website appearing in search results when users look for related content.<\\/p>__\\r\\n<p>Enhance user experience by ensuring your site is fast, easy to navigate, and accessible on all devices. Use clear menus, readable fonts, and a simple design that guides visitors to the information they need.<\\/p>__\\r\\n<p>Sharing your site on social media can drive more traffic and increase visibility. Engaging content and regular updates on social platforms can lead to higher rankings in search engines.<\\/p>__\\r\\n<p>Protect your website by installing an SSL certificate, using strong passwords, keeping software updated, and regularly backing up your site. A secure website is more likely to rank well and avoid penalties from search engines.<\\/p>\",\"whatapp\":null,\"facebook\":null,\"linkedin\":null,\"_token\":\"9bI2V2ibcZ0TFneIh5wkvVbda3Ui9PV5Jvfrm019\",\"_method\":\"PUT\"}', '2024-08-29 23:42:45', '2024-08-29 23:42:45'),
(652, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-08-29 23:42:46', '2024-08-29 23:42:46'),
(653, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-08-29 23:42:58', '2024-08-29 23:42:58'),
(654, 1, 'admin/blogs/5', 'PUT', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Porro aliquam doloru\",\"slug\":\"porro-aliquam-doloru\",\"short_content\":\"Possimus velit sus\",\"alt\":\"Optio magni totam e\",\"url\":\"https:\\/\\/www.bore.tv\",\"description\":\"<p>utiut7tutuytuytuytuv tu uytuy&nbsp; utu utuytuyt<\\/p>\",\"seo_title\":\"In sed itaque offici\",\"seo_description\":\"Pariatur Doloremque\",\"seo_keyword\":\"Exercitationem culpa\",\"question\":\"How can I rank my newly launched website on search engines__\\r\\nWhy are keywords important for my website\'s ranking__\\r\\nHow can I improve my website\'s user experience__\\r\\nHow does social media impact my website\\u2019s ranking__\\r\\nWhat security measures should I take to protect my website\'s ranking\",\"answer\":\"Porro laborum Simil\",\"whatapp\":null,\"facebook\":null,\"linkedin\":null,\"_token\":\"9bI2V2ibcZ0TFneIh5wkvVbda3Ui9PV5Jvfrm019\",\"_method\":\"PUT\"}', '2024-08-29 23:43:10', '2024-08-29 23:43:10'),
(655, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-08-29 23:43:11', '2024-08-29 23:43:11'),
(656, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-08-29 23:43:15', '2024-08-29 23:43:15'),
(657, 1, 'admin/blogs/5', 'PUT', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Porro aliquam doloru\",\"slug\":\"porro-aliquam-doloru\",\"short_content\":\"Possimus velit sus\",\"alt\":\"Optio magni totam e\",\"url\":\"https:\\/\\/www.bore.tv\",\"description\":\"<p>utiut7tutuytuytuytuv tu uytuy&nbsp; utu utuytuyt<\\/p>\",\"seo_title\":\"In sed itaque offici\",\"seo_description\":\"Pariatur Doloremque\",\"seo_keyword\":\"Exercitationem culpa\",\"question\":\"How can I rank my newly launched website on search engines__\\r\\nWhy are keywords important for my website\'s ranking__\\r\\nHow can I improve my website\'s user experience__\\r\\nHow does social media impact my website\\u2019s ranking__\\r\\nWhat security measures should I take to protect my website\'s ranking\",\"answer\":\"<p>To rank a new website, focus on finding the right keywords, creating a user-friendly website, and regularly updating your content. Additionally, ensure your site is mobile-friendly and optimized for local searches.<\\/p>__\\r\\n<p>Keywords help search engines understand what your site is about. By using relevant and targeted keywords, you increase the chances of your website appearing in search results when users look for related content.<\\/p>__\\r\\n<p>Enhance user experience by ensuring your site is fast, easy to navigate, and accessible on all devices. Use clear menus, readable fonts, and a simple design that guides visitors to the information they need.<\\/p>__\\r\\n<p>Sharing your site on social media can drive more traffic and increase visibility. Engaging content and regular updates on social platforms can lead to higher rankings in search engines.<\\/p>__\\r\\n<p>Protect your website by installing an SSL certificate, using strong passwords, keeping software updated, and regularly backing up your site. A secure website is more likely to rank well and avoid penalties from search engines.<\\/p>\",\"whatapp\":null,\"facebook\":null,\"linkedin\":null,\"_token\":\"9bI2V2ibcZ0TFneIh5wkvVbda3Ui9PV5Jvfrm019\",\"_method\":\"PUT\"}', '2024-08-29 23:43:24', '2024-08-29 23:43:24'),
(658, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-08-29 23:43:25', '2024-08-29 23:43:25'),
(659, 1, 'admin/blogs/5', 'PUT', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Porro aliquam doloru\",\"slug\":\"porro-aliquam-doloru\",\"short_content\":\"Possimus velit sus\",\"alt\":\"Optio magni totam e\",\"url\":\"https:\\/\\/www.bore.tv\",\"description\":\"<p>utiut7tutuytuytuytuv tu uytuy&nbsp; utu utuytuyt<\\/p>\",\"seo_title\":\"In sed itaque offici\",\"seo_description\":\"Pariatur Doloremque\",\"seo_keyword\":\"Exercitationem culpa\",\"question\":\"How can I rank my newly launched website on search engines__\\r\\nWhy are keywords important for my website\'s ranking__\\r\\nHow can I improve my website\'s user experience__\\r\\nHow does social media impact my website\\u2019s ranking__\\r\\nWhat security measures should I take to protect my website\'s ranking\",\"answer\":\"<p>To rank a new website, focus on finding the right keywords, creating a user-friendly website, and regularly updating your content. Additionally, ensure your site is mobile-friendly and optimized for local searches.<\\/p>__\\r\\n<p>Keywords help search engines understand what your site is about. By using relevant and targeted keywords, you increase the chances of your website appearing in search results when users look for related content.<\\/p>__\\r\\n<p>Enhance user experience by ensuring your site is fast, easy to navigate, and accessible on all devices. Use clear menus, readable fonts, and a simple design that guides visitors to the information they need.<\\/p>__\\r\\n<p>Sharing your site on social media can drive more traffic and increase visibility. Engaging content and regular updates on social platforms can lead to higher rankings in search engines.<\\/p>__\\r\\n<p>Protect your website by installing an SSL certificate, using strong passwords, keeping software updated, and regularly backing up your site. A secure website is more likely to rank well and avoid penalties from search engines.<\\/p>\",\"whatapp\":null,\"facebook\":null,\"linkedin\":null,\"_token\":\"9bI2V2ibcZ0TFneIh5wkvVbda3Ui9PV5Jvfrm019\",\"_method\":\"PUT\"}', '2024-08-29 23:44:10', '2024-08-29 23:44:10'),
(660, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-08-29 23:44:11', '2024-08-29 23:44:11'),
(661, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-08-29 23:49:25', '2024-08-29 23:49:25'),
(662, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-30 00:41:33', '2024-08-30 00:41:33'),
(663, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-30 00:41:35', '2024-08-30 00:41:35'),
(664, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-30 01:23:44', '2024-08-30 01:23:44'),
(665, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-30 01:23:54', '2024-08-30 01:23:54'),
(666, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-30 01:23:57', '2024-08-30 01:23:57'),
(667, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"category\":\"7\",\"search_terms\":null,\"module_name\":\"Module Name\",\"module_code\":\"001\",\"pricing\":\"28\",\"assignment_title\":\"Assignment title\",\"pages\":\"12\",\"words\":\"1200\",\"details\":\"<h3><strong>Assignment Title:<\\/strong> Automated Tool Development for Mitigating Stored XSS in Web Applications<\\/h3>\\r\\n\\r\\n<h3><strong>Objective:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Develop an automated tool using Ansible to detect and mitigate stored XSS vulnerabilities in web applications.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>Background:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Stored XSS vulnerabilities can allow attackers to inject malicious scripts into web pages viewed by other users. This assignment focuses on creating an automated solution to prevent such attacks.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>Instructions:<\\/strong><\\/h3>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<p><strong>Task Breakdown:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Research stored XSS vulnerabilities and their impact.<\\/li>\\r\\n\\t\\t<li>Set up a web application environment where stored XSS can be tested.<\\/li>\\r\\n\\t\\t<li>Write Ansible playbooks to detect stored XSS in the application.<\\/li>\\r\\n\\t\\t<li>Implement mitigation strategies using Ansible tasks.<\\/li>\\r\\n\\t\\t<li>Test the automated tool for effectiveness.<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Tools and Resources:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Ansible<\\/li>\\r\\n\\t\\t<li>Web application framework (e.g., Django, Flask, Laravel)<\\/li>\\r\\n\\t\\t<li>Virtualization tools (e.g., Docker, Vagrant)<\\/li>\\r\\n\\t\\t<li>Reference: OWASP guidelines on XSS vulnerabilities<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Submission Guidelines:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Submit the Ansible playbook files in a ZIP folder.<\\/li>\\r\\n\\t\\t<li>Include a report (in PDF) explaining the approach, challenges faced, and how the tool mitigates stored XSS.<\\/li>\\r\\n\\t\\t<li>Name the ZIP folder as <code>XSS_Mitigation_[YourName]<\\/code>.<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Evaluation Criteria:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Accuracy of the detection methods<\\/li>\\r\\n\\t\\t<li>Effectiveness of the mitigation strategies<\\/li>\\r\\n\\t\\t<li>Quality of the code (readability, modularity)<\\/li>\\r\\n\\t\\t<li>Clarity of the report<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Deliverables:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Ansible playbook files<\\/li>\\r\\n\\t\\t<li>PDF report<\\/li>\\r\\n\\t\\t<li>Test results (screenshots, logs)<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<h3><strong>Additional Notes:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Consider edge cases where stored XSS might be difficult to detect.<\\/li>\\r\\n\\t<li>Ensure the playbook is modular and reusable for other web applications.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>Deadline:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>The assignment is due by [Insert Date and Time Here].<\\/li>\\r\\n<\\/ul>\",\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"9bI2V2ibcZ0TFneIh5wkvVbda3Ui9PV5Jvfrm019\",\"_method\":\"PUT\"}', '2024-08-30 01:24:58', '2024-08-30 01:24:58'),
(668, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-30 01:24:58', '2024-08-30 01:24:58'),
(669, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-30 01:26:48', '2024-08-30 01:26:48'),
(670, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-30 01:27:20', '2024-08-30 01:27:20'),
(671, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-30 01:27:26', '2024-08-30 01:27:26'),
(672, 1, 'admin/samples/1', 'PUT', '127.0.0.1', '{\"category\":\"7\",\"search_terms\":null,\"module_name\":\"Module Name\",\"module_code\":\"001\",\"pricing\":\"28\",\"assignment_title\":\"Assignment title\",\"pages\":\"12\",\"words\":\"1200\",\"details\":\"<h3><strong>Assignment Title:<\\/strong> Automated Tool Development for Mitigating Stored XSS in Web Applications<\\/h3>\\r\\n\\r\\n<h3><strong>Objective:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Develop an automated tool using Ansible to detect and mitigate stored XSS vulnerabilities in web applications.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>Background:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Stored XSS vulnerabilities can allow attackers to inject malicious scripts into web pages viewed by other users. This assignment focuses on creating an automated solution to prevent such attacks.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>Instructions:<\\/strong><\\/h3>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<p><strong>Task Breakdown:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Research stored XSS vulnerabilities and their impact.<\\/li>\\r\\n\\t\\t<li>Set up a web application environment where stored XSS can be tested.<\\/li>\\r\\n\\t\\t<li>Write Ansible playbooks to detect stored XSS in the application.<\\/li>\\r\\n\\t\\t<li>Implement mitigation strategies using Ansible tasks.<\\/li>\\r\\n\\t\\t<li>Test the automated tool for effectiveness.<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Tools and Resources:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Ansible<\\/li>\\r\\n\\t\\t<li>Web application framework (e.g., Django, Flask, Laravel)<\\/li>\\r\\n\\t\\t<li>Virtualization tools (e.g., Docker, Vagrant)<\\/li>\\r\\n\\t\\t<li>Reference: OWASP guidelines on XSS vulnerabilities<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Submission Guidelines:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Submit the Ansible playbook files in a ZIP folder.<\\/li>\\r\\n\\t\\t<li>Include a report (in PDF) explaining the approach, challenges faced, and how the tool mitigates stored XSS.<\\/li>\\r\\n\\t\\t<li>Name the ZIP folder as <code>XSS_Mitigation_[YourName]<\\/code>.<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Evaluation Criteria:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Accuracy of the detection methods<\\/li>\\r\\n\\t\\t<li>Effectiveness of the mitigation strategies<\\/li>\\r\\n\\t\\t<li>Quality of the code (readability, modularity)<\\/li>\\r\\n\\t\\t<li>Clarity of the report<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Deliverables:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Ansible playbook files<\\/li>\\r\\n\\t\\t<li>PDF report<\\/li>\\r\\n\\t\\t<li>Test results (screenshots, logs)<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<h3><strong>Additional Notes:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Consider edge cases where stored XSS might be difficult to detect.<\\/li>\\r\\n\\t<li>Ensure the playbook is modular and reusable for other web applications.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>Deadline:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>The assignment is due by [Insert Date and Time Here].<\\/li>\\r\\n<\\/ul>\",\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"9bI2V2ibcZ0TFneIh5wkvVbda3Ui9PV5Jvfrm019\",\"_method\":\"PUT\"}', '2024-08-30 01:27:38', '2024-08-30 01:27:38'),
(673, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-30 01:27:39', '2024-08-30 01:27:39'),
(674, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-30 01:27:49', '2024-08-30 01:27:49'),
(675, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-30 01:27:56', '2024-08-30 01:27:56'),
(676, 1, 'admin/samples/2/edit', 'GET', '127.0.0.1', '[]', '2024-08-30 01:29:14', '2024-08-30 01:29:14'),
(677, 1, 'admin/samples/2', 'PUT', '127.0.0.1', '{\"category\":\"8\",\"search_terms\":null,\"module_name\":\"Module Name\",\"module_code\":\"002\",\"pricing\":\"234\",\"assignment_title\":\"Assignment Title\",\"pages\":\"90\",\"words\":\"1233\",\"details\":null,\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"9bI2V2ibcZ0TFneIh5wkvVbda3Ui9PV5Jvfrm019\",\"_method\":\"PUT\"}', '2024-08-30 01:29:20', '2024-08-30 01:29:20'),
(678, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-30 01:29:20', '2024-08-30 01:29:20'),
(679, 1, 'admin/samples/2/edit', 'GET', '127.0.0.1', '[]', '2024-08-30 01:29:22', '2024-08-30 01:29:22'),
(680, 1, 'admin/samples/2', 'PUT', '127.0.0.1', '{\"category\":\"8\",\"search_terms\":null,\"module_name\":\"Module Name\",\"module_code\":\"002\",\"pricing\":\"234\",\"assignment_title\":\"Assignment Title\",\"pages\":\"90\",\"words\":\"1233\",\"details\":\"<h3><strong>Assignment Title:<\\/strong> E-commerce Application Development with Payment Gateway Integration<\\/h3>\\r\\n\\r\\n<h3><strong>Objective:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Develop an e-commerce web application and integrate a payment gateway to handle transactions securely.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>Background:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>E-commerce applications require secure and efficient payment processing to ensure smooth transactions between buyers and sellers. This assignment focuses on developing a functional e-commerce platform and implementing a payment gateway for real-time transaction processing.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>Instructions:<\\/strong><\\/h3>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<p><strong>Task Breakdown:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>\\r\\n\\t\\t<p><strong>Project Setup:<\\/strong><\\/p>\\r\\n\\r\\n\\t\\t<ul>\\r\\n\\t\\t\\t<li>Set up a web development environment using a suitable framework (e.g., Laravel, Django, Node.js).<\\/li>\\r\\n\\t\\t\\t<li>Initialize a new project repository with version control (e.g., Git).<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n\\t\\t<\\/li>\\r\\n\\t\\t<li>\\r\\n\\t\\t<p><strong>E-commerce Features Development:<\\/strong><\\/p>\\r\\n\\r\\n\\t\\t<ul>\\r\\n\\t\\t\\t<li>Implement core e-commerce features such as product listing, shopping cart, user authentication, and order management.<\\/li>\\r\\n\\t\\t\\t<li>Ensure that the product pages are dynamic, allowing easy addition and removal of products.<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n\\t\\t<\\/li>\\r\\n\\t\\t<li>\\r\\n\\t\\t<p><strong>Payment Gateway Integration:<\\/strong><\\/p>\\r\\n\\r\\n\\t\\t<ul>\\r\\n\\t\\t\\t<li>Research and select a payment gateway (e.g., PayU, Stripe, PayPal).<\\/li>\\r\\n\\t\\t\\t<li>Integrate the payment gateway into the application following best practices.<\\/li>\\r\\n\\t\\t\\t<li>Implement payment processing functionality, including order validation and payment confirmation.<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n\\t\\t<\\/li>\\r\\n\\t\\t<li>\\r\\n\\t\\t<p><strong>Testing:<\\/strong><\\/p>\\r\\n\\r\\n\\t\\t<ul>\\r\\n\\t\\t\\t<li>Conduct unit tests and integration tests to ensure all components work as expected.<\\/li>\\r\\n\\t\\t\\t<li>Simulate transactions to test the payment gateway integration.<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n\\t\\t<\\/li>\\r\\n\\t\\t<li>\\r\\n\\t\\t<p><strong>Documentation:<\\/strong><\\/p>\\r\\n\\r\\n\\t\\t<ul>\\r\\n\\t\\t\\t<li>Document the steps taken to integrate the payment gateway.<\\/li>\\r\\n\\t\\t\\t<li>Provide a user guide on how to navigate and use the e-commerce platform.<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n\\t\\t<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Tools and Resources:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Web development framework (e.g., Laravel, Django)<\\/li>\\r\\n\\t\\t<li>Payment gateway API documentation (e.g., PayU API)<\\/li>\\r\\n\\t\\t<li>Version control system (e.g., Git)<\\/li>\\r\\n\\t\\t<li>Testing tools (e.g., PHPUnit for PHP, PyTest for Python)<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Submission Guidelines:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Submit the complete project repository, including all source code, in a ZIP file.<\\/li>\\r\\n\\t\\t<li>Include a README file with instructions on how to set up and run the application.<\\/li>\\r\\n\\t\\t<li>Submit a PDF report explaining the payment gateway integration process and any challenges encountered.<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Evaluation Criteria:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Functionality of the e-commerce features<\\/li>\\r\\n\\t\\t<li>Successful integration of the payment gateway<\\/li>\\r\\n\\t\\t<li>Quality of code (modularity, adherence to coding standards)<\\/li>\\r\\n\\t\\t<li>Thoroughness of testing<\\/li>\\r\\n\\t\\t<li>Clarity and completeness of documentation<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Deliverables:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Source code files (in a ZIP folder)<\\/li>\\r\\n\\t\\t<li>PDF report<\\/li>\\r\\n\\t\\t<li>README file with setup instructions<\\/li>\\r\\n\\t\\t<li>Test results and logs<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<h3><strong>Additional Notes:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ensure that the payment gateway integration follows secure coding practices to protect sensitive user data.<\\/li>\\r\\n\\t<li>Consider edge cases, such as failed transactions, and implement appropriate error handling.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>Deadline:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>The assignment is due by [Insert Date and Time Here].<\\/li>\\r\\n<\\/ul>\",\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"9bI2V2ibcZ0TFneIh5wkvVbda3Ui9PV5Jvfrm019\",\"_method\":\"PUT\"}', '2024-08-30 01:29:38', '2024-08-30 01:29:38'),
(681, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-30 01:29:39', '2024-08-30 01:29:39'),
(682, 1, 'admin/samples/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-30 01:30:08', '2024-08-30 01:30:08'),
(683, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-30 01:30:19', '2024-08-30 01:30:19'),
(684, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-30 01:30:45', '2024-08-30 01:30:45'),
(685, 1, 'admin/samples/2/edit', 'GET', '127.0.0.1', '[]', '2024-08-30 03:44:11', '2024-08-30 03:44:11'),
(686, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-30 03:44:15', '2024-08-30 03:44:15'),
(687, 1, 'admin/samples/1', 'GET', '127.0.0.1', '[]', '2024-08-30 03:50:34', '2024-08-30 03:50:34'),
(688, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-30 03:50:36', '2024-08-30 03:50:36'),
(689, 1, 'admin/samples/2/edit', 'GET', '127.0.0.1', '[]', '2024-08-30 03:50:38', '2024-08-30 03:50:38'),
(690, 1, 'admin/samples/2', 'PUT', '127.0.0.1', '{\"category\":\"8\",\"search_terms\":null,\"module_name\":\"Module Name\",\"module_code\":\"002\",\"pricing\":\"234\",\"assignment_title\":\"Assignment Title\",\"pages\":\"90\",\"words\":\"1233\",\"details\":\"<h3><strong>Assignment Title:<\\/strong> E-commerce Application Development with Payment Gateway Integration<\\/h3>\\r\\n\\r\\n<h3><strong>Objective:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Develop an e-commerce web application and integrate a payment gateway to handle transactions securely.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>Background:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>E-commerce applications require secure and efficient payment processing to ensure smooth transactions between buyers and sellers. This assignment focuses on developing a functional e-commerce platform and implementing a payment gateway for real-time transaction processing.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>Instructions:<\\/strong><\\/h3>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<p><strong>Task Breakdown:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>\\r\\n\\t\\t<p><strong>Project Setup:<\\/strong><\\/p>\\r\\n\\r\\n\\t\\t<ul>\\r\\n\\t\\t\\t<li>Set up a web development environment using a suitable framework (e.g., Laravel, Django, Node.js).<\\/li>\\r\\n\\t\\t\\t<li>Initialize a new project repository with version control (e.g., Git).<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n\\t\\t<\\/li>\\r\\n\\t\\t<li>\\r\\n\\t\\t<p><strong>E-commerce Features Development:<\\/strong><\\/p>\\r\\n\\r\\n\\t\\t<ul>\\r\\n\\t\\t\\t<li>Implement core e-commerce features such as product listing, shopping cart, user authentication, and order management.<\\/li>\\r\\n\\t\\t\\t<li>Ensure that the product pages are dynamic, allowing easy addition and removal of products.<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n\\t\\t<\\/li>\\r\\n\\t\\t<li>\\r\\n\\t\\t<p><strong>Payment Gateway Integration:<\\/strong><\\/p>\\r\\n\\r\\n\\t\\t<ul>\\r\\n\\t\\t\\t<li>Research and select a payment gateway (e.g., PayU, Stripe, PayPal).<\\/li>\\r\\n\\t\\t\\t<li>Integrate the payment gateway into the application following best practices.<\\/li>\\r\\n\\t\\t\\t<li>Implement payment processing functionality, including order validation and payment confirmation.<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n\\t\\t<\\/li>\\r\\n\\t\\t<li>\\r\\n\\t\\t<p><strong>Testing:<\\/strong><\\/p>\\r\\n\\r\\n\\t\\t<ul>\\r\\n\\t\\t\\t<li>Conduct unit tests and integration tests to ensure all components work as expected.<\\/li>\\r\\n\\t\\t\\t<li>Simulate transactions to test the payment gateway integration.<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n\\t\\t<\\/li>\\r\\n\\t\\t<li>\\r\\n\\t\\t<p><strong>Documentation:<\\/strong><\\/p>\\r\\n\\r\\n\\t\\t<ul>\\r\\n\\t\\t\\t<li>Document the steps taken to integrate the payment gateway.<\\/li>\\r\\n\\t\\t\\t<li>Provide a user guide on how to navigate and use the e-commerce platform.<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n\\t\\t<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Tools and Resources:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Web development framework (e.g., Laravel, Django)<\\/li>\\r\\n\\t\\t<li>Payment gateway API documentation (e.g., PayU API)<\\/li>\\r\\n\\t\\t<li>Version control system (e.g., Git)<\\/li>\\r\\n\\t\\t<li>Testing tools (e.g., PHPUnit for PHP, PyTest for Python)<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Submission Guidelines:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Submit the complete project repository, including all source code, in a ZIP file.<\\/li>\\r\\n\\t\\t<li>Include a README file with instructions on how to set up and run the application.<\\/li>\\r\\n\\t\\t<li>Submit a PDF report explaining the payment gateway integration process and any challenges encountered.<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Evaluation Criteria:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Functionality of the e-commerce features<\\/li>\\r\\n\\t\\t<li>Successful integration of the payment gateway<\\/li>\\r\\n\\t\\t<li>Quality of code (modularity, adherence to coding standards)<\\/li>\\r\\n\\t\\t<li>Thoroughness of testing<\\/li>\\r\\n\\t\\t<li>Clarity and completeness of documentation<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Deliverables:<\\/strong><\\/p>\\r\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>Source code files (in a ZIP folder)<\\/li>\\r\\n\\t\\t<li>PDF report<\\/li>\\r\\n\\t\\t<li>README file with setup instructions<\\/li>\\r\\n\\t\\t<li>Test results and logs<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<h3><strong>Additional Notes:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ensure that the payment gateway integration follows secure coding practices to protect sensitive user data.<\\/li>\\r\\n\\t<li>Consider edge cases, such as failed transactions, and implement appropriate error handling.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>Deadline:<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>The assignment is due by [Insert Date and Time Here].<\\/li>\\r\\n<\\/ul>\",\"status\":\"off\",\"_token\":\"9bI2V2ibcZ0TFneIh5wkvVbda3Ui9PV5Jvfrm019\",\"_method\":\"PUT\"}', '2024-08-30 03:50:45', '2024-08-30 03:50:45'),
(691, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-30 03:50:45', '2024-08-30 03:50:45'),
(692, 1, 'admin/samples/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2024-08-30 03:50:47', '2024-08-30 03:50:47'),
(693, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-30 05:03:32', '2024-08-30 05:03:32'),
(694, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-08-30 05:03:36', '2024-08-30 05:03:36'),
(695, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-08-31 03:50:10', '2024-08-31 03:50:10'),
(696, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-31 03:50:11', '2024-08-31 03:50:11'),
(697, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-31 03:50:17', '2024-08-31 03:50:17'),
(698, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-31 03:50:30', '2024-08-31 03:50:30'),
(699, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Assignment\",\"model_name\":\"App\\\\Models\\\\\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\"}', '2024-08-31 03:50:45', '2024-08-31 03:50:45'),
(700, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-31 03:50:46', '2024-08-31 03:50:46'),
(701, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"assignment\",\"model_name\":\"App\\\\Models\\\\Assignment\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\AssignmentController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"topic\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"phone\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"stu_name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"deadline\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"course\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\"}', '2024-08-31 03:52:38', '2024-08-31 03:52:38'),
(702, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-31 03:52:41', '2024-08-31 03:52:41'),
(703, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-31 03:52:54', '2024-08-31 03:52:54'),
(704, 1, 'admin/assignments', 'GET', '127.0.0.1', '[]', '2024-08-31 03:52:56', '2024-08-31 03:52:56'),
(705, 1, 'admin/assignments', 'GET', '127.0.0.1', '[]', '2024-08-31 04:32:08', '2024-08-31 04:32:08'),
(706, 1, 'admin/assignments/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 04:32:24', '2024-08-31 04:32:24'),
(707, 1, 'admin/assignments', 'GET', '127.0.0.1', '[]', '2024-08-31 04:32:36', '2024-08-31 04:32:36'),
(708, 1, 'admin/assignments', 'GET', '127.0.0.1', '[]', '2024-08-31 04:34:14', '2024-08-31 04:34:14'),
(709, 1, 'admin/assignments/1', 'GET', '127.0.0.1', '[]', '2024-08-31 04:34:35', '2024-08-31 04:34:35'),
(710, 1, 'admin/assignments', 'GET', '127.0.0.1', '[]', '2024-08-31 04:34:37', '2024-08-31 04:34:37'),
(711, 1, 'admin/assignments/2', 'GET', '127.0.0.1', '[]', '2024-08-31 04:34:40', '2024-08-31 04:34:40'),
(712, 1, 'admin/assignments', 'GET', '127.0.0.1', '[]', '2024-08-31 04:34:42', '2024-08-31 04:34:42'),
(713, 1, 'admin/assignments', 'GET', '127.0.0.1', '[]', '2024-08-31 04:35:00', '2024-08-31 04:35:00'),
(714, 1, 'admin/assignments/1', 'GET', '127.0.0.1', '[]', '2024-08-31 04:35:06', '2024-08-31 04:35:06'),
(715, 1, 'admin/assignments', 'GET', '127.0.0.1', '[]', '2024-08-31 04:35:09', '2024-08-31 04:35:09'),
(716, 1, 'admin/assignments', 'GET', '127.0.0.1', '[]', '2024-08-31 04:46:40', '2024-08-31 04:46:40'),
(717, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-31 04:46:43', '2024-08-31 04:46:43'),
(718, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-31 04:56:10', '2024-08-31 04:56:10'),
(719, 1, 'admin/assignments', 'GET', '127.0.0.1', '[]', '2024-08-31 04:56:15', '2024-08-31 04:56:15'),
(720, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Assignment\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchDelete\",\"_key\":\"1,2,3,4\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\"}', '2024-08-31 04:56:25', '2024-08-31 04:56:25'),
(721, 1, 'admin/assignments', 'GET', '127.0.0.1', '[]', '2024-08-31 04:56:26', '2024-08-31 04:56:26'),
(722, 1, 'admin/assignments/1,2,3,4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\"}', '2024-08-31 04:56:26', '2024-08-31 04:56:26'),
(723, 1, 'admin/assignments', 'GET', '127.0.0.1', '[]', '2024-08-31 04:56:26', '2024-08-31 04:56:26'),
(724, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-31 04:56:29', '2024-08-31 04:56:29'),
(725, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Contact\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchDelete\",\"_key\":\"20,21,22,23\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\"}', '2024-08-31 04:56:38', '2024-08-31 04:56:38'),
(726, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-31 04:56:38', '2024-08-31 04:56:38'),
(727, 1, 'admin/contacts/20,21,22,23', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\"}', '2024-08-31 04:56:39', '2024-08-31 04:56:39'),
(728, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-08-31 04:56:39', '2024-08-31 04:56:39'),
(729, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-31 05:10:32', '2024-08-31 05:10:32'),
(730, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"student_testimonial\",\"model_name\":\"App\\\\Models\\\\StudentTestimonial\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\StudentTestimonialController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"star\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"des\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"profession\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"country\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\"}', '2024-08-31 05:12:19', '2024-08-31 05:12:19'),
(731, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-31 05:12:20', '2024-08-31 05:12:20'),
(732, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-31 05:12:45', '2024-08-31 05:12:45'),
(733, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:12:47', '2024-08-31 05:12:47'),
(734, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:15:05', '2024-08-31 05:15:05'),
(735, 1, 'admin/student-testimonials/create', 'GET', '127.0.0.1', '[]', '2024-08-31 05:15:07', '2024-08-31 05:15:07'),
(736, 1, 'admin/student-testimonials', 'POST', '127.0.0.1', '{\"star\":\"5\",\"des\":null,\"name\":null,\"profession\":null,\"country\":null,\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\"}', '2024-08-31 05:15:15', '2024-08-31 05:15:15'),
(737, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:15:15', '2024-08-31 05:15:15'),
(738, 1, 'admin/student-testimonials/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:15:17', '2024-08-31 05:15:17'),
(739, 1, 'admin/student-testimonials/1', 'PUT', '127.0.0.1', '{\"star\":\"5\",\"des\":null,\"name\":null,\"profession\":null,\"country\":null,\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:15:19', '2024-08-31 05:15:19'),
(740, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:15:20', '2024-08-31 05:15:20'),
(741, 1, 'admin/student-testimonials/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:15:22', '2024-08-31 05:15:22'),
(742, 1, 'admin/student-testimonials/1', 'PUT', '127.0.0.1', '{\"star\":\"5\",\"des\":null,\"name\":null,\"profession\":null,\"country\":null,\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:15:26', '2024-08-31 05:15:26'),
(743, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:15:26', '2024-08-31 05:15:26'),
(744, 1, 'admin/student-testimonials/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:15:30', '2024-08-31 05:15:30'),
(745, 1, 'admin/student-testimonials/1', 'PUT', '127.0.0.1', '{\"star\":\"2\",\"des\":null,\"name\":null,\"profession\":null,\"country\":null,\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:15:36', '2024-08-31 05:15:36'),
(746, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:15:36', '2024-08-31 05:15:36'),
(747, 1, 'admin/student-testimonials/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:15:50', '2024-08-31 05:15:50'),
(748, 1, 'admin/student-testimonials/1', 'PUT', '127.0.0.1', '{\"star\":\"1\",\"des\":null,\"name\":null,\"profession\":null,\"country\":null,\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:16:06', '2024-08-31 05:16:06'),
(749, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:16:06', '2024-08-31 05:16:06'),
(750, 1, 'admin/student-testimonials/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:16:09', '2024-08-31 05:16:09'),
(751, 1, 'admin/student-testimonials/1', 'PUT', '127.0.0.1', '{\"star\":\"3\",\"des\":\"i am a student\",\"name\":\"lisa\",\"profession\":\"UX - Designer\",\"country\":\"USA\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:17:22', '2024-08-31 05:17:22'),
(752, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:17:22', '2024-08-31 05:17:22'),
(753, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:17:50', '2024-08-31 05:17:50'),
(754, 1, 'admin/student-testimonials/create', 'GET', '127.0.0.1', '[]', '2024-08-31 05:18:54', '2024-08-31 05:18:54');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(755, 1, 'admin/student-testimonials', 'POST', '127.0.0.1', '{\"star\":\"1\",\"des\":\"Ratione libero nisi\",\"name\":\"Chandler Goodwin\",\"profession\":\"Necessitatibus tempo\",\"country\":\"Velit dolore consect\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\"}', '2024-08-31 05:19:10', '2024-08-31 05:19:10'),
(756, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:19:10', '2024-08-31 05:19:10'),
(757, 1, 'admin/student-testimonials/create', 'GET', '127.0.0.1', '[]', '2024-08-31 05:19:14', '2024-08-31 05:19:14'),
(758, 1, 'admin/student-testimonials', 'POST', '127.0.0.1', '{\"star\":\"4\",\"des\":\"Pariatur Porro nequ\",\"name\":\"Haley Bauer\",\"profession\":\"Est consequatur exc\",\"country\":\"Aperiam quae a quia\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"after-save\":\"view\"}', '2024-08-31 05:19:26', '2024-08-31 05:19:26'),
(759, 1, 'admin/student-testimonials/3', 'GET', '127.0.0.1', '[]', '2024-08-31 05:19:26', '2024-08-31 05:19:26'),
(760, 1, 'admin/student-testimonials/create', 'GET', '127.0.0.1', '[]', '2024-08-31 05:19:28', '2024-08-31 05:19:28'),
(761, 1, 'admin/student-testimonials', 'POST', '127.0.0.1', '{\"star\":\"5\",\"des\":\"Eligendi necessitati\",\"name\":\"Nelle Bruce\",\"profession\":\"Aut et voluptatem de\",\"country\":\"Molestias expedita i\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"after-save\":\"view\"}', '2024-08-31 05:19:41', '2024-08-31 05:19:41'),
(762, 1, 'admin/student-testimonials/4', 'GET', '127.0.0.1', '[]', '2024-08-31 05:19:41', '2024-08-31 05:19:41'),
(763, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:19:44', '2024-08-31 05:19:44'),
(764, 1, 'admin/student-testimonials/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:24:58', '2024-08-31 05:24:58'),
(765, 1, 'admin/student-testimonials/1', 'PUT', '127.0.0.1', '{\"star\":\"3\",\"des\":\"My time at the university was transformative. The Computer Science program not only provided me with a solid foundation in coding and algorithms, but it also encouraged me to think critically and solve problems creatively. The professors were incredibly supportive, always willing to go the extra mile to ensure we understood the material. The hands-on projects were particularly valuable, giving me practical experience that I now apply in my career as a software developer. I\\u2019m proud to be an alumna of such an innovative and forward-thinking institution\",\"name\":\"lisa\",\"profession\":\"UX - Designer\",\"country\":\"USA\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:25:04', '2024-08-31 05:25:04'),
(766, 1, 'admin/student-testimonials/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:25:05', '2024-08-31 05:25:05'),
(767, 1, 'admin/student-testimonials/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:25:29', '2024-08-31 05:25:29'),
(768, 1, 'admin/student-testimonials/1', 'PUT', '127.0.0.1', '{\"star\":\"3\",\"des\":\"My time at the university was transformative. The Computer Science program not only provided me with a solid foundation in coding and algorithms, but it also encouraged me to think critically and solve problems creatively. The professors were incredibly supportive, always willing to go the extra mile to ensure we understood the material. The hands-on projects were particularly valuable, giving me practical experience that I now apply in my career as a software developer. I\\u2019m proud to be an alumna of such an innovative and forward-thinking institution\",\"name\":\"lisa\",\"profession\":\"UX - Designer\",\"country\":\"USA\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:25:34', '2024-08-31 05:25:34'),
(769, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:25:34', '2024-08-31 05:25:34'),
(770, 1, 'admin/student-testimonials/2/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:25:44', '2024-08-31 05:25:44'),
(771, 1, 'admin/student-testimonials/2', 'PUT', '127.0.0.1', '{\"star\":\"1\",\"des\":\"As a Business Administration student, I\\u2019ve had the opportunity to learn from some of the best minds in the industry. The program is well-rounded, combining theoretical knowledge with practical case studies and real-world applications. What I appreciate most is the emphasis on leadership and ethical business practices, which are crucial in today\\u2019s global market. The networking opportunities have also been phenomenal, helping me secure internships and build connections that will be invaluable in my career. I\\u2019m grateful for the comprehensive education and support I\\u2019ve received.\\\"\",\"name\":\"Chandler Goodwin\",\"profession\":\"Necessitatibus tempo\",\"country\":\"Velit dolore consect\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:25:47', '2024-08-31 05:25:47'),
(772, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:25:48', '2024-08-31 05:25:48'),
(773, 1, 'admin/student-testimonials/3/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:25:54', '2024-08-31 05:25:54'),
(774, 1, 'admin/student-testimonials/3', 'PUT', '127.0.0.1', '{\"star\":\"4\",\"des\":\"Studying Engineering here has been an incredible journey. The program is rigorous, but it\\u2019s also incredibly rewarding. The faculty are experts in their fields, and they bring a wealth of knowledge and experience to the classroom. I\\u2019ve particularly enjoyed the hands-on labs and group projects, where we\\u2019ve had the chance to apply theoretical concepts to real-world challenges. The campus itself is also equipped with state-of-the-art facilities that have made learning even more engaging. I\\u2019m looking forward to starting my career with the strong foundation this program has provided\",\"name\":\"Haley Bauer\",\"profession\":\"Est consequatur exc\",\"country\":\"Aperiam quae a quia\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:26:09', '2024-08-31 05:26:09'),
(775, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:26:09', '2024-08-31 05:26:09'),
(776, 1, 'admin/student-testimonials/4/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:26:11', '2024-08-31 05:26:11'),
(777, 1, 'admin/student-testimonials/4', 'PUT', '127.0.0.1', '{\"star\":\"5\",\"des\":\"The Nursing program exceeded all my expectations. The rigorous curriculum was challenging, but it prepared me well for the realities of the healthcare field. The clinical rotations were a highlight, allowing me to gain hands-on experience in various medical settings. The instructors were passionate and knowledgeable, always encouraging us to do our best. What stood out to me the most was the sense of community among the students and faculty \\u2013 we truly supported one another through the tough times. I feel confident and ready to make a positive impact as a registered nurse, thanks to the excellent training I received.\",\"name\":\"Nelle Bruce\",\"profession\":\"Aut et voluptatem de\",\"country\":\"Molestias expedita i\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:26:21', '2024-08-31 05:26:21'),
(778, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:26:21', '2024-08-31 05:26:21'),
(779, 1, 'admin/student-testimonials/3/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:29:30', '2024-08-31 05:29:30'),
(780, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:29:33', '2024-08-31 05:29:33'),
(781, 1, 'admin/student-testimonials/4/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:29:35', '2024-08-31 05:29:35'),
(782, 1, 'admin/student-testimonials/4', 'PUT', '127.0.0.1', '{\"star\":\"5\",\"des\":\"The Nursing program exceeded all my expectations. The rigorous curriculum was challenging, but it prepared me well for the realities of the healthcare field. The clinical rotations were a highlight, allowing me to gain hands-on experience in various medical settings. The instructors were passionate and knowledgeable, always encouraging us to do our best. What stood out to me the most was the sense of community among the students and faculty \\u2013 we truly supported one another through the tough times. I feel confident and ready to make a positive impact as a registered nurse, thanks to the excellent training I received.\",\"name\":\"Nelle Bruce\",\"profession\":\"Aut et voluptatem de\",\"country\":\"Molestias expedita i\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:32:58', '2024-08-31 05:32:58'),
(783, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:32:59', '2024-08-31 05:32:59'),
(784, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:34:06', '2024-08-31 05:34:06'),
(785, 1, 'admin/student-testimonials/4/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:34:10', '2024-08-31 05:34:10'),
(786, 1, 'admin/student-testimonials/4', 'PUT', '127.0.0.1', '{\"star\":\"5\",\"des\":\"The Nursing program exceeded all my expectations. The rigorous curriculum was challenging, but it prepared me well for the realities of the healthcare field. The clinical rotations were a highlight, allowing me to gain hands-on experience in various medical settings. The instructors were passionate and knowledgeable, always encouraging us to do our best. What stood out to me the most was the sense of community among the students and faculty \\u2013 we truly supported one another through the tough times. I feel confident and ready to make a positive impact as a registered nurse, thanks to the excellent training I received.\",\"name\":\"Nelle Bruce\",\"profession\":\"Aut et voluptatem de\",\"country\":\"Molestias expedita i\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:34:15', '2024-08-31 05:34:15'),
(787, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:34:15', '2024-08-31 05:34:15'),
(788, 1, 'admin/student-testimonials/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:38:06', '2024-08-31 05:38:06'),
(789, 1, 'admin/student-testimonials/1', 'PUT', '127.0.0.1', '{\"star\":\"3\",\"des\":\"My time at the university was transformative. The Computer Science program not only provided me with a solid foundation in coding and algorithms, but it also encouraged me to think critically and solve problems creatively. The professors were incredibly supportive, always willing to go the extra mile to ensure we understood the material. The hands-on projects were particularly valuable, giving me practical experience that I now apply in my career as a software developer. I\\u2019m proud to be an alumna of such an innovative and forward-thinking institution\",\"name\":\"lisa\",\"profession\":\"UX - Designer\",\"country\":\"USA\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:38:11', '2024-08-31 05:38:11'),
(790, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:38:11', '2024-08-31 05:38:11'),
(791, 1, 'admin/student-testimonials/2/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:38:13', '2024-08-31 05:38:13'),
(792, 1, 'admin/student-testimonials/2', 'PUT', '127.0.0.1', '{\"star\":\"1\",\"des\":\"As a Business Administration student, I\\u2019ve had the opportunity to learn from some of the best minds in the industry. The program is well-rounded, combining theoretical knowledge with practical case studies and real-world applications. What I appreciate most is the emphasis on leadership and ethical business practices, which are crucial in today\\u2019s global market. The networking opportunities have also been phenomenal, helping me secure internships and build connections that will be invaluable in my career. I\\u2019m grateful for the comprehensive education and support I\\u2019ve received.\\\"\",\"name\":\"Chandler Goodwin\",\"profession\":\"Necessitatibus tempo\",\"country\":\"Velit dolore consect\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:38:15', '2024-08-31 05:38:15'),
(793, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:38:15', '2024-08-31 05:38:15'),
(794, 1, 'admin/student-testimonials/3/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:38:16', '2024-08-31 05:38:16'),
(795, 1, 'admin/student-testimonials/3', 'PUT', '127.0.0.1', '{\"star\":\"4\",\"des\":\"Studying Engineering here has been an incredible journey. The program is rigorous, but it\\u2019s also incredibly rewarding. The faculty are experts in their fields, and they bring a wealth of knowledge and experience to the classroom. I\\u2019ve particularly enjoyed the hands-on labs and group projects, where we\\u2019ve had the chance to apply theoretical concepts to real-world challenges. The campus itself is also equipped with state-of-the-art facilities that have made learning even more engaging. I\\u2019m looking forward to starting my career with the strong foundation this program has provided\",\"name\":\"Haley Bauer\",\"profession\":\"Est consequatur exc\",\"country\":\"Aperiam quae a quia\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:38:18', '2024-08-31 05:38:18'),
(796, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:38:18', '2024-08-31 05:38:18'),
(797, 1, 'admin/student-testimonials/4/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:38:20', '2024-08-31 05:38:20'),
(798, 1, 'admin/student-testimonials/4', 'PUT', '127.0.0.1', '{\"star\":\"1\",\"des\":\"The Nursing program exceeded all my expectations. The rigorous curriculum was challenging, but it prepared me well for the realities of the healthcare field. The clinical rotations were a highlight, allowing me to gain hands-on experience in various medical settings. The instructors were passionate and knowledgeable, always encouraging us to do our best. What stood out to me the most was the sense of community among the students and faculty \\u2013 we truly supported one another through the tough times. I feel confident and ready to make a positive impact as a registered nurse, thanks to the excellent training I received.\",\"name\":\"Nelle Bruce\",\"profession\":\"Aut et voluptatem de\",\"country\":\"Molestias expedita i\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:38:24', '2024-08-31 05:38:24'),
(799, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:38:25', '2024-08-31 05:38:25'),
(800, 1, 'admin/student-testimonials/4/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:38:36', '2024-08-31 05:38:36'),
(801, 1, 'admin/student-testimonials/4', 'PUT', '127.0.0.1', '{\"star\":\"4\",\"des\":\"The Nursing program exceeded all my expectations. The rigorous curriculum was challenging, but it prepared me well for the realities of the healthcare field. The clinical rotations were a highlight, allowing me to gain hands-on experience in various medical settings. The instructors were passionate and knowledgeable, always encouraging us to do our best. What stood out to me the most was the sense of community among the students and faculty \\u2013 we truly supported one another through the tough times. I feel confident and ready to make a positive impact as a registered nurse, thanks to the excellent training I received.\",\"name\":\"Nelle Bruce\",\"profession\":\"Aut et voluptatem de\",\"country\":\"Molestias expedita i\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:38:40', '2024-08-31 05:38:40'),
(802, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:38:40', '2024-08-31 05:38:40'),
(803, 1, 'admin/student-testimonials/4/edit', 'GET', '127.0.0.1', '[]', '2024-08-31 05:38:46', '2024-08-31 05:38:46'),
(804, 1, 'admin/student-testimonials/4', 'PUT', '127.0.0.1', '{\"star\":\"5\",\"des\":\"The Nursing program exceeded all my expectations. The rigorous curriculum was challenging, but it prepared me well for the realities of the healthcare field. The clinical rotations were a highlight, allowing me to gain hands-on experience in various medical settings. The instructors were passionate and knowledgeable, always encouraging us to do our best. What stood out to me the most was the sense of community among the students and faculty \\u2013 we truly supported one another through the tough times. I feel confident and ready to make a positive impact as a registered nurse, thanks to the excellent training I received.\",\"name\":\"Nelle Bruce\",\"profession\":\"Aut et voluptatem de\",\"country\":\"Molestias expedita i\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\",\"_method\":\"PUT\"}', '2024-08-31 05:38:49', '2024-08-31 05:38:49'),
(805, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-08-31 05:38:49', '2024-08-31 05:38:49'),
(806, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-31 06:00:12', '2024-08-31 06:00:12'),
(807, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-31 06:00:18', '2024-08-31 06:00:18'),
(808, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"projectnum\",\"model_name\":\"App\\\\Models\\\\Projectnum\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProjectNumberController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"project_num\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"member_num\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"love_us_num\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"happy_client_num\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\"}', '2024-08-31 06:56:45', '2024-08-31 06:56:45'),
(809, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-31 06:56:45', '2024-08-31 06:56:45'),
(810, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-08-31 06:57:06', '2024-08-31 06:57:06'),
(811, 1, 'admin/projectnums', 'GET', '127.0.0.1', '[]', '2024-08-31 06:57:07', '2024-08-31 06:57:07'),
(812, 1, 'admin/projectnums/create', 'GET', '127.0.0.1', '[]', '2024-08-31 06:57:23', '2024-08-31 06:57:23'),
(813, 1, 'admin/projectnums', 'POST', '127.0.0.1', '{\"project_num\":\"23\",\"member_num\":\"150\",\"love_us_num\":\"130\",\"happy_client_num\":\"100\",\"_token\":\"XYRWYDoI6qQfn49chj58YUioXyVZVhq07jBbOXJ7\"}', '2024-08-31 06:57:55', '2024-08-31 06:57:55'),
(814, 1, 'admin/projectnums', 'GET', '127.0.0.1', '[]', '2024-08-31 06:57:55', '2024-08-31 06:57:55'),
(815, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-01 21:13:04', '2024-09-01 21:13:04'),
(816, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-09-01 21:13:41', '2024-09-01 21:13:41'),
(817, 1, 'admin/samples', 'GET', '127.0.0.1', '[]', '2024-09-01 21:13:44', '2024-09-01 21:13:44'),
(818, 1, 'admin/assignments', 'GET', '127.0.0.1', '[]', '2024-09-01 21:13:46', '2024-09-01 21:13:46'),
(819, 1, 'admin/student-testimonials', 'GET', '127.0.0.1', '[]', '2024-09-01 21:13:47', '2024-09-01 21:13:47'),
(820, 1, 'admin/projectnums', 'GET', '127.0.0.1', '[]', '2024-09-01 21:13:49', '2024-09-01 21:13:49'),
(821, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-09-01 21:13:54', '2024-09-01 21:13:54'),
(822, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"faq\",\"model_name\":\"App\\\\Models\\\\Faq\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\FaqController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"question\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"answer\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"wzK3XuOScyMNVKKWsWnpk5ZPD4ThSspJ9AlYxf3q\"}', '2024-09-01 21:18:59', '2024-09-01 21:18:59'),
(823, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-09-01 21:19:02', '2024-09-01 21:19:02'),
(824, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-09-01 21:19:27', '2024-09-01 21:19:27'),
(825, 1, 'admin/faqs', 'GET', '127.0.0.1', '[]', '2024-09-01 21:19:29', '2024-09-01 21:19:29'),
(826, 1, 'admin/faqs/create', 'GET', '127.0.0.1', '[]', '2024-09-01 21:23:42', '2024-09-01 21:23:42'),
(827, 1, 'admin/faqs', 'POST', '127.0.0.1', '{\"question\":\"What types of assignments can you assist with?\",\"answer\":\"We can assist with a wide range of assignments, including essays, research papers, case studies, lab reports, presentations, and more. Our expertise covers various subjects such as humanities, sciences, business, and technical fields.\",\"_token\":\"wzK3XuOScyMNVKKWsWnpk5ZPD4ThSspJ9AlYxf3q\"}', '2024-09-01 21:24:04', '2024-09-01 21:24:04'),
(828, 1, 'admin/faqs', 'GET', '127.0.0.1', '[]', '2024-09-01 21:24:04', '2024-09-01 21:24:04'),
(829, 1, 'admin/faqs/create', 'GET', '127.0.0.1', '[]', '2024-09-01 21:24:07', '2024-09-01 21:24:07'),
(830, 1, 'admin/faqs', 'POST', '127.0.0.1', '{\"question\":\"How do I submit my assignment for help?\",\"answer\":\"You can submit your assignment through our online submission form on our website. Simply upload the assignment instructions, any relevant materials, and specify the deadline. Our team will review it and get in touch with you promptly.\",\"_token\":\"wzK3XuOScyMNVKKWsWnpk5ZPD4ThSspJ9AlYxf3q\"}', '2024-09-01 21:24:32', '2024-09-01 21:24:32'),
(831, 1, 'admin/faqs', 'GET', '127.0.0.1', '[]', '2024-09-01 21:24:32', '2024-09-01 21:24:32'),
(832, 1, 'admin/faqs/create', 'GET', '127.0.0.1', '[]', '2024-09-01 21:24:41', '2024-09-01 21:24:41'),
(833, 1, 'admin/faqs', 'POST', '127.0.0.1', '{\"question\":\"How quickly can I receive help with my assignment?\",\"answer\":\"The turnaround time depends on the complexity and length of the assignment. We offer different delivery options, including urgent help for tight deadlines. Please specify your deadline when submitting your request, and we\\u2019ll do our best to accommodate it.\",\"_token\":\"wzK3XuOScyMNVKKWsWnpk5ZPD4ThSspJ9AlYxf3q\"}', '2024-09-01 21:25:00', '2024-09-01 21:25:00'),
(834, 1, 'admin/faqs', 'GET', '127.0.0.1', '[]', '2024-09-01 21:25:00', '2024-09-01 21:25:00'),
(835, 1, 'admin/faqs/create', 'GET', '127.0.0.1', '[]', '2024-09-01 21:25:12', '2024-09-01 21:25:12'),
(836, 1, 'admin/faqs', 'POST', '127.0.0.1', '{\"question\":\"Will my assignment be original and free of plagiarism?\",\"answer\":\"Yes, all assignments are completed by our experts from scratch to ensure originality. We use plagiarism detection tools to verify that the content is 100% unique before delivering it to you\",\"_token\":\"wzK3XuOScyMNVKKWsWnpk5ZPD4ThSspJ9AlYxf3q\"}', '2024-09-01 21:25:23', '2024-09-01 21:25:23'),
(837, 1, 'admin/faqs', 'GET', '127.0.0.1', '[]', '2024-09-01 21:25:23', '2024-09-01 21:25:23'),
(838, 1, 'admin/faqs/create', 'GET', '127.0.0.1', '[]', '2024-09-01 21:25:31', '2024-09-01 21:25:31'),
(839, 1, 'admin/faqs', 'POST', '127.0.0.1', '{\"question\":\"How do you ensure the quality of the assignments?\",\"answer\":\"Our team consists of experienced professionals with expertise in various academic fields. Each assignment is carefully researched, written, and reviewed to meet high academic standards. Additionally, we have a quality assurance team that checks for clarity, coherence, and adherence to your instructions.\",\"_token\":\"wzK3XuOScyMNVKKWsWnpk5ZPD4ThSspJ9AlYxf3q\"}', '2024-09-01 21:25:43', '2024-09-01 21:25:43'),
(840, 1, 'admin/faqs', 'GET', '127.0.0.1', '[]', '2024-09-01 21:25:43', '2024-09-01 21:25:43'),
(841, 1, 'admin/faqs/create', 'GET', '127.0.0.1', '[]', '2024-09-01 21:31:58', '2024-09-01 21:31:58'),
(842, 1, 'admin/faqs', 'POST', '127.0.0.1', '{\"question\":\"What if I\'m not satisfied with the assignment I receive?\",\"answer\":\"If you\\u2019re not satisfied with the assignment, we offer free revisions to ensure it meets your expectations. Simply provide us with detailed feedback on what needs to be improved, and we\\u2019ll make the necessary changes. Your satisfaction is our priority.\",\"_token\":\"wzK3XuOScyMNVKKWsWnpk5ZPD4ThSspJ9AlYxf3q\"}', '2024-09-01 21:32:12', '2024-09-01 21:32:12'),
(843, 1, 'admin/faqs', 'GET', '127.0.0.1', '[]', '2024-09-01 21:32:12', '2024-09-01 21:32:12'),
(844, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-01 21:32:53', '2024-09-01 21:32:53'),
(845, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-01 21:32:53', '2024-09-01 21:32:53'),
(846, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-09-01 21:34:51', '2024-09-01 21:34:51'),
(847, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-09-01 21:34:53', '2024-09-01 21:34:53'),
(848, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-09-01 21:34:59', '2024-09-01 21:34:59'),
(849, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-09-01 21:36:03', '2024-09-01 21:36:03'),
(850, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-09-01 21:36:04', '2024-09-01 21:36:04'),
(851, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-09-01 21:36:11', '2024-09-01 21:36:11'),
(852, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-09-01 21:37:35', '2024-09-01 21:37:35'),
(853, 1, 'admin/blogs/5', 'PUT', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Porro aliquam doloru\",\"slug\":\"porro-aliquam-doloru\",\"short_content\":\"Possimus velit sus\",\"view_user\":\"26\",\"alt\":\"Optio magni totam e\",\"url\":\"https:\\/\\/www.bore.tv\",\"description\":\"<p>utiut7tutuytuytuytuv tu uytuy&nbsp; utu utuytuyt<\\/p>\",\"seo_title\":\"In sed itaque offici\",\"seo_description\":\"Pariatur Doloremque\",\"seo_keyword\":\"Exercitationem culpa\",\"question\":\"How can I rank my newly launched website on search engines__\\r\\nWhy are keywords important for my website\'s ranking__\\r\\nHow can I improve my website\'s user experience__\\r\\nHow does social media impact my website\\u2019s ranking__\\r\\nWhat security measures should I take to protect my website\'s ranking\",\"answer\":\"<p>To rank a new website, focus on finding the right keywords, creating a user-friendly website, and regularly updating your content. Additionally, ensure your site is mobile-friendly and optimized for local searches.<\\/p>__\\r\\n<p>Keywords help search engines understand what your site is about. By using relevant and targeted keywords, you increase the chances of your website appearing in search results when users look for related content.<\\/p>__\\r\\n<p>Enhance user experience by ensuring your site is fast, easy to navigate, and accessible on all devices. Use clear menus, readable fonts, and a simple design that guides visitors to the information they need.<\\/p>__\\r\\n<p>Sharing your site on social media can drive more traffic and increase visibility. Engaging content and regular updates on social platforms can lead to higher rankings in search engines.<\\/p>__\\r\\n<p>Protect your website by installing an SSL certificate, using strong passwords, keeping software updated, and regularly backing up your site. A secure website is more likely to rank well and avoid penalties from search engines.<\\/p>\",\"whatapp\":null,\"facebook\":null,\"linkedin\":null,\"_token\":\"wzK3XuOScyMNVKKWsWnpk5ZPD4ThSspJ9AlYxf3q\",\"_method\":\"PUT\"}', '2024-09-01 21:37:46', '2024-09-01 21:37:46'),
(854, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-09-01 21:37:46', '2024-09-01 21:37:46'),
(855, 1, 'admin/blogs/4/edit', 'GET', '127.0.0.1', '[]', '2024-09-01 21:37:48', '2024-09-01 21:37:48'),
(856, 1, 'admin/blogs/4', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Labore sit iusto am\",\"slug\":\"labore-sit-iusto-am\",\"short_content\":\"Quaerat deleniti eum\",\"view_user\":\"18\",\"alt\":\"Expedita dolores lab\",\"url\":\"https:\\/\\/www.lecali.info\",\"description\":\"<p>ZXZXzxzXzxxzxzxzxz<a href=\\\"https:\\/\\/ahitechno.com\\/\\\">https:\\/\\/ahitechno.com\\/<\\/a><\\/p>\",\"seo_title\":\"Sint deserunt ut im\",\"seo_description\":\"Est alias id et vol\",\"seo_keyword\":\"Porro amet maxime q\",\"question\":\"Et nobis rerum nemo\",\"answer\":\"Eaque excepteur do t\",\"whatapp\":null,\"facebook\":null,\"linkedin\":null,\"_token\":\"wzK3XuOScyMNVKKWsWnpk5ZPD4ThSspJ9AlYxf3q\",\"_method\":\"PUT\"}', '2024-09-01 21:37:52', '2024-09-01 21:37:52'),
(857, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-09-01 21:37:52', '2024-09-01 21:37:52'),
(858, 1, 'admin/blogs/3/edit', 'GET', '127.0.0.1', '[]', '2024-09-01 21:37:54', '2024-09-01 21:37:54'),
(859, 1, 'admin/blogs/3', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Aut dignissimos sapi\",\"slug\":\"aut-dignissimos-sapi\",\"short_content\":\"Aut incidunt nesciu\",\"view_user\":\"36\",\"alt\":\"Omnis rem in rerum n\",\"url\":\"https:\\/\\/www.lucikitazam.org.uk\",\"description\":\"<p><em><strong>XasaSsSAs<\\/strong><\\/em><\\/p>\",\"seo_title\":\"Excepturi excepturi\",\"seo_description\":\"Eiusmod quisquam cul\",\"seo_keyword\":\"Velit illum quis a\",\"question\":\"Aut velit sit numqua\",\"answer\":\"Laboris est dolor v\",\"whatapp\":null,\"facebook\":null,\"linkedin\":null,\"_token\":\"wzK3XuOScyMNVKKWsWnpk5ZPD4ThSspJ9AlYxf3q\",\"_method\":\"PUT\"}', '2024-09-01 21:37:58', '2024-09-01 21:37:58'),
(860, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-09-01 21:37:58', '2024-09-01 21:37:58'),
(861, 1, 'admin/blogs/2/edit', 'GET', '127.0.0.1', '[]', '2024-09-01 21:38:00', '2024-09-01 21:38:00'),
(862, 1, 'admin/blogs/2', 'PUT', '127.0.0.1', '{\"category_id\":\"5\",\"search_terms\":null,\"title\":\"Culpa harum aut dol\",\"slug\":\"culpa-harum-aut-dol\",\"short_content\":\"Impedit architecto\",\"view_user\":\"12\",\"alt\":\"Et impedit tempora\",\"url\":\"https:\\/\\/www.voc.tv\",\"description\":\"<p><strong>hello<\\/strong><\\/p>\",\"seo_title\":\"Commodi impedit eni\",\"seo_description\":\"Laborum Proident i\",\"seo_keyword\":\"Consectetur volupta\",\"question\":\"Ex non ullam ut volu\",\"answer\":\"Quis fugiat autem ve\",\"whatapp\":null,\"facebook\":null,\"linkedin\":null,\"_token\":\"wzK3XuOScyMNVKKWsWnpk5ZPD4ThSspJ9AlYxf3q\",\"_method\":\"PUT\"}', '2024-09-01 21:38:04', '2024-09-01 21:38:04'),
(863, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-09-01 21:38:04', '2024-09-01 21:38:04'),
(864, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-09-01 22:21:08', '2024-09-01 22:21:08'),
(865, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"info\",\"model_name\":\"App\\\\Models\\\\Info\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\InfoController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"mobile_number\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email_address\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"facebook_link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"twitter_link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"skype_link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"instagram_link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"whatapp_number\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"address\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"wzK3XuOScyMNVKKWsWnpk5ZPD4ThSspJ9AlYxf3q\"}', '2024-09-01 22:25:58', '2024-09-01 22:25:58'),
(866, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-09-01 22:26:00', '2024-09-01 22:26:00'),
(867, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-09-01 22:26:36', '2024-09-01 22:26:36'),
(868, 1, 'admin/infos', 'GET', '127.0.0.1', '[]', '2024-09-01 22:26:39', '2024-09-01 22:26:39'),
(869, 1, 'admin/infos/create', 'GET', '127.0.0.1', '[]', '2024-09-01 22:26:48', '2024-09-01 22:26:48'),
(870, 1, 'admin/infos', 'POST', '127.0.0.1', '{\"mobile_number\":\"1234567890\",\"email_address\":\"mtm_school@gmail.com\",\"facebook_link\":\"https:\\/\\/www.facebook.com\\/login.php\\/\",\"twitter_link\":\"https:\\/\\/x.com\\/?lang=en-in\",\"skype_link\":\"https:\\/\\/www.skype.com\\/en\\/\",\"instagram_link\":\"https:\\/\\/www.instagram.com\\/accounts\\/login\\/\",\"whatapp_number\":\"00987654321\",\"address\":\"address new address\",\"_token\":\"wzK3XuOScyMNVKKWsWnpk5ZPD4ThSspJ9AlYxf3q\"}', '2024-09-01 22:29:38', '2024-09-01 22:29:38'),
(871, 1, 'admin/infos', 'GET', '127.0.0.1', '[]', '2024-09-01 22:29:38', '2024-09-01 22:29:38'),
(872, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-28 00:00:17', '2025-02-28 00:00:17'),
(873, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-28 00:00:27', '2025-02-28 00:00:27'),
(874, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-28 00:00:42', '2025-02-28 00:00:42'),
(875, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2025-02-28 00:00:45', '2025-02-28 00:00:45'),
(876, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:00:49', '2025-02-28 00:00:49'),
(877, 1, 'admin/auth/menu/13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:00:55', '2025-02-28 00:00:55'),
(878, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:00:55', '2025-02-28 00:00:55'),
(879, 1, 'admin/auth/menu/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:00:59', '2025-02-28 00:00:59'),
(880, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:00:59', '2025-02-28 00:00:59'),
(881, 1, 'admin/auth/menu/23', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:01:02', '2025-02-28 00:01:02'),
(882, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:01:02', '2025-02-28 00:01:02'),
(883, 1, 'admin/auth/menu/24', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:01:06', '2025-02-28 00:01:06'),
(884, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:01:06', '2025-02-28 00:01:06'),
(885, 1, 'admin/auth/menu/25', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:01:10', '2025-02-28 00:01:10'),
(886, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:01:10', '2025-02-28 00:01:10'),
(887, 1, 'admin/auth/menu/26', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:01:13', '2025-02-28 00:01:13'),
(888, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:01:14', '2025-02-28 00:01:14'),
(889, 1, 'admin/auth/menu/27', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:01:25', '2025-02-28 00:01:25'),
(890, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:01:25', '2025-02-28 00:01:25'),
(891, 1, 'admin/auth/menu/28', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:01:28', '2025-02-28 00:01:28'),
(892, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:01:29', '2025-02-28 00:01:29'),
(893, 1, 'admin/auth/menu/20', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:01:33', '2025-02-28 00:01:33'),
(894, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:01:33', '2025-02-28 00:01:33'),
(895, 1, 'admin/auth/menu/21', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:01:36', '2025-02-28 00:01:36'),
(896, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:01:37', '2025-02-28 00:01:37'),
(897, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:01:42', '2025-02-28 00:01:42'),
(898, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:01:50', '2025-02-28 00:01:50'),
(899, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:02:02', '2025-02-28 00:02:02'),
(900, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-02-28 00:02:18', '2025-02-28 00:02:18'),
(901, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:02:41', '2025-02-28 00:02:41'),
(902, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"HomeBanner\",\"icon\":\"icon-address-book\",\"uri\":\"home-banners\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:05:12', '2025-02-28 00:05:12'),
(903, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:05:12', '2025-02-28 00:05:12'),
(904, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:05:14', '2025-02-28 00:05:14'),
(905, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-28 00:05:18', '2025-02-28 00:05:18'),
(906, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-28 00:05:19', '2025-02-28 00:05:19'),
(907, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:05:22', '2025-02-28 00:05:22'),
(908, 1, 'admin/home-banners', 'POST', '127.0.0.1', '{\"title\":\"<h1>Innovate. Create. Lead<\\/h1>\",\"short_description\":\"Shaping the future of media, technology, and business.\",\"about_more\":null,\"learn_more\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:12:07', '2025-02-28 00:12:07'),
(909, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-28 00:12:08', '2025-02-28 00:12:08'),
(910, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:12:11', '2025-02-28 00:12:11'),
(911, 1, 'admin/home-banners', 'POST', '127.0.0.1', '{\"title\":\"<h1>Your Path to Excellence Starts Here<\\/h1>\",\"short_description\":\"Cutting-edge education for tomorrow\\u2019s leaders\",\"about_more\":null,\"learn_more\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:12:55', '2025-02-28 00:12:55'),
(912, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-28 00:12:55', '2025-02-28 00:12:55'),
(913, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:12:57', '2025-02-28 00:12:57'),
(914, 1, 'admin/home-banners', 'POST', '127.0.0.1', '{\"title\":\"<h1>Where Creativity Meets Technology<\\/h1>\",\"short_description\":\"Empowering minds for a digital world.\",\"about_more\":null,\"learn_more\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:13:29', '2025-02-28 00:13:29'),
(915, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-28 00:13:30', '2025-02-28 00:13:30'),
(916, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:14:48', '2025-02-28 00:14:48'),
(917, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"gallery\",\"icon\":\"icon-air-freshener\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:15:18', '2025-02-28 00:15:18'),
(918, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:15:19', '2025-02-28 00:15:19'),
(919, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:15:21', '2025-02-28 00:15:21'),
(920, 1, 'admin/auth/menu/30', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:15:31', '2025-02-28 00:15:31'),
(921, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:15:31', '2025-02-28 00:15:31'),
(922, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:15:33', '2025-02-28 00:15:33'),
(923, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Gallery\",\"icon\":\"icon-air-freshener\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:15:42', '2025-02-28 00:15:42'),
(924, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:15:42', '2025-02-28 00:15:42'),
(925, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:15:44', '2025-02-28 00:15:44'),
(926, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-28 00:16:24', '2025-02-28 00:16:24'),
(927, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-28 00:16:28', '2025-02-28 00:16:28'),
(928, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-28 00:16:29', '2025-02-28 00:16:29'),
(929, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:16:30', '2025-02-28 00:16:30'),
(930, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"31\",\"search_terms\":null,\"title\":\"Gallery Image\",\"icon\":\"icon-align-left\",\"uri\":\"gallery-images\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:16:59', '2025-02-28 00:16:59'),
(931, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:16:59', '2025-02-28 00:16:59'),
(932, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:17:07', '2025-02-28 00:17:07'),
(933, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-28 00:17:10', '2025-02-28 00:17:10'),
(934, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-28 00:17:25', '2025-02-28 00:17:25'),
(935, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:17:29', '2025-02-28 00:17:29'),
(936, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-02-28 00:17:29', '2025-02-28 00:17:29'),
(937, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:17:30', '2025-02-28 00:17:30'),
(938, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"31\",\"search_terms\":null,\"title\":\"Gallery Video\",\"icon\":\"icon-align-left\",\"uri\":\"gallery-videos\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:18:05', '2025-02-28 00:18:05'),
(939, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:18:05', '2025-02-28 00:18:05'),
(940, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:18:07', '2025-02-28 00:18:07'),
(941, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-28 00:18:11', '2025-02-28 00:18:11'),
(942, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-28 00:18:12', '2025-02-28 00:18:12'),
(943, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-28 00:18:13', '2025-02-28 00:18:13'),
(944, 1, 'admin/gallery-images', 'GET', '127.0.0.1', '[]', '2025-02-28 00:18:33', '2025-02-28 00:18:33'),
(945, 1, 'admin/gallery-videos', 'GET', '127.0.0.1', '[]', '2025-02-28 00:18:35', '2025-02-28 00:18:35'),
(946, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:18:35', '2025-02-28 00:18:35'),
(947, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Facility\",\"icon\":\"icon-archive\",\"uri\":\"facilities\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:18:54', '2025-02-28 00:18:54'),
(948, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:18:54', '2025-02-28 00:18:54'),
(949, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 00:18:56', '2025-02-28 00:18:56'),
(950, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:18:58', '2025-02-28 00:18:58'),
(951, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:19:00', '2025-02-28 00:19:00'),
(952, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":\"Dr. Alan Carter\",\"content\":\"Expert in digital media and emerging technologies, bridging creativity with innovation.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:26:32', '2025-02-28 00:26:32'),
(953, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:26:32', '2025-02-28 00:26:32'),
(954, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:26:53', '2025-02-28 00:26:53'),
(955, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":\"Prof. Lisa Reynolds\",\"content\":\"Specialist in media ethics and communication strategies in the digital era.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:27:20', '2025-02-28 00:27:20'),
(956, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:27:20', '2025-02-28 00:27:20'),
(957, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:27:22', '2025-02-28 00:27:22'),
(958, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":\"Dr. Mark Thompson\",\"content\":\"Industry veteran in technology management and business transformation.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:27:51', '2025-02-28 00:27:51'),
(959, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:27:51', '2025-02-28 00:27:51'),
(960, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:27:53', '2025-02-28 00:27:53'),
(961, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":\"Prof. Sophia Martinez\",\"content\":\"Pioneer in AI-driven media solutions and interactive content creation.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:28:14', '2025-02-28 00:28:14'),
(962, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:28:14', '2025-02-28 00:28:14'),
(963, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:29:29', '2025-02-28 00:29:29'),
(964, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":\"Dr. Kevin Harris\",\"content\":\"Leader in data analytics and predictive modeling for media industries.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:30:02', '2025-02-28 00:30:02'),
(965, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:30:02', '2025-02-28 00:30:02'),
(966, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:30:04', '2025-02-28 00:30:04'),
(967, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":\"Prof. Olivia Chang\",\"content\":\"Experienced journalist and media law expert, shaping responsible storytelling.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:30:35', '2025-02-28 00:30:35'),
(968, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:30:35', '2025-02-28 00:30:35'),
(969, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:30:41', '2025-02-28 00:30:41'),
(970, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":null,\"content\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:30:48', '2025-02-28 00:30:48'),
(971, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:30:48', '2025-02-28 00:30:48'),
(972, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:30:51', '2025-02-28 00:30:51'),
(973, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":null,\"content\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:30:57', '2025-02-28 00:30:57'),
(974, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:30:57', '2025-02-28 00:30:57'),
(975, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:31:00', '2025-02-28 00:31:00'),
(976, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":null,\"content\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:31:05', '2025-02-28 00:31:05'),
(977, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:31:05', '2025-02-28 00:31:05'),
(978, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:32:15', '2025-02-28 00:32:15'),
(979, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:32:20', '2025-02-28 00:32:20'),
(980, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":null,\"content\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:32:25', '2025-02-28 00:32:25'),
(981, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:32:25', '2025-02-28 00:32:25'),
(982, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:32:36', '2025-02-28 00:32:36'),
(983, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":null,\"content\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:32:40', '2025-02-28 00:32:40'),
(984, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:32:40', '2025-02-28 00:32:40'),
(985, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:32:41', '2025-02-28 00:32:41'),
(986, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":null,\"content\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:32:47', '2025-02-28 00:32:47'),
(987, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:32:47', '2025-02-28 00:32:47'),
(988, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:32:51', '2025-02-28 00:32:51'),
(989, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":null,\"content\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:32:57', '2025-02-28 00:32:57'),
(990, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:32:58', '2025-02-28 00:32:58'),
(991, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:33:00', '2025-02-28 00:33:00'),
(992, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":null,\"content\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:33:06', '2025-02-28 00:33:06');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(993, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:33:06', '2025-02-28 00:33:06'),
(994, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:33:09', '2025-02-28 00:33:09'),
(995, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":null,\"content\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:33:15', '2025-02-28 00:33:15'),
(996, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:33:16', '2025-02-28 00:33:16'),
(997, 1, 'admin/facilities/create', 'GET', '127.0.0.1', '[]', '2025-02-28 00:33:19', '2025-02-28 00:33:19'),
(998, 1, 'admin/facilities', 'POST', '127.0.0.1', '{\"name\":null,\"content\":null,\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:33:25', '2025-02-28 00:33:25'),
(999, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:33:26', '2025-02-28 00:33:26'),
(1000, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Facility\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchEdit\",\"_key\":\"7,8,9,10,11,12,13,14,15,16\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:33:50', '2025-02-28 00:33:50'),
(1001, 1, 'admin/facilities/7/edit', 'GET', '127.0.0.1', '{\"ids\":[\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\"]}', '2025-02-28 00:33:50', '2025-02-28 00:33:50'),
(1002, 1, 'admin/facilities/7/edit', 'GET', '127.0.0.1', '{\"ids\":[\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\"]}', '2025-02-28 00:33:50', '2025-02-28 00:33:50'),
(1003, 1, 'admin/facilities/7/edit', 'GET', '127.0.0.1', '{\"ids\":[\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\"]}', '2025-02-28 00:34:42', '2025-02-28 00:34:42'),
(1004, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:34:46', '2025-02-28 00:34:46'),
(1005, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Facility\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchEdit\",\"_key\":\"7,8\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\"}', '2025-02-28 00:34:53', '2025-02-28 00:34:53'),
(1006, 1, 'admin/facilities/7/edit', 'GET', '127.0.0.1', '{\"ids\":[\"8\"]}', '2025-02-28 00:34:53', '2025-02-28 00:34:53'),
(1007, 1, 'admin/facilities/7/edit', 'GET', '127.0.0.1', '{\"ids\":[\"8\"]}', '2025-02-28 00:34:53', '2025-02-28 00:34:53'),
(1008, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:34:56', '2025-02-28 00:34:56'),
(1009, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:34:57', '2025-02-28 00:34:57'),
(1010, 1, 'admin/facilities/7/edit', 'GET', '127.0.0.1', '[]', '2025-02-28 00:35:01', '2025-02-28 00:35:01'),
(1011, 1, 'admin/facilities/7', 'PUT', '127.0.0.1', '{\"name\":\"Dr. Robert Evans\",\"content\":\"Innovator in augmented and virtual reality applications in education and entertainment.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\",\"_method\":\"PUT\"}', '2025-02-28 00:36:11', '2025-02-28 00:36:11'),
(1012, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:36:12', '2025-02-28 00:36:12'),
(1013, 1, 'admin/facilities/8/edit', 'GET', '127.0.0.1', '[]', '2025-02-28 00:36:20', '2025-02-28 00:36:20'),
(1014, 1, 'admin/facilities/8', 'PUT', '127.0.0.1', '{\"name\":\"Prof. Emily Foster\",\"content\":\"Specialist in marketing strategies and consumer behavior in the digital age.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\",\"_method\":\"PUT\"}', '2025-02-28 00:36:30', '2025-02-28 00:36:30'),
(1015, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:36:30', '2025-02-28 00:36:30'),
(1016, 1, 'admin/facilities/9/edit', 'GET', '127.0.0.1', '[]', '2025-02-28 00:36:39', '2025-02-28 00:36:39'),
(1017, 1, 'admin/facilities/9', 'PUT', '127.0.0.1', '{\"name\":\"Dr. Nathaniel Brooks\",\"content\":\"Researcher in blockchain applications for media security and monetization.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\",\"_method\":\"PUT\"}', '2025-02-28 00:36:49', '2025-02-28 00:36:49'),
(1018, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:36:49', '2025-02-28 00:36:49'),
(1019, 1, 'admin/facilities/10/edit', 'GET', '127.0.0.1', '[]', '2025-02-28 00:36:59', '2025-02-28 00:36:59'),
(1020, 1, 'admin/facilities/10', 'PUT', '127.0.0.1', '{\"name\":\"Prof. Hannah Lewis\",\"content\":\"Digital content strategist, focusing on social media and brand storytelling.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\",\"_method\":\"PUT\"}', '2025-02-28 00:37:07', '2025-02-28 00:37:07'),
(1021, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:37:07', '2025-02-28 00:37:07'),
(1022, 1, 'admin/facilities/11/edit', 'GET', '127.0.0.1', '[]', '2025-02-28 00:37:16', '2025-02-28 00:37:16'),
(1023, 1, 'admin/facilities/11', 'PUT', '127.0.0.1', '{\"name\":\"Dr. Samuel Wright\",\"content\":\"Expert in cloud computing and IT infrastructure for media platforms.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\",\"_method\":\"PUT\"}', '2025-02-28 00:37:26', '2025-02-28 00:37:26'),
(1024, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:37:26', '2025-02-28 00:37:26'),
(1025, 1, 'admin/facilities/12/edit', 'GET', '127.0.0.1', '[]', '2025-02-28 00:37:40', '2025-02-28 00:37:40'),
(1026, 1, 'admin/facilities/12', 'PUT', '127.0.0.1', '{\"name\":\"Prof. Rachel Kim\",\"content\":\"Award-winning filmmaker and educator in digital storytelling.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\",\"_method\":\"PUT\"}', '2025-02-28 00:37:48', '2025-02-28 00:37:48'),
(1027, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:37:48', '2025-02-28 00:37:48'),
(1028, 1, 'admin/facilities/13/edit', 'GET', '127.0.0.1', '[]', '2025-02-28 00:37:56', '2025-02-28 00:37:56'),
(1029, 1, 'admin/facilities/13', 'PUT', '127.0.0.1', '{\"name\":\"Dr. Brian Adams\",\"content\":\"Specialist in UX\\/UI design and interactive media development.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\",\"_method\":\"PUT\"}', '2025-02-28 00:38:04', '2025-02-28 00:38:04'),
(1030, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:38:04', '2025-02-28 00:38:04'),
(1031, 1, 'admin/facilities/14/edit', 'GET', '127.0.0.1', '[]', '2025-02-28 00:38:14', '2025-02-28 00:38:14'),
(1032, 1, 'admin/facilities/14', 'PUT', '127.0.0.1', '{\"name\":\"Prof. Diana Patel\",\"content\":\"Leadership and entrepreneurship coach for media startups.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\",\"_method\":\"PUT\"}', '2025-02-28 00:38:25', '2025-02-28 00:38:25'),
(1033, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:38:25', '2025-02-28 00:38:25'),
(1034, 1, 'admin/facilities/15/edit', 'GET', '127.0.0.1', '[]', '2025-02-28 00:38:33', '2025-02-28 00:38:33'),
(1035, 1, 'admin/facilities/15', 'PUT', '127.0.0.1', '{\"name\":\"Dr. Vincent Scott\",\"content\":\"Cybersecurity expert ensuring safe and ethical media practices.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\",\"_method\":\"PUT\"}', '2025-02-28 00:38:44', '2025-02-28 00:38:44'),
(1036, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:38:44', '2025-02-28 00:38:44'),
(1037, 1, 'admin/facilities/16/edit', 'GET', '127.0.0.1', '[]', '2025-02-28 00:38:54', '2025-02-28 00:38:54'),
(1038, 1, 'admin/facilities/16', 'PUT', '127.0.0.1', '{\"name\":\"Prof. Laura Bennett\",\"content\":\"Researcher in human-computer interaction and digital innovation.\",\"_token\":\"peH4ITyR0nEwPwyffRosLr4YmwOrJoM4WcdoPq2F\",\"_method\":\"PUT\"}', '2025-02-28 00:39:04', '2025-02-28 00:39:04'),
(1039, 1, 'admin/facilities', 'GET', '127.0.0.1', '[]', '2025-02-28 00:39:04', '2025-02-28 00:39:04');

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
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-05-01 00:10:04', '2024-05-01 00:10:04');

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
(1, 'Administrator', 'administrator', '2024-05-01 00:07:00', '2024-05-01 00:07:00');

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
(1, 29, NULL, NULL),
(1, 32, NULL, NULL),
(1, 33, NULL, NULL),
(1, 34, NULL, NULL);

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
(1, 'admin', '$2y$12$UgWURSXv5Odv0QDp2Wd2Rub8veZ3hA6wiFO0R9/mIiQPyhPsWi7gC', 'Administrators', 'images/Heaven\'s Lost Property.jpg', NULL, '2024-05-01 00:07:00', '2024-08-13 01:13:26');

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
(1, 'images/facility-1_2.png', 'Dr. Alan Carter', 'Expert in digital media and emerging technologies, bridging creativity with innovation.', '2025-02-28 00:26:32', '2025-02-28 00:26:32'),
(2, 'images/facility-2_2.png', 'Prof. Lisa Reynolds', 'Specialist in media ethics and communication strategies in the digital era.', '2025-02-28 00:27:20', '2025-02-28 00:27:20'),
(3, 'images/facility-3_1.png', 'Dr. Mark Thompson', 'Industry veteran in technology management and business transformation.', '2025-02-28 00:27:51', '2025-02-28 00:27:51'),
(4, 'images/facility-4_2.png', 'Prof. Sophia Martinez', 'Pioneer in AI-driven media solutions and interactive content creation.', '2025-02-28 00:28:14', '2025-02-28 00:28:14'),
(5, 'images/facility-5_2.png', 'Dr. Kevin Harris', 'Leader in data analytics and predictive modeling for media industries.', '2025-02-28 00:30:02', '2025-02-28 00:30:02'),
(6, 'images/facility-6_2.png', 'Prof. Olivia Chang', 'Experienced journalist and media law expert, shaping responsible storytelling.', '2025-02-28 00:30:35', '2025-02-28 00:30:35'),
(7, 'images/facility-7_2.png', 'Dr. Robert Evans', 'Innovator in augmented and virtual reality applications in education and entertainment.', '2025-02-28 00:30:48', '2025-02-28 00:36:12'),
(8, 'images/facility-8_2.png', 'Prof. Emily Foster', 'Specialist in marketing strategies and consumer behavior in the digital age.', '2025-02-28 00:30:57', '2025-02-28 00:36:30'),
(9, 'images/facility-9_1.png', 'Dr. Nathaniel Brooks', 'Researcher in blockchain applications for media security and monetization.', '2025-02-28 00:31:05', '2025-02-28 00:36:49'),
(10, 'images/facility-2_3.png', 'Prof. Hannah Lewis', 'Digital content strategist, focusing on social media and brand storytelling.', '2025-02-28 00:32:25', '2025-02-28 00:37:07'),
(11, 'images/facility-3_1_1.png', 'Dr. Samuel Wright', 'Expert in cloud computing and IT infrastructure for media platforms.', '2025-02-28 00:32:40', '2025-02-28 00:37:26'),
(12, 'images/facility-6_1_1.png', 'Prof. Rachel Kim', 'Award-winning filmmaker and educator in digital storytelling.', '2025-02-28 00:32:47', '2025-02-28 00:37:48'),
(13, 'images/facility-5_3.png', 'Dr. Brian Adams', 'Specialist in UX/UI design and interactive media development.', '2025-02-28 00:32:57', '2025-02-28 00:38:04'),
(14, 'images/facility-7_2_1.png', 'Prof. Diana Patel', 'Leadership and entrepreneurship coach for media startups.', '2025-02-28 00:33:06', '2025-02-28 00:38:25'),
(15, 'images/facility-9_1_1.png', 'Dr. Vincent Scott', 'Cybersecurity expert ensuring safe and ethical media practices.', '2025-02-28 00:33:15', '2025-02-28 00:38:44'),
(16, 'images/facility-6_1_2.png', 'Prof. Laura Bennett', 'Researcher in human-computer interaction and digital innovation.', '2025-02-28 00:33:26', '2025-02-28 00:39:04');

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

-- --------------------------------------------------------

--
-- Table structure for table `homebanner`
--

CREATE TABLE `homebanner` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, '<h1>Innovate. Create. Lead</h1>', 'Shaping the future of media, technology, and business.', 'images/asian-student-girl-wears-school-uniform-pointing-fingers-copy-space-yellow-background-isolated-clipping-paths-design-work-empty_45996-2125_1.webp', NULL, NULL, NULL, '2025-02-28 00:12:08', '2025-02-28 00:12:08'),
(2, '<h1>Your Path to Excellence Starts Here</h1>', 'Cutting-edge education for tomorrow’s leaders', 'images/happy-teen-girls-casual-checkered-shirt-carry-backpack-education-portrait-schoolgirl-student_545934-22385_1.webp', NULL, NULL, NULL, '2025-02-28 00:12:55', '2025-02-28 00:12:55'),
(3, '<h1>Where Creativity Meets Technology</h1>', 'Empowering minds for a digital world.', 'images/schoolgirl-with-backpack-wearing-casual-jeans-denim-shirt-outfit_113725-3150_1.webp', NULL, NULL, NULL, '2025-02-28 00:13:29', '2025-02-28 00:13:29');

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
(19, '2025_02_26_045450_create_homebanner_table', 15),
(20, '2025_02_26_055209_create_facility_table', 15),
(21, '2025_02_26_071242_create_gallery_image_table', 15),
(22, '2025_02_26_071623_create_gallery_video_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(551) DEFAULT NULL,
  `token` varchar(551) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('kaushik0077dey@gmail.com', '$2y$12$RbpGHL482xlotPf4tSesEehpXVLKVSZmdFS3BE5fiGR0Q1soBI2Tm', '2024-08-16 01:20:41');

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

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kaushik Dey', 'kaushik0077dey@gmail.com', NULL, '$2y$12$B7TYJruDp722eqlPRzpMUu89gHWTOPwod5ESrGF0o1cclGnQ.K.F.', NULL, '2024-08-14 06:30:20', '2024-08-16 03:45:42'),
(2, 'HELLO', 'hello@gmail.com', NULL, '$2y$12$jQ/Y0j5i6sDYGfautQtGk.WrtJnOUB2./zk.OCfOQ0Io2q9sZC3T2', NULL, '2024-08-28 06:22:13', '2024-08-28 06:22:13');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `facility`
--
ALTER TABLE `facility`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1040;

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
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `gallery_image`
--
ALTER TABLE `gallery_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_video`
--
ALTER TABLE `gallery_video`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homebanner`
--
ALTER TABLE `homebanner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
