-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2020 at 08:03 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Livres', 'Livres', '2020-03-25 14:26:43', '2020-03-25 14:26:43'),
(2, 'High Tech', 'high tech', '2020-03-25 14:26:43', '2020-03-25 14:26:43'),
(3, 'Meubles', 'meuble', '2020-03-25 14:26:43', '2020-03-25 14:26:43'),
(4, 'Jeux', 'jeux', '2020-03-25 14:26:44', '2020-03-25 14:26:44'),
(5, 'Nouriture', 'nouriture', '2020-03-25 14:26:44', '2020-03-25 14:26:44'),
(6, 'Livres', 'Livres', '2020-03-26 16:43:53', '2020-03-26 16:43:53'),
(7, 'High Tech', 'high tech', '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(8, 'Meubles', 'meuble', '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(9, 'Jeux', 'jeux', '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(10, 'Nouriture', 'nouriture', '2020-03-26 16:43:54', '2020-03-26 16:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `created_at`, `updated_at`, `category_id`, `product_id`) VALUES
(1, NULL, NULL, 3, 1),
(2, NULL, NULL, 4, 1),
(3, NULL, NULL, 1, 2),
(4, NULL, NULL, 4, 2),
(5, NULL, NULL, 1, 3),
(6, NULL, NULL, 1, 3),
(7, NULL, NULL, 3, 4),
(8, NULL, NULL, 1, 4),
(9, NULL, NULL, 1, 5),
(10, NULL, NULL, 2, 5),
(11, NULL, NULL, 2, 6),
(12, NULL, NULL, 3, 6),
(13, NULL, NULL, 2, 7),
(14, NULL, NULL, 2, 7),
(15, NULL, NULL, 2, 8),
(16, NULL, NULL, 2, 8),
(17, NULL, NULL, 4, 9),
(18, NULL, NULL, 1, 9),
(19, NULL, NULL, 2, 10),
(20, NULL, NULL, 4, 10),
(21, NULL, NULL, 3, 11),
(22, NULL, NULL, 3, 11),
(23, NULL, NULL, 4, 12),
(24, NULL, NULL, 3, 12),
(25, NULL, NULL, 1, 13),
(26, NULL, NULL, 3, 13),
(27, NULL, NULL, 4, 14),
(28, NULL, NULL, 4, 14),
(29, NULL, NULL, 3, 15),
(30, NULL, NULL, 4, 15),
(31, NULL, NULL, 4, 16),
(32, NULL, NULL, 2, 16),
(33, NULL, NULL, 3, 17),
(34, NULL, NULL, 3, 17),
(35, NULL, NULL, 1, 18),
(36, NULL, NULL, 4, 18),
(37, NULL, NULL, 4, 19),
(38, NULL, NULL, 4, 19),
(39, NULL, NULL, 4, 20),
(40, NULL, NULL, 3, 20),
(41, NULL, NULL, 4, 21),
(42, NULL, NULL, 4, 21),
(43, NULL, NULL, 1, 22),
(44, NULL, NULL, 1, 22),
(45, NULL, NULL, 2, 23),
(46, NULL, NULL, 2, 23),
(47, NULL, NULL, 1, 24),
(48, NULL, NULL, 3, 24),
(49, NULL, NULL, 2, 25),
(50, NULL, NULL, 3, 25),
(51, NULL, NULL, 2, 26),
(52, NULL, NULL, 4, 26),
(53, NULL, NULL, 4, 27),
(54, NULL, NULL, 1, 27),
(55, NULL, NULL, 3, 28),
(56, NULL, NULL, 1, 28),
(57, NULL, NULL, 1, 29),
(58, NULL, NULL, 1, 29),
(59, NULL, NULL, 3, 30),
(60, NULL, NULL, 3, 30),
(61, NULL, NULL, 1, 31),
(62, NULL, NULL, 2, 31),
(63, NULL, NULL, 3, 31),
(64, NULL, NULL, 1, 32),
(65, NULL, NULL, 1, 32),
(66, NULL, NULL, 1, 33),
(67, NULL, NULL, 4, 33),
(68, NULL, NULL, 1, 34),
(69, NULL, NULL, 4, 34),
(70, NULL, NULL, 4, 35),
(71, NULL, NULL, 2, 35),
(72, NULL, NULL, 3, 36),
(73, NULL, NULL, 3, 36),
(74, NULL, NULL, 4, 37),
(75, NULL, NULL, 1, 37),
(76, NULL, NULL, 1, 38),
(77, NULL, NULL, 3, 38),
(78, NULL, NULL, 4, 39),
(79, NULL, NULL, 3, 39),
(80, NULL, NULL, 4, 40),
(81, NULL, NULL, 2, 40),
(82, NULL, NULL, 2, 41),
(83, NULL, NULL, 3, 41),
(84, NULL, NULL, 4, 42),
(85, NULL, NULL, 4, 42),
(86, NULL, NULL, 4, 43),
(87, NULL, NULL, 4, 43),
(88, NULL, NULL, 1, 44),
(89, NULL, NULL, 3, 44),
(90, NULL, NULL, 4, 45),
(91, NULL, NULL, 4, 45),
(92, NULL, NULL, 2, 46),
(93, NULL, NULL, 4, 46),
(94, NULL, NULL, 1, 47),
(95, NULL, NULL, 4, 47),
(96, NULL, NULL, 2, 48),
(97, NULL, NULL, 3, 48),
(98, NULL, NULL, 1, 49),
(99, NULL, NULL, 1, 49),
(100, NULL, NULL, 4, 50),
(101, NULL, NULL, 2, 50),
(102, NULL, NULL, 2, 51),
(103, NULL, NULL, 2, 51),
(104, NULL, NULL, 3, 52),
(105, NULL, NULL, 3, 52),
(106, NULL, NULL, 4, 53),
(107, NULL, NULL, 3, 53),
(108, NULL, NULL, 3, 54),
(109, NULL, NULL, 3, 54),
(110, NULL, NULL, 4, 55),
(111, NULL, NULL, 4, 55),
(112, NULL, NULL, 1, 56),
(113, NULL, NULL, 2, 56),
(114, NULL, NULL, 1, 57),
(115, NULL, NULL, 4, 57),
(116, NULL, NULL, 3, 58),
(117, NULL, NULL, 3, 58),
(118, NULL, NULL, 1, 59),
(119, NULL, NULL, 4, 59),
(120, NULL, NULL, 1, 60),
(121, NULL, NULL, 3, 60),
(122, NULL, NULL, 1, 61),
(123, NULL, NULL, 3, 61),
(124, NULL, NULL, 1, 62),
(125, NULL, NULL, 2, 62),
(126, NULL, NULL, 5, 62),
(127, NULL, NULL, 3, 63);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent_off` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `percent_off`, `created_at`, `updated_at`) VALUES
(1, 'ABC', '50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(26, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(27, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(28, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(29, 5, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(30, 5, 'subtitle', 'text', 'Subtitle', 1, 1, 1, 1, 1, 1, '{}', 4),
(31, 5, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(32, 5, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 6),
(33, 5, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 7),
(34, 5, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 8),
(35, 5, 'stock', 'number', 'Stock', 1, 1, 1, 1, 1, 1, '{\"min\":0}', 9),
(36, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(37, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(38, 5, 'product_belongstomany_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"category_product\",\"pivot\":\"1\",\"taggable\":\"0\"}', 12);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-03-25 14:27:22', '2020-03-25 14:27:22'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-03-25 14:27:22', '2020-03-25 14:27:22'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-03-25 14:27:22', '2020-03-25 14:27:22'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-tag', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-25 14:40:03', '2020-03-25 14:42:54'),
(5, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-25 14:45:06', '2020-03-26 12:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-03-25 14:27:23', '2020-03-25 14:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-03-25 14:27:24', '2020-03-25 14:27:24', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2020-03-25 14:27:24', '2020-03-25 14:48:17', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2020-03-25 14:27:24', '2020-03-25 14:48:17', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2020-03-25 14:27:24', '2020-03-25 14:48:17', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2020-03-25 14:27:24', '2020-03-25 14:48:09', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-03-25 14:27:24', '2020-03-25 14:48:08', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-03-25 14:27:24', '2020-03-25 14:48:08', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-03-25 14:27:24', '2020-03-25 14:48:08', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-03-25 14:27:24', '2020-03-25 14:48:08', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2020-03-25 14:27:24', '2020-03-25 14:48:09', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', NULL, NULL, NULL, 3, '2020-03-25 14:40:03', '2020-03-25 14:48:17', 'voyager.categories.index', NULL),
(12, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 2, '2020-03-25 14:45:07', '2020-03-25 14:48:17', 'voyager.products.index', NULL);

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
(52, '2020_03_23_235211_create_cartegories_table', 1),
(53, '2020_03_24_004259_create_cartegories_table', 2),
(166, '2014_10_12_000000_create_users_table', 3),
(167, '2014_10_12_100000_create_password_resets_table', 3),
(168, '2016_01_01_000000_add_voyager_user_fields', 3),
(169, '2016_01_01_000000_create_data_types_table', 3),
(170, '2016_05_19_173453_create_menu_table', 3),
(171, '2016_10_21_190000_create_roles_table', 3),
(172, '2016_10_21_190000_create_settings_table', 3),
(173, '2016_11_30_135954_create_permission_table', 3),
(174, '2016_11_30_141208_create_permission_role_table', 3),
(175, '2016_12_26_201236_data_types__add__server_side', 3),
(176, '2017_01_13_000000_add_route_to_menu_items_table', 3),
(177, '2017_01_14_005015_create_translations_table', 3),
(178, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 3),
(179, '2017_03_06_000000_add_controller_to_data_types_table', 3),
(180, '2017_04_21_000000_add_order_to_data_rows_table', 3),
(181, '2017_07_05_210000_add_policyname_to_data_types_table', 3),
(182, '2017_08_05_000000_add_group_to_settings_table', 3),
(183, '2017_11_26_013050_add_user_role_relationship', 3),
(184, '2017_11_26_015000_create_user_roles_table', 3),
(185, '2018_03_11_000000_add_user_settings', 3),
(186, '2018_03_14_000000_add_details_to_data_types_table', 3),
(187, '2018_03_16_000000_make_settings_value_nullable', 3),
(188, '2019_08_19_000000_create_failed_jobs_table', 3),
(189, '2020_03_17_170624_create_products_table', 3),
(190, '2020_03_20_182829_create_orders_table', 3),
(191, '2020_03_24_005043_create_categories_table', 3),
(192, '2020_03_24_005123_create_category_product_table', 3),
(193, '2020_03_25_020938_add_images_to_products_table', 3),
(194, '2020_03_25_124111_add_stock_to_column_products_table', 3),
(195, '2020_03_26_135028_create_coupons_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_intent_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_created_at` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `products` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `payment_intent_id`, `payment_created_at`, `amount`, `products`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'pi_1GQsn1CQkUgG2Lfl1zVNZUbx', '2020-03-26 10:18:19', 397200, 'a:5:{s:10:\"products_0\";a:3:{i:0;s:58:\"Animi reprehenderit molestias consectetur blanditiis quis.\";i:1;i:28100;i:2;N;}s:10:\"products_1\";a:3:{i:0;s:10:\"Middleware\";i:1;i:45600;i:2;N;}s:10:\"products_2\";a:3:{i:0;s:26:\"Tenetur sed id distinctio.\";i:1;i:10600;i:2;N;}s:10:\"products_3\";a:3:{i:0;s:33:\"Similique ipsam soluta dolor est.\";i:1;i:15000;i:2;N;}s:10:\"products_4\";a:3:{i:0;s:44:\"Earum unde et dolore impedit iusto mollitia.\";i:1;i:13800;i:2;N;}}', 1, '2020-03-26 09:18:54', '2020-03-26 09:18:54'),
(2, 'pi_1GQsvtCQkUgG2Lfl6gFIZbNz', '2020-03-26 10:27:29', 313320, 'a:3:{s:10:\"products_0\";a:3:{i:0;s:58:\"Animi reprehenderit molestias consectetur blanditiis quis.\";i:1;i:28100;i:2;N;}s:10:\"products_1\";a:3:{i:0;s:10:\"Middleware\";i:1;i:45600;i:2;N;}s:10:\"products_2\";a:3:{i:0;s:33:\"Similique ipsam soluta dolor est.\";i:1;i:15000;i:2;N;}}', 1, '2020-03-26 09:27:48', '2020-03-26 09:27:48'),
(3, 'pi_1GQt0FCQkUgG2LflmEckw373', '2020-03-26 10:31:59', 155880, 'a:2:{s:10:\"products_0\";a:3:{i:0;s:58:\"Animi reprehenderit molestias consectetur blanditiis quis.\";i:1;i:28100;i:2;s:1:\"3\";}s:10:\"products_1\";a:3:{i:0;s:10:\"Middleware\";i:1;i:45600;i:2;i:1;}}', 1, '2020-03-26 09:32:22', '2020-03-26 09:32:22'),
(4, 'pi_1GQuX7CQkUgG2LflE98Y8i2U', '2020-03-26 12:10:01', 315600, 'a:4:{s:10:\"products_0\";a:3:{i:0;s:10:\"Middleware\";i:1;i:45600;i:2;i:1;}s:10:\"products_1\";a:3:{i:0;s:44:\"Earum unde et dolore impedit iusto mollitia.\";i:1;i:13800;i:2;s:1:\"3\";}s:10:\"products_2\";a:3:{i:0;s:58:\"Animi reprehenderit molestias consectetur blanditiis quis.\";i:1;i:28100;i:2;s:1:\"4\";}s:10:\"products_3\";a:3:{i:0;s:26:\"Tenetur sed id distinctio.\";i:1;i:10600;i:2;s:1:\"6\";}}', 1, '2020-03-26 11:10:18', '2020-03-26 11:10:18'),
(5, 'pi_1GQuY2CQkUgG2LflGRK1PKiW', '2020-03-26 12:10:58', 315600, 'a:4:{s:10:\"products_0\";a:4:{i:0;s:10:\"Middleware\";i:1;i:45600;i:2;i:1;i:3;N;}s:10:\"products_1\";a:4:{i:0;s:44:\"Earum unde et dolore impedit iusto mollitia.\";i:1;i:13800;i:2;s:1:\"3\";i:3;N;}s:10:\"products_2\";a:4:{i:0;s:58:\"Animi reprehenderit molestias consectetur blanditiis quis.\";i:1;i:28100;i:2;s:1:\"4\";i:3;N;}s:10:\"products_3\";a:4:{i:0;s:26:\"Tenetur sed id distinctio.\";i:1;i:10600;i:2;s:1:\"6\";i:3;N;}}', 1, '2020-03-26 11:15:45', '2020-03-26 11:15:45'),
(6, 'pi_1GQudkCQkUgG2Lflvtu7breT', '2020-03-26 12:16:52', 310560, 'a:3:{s:10:\"products_0\";a:4:{i:0;s:44:\"Earum unde et dolore impedit iusto mollitia.\";i:1;i:13800;i:2;s:1:\"5\";i:3;N;}s:10:\"products_1\";a:4:{i:0;s:58:\"Animi reprehenderit molestias consectetur blanditiis quis.\";i:1;i:28100;i:2;s:1:\"6\";i:3;N;}s:10:\"products_2\";a:4:{i:0;s:26:\"Tenetur sed id distinctio.\";i:1;i:10600;i:2;s:1:\"2\";i:3;N;}}', 1, '2020-03-26 11:17:12', '2020-03-26 11:17:12'),
(7, 'pi_1GQuwYCQkUgG2Lfld8GcumF7', '2020-03-26 12:36:18', 234240, 'a:2:{s:10:\"products_0\";a:3:{i:0;s:58:\"Animi reprehenderit molestias consectetur blanditiis quis.\";i:1;i:28100;i:2;N;}s:10:\"products_1\";a:3:{i:0;s:44:\"Earum unde et dolore impedit iusto mollitia.\";i:1;i:13800;i:2;N;}}', 1, '2020-03-26 11:36:41', '2020-03-26 11:36:41'),
(8, 'pi_1GQuxpCQkUgG2LflqVnoiZ1B', '2020-03-26 12:37:37', 156240, 'a:2:{s:10:\"products_0\";a:3:{i:0;s:44:\"Earum unde et dolore impedit iusto mollitia.\";i:1;i:13800;i:2;i:39;}s:10:\"products_1\";a:3:{i:0;s:33:\"Similique ipsam soluta dolor est.\";i:1;i:15000;i:2;i:50;}}', 1, '2020-03-26 11:37:55', '2020-03-26 11:37:55'),
(9, 'pi_1GRQboCQkUgG2LflmvqDROOs', '2020-03-27 22:25:00', 94039, 'a:2:{s:10:\"products_0\";a:3:{i:0;s:23:\"nfggggggggggggggggggggg\";i:1;i:4522;i:2;s:1:\"3\";}s:10:\"products_1\";a:3:{i:0;s:48:\"Blanditiis omnis aliquid est voluptatum ducimus.\";i:1;i:16200;i:2;s:1:\"4\";}}', 1, '2020-03-27 21:25:22', '2020-03-27 21:25:22'),
(10, 'pi_1GRQeQCQkUgG2LflVhYVxqdC', '2020-03-27 22:27:42', 54240, 'a:3:{s:10:\"products_0\";a:3:{i:0;s:51:\"Temporibus velit molestiae dolorem placeat dolores.\";i:1;i:29000;i:2;i:1;}s:10:\"products_1\";a:3:{i:0;s:50:\"Quisquam voluptatibus quibusdam omnis consequatur.\";i:1;i:2000;i:2;i:1;}s:10:\"products_2\";a:3:{i:0;s:31:\"Tempora fugit saepe qui et aut.\";i:1;i:14200;i:2;i:1;}}', 1, '2020-03-27 21:28:02', '2020-03-27 21:28:02');

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
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(2, 'browse_bread', NULL, '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(3, 'browse_database', NULL, '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(4, 'browse_media', NULL, '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(5, 'browse_compass', NULL, '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(6, 'browse_menus', 'menus', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(7, 'read_menus', 'menus', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(8, 'edit_menus', 'menus', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(9, 'add_menus', 'menus', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(10, 'delete_menus', 'menus', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(11, 'browse_roles', 'roles', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(12, 'read_roles', 'roles', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(13, 'edit_roles', 'roles', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(14, 'add_roles', 'roles', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(15, 'delete_roles', 'roles', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(16, 'browse_users', 'users', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(17, 'read_users', 'users', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(18, 'edit_users', 'users', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(19, 'add_users', 'users', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(20, 'delete_users', 'users', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(21, 'browse_settings', 'settings', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(22, 'read_settings', 'settings', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(23, 'edit_settings', 'settings', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(24, 'add_settings', 'settings', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(25, 'delete_settings', 'settings', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(26, 'browse_categories', 'categories', '2020-03-25 14:40:03', '2020-03-25 14:40:03'),
(27, 'read_categories', 'categories', '2020-03-25 14:40:03', '2020-03-25 14:40:03'),
(28, 'edit_categories', 'categories', '2020-03-25 14:40:03', '2020-03-25 14:40:03'),
(29, 'add_categories', 'categories', '2020-03-25 14:40:03', '2020-03-25 14:40:03'),
(30, 'delete_categories', 'categories', '2020-03-25 14:40:03', '2020-03-25 14:40:03'),
(31, 'browse_products', 'products', '2020-03-25 14:45:06', '2020-03-25 14:45:06'),
(32, 'read_products', 'products', '2020-03-25 14:45:06', '2020-03-25 14:45:06'),
(33, 'edit_products', 'products', '2020-03-25 14:45:06', '2020-03-25 14:45:06'),
(34, 'add_products', 'products', '2020-03-25 14:45:06', '2020-03-25 14:45:06'),
(35, 'delete_products', 'products', '2020-03-25 14:45:06', '2020-03-25 14:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` bigint(20) UNSIGNED NOT NULL DEFAULT 50,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `subtitle`, `description`, `price`, `image`, `images`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Corrupti alias quis doloremque rerum.', 'qui-sunt-dolores-sint-et-id-quod-excepturi', 'Autem vel quis.', 'Itaque a nemo alias quidem. Nisi eum aliquid sed nihil. Aut dicta quis molestias id. Ut quo neque qui dolorum voluptatem ut optio. Inventore sed est nulla explicabo delectus eaque in.', 13000, 'https://picsum.photos/200/300?random=14', NULL, 50, '2020-03-25 14:26:44', '2020-03-25 14:26:44'),
(2, 'Rerum ut quos incidunt quis.', 'autem-quis-dolor-et-magnam-magnam-aut', 'Corrupti accusamus quia.', 'Dolorem aspernatur quos non sit. Eligendi sint ut velit ipsa ratione enim saepe. Aut nihil et harum modi facere nihil qui molestiae.', 20700, 'https://picsum.photos/200/300?random=143', NULL, 50, '2020-03-25 14:26:44', '2020-03-25 14:26:44'),
(3, 'Nostrum et et esse odit quo.', 'voluptatibus-iusto-sunt-illum-iste', 'Eum minima optio velit doloremque.', 'Quo autem vitae cupiditate ipsum aspernatur ullam. Omnis libero recusandae qui harum. Qui quo et ut.', 18100, 'https://picsum.photos/200/300?random=159', NULL, 50, '2020-03-25 14:26:44', '2020-03-25 14:26:44'),
(4, 'Numquam non ipsam amet facere.', 'quae-ad-atque-sint-earum-nisi-sit-consequatur', 'Similique cum totam.', 'Esse architecto totam est eos velit sequi itaque. Dolorem exercitationem amet recusandae reprehenderit velit. Illo vitae ea ullam in et ut.', 24700, 'https://picsum.photos/200/300?random=49', NULL, 50, '2020-03-25 14:26:44', '2020-03-25 14:26:44'),
(5, 'Quo accusantium ipsa laboriosam voluptas qui numquam.', 'voluptates-labore-eaque-velit-ad-et-eaque-error-facilis', 'Fugiat aliquid aspernatur vel.', 'Et aut aspernatur illo ipsam atque. Exercitationem qui quos voluptates nulla. Est mollitia nemo et qui tempora.', 16900, 'https://picsum.photos/200/300?random=52', NULL, 50, '2020-03-25 14:26:45', '2020-03-25 14:26:45'),
(6, 'Autem provident veritatis sed.', 'eos-molestias-non-dolores-non-magnam-sed-et', 'Sit saepe doloremque esse.', '<p>Enim dolor reiciendis explicabo odio culpa. Voluptatem aliquam minima nemo temporibus. Ut harum non aut non magni consequatur aut. Vero sit eos odio recusandae deleniti id.</p>', 13500, 'products\\March2020\\jUs9vNyihvZBhQDO2c7t.PNG', '[\"products\\\\March2020\\\\f8hx6hd2DjrYxCtysBTN.PNG\",\"products\\\\March2020\\\\Tmqkmf6TSuL9A6vawZMk.PNG\",\"products\\\\March2020\\\\4gDYrLOetXQwRlHyHDut.PNG\"]', 50, '2020-03-25 14:26:00', '2020-03-25 14:49:12'),
(7, 'Eius veritatis corrupti quis debitis ad.', 'voluptates-aut-sit-libero-laudantium-temporibus-qui-sunt', 'Omnis pariatur enim deleniti.', 'Repellat odit neque nihil aperiam. Pariatur sint recusandae quasi accusamus recusandae quod iusto.', 20200, 'https://picsum.photos/200/300?random=166', NULL, 50, '2020-03-25 14:26:45', '2020-03-25 14:26:45'),
(8, 'In eos voluptatem perspiciatis et necessitatibus nesciunt.', 'labore-rerum-laborum-est-est-quaerat', 'Et sed at.', 'Ad cupiditate dolore in consequuntur et in consectetur. Nemo eos dolorum sint aliquid. Inventore quam recusandae laudantium aperiam illum. Unde magni possimus aut doloribus.', 27500, 'https://picsum.photos/200/300?random=52', NULL, 50, '2020-03-25 14:26:45', '2020-03-25 14:26:45'),
(9, 'Ut minima debitis sequi odit voluptatibus.', 'laudantium-dignissimos-ratione-et-vel-rerum-consequatur-laborum', 'Id quis enim qui sunt.', 'Vero vero molestias minima sunt est. Sunt dolores optio voluptatibus explicabo. Molestiae consequatur autem architecto magni non laboriosam.', 7700, 'https://picsum.photos/200/300?random=199', NULL, 50, '2020-03-25 14:26:45', '2020-03-25 14:26:45'),
(10, 'Aliquam nostrum quibusdam eum.', 'ea-blanditiis-reprehenderit-reiciendis-reiciendis-qui-tenetur', 'Ut culpa nesciunt.', 'Libero sequi porro ut voluptatem possimus aspernatur animi consequuntur. Aut dolore aperiam cupiditate voluptas ex. Ut minus sint voluptas repudiandae labore. Cupiditate ex aut cum in.', 25800, 'https://picsum.photos/200/300?random=103', NULL, 50, '2020-03-25 14:26:45', '2020-03-25 14:26:45'),
(11, 'Voluptate reiciendis consequatur modi.', 'consequatur-debitis-omnis-culpa-qui-facere-vitae', 'Et enim alias eligendi excepturi aliquam.', 'Modi ad est eveniet doloribus odit. Hic qui ex odio culpa vel enim nemo. Quia vitae vel quam distinctio fugit corrupti blanditiis. Sequi molestiae quia ullam autem dolorem doloribus.', 17800, 'https://picsum.photos/200/300?random=188', NULL, 50, '2020-03-25 14:26:45', '2020-03-25 14:26:45'),
(12, 'Consequatur repellat est minima cum beatae magnam.', 'aspernatur-cumque-eveniet-repudiandae-culpa-adipisci-sed-velit-rerum', 'Laborum est aut doloremque rerum.', 'Sequi enim repellendus expedita totam ab ut sit. Ut maxime incidunt quo ut aut nam non. Dolorem tempora est sit corporis. Nisi porro quos in ipsa accusamus dignissimos vitae non.', 8600, 'https://picsum.photos/200/300?random=52', NULL, 50, '2020-03-25 14:26:46', '2020-03-25 14:26:46'),
(13, 'Neque at consequuntur hic rerum.', 'amet-est-maiores-assumenda-assumenda-debitis-ut-pariatur-eos', 'Est cupiditate quia ut.', 'Cupiditate ut magnam doloribus eum earum rerum qui. Quae sed id suscipit dolores nulla molestiae. Vitae et aliquam et unde iste non nihil quos. Minus nam sed odit aliquid officiis nostrum.', 2500, 'https://picsum.photos/200/300?random=62', NULL, 50, '2020-03-25 14:26:46', '2020-03-25 14:26:46'),
(14, 'Sequi non facere explicabo at voluptatibus incidunt.', 'commodi-et-dolor-inventore-provident-asperiores-dolorem-maxime', 'Ex cum asperiores.', '<p>Nobis enim autem tenetur perferendis saepe dolorem dolor fuga. Doloremque quaerat molestias cum dolor. Quia sit exercitationem nesciunt voluptatem.</p>', 2400, 'https://picsum.photos/200/300?random=79', NULL, 10, '2020-03-25 14:26:00', '2020-03-25 23:13:20'),
(15, 'Perspiciatis perferendis sint aut.', 'dolorem-sequi-nobis-illo-nam', 'Omnis vero adipisci.', 'Quibusdam aut illo animi veritatis consequatur maxime quo beatae. Quia voluptate et sit in. Vitae et excepturi odit sed vel animi. Quidem voluptas officiis tempore.', 7100, 'https://picsum.photos/200/300?random=139', NULL, 50, '2020-03-25 14:26:46', '2020-03-25 14:26:46'),
(16, 'Dignissimos qui fugit totam.', 'voluptatibus-officiis-quo-aut-quae-officiis-omnis', 'Atque nihil eum velit.', 'Necessitatibus ullam qui et ad. Error consequuntur fuga officiis tempora recusandae. Est aspernatur qui modi nulla. Voluptatem reiciendis magni officiis vel quia facilis quod.', 25000, 'https://picsum.photos/200/300?random=176', NULL, 50, '2020-03-25 14:26:46', '2020-03-25 14:26:46'),
(17, 'Fugiat sunt magnam est non quod non.', 'suscipit-inventore-quo-non-sed-eaque', 'Quae perferendis nihil repudiandae.', 'Est illum tempora laboriosam qui. Tempora rem rerum sed enim. Porro ipsum soluta et amet officiis ut nemo. Aut tempore voluptates laudantium.', 11100, 'https://picsum.photos/200/300?random=102', NULL, 50, '2020-03-25 14:26:46', '2020-03-25 14:26:46'),
(18, 'Sed omnis sapiente sequi.', 'sed-tenetur-est-non', 'Doloribus molestiae reprehenderit aut molestias.', 'Optio nemo dolorem eum. Ut ut reprehenderit quae harum. At dolorem pariatur ea ex.', 2300, 'https://picsum.photos/200/300?random=7', NULL, 50, '2020-03-25 14:26:46', '2020-03-25 14:26:46'),
(19, 'Exercitationem labore excepturi facilis perferendis aliquam.', 'ipsam-et-et-itaque-et', 'Enim quas recusandae.', 'Est qui et eos ut voluptates sapiente. Excepturi sunt sit autem. Tempora consequuntur omnis provident. Quia quasi vitae laudantium.', 27300, 'https://picsum.photos/200/300?random=66', NULL, 50, '2020-03-25 14:26:46', '2020-03-25 14:26:46'),
(20, 'Sint esse tenetur voluptates.', 'facilis-voluptates-est-tempora-ipsa', 'Sed itaque repellendus similique.', '<p>Qui nobis molestias ut aspernatur voluptatum velit dicta. Fuga neque voluptatem vitae recusandae consequatur quia. Ex possimus iusto sit nesciunt sit aut.</p>', 29800, 'https://picsum.photos/200/300?random=184', NULL, 4, '2020-03-25 14:26:00', '2020-03-25 23:12:29'),
(21, 'Animi reprehenderit molestias consectetur blanditiis quis.', 'dolor-autem-ut-est-voluptas-ab', 'Optio natus aspernatur et laborum.', 'Soluta laboriosam magni magnam autem fuga porro. Ea sunt eius rerum dignissimos. Quisquam nemo possimus in optio. Facere sed non autem.', 28100, 'https://picsum.photos/200/300?random=140', NULL, 40, '2020-03-25 14:26:47', '2020-03-26 11:36:41'),
(22, 'Tenetur sed id distinctio.', 'ut-officiis-maiores-quis-est', 'Optio ullam praesentium explicabo.', 'Quod consequuntur saepe non rerum non. Temporibus accusantium ut nam nemo iusto blanditiis delectus. Quia qui libero ipsam optio quia. Illum doloremque quod inventore sed dolor in.', 10600, 'https://picsum.photos/200/300?random=83', NULL, 48, '2020-03-25 14:26:47', '2020-03-26 11:17:12'),
(23, 'Quidem maiores eaque nihil est.', 'voluptas-voluptatem-et-est-quia-facilis-deleniti', 'Quas sit ut dolore nulla.', 'Dicta alias sit tempora repellendus quia sint. Quia corporis aut ut aut ea in tempore. Quidem sed autem ea reiciendis velit delectus.', 25500, 'https://picsum.photos/200/300?random=37', NULL, 50, '2020-03-25 14:26:47', '2020-03-25 14:26:47'),
(24, 'Similique ipsam soluta dolor est.', 'veniam-qui-facere-natus-eaque-quaerat', 'Minima ex porro fuga qui.', '<p>Dolorem et quos ut necessitatibus. Officiis nihil eligendi labore ut consequatur architecto.</p>', 15000, 'https://picsum.photos/200/300?random=150', NULL, 0, '2020-03-25 14:26:00', '2020-03-26 12:40:15'),
(25, 'Earum unde et dolore impedit iusto mollitia.', 'distinctio-nihil-illum-maxime-qui-eligendi-harum-aut', 'Sed est eius vel.', 'Sed molestiae possimus est maxime. Cum incidunt sit laboriosam nemo. Adipisci vero tempora error. Tempora placeat aut autem natus unde.', 13800, 'https://picsum.photos/200/300?random=67', NULL, 35, '2020-03-25 14:26:47', '2020-03-26 11:37:55'),
(26, 'Omnis in repellendus consequatur.', 'officiis-recusandae-eius-quas-aspernatur', 'Ea et perspiciatis neque ex eaque.', '<p>Est sunt repudiandae accusamus nostrum. Explicabo est voluptates non quaerat quidem. Quasi consectetur eligendi et illum. Deserunt ut harum earum aut natus laboriosam dolor.</p>', 19200, 'products\\March2020\\lV2NdnJNfeu5E2jQ3lSQ.PNG', '[\"products\\\\March2020\\\\eG4o8jucFFWskHWAHOYp.PNG\",\"products\\\\March2020\\\\zUXOAchAJF54JKyuiJjC.PNG\",\"products\\\\March2020\\\\C85kRzvqmUOpf4jv5cV0.PNG\"]', 50, '2020-03-25 14:26:00', '2020-03-25 15:02:18'),
(27, 'Consectetur esse vero velit.', 'nobis-consequatur-optio-et-labore-consectetur-nostrum-totam', 'Officia laboriosam laborum.', '<p>Quaerat qui aut sit ab consequuntur. Minima aut ut numquam qui qui eligendi placeat qui. Blanditiis qui et fugiat quibusdam officiis incidunt.</p>', 22800, 'products\\March2020\\tPUndiABZwMKgz2a0dRq.PNG', '[\"products\\\\March2020\\\\u2JQtCLodW433E5xkQVo.PNG\",\"products\\\\March2020\\\\9dK5M0wX7V2NzOJejg4t.PNG\",\"products\\\\March2020\\\\35p6doalDA9WRVavo0Ss.PNG\"]', 50, '2020-03-25 14:26:00', '2020-03-25 15:02:56'),
(28, 'Officia asperiores est omnis.', 'neque-neque-quasi-fugiat-qui-ut-voluptas', 'Qui id ex minus.', '<p>Ea ea nesciunt architecto quidem doloremque et. Nam nam impedit earum libero adipisci. Earum debitis cupiditate earum tempore. Nemo aut quia rerum nobis et nobis.</p>', 22600, 'https://picsum.photos/200/300?random=8', '[\"products\\\\March2020\\\\t1fNvt4mqK9j4Qy3rx3n.PNG\",\"products\\\\March2020\\\\MSkzQg1eqo8DQXf0fZBL.PNG\",\"products\\\\March2020\\\\5Obsrb07t7oxyA5A6vsu.PNG\"]', 6, '2020-03-25 14:26:00', '2020-03-25 23:13:05'),
(29, 'Deserunt quia sed adipisci.', 'laudantium-omnis-doloremque-voluptate-voluptas-numquam-similique', 'Deserunt eius nam facere consequuntur.', '<p>Animi pariatur itaque non. Velit placeat deserunt neque debitis voluptatem qui non. Voluptatem deserunt vero soluta quis laudantium.</p>', 30000, 'https://picsum.photos/200/300?random=174', '[\"products\\\\March2020\\\\hVOoQVIzQSTydLNYlYsB.PNG\",\"products\\\\March2020\\\\5UuUE6PK3Zewh41CDDrw.PNG\",\"products\\\\March2020\\\\OQ4zlFvSpTDSTbZnGHMQ.PNG\"]', 50, '2020-03-25 14:26:00', '2020-03-25 15:10:38'),
(30, 'Voluptatem ut hic nihil nostrum.', 'in-repudiandae-fugit-vitae-aut-consectetur-aliquid-non', 'Ex velit incidunt.', '<p>Omnis beatae omnis in iusto alias illum. Eligendi dolore qui quod quia et blanditiis vel. Et culpa est architecto qui et quo.</p>', 15100, 'https://picsum.photos/200/300?random=195', NULL, 5, '2020-03-25 14:26:00', '2020-03-25 23:11:57'),
(31, 'Middleware', 'middleware', 'omnis iste natus error sit voluptatem', '<p style=\"box-sizing: border-box; margin-top: 0px; font-size: 16px; line-height: 1.8em; color: rgba(9, 9, 16, 0.7); margin-bottom: 2em; font-family: scandia-web, sans-serif;\">As you can see, if the given he request will be passed further into the application. To pass the request deeper into the application (allowing the middleware to \"pass\"),&nbsp;</p>', 45600, 'products\\March2020\\VUoMVZiJ37VmEDK2kJ36.PNG', '[\"products\\\\March2020\\\\foImZ01nd9ZNe1pwabJK.PNG\",\"products\\\\March2020\\\\2xzXLXe0fuCErAaxxsDK.PNG\",\"products\\\\March2020\\\\ZIxOZLupSqcuOSOXpgDV.PNG\"]', 0, '2020-03-25 15:22:00', '2020-03-25 22:41:28'),
(32, 'Similique perferendis non consequuntur distinctio enim deleniti.', 'at-blanditiis-dolore-pariatur-perspiciatis', 'Veritatis sit et.', 'Est non voluptatem soluta iste aut numquam praesentium. Et sunt expedita voluptas perspiciatis sint qui voluptatem. Repellat ea praesentium perspiciatis quia rerum.', 25200, 'https://picsum.photos/200/300?random=51', NULL, 50, '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(33, 'Sunt iste est sed enim illo fugit.', 'exercitationem-molestiae-ea-officiis-et', 'Corrupti cum qui et.', 'Autem qui a expedita dolorum pariatur. Aliquam impedit dolor quod autem mollitia commodi ducimus. Dolorem qui magnam quisquam rem fugiat dolor. Qui qui optio autem sunt.', 12200, 'https://picsum.photos/200/300?random=184', NULL, 50, '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(34, 'Harum labore ad voluptas.', 'aut-dicta-labore-sit-voluptatem-praesentium', 'Porro quam maxime nihil similique velit.', 'Perspiciatis dolore error neque nam pariatur alias. Officia perspiciatis unde amet in aut excepturi. Occaecati officia quam eos et culpa.', 21800, 'https://picsum.photos/200/300?random=1', NULL, 50, '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(35, 'Molestiae expedita veniam recusandae eos nihil.', 'iste-sequi-deleniti-recusandae', 'Vel nemo ab maxime.', 'Vel nulla nulla nulla vitae quas. Qui exercitationem praesentium cum. Debitis illum et accusamus.', 28400, 'https://picsum.photos/200/300?random=71', NULL, 50, '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(36, 'Explicabo fuga tempore qui.', 'inventore-asperiores-facere-quia-reprehenderit', 'Et occaecati doloremque.', 'Suscipit non sed assumenda quo. Atque facere sed quo minus mollitia delectus ab. Est rerum commodi totam. Quaerat ratione asperiores repudiandae.', 2300, 'https://picsum.photos/200/300?random=51', NULL, 50, '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(37, 'Animi consectetur nostrum doloremque iusto.', 'sequi-sunt-est-voluptatem-laborum-reprehenderit-aperiam', 'Qui illo ut qui maiores minus.', 'Et sequi deserunt quia. Laborum hic quia qui dignissimos ut. Debitis cum velit rem pariatur est inventore consequuntur rem. Natus placeat sit quos autem illum laudantium.', 19000, 'https://picsum.photos/200/300?random=36', NULL, 50, '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(38, 'Soluta et et nam dolores temporibus.', 'ipsum-ipsam-tempore-temporibus-qui-a', 'Aut aut molestiae consequatur soluta.', 'Tempora laborum fugiat quos non. Et dolorem sit aut cum. Est porro nobis et cum.', 19800, 'https://picsum.photos/200/300?random=12', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(39, 'Dolores laudantium minima fuga voluptatum eos soluta.', 'ea-quo-quos-reiciendis-omnis-non-qui-eligendi', 'Dignissimos atque quis aut voluptatem dignissimos.', 'Est recusandae est voluptatem impedit. Mollitia autem quibusdam corrupti corporis. Tempora dolorem vel voluptas nulla enim eos maxime.', 20100, 'https://picsum.photos/200/300?random=17', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(40, 'Eos quam ad cumque.', 'molestiae-sequi-corporis-repudiandae-et-dicta-officia', 'Voluptas officiis sunt velit illo.', 'Aut expedita enim corrupti voluptatem. Impedit sunt in recusandae vitae culpa ea. Aut qui aut error in vero. Rerum explicabo natus eligendi eaque illum.', 22500, 'https://picsum.photos/200/300?random=172', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(41, 'Doloremque consequatur nam velit omnis.', 'aperiam-facilis-esse-reprehenderit-fugiat-unde-unde-aut-quaerat', 'Voluptates at dolor.', 'Sunt aut sed consequatur culpa dolor eos eos. Modi quidem et qui explicabo quis laboriosam. Nihil ut recusandae eaque. Qui perferendis accusantium ut sed consequatur.', 24800, 'https://picsum.photos/200/300?random=116', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(42, 'Libero corrupti inventore eligendi occaecati ea consequatur.', 'aspernatur-suscipit-quos-impedit-qui-facilis-aperiam-ipsum', 'Alias quaerat sint nostrum voluptas.', 'Vel dolorum quisquam perferendis nihil. Ipsam corrupti voluptatem officiis aut. Autem rerum aut aut consequatur velit asperiores ipsa.', 15900, 'https://picsum.photos/200/300?random=73', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(43, 'Beatae quo veniam error facilis vero illum.', 'necessitatibus-laudantium-quam-corporis-quo', 'Ut maxime aut ut sit voluptate.', 'Dolorem veniam est occaecati quo. Sit accusantium ad et nobis ut odio. Et maxime est dignissimos. Enim et laudantium necessitatibus nihil nobis quasi nam.', 19100, 'https://picsum.photos/200/300?random=59', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(44, 'Laboriosam id autem fugit vitae a sunt.', 'blanditiis-libero-reiciendis-natus-inventore-dolorem-molestiae', 'Soluta esse possimus magni vel.', 'Illo qui ut soluta enim. Non est et omnis facere quia voluptatem. Nulla dolorem ut ratione sit error ipsa.', 17300, 'https://picsum.photos/200/300?random=80', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(45, 'Ullam totam id eligendi et.', 'accusantium-sit-nulla-iusto-vero-pariatur-repudiandae', 'Sit in neque ut aut corporis.', 'Quo ipsum vel harum. Voluptate corrupti aut unde dolorem vitae non. Odit non sunt sunt ut. Molestiae et quidem itaque aut ipsum vero placeat consequuntur.', 4900, 'https://picsum.photos/200/300?random=179', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(46, 'Corporis officiis suscipit quia.', 'voluptas-iusto-rerum-perferendis-tenetur-excepturi-autem', 'Possimus sed doloribus voluptate impedit.', 'Minus sed exercitationem tempora quo ducimus eos. Est officia facere quis neque. Vitae maiores et quod dolorem enim quam laborum. Aut quaerat corporis quisquam modi.', 23900, 'https://picsum.photos/200/300?random=106', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(47, 'Explicabo natus delectus quia.', 'voluptatem-id-saepe-occaecati-qui', 'Est delectus ex consequatur.', '<p>Vitae quae architecto ut voluptas repudiandae. Et illum non animi dolorem. Animi quis in qui aut qui consequatur. Voluptates sint vel eos enim.</p>', 7100, 'products\\March2020\\lpr13gOyPIUfjQGWlJw0.PNG', '[\"products\\\\March2020\\\\z3Umuw6Hk2btbAtjqmgS.PNG\",\"products\\\\March2020\\\\cCOhNiZkqkacwRpCvZek.PNG\",\"products\\\\March2020\\\\2YTGItJMrK6J4YCsSefZ.PNG\"]', 50, '2020-03-26 16:43:00', '2020-03-27 10:08:10'),
(48, 'Quia explicabo vel ut est totam.', 'enim-molestiae-voluptas-inventore-necessitatibus-earum-est-sapiente-suscipit', 'Id quidem vel fuga eligendi.', '<p>Qui et molestiae dolores quis. Ipsum illo id et. Dolorem delectus possimus natus incidunt.</p>', 15900, 'products\\March2020\\lnkTbEsnL2SLV167Hqll.PNG', '[\"products\\\\March2020\\\\gwmF54S38PWJplZXNyvi.PNG\",\"products\\\\March2020\\\\XzEni5j5cDejRiLxuUcs.PNG\",\"products\\\\March2020\\\\f1aP4A1xR1OHX37AmoUE.PNG\"]', 50, '2020-03-26 16:43:00', '2020-03-27 10:08:39'),
(49, 'Blanditiis omnis aliquid est voluptatum ducimus.', 'ducimus-voluptates-inventore-unde-eos-non', 'Neque sed repudiandae.', 'Praesentium cum ab cumque porro. Sunt sed rerum illo. In nihil beatae quam.', 16200, 'https://picsum.photos/200/300?random=1', NULL, 46, '2020-03-26 16:43:56', '2020-03-27 21:25:22'),
(50, 'Temporibus velit molestiae dolorem placeat dolores.', 'repellat-qui-nam-accusamus-nemo-tempore-quasi-earum-quis', 'Omnis voluptatem accusantium sequi et.', 'Maiores corrupti et sit ipsum dignissimos dolorem magni. Autem ut ut harum ex. Magnam ratione exercitationem amet asperiores ab cum odit.', 29000, 'https://picsum.photos/200/300?random=65', NULL, 49, '2020-03-26 16:43:56', '2020-03-27 21:28:02'),
(51, 'Quisquam voluptatibus quibusdam omnis consequatur.', 'tempora-aut-ducimus-debitis-at-culpa-asperiores', 'Maxime laboriosam libero facilis.', 'Reiciendis blanditiis molestiae rerum rerum ab. Voluptates exercitationem enim non molestiae. Porro eum fuga et qui. Odit qui qui expedita nulla. Ea quasi est ipsa beatae veniam.', 2000, 'https://picsum.photos/200/300?random=19', NULL, 49, '2020-03-26 16:43:56', '2020-03-27 21:28:02'),
(52, 'Tempora fugit saepe qui et aut.', 'voluptates-in-reiciendis-voluptatem-autem-omnis-quidem-aut', 'In ut pariatur ipsa.', 'Itaque debitis voluptate doloribus et voluptatem similique. Consequatur quos modi magnam officia omnis voluptate. Quidem quis aut dolorem.', 14200, 'https://picsum.photos/200/300?random=149', NULL, 49, '2020-03-26 16:43:56', '2020-03-27 21:28:02'),
(53, 'Harum omnis quasi aut.', 'et-aliquid-repellat-ut-quis-aut-consequatur-delectus', 'Earum ducimus non rerum quas.', 'Voluptatibus voluptas eligendi velit deserunt expedita. Excepturi maxime numquam optio maiores quidem sapiente dolores cum. Neque fuga accusantium sint repellendus.', 10400, 'https://picsum.photos/200/300?random=24', NULL, 50, '2020-03-26 16:43:56', '2020-03-26 16:43:56'),
(54, 'Sunt consequuntur architecto ad ullam repellat.', 'adipisci-laboriosam-quasi-distinctio-omnis-sint', 'Tempora ratione architecto sunt.', 'In nemo atque veritatis dolor maxime natus animi. Et vero earum quia ut suscipit. Eligendi quo repudiandae autem consequuntur consectetur debitis.', 1600, 'https://picsum.photos/200/300?random=43', NULL, 50, '2020-03-26 16:43:56', '2020-03-26 16:43:56'),
(55, 'Nostrum ipsa tenetur officiis perferendis.', 'ea-laboriosam-odio-nulla', 'Aut incidunt ut officia.', 'Vitae mollitia inventore sint repellendus molestiae quos quaerat labore. Officiis corrupti esse corrupti ex dolores aut. Id perspiciatis nisi doloribus eius.', 22600, 'https://picsum.photos/200/300?random=24', NULL, 50, '2020-03-26 16:43:56', '2020-03-26 16:43:56'),
(56, 'Sed ut est placeat et.', 'explicabo-iste-incidunt-iusto-qui-quae', 'Nisi fugiat eius voluptatem.', 'Error sunt enim molestiae id sit velit. Ut esse commodi laudantium non fugit ea. Magni molestiae porro est ipsam cum et.', 16000, 'https://picsum.photos/200/300?random=59', NULL, 50, '2020-03-26 16:43:56', '2020-03-26 16:43:56'),
(57, 'Ex ad molestiae totam nisi.', 'provident-consequatur-culpa-ea-aliquam', 'Nesciunt in et unde adipisci.', 'Omnis veritatis facere sint. Nihil dolor molestiae molestiae. Rem nostrum beatae amet.', 23100, 'https://picsum.photos/200/300?random=151', NULL, 50, '2020-03-26 16:43:56', '2020-03-26 16:43:56'),
(58, 'Voluptatem earum vero commodi.', 'aut-nesciunt-quidem-sit-aut', 'Quis veniam sed reiciendis et accusamus.', 'Vel quia consequatur et ratione. Ducimus dolorem cupiditate voluptas tempora autem sint voluptatem. Et laboriosam omnis rerum perferendis beatae quisquam.', 27700, 'https://picsum.photos/200/300?random=109', NULL, 50, '2020-03-26 16:43:56', '2020-03-26 16:43:56'),
(59, 'Maiores sint eius animi aspernatur.', 'natus-repellendus-minus-consequatur-asperiores-voluptatibus-maiores', 'Amet vel ratione.', 'Non officiis repellat ratione voluptatibus cum est praesentium repudiandae. Et reprehenderit quia quae consequatur.', 2200, 'https://picsum.photos/200/300?random=29', NULL, 50, '2020-03-26 16:43:56', '2020-03-26 16:43:56'),
(60, 'Voluptatem optio sunt vitae voluptate quia itaque.', 'saepe-accusamus-dolores-harum-adipisci-maiores-asperiores-quis-explicabo', 'Eveniet aspernatur sint placeat.', '<p>Odit autem reiciendis quis at voluptate. Rerum velit ea officia et qui sit. Est iure nesciunt voluptas dolore dolor. Dolorem dolores voluptatem est.</p>', 1900, 'https://picsum.photos/200/300?random=39', '[\"products\\\\March2020\\\\lE2Gdbv4OO5ZhTF3495s.PNG\",\"products\\\\March2020\\\\KwVV6jqjpR4iBWWlZgXB.PNG\",\"products\\\\March2020\\\\SIrIGbr7XJ2hJefBKfyk.PNG\"]', 50, '2020-03-26 16:43:00', '2020-03-27 09:52:00'),
(61, 'Quis doloremque quis quaerat autem.', 'sit-earum-nulla-soluta-rerum-sapiente-non-quisquam', 'Debitis sunt aspernatur deserunt debitis laudantium.', '<p>Autem doloribus aperiam tenetur in magnam dolorem mollitia. Est in aut itaque voluptatem. Deleniti doloribus provident minima non distinctio.</p>', 21600, 'products\\March2020\\RqeZZap8XjquJVfDBWDk.PNG', '[\"products\\\\March2020\\\\yL5KZWwfXYu1HndXZHbg.PNG\",\"products\\\\March2020\\\\FdEBU68OlyryDphymlTX.PNG\",\"products\\\\March2020\\\\1WfPrSKLbyLqJRHhDP6A.PNG\"]', 50, '2020-03-26 16:43:00', '2020-03-27 09:56:38'),
(62, 'new article', 'new slug', 'gkhkjhjl', '<p><span style=\"color: rgba(9, 9, 16, 0.7); font-family: scandia-web, sans-serif; font-size: 16px;\">o get started, let\'s create an Eloquent model. Models typically live in the</span><span style=\"color: rgba(9, 9, 16, 0.7); font-family: scandia-web, sans-serif; font-size: 16px;\">&nbsp;directory, but you are free to place them anywhere that can be auto-loaded according to your</span></p>', 4500, 'products\\March2020\\mDorJvAoqceuYVntL6j7.PNG', '[\"products\\\\March2020\\\\7FAXAH8o2PeUdnZwQK4V.PNG\",\"products\\\\March2020\\\\CTtnKerIMJe6BBfF6Hga.PNG\",\"products\\\\March2020\\\\tVWEmwJ6qtOt9iHgBuOa.PNG\"]', 5, '2020-03-27 10:13:00', '2020-03-27 10:16:40'),
(63, 'nfggggggggggggggggggggg', 'ggggggggggg', 'ggggggggggggggggggggg', '<p>ggggggggggggggggggggggggggggggggggggggggggggggggggggggg</p>', 4522, 'products\\March2020\\kbp1cwj47j0els9HHr5h.PNG', '[\"products\\\\March2020\\\\8NPeu0eOvyN6AolNWxx5.PNG\",\"products\\\\March2020\\\\pWt6vkhfI5KsWBsX6Yef.PNG\",\"products\\\\March2020\\\\M9Rw9UpjAOf0d7azrMNc.PNG\",\"products\\\\March2020\\\\9w5VLRgLwNUOMMP4nRHe.PNG\"]', 0, '2020-03-27 10:18:20', '2020-03-27 21:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-03-25 14:27:24', '2020-03-25 14:27:24'),
(2, 'user', 'Normal User', '2020-03-25 14:27:24', '2020-03-25 14:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ikram_San', 'admine@admine.com', 'users/default.png', NULL, '$2y$10$9VIKBfgDRxwM9an8vvNPwOqiQDdae4MxJW7/gKc4tcCjcy1QhB542', NULL, NULL, '2020-03-25 14:29:47', '2020-03-25 14:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_payment_intent_id_unique` (`payment_intent_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
