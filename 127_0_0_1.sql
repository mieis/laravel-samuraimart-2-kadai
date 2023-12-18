-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-12-17 10:37:01
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `laravel_samuraimart`
--


-- --------------------------------------------------------

--
-- テーブルの構造 `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 0, 'カテゴリー', 'fa-bars', 'categories', NULL, '2023-12-08 11:54:20', '2023-12-08 11:54:20'),
(9, 0, 0, '商品', 'fa-bars', 'products', NULL, '2023-12-09 01:46:57', '2023-12-09 01:46:57'),
(10, 0, 0, '親カテゴリー', 'fa-bars', 'major-categories', NULL, '2023-12-10 23:09:47', '2023-12-10 23:09:47'),
(11, 0, 0, 'ユーザー', 'fa-bars', 'users', NULL, '2023-12-12 01:31:11', '2023-12-12 01:31:11'),
(12, 0, 0, '売り上げ', 'fa-bars', 'shopping-carts', NULL, '2023-12-13 01:51:29', '2023-12-13 01:51:29');

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '::1', '[]', '2023-12-08 01:52:46', '2023-12-08 01:52:46'),
(2, 1, 'admin', 'GET', '::1', '[]', '2023-12-08 11:53:10', '2023-12-08 11:53:10'),
(3, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-08 11:53:40', '2023-12-08 11:53:40'),
(4, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u30ab\\u30c6\\u30b4\\u30ea\\u30fc\",\"icon\":\"fa-bars\",\"uri\":\"categories\",\"roles\":[null],\"permission\":null,\"_token\":\"Ca2SWN4lSjEddY47wng0YilzTNDVszgo1DqhgHU7\"}', '2023-12-08 11:54:20', '2023-12-08 11:54:20'),
(5, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2023-12-08 11:54:22', '2023-12-08 11:54:22'),
(6, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2023-12-08 11:54:32', '2023-12-08 11:54:32'),
(7, 1, 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-08 11:54:39', '2023-12-08 11:54:39'),
(8, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2023-12-08 11:54:40', '2023-12-08 11:54:40'),
(9, 1, 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-08 11:55:13', '2023-12-08 11:55:13'),
(10, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2023-12-08 11:55:15', '2023-12-08 11:55:15'),
(11, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2023-12-08 12:00:14', '2023-12-08 12:00:14'),
(12, 1, 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-08 12:00:23', '2023-12-08 12:00:23'),
(13, 1, 'admin/categories', 'GET', '::1', '[]', '2023-12-08 12:03:31', '2023-12-08 12:03:31'),
(14, 1, 'admin/categories', 'GET', '::1', '[]', '2023-12-08 12:04:48', '2023-12-08 12:04:48'),
(15, 1, 'admin/categories', 'GET', '::1', '{\"id\":null,\"name\":\"PC\",\"major_category_name\":null,\"created_at\":{\"start\":null,\"end\":null},\"_pjax\":\"#pjax-container\"}', '2023-12-08 12:05:14', '2023-12-08 12:05:14'),
(16, 1, 'admin/categories', 'GET', '::1', '{\"id\":null,\"name\":\"PC\",\"major_category_name\":null,\"created_at\":{\"start\":null,\"end\":null}}', '2023-12-09 01:45:26', '2023-12-09 01:45:26'),
(17, 1, 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-09 01:45:46', '2023-12-09 01:45:46'),
(18, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-09 01:45:49', '2023-12-09 01:45:49'),
(19, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\",\"icon\":\"fa-bars\",\"uri\":\"products\",\"roles\":[null],\"permission\":null,\"_token\":\"eP3rZpiwru4TtiOW2v7ngWQLQsCWyW4vyccfNp0p\"}', '2023-12-09 01:46:57', '2023-12-09 01:46:57'),
(20, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2023-12-09 01:46:58', '2023-12-09 01:46:58'),
(21, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2023-12-09 01:47:09', '2023-12-09 01:47:09'),
(22, 1, 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-09 01:47:12', '2023-12-09 01:47:12'),
(23, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-09 01:47:19', '2023-12-09 01:47:19'),
(24, 1, 'admin/products/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-09 01:48:24', '2023-12-09 01:48:24'),
(25, 1, 'admin/products/1', 'PUT', '::1', '{\"name\":\"Laravel\\u5165\\u9580\",\"description\":\"Laravel\\u5165\\u9580\\u306e\\u672c\\u3067\\u3059\",\"price\":\"2000\",\"category_id\":\"5\",\"_token\":\"eP3rZpiwru4TtiOW2v7ngWQLQsCWyW4vyccfNp0p\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/laravel-samuraimart\\/public\\/admin\\/products\"}', '2023-12-09 01:49:06', '2023-12-09 01:49:06'),
(26, 1, 'admin/products', 'GET', '::1', '[]', '2023-12-09 01:49:08', '2023-12-09 01:49:08'),
(27, 1, 'admin/products/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-09 01:49:16', '2023-12-09 01:49:16'),
(28, 1, 'admin/products/2', 'PUT', '::1', '{\"name\":\"\\u30c4\\u30ca\\u30de\\u30e8\",\"description\":\"\\u30c4\\u30ca\\u30de\\u30e8\\u306e\\u304a\\u306b\\u304e\\u308a\",\"price\":\"100\",\"category_id\":\"11\",\"_token\":\"eP3rZpiwru4TtiOW2v7ngWQLQsCWyW4vyccfNp0p\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/laravel-samuraimart\\/public\\/admin\\/products\"}', '2023-12-09 01:50:24', '2023-12-09 01:50:24'),
(29, 1, 'admin/products', 'GET', '::1', '[]', '2023-12-09 01:50:26', '2023-12-09 01:50:26'),
(30, 1, 'admin/products/3/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-09 01:50:33', '2023-12-09 01:50:33'),
(31, 1, 'admin/products/3', 'PUT', '::1', '{\"name\":\"\\u3046\\u3081\",\"description\":\"\\u3046\\u3081\\u307c\\u3057\\u306e\\u304a\\u306b\\u304e\\u308a\",\"price\":\"100\",\"category_id\":\"11\",\"_token\":\"eP3rZpiwru4TtiOW2v7ngWQLQsCWyW4vyccfNp0p\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/laravel-samuraimart\\/public\\/admin\\/products\"}', '2023-12-09 01:50:45', '2023-12-09 01:50:45'),
(32, 1, 'admin/products', 'GET', '::1', '[]', '2023-12-09 01:50:46', '2023-12-09 01:50:46'),
(33, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-09 01:52:42', '2023-12-09 01:52:42'),
(34, 1, 'admin', 'GET', '::1', '[]', '2023-12-10 23:07:44', '2023-12-10 23:07:44'),
(35, 1, 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-10 23:07:50', '2023-12-10 23:07:50'),
(36, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-10 23:09:06', '2023-12-10 23:09:06'),
(37, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u89aa\\u30ab\\u30c6\\u30b4\\u30ea\\u30fc\",\"icon\":\"fa-bars\",\"uri\":\"major-categories\",\"roles\":[null],\"permission\":null,\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\"}', '2023-12-10 23:09:46', '2023-12-10 23:09:46'),
(38, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2023-12-10 23:09:48', '2023-12-10 23:09:48'),
(39, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2023-12-10 23:09:57', '2023-12-10 23:09:57'),
(40, 1, 'admin/major-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-10 23:10:01', '2023-12-10 23:10:01'),
(41, 1, 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-10 23:13:14', '2023-12-10 23:13:14'),
(42, 1, 'admin/categories/1', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"1\",\"pk\":\"1\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:13:57', '2023-12-10 23:13:57'),
(43, 1, 'admin/categories/2', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"1\",\"pk\":\"2\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:14:14', '2023-12-10 23:14:14'),
(44, 1, 'admin/categories/3', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"1\",\"pk\":\"3\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:14:19', '2023-12-10 23:14:19'),
(45, 1, 'admin/categories/4', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"1\",\"pk\":\"4\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:14:25', '2023-12-10 23:14:25'),
(46, 1, 'admin/categories/5', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"1\",\"pk\":\"5\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:14:30', '2023-12-10 23:14:30'),
(47, 1, 'admin/categories/6', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"1\",\"pk\":\"6\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:14:35', '2023-12-10 23:14:35'),
(48, 1, 'admin/categories/7', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"1\",\"pk\":\"7\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:14:40', '2023-12-10 23:14:40'),
(49, 1, 'admin/categories/8', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"1\",\"pk\":\"8\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:14:46', '2023-12-10 23:14:46'),
(50, 1, 'admin/categories/9', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"1\",\"pk\":\"9\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:14:51', '2023-12-10 23:14:51'),
(51, 1, 'admin/categories/10', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"1\",\"pk\":\"10\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:14:55', '2023-12-10 23:14:55'),
(52, 1, 'admin/categories/11', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"1\",\"pk\":\"11\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:15:00', '2023-12-10 23:15:00'),
(53, 1, 'admin/categories/12', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"1\",\"pk\":\"12\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:15:05', '2023-12-10 23:15:05'),
(54, 1, 'admin/categories/13', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"2\",\"pk\":\"13\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:15:14', '2023-12-10 23:15:14'),
(55, 1, 'admin/categories/14', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"2\",\"pk\":\"14\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:15:19', '2023-12-10 23:15:19'),
(56, 1, 'admin/categories/15', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"2\",\"pk\":\"15\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:15:28', '2023-12-10 23:15:28'),
(57, 1, 'admin/categories/16', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"3\",\"pk\":\"16\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:15:40', '2023-12-10 23:15:40'),
(58, 1, 'admin/categories/17', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"3\",\"pk\":\"17\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:15:46', '2023-12-10 23:15:46'),
(59, 1, 'admin/categories/18', 'PUT', '::1', '{\"name\":\"major_category_id\",\"value\":\"3\",\"pk\":\"18\",\"_token\":\"ORxBp6l9NiXz4nJNGythZlVkXPQf6RLmFqNuM5Zx\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-10 23:15:51', '2023-12-10 23:15:51'),
(60, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-12 01:30:43', '2023-12-12 01:30:43'),
(61, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u30e6\\u30fc\\u30b6\\u30fc\",\"icon\":\"fa-bars\",\"uri\":\"users\",\"roles\":[null],\"permission\":null,\"_token\":\"wSdU9YQwFnCytm7Uxdgs8jyEnF6jCDzZRWrsN1zc\"}', '2023-12-12 01:31:11', '2023-12-12 01:31:11'),
(62, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2023-12-12 01:31:12', '2023-12-12 01:31:12'),
(63, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2023-12-12 01:31:20', '2023-12-12 01:31:20'),
(64, 1, 'admin/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-12 01:31:25', '2023-12-12 01:31:25'),
(65, 1, 'admin', 'GET', '::1', '[]', '2023-12-12 01:38:32', '2023-12-12 01:38:32'),
(66, 1, 'admin/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-12 01:38:38', '2023-12-12 01:38:38'),
(67, 1, 'admin/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\",\"_scope_\":\"trashed\"}', '2023-12-12 01:38:54', '2023-12-12 01:38:54'),
(68, 1, 'admin/users/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-12 01:39:30', '2023-12-12 01:39:30'),
(69, 1, 'admin/users/1', 'PUT', '::1', '{\"name\":\"\\u4f8d \\u592a\\u90ce\",\"email\":\"miei.s.0305@gmail.com\",\"email_verified_at\":\"2023-11-28 14:30:11\",\"password\":null,\"postal_code\":\"150-0034\",\"address\":\"\\u6771\\u4eac\\u90fd\\u6e0b\\u8c37\\u533a\\u9053\\u7384\\u5742\",\"phone\":\"09012345678\",\"deleted_at\":null,\"_token\":\"wSdU9YQwFnCytm7Uxdgs8jyEnF6jCDzZRWrsN1zc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/laravel-samuraimart\\/public\\/admin\\/users?&_scope_=trashed\"}', '2023-12-12 01:41:02', '2023-12-12 01:41:02'),
(70, 1, 'admin/users', 'GET', '::1', '{\"_scope_\":\"trashed\"}', '2023-12-12 01:41:04', '2023-12-12 01:41:04'),
(71, 1, 'admin/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-12 01:41:08', '2023-12-12 01:41:08'),
(72, 1, 'admin/users', 'GET', '::1', '[]', '2023-12-12 11:52:36', '2023-12-12 11:52:36'),
(73, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-12 11:52:41', '2023-12-12 11:52:41'),
(74, 1, 'admin/products/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-12 11:52:50', '2023-12-12 11:52:50'),
(75, 1, 'admin/products/1', 'PUT', '::1', '{\"name\":\"Laravel\\u5165\\u9580\",\"description\":\"Laravel\\u5165\\u9580\\u306e\\u672c\\u3067\\u3059\",\"price\":\"2000\",\"category_id\":\"5\",\"recommend_flag\":\"on\",\"_token\":\"JpYePkOYkmzEonGPwXXRgORr31MJorrsr4m13Erm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/laravel-samuraimart\\/public\\/admin\\/products\"}', '2023-12-12 11:53:01', '2023-12-12 11:53:01'),
(76, 1, 'admin/products', 'GET', '::1', '[]', '2023-12-12 11:53:02', '2023-12-12 11:53:02'),
(77, 1, 'admin/products/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-12 11:53:11', '2023-12-12 11:53:11'),
(78, 1, 'admin/products/2', 'PUT', '::1', '{\"name\":\"\\u30c4\\u30ca\\u30de\\u30e8\",\"description\":\"\\u30c4\\u30ca\\u30de\\u30e8\\u306e\\u304a\\u306b\\u304e\\u308a\",\"price\":\"100\",\"category_id\":\"11\",\"recommend_flag\":\"on\",\"_token\":\"JpYePkOYkmzEonGPwXXRgORr31MJorrsr4m13Erm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/laravel-samuraimart\\/public\\/admin\\/products\"}', '2023-12-12 11:53:17', '2023-12-12 11:53:17'),
(79, 1, 'admin/products', 'GET', '::1', '[]', '2023-12-12 11:53:18', '2023-12-12 11:53:18'),
(80, 1, 'admin/products/3/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-12 11:53:25', '2023-12-12 11:53:25'),
(81, 1, 'admin/products/3', 'PUT', '::1', '{\"name\":\"\\u3046\\u3081\",\"description\":\"\\u3046\\u3081\\u307c\\u3057\\u306e\\u304a\\u306b\\u304e\\u308a\",\"price\":\"100\",\"category_id\":\"11\",\"recommend_flag\":\"on\",\"_token\":\"JpYePkOYkmzEonGPwXXRgORr31MJorrsr4m13Erm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/laravel-samuraimart\\/public\\/admin\\/products\"}', '2023-12-12 11:53:30', '2023-12-12 11:53:30'),
(82, 1, 'admin/products', 'GET', '::1', '[]', '2023-12-12 11:53:31', '2023-12-12 11:53:31'),
(83, 1, 'admin/products', 'GET', '::1', '[]', '2023-12-12 12:27:45', '2023-12-12 12:27:45'),
(84, 1, 'admin/products/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-12 12:27:53', '2023-12-12 12:27:53'),
(85, 1, 'admin/products/1', 'PUT', '::1', '{\"name\":\"Laravel\\u5165\\u9580\",\"description\":\"Laravel\\u5165\\u9580\\u306e\\u672c\\u3067\\u3059\",\"price\":\"2000\",\"category_id\":\"5\",\"recommend_flag\":\"on\",\"carriage_flag\":\"on\",\"_token\":\"JpYePkOYkmzEonGPwXXRgORr31MJorrsr4m13Erm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/laravel-samuraimart\\/public\\/admin\\/products\"}', '2023-12-12 12:27:59', '2023-12-12 12:27:59'),
(86, 1, 'admin/products', 'GET', '::1', '[]', '2023-12-12 12:28:01', '2023-12-12 12:28:01'),
(87, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-13 01:51:09', '2023-12-13 01:51:09'),
(88, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u58f2\\u308a\\u4e0a\\u3052\",\"icon\":\"fa-bars\",\"uri\":\"shopping-carts\",\"roles\":[null],\"permission\":null,\"_token\":\"lqRPn4ws0TFDYf7Mx6CEW1pT2j5MxOWz6xtShwGn\"}', '2023-12-13 01:51:28', '2023-12-13 01:51:28'),
(89, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2023-12-13 01:51:30', '2023-12-13 01:51:30'),
(90, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2023-12-13 01:51:34', '2023-12-13 01:51:34'),
(91, 1, 'admin/shopping-carts', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-13 01:51:38', '2023-12-13 01:51:38'),
(92, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-14 22:48:13', '2023-12-14 22:48:13'),
(93, 1, 'admin/products', 'GET', '::1', '[]', '2023-12-14 22:50:38', '2023-12-14 22:50:38'),
(94, 1, 'admin/products/import', 'POST', '::1', '[]', '2023-12-14 22:50:48', '2023-12-14 22:50:48'),
(95, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-14 22:50:49', '2023-12-14 22:50:49');

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2023-12-08 01:52:28', '2023-12-08 01:52:28');

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$uzF49HcvLIcEzzr7RS7dvuWwYyQXXoog1FwC5vMzS9Od4eS0WVanq', 'Administrator', NULL, 'TqEBK5p2kD4WHgHeKYI5xQjAd8vwdEJ7sgPHl3TPEnl6k0Xe09YjhIF6sqrw', '2023-12-08 01:52:28', '2023-12-08 01:52:28');

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `major_category_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`, `major_category_id`) VALUES
(1, 'ビジネス', 'ビジネス', '2023-11-27 01:24:20', '2023-12-10 23:13:57', 1),
(2, '文学・評論', '文学・評論', '2023-11-27 01:24:20', '2023-12-10 23:14:14', 1),
(3, '人文・思想', '人文・思想', '2023-11-27 01:24:20', '2023-12-10 23:14:19', 1),
(4, 'スポーツ', 'スポーツ', '2023-11-27 01:24:20', '2023-12-10 23:14:25', 1),
(5, 'コンピュータ・IT', 'コンピュータ・IT', '2023-11-27 01:24:20', '2023-12-10 23:14:30', 1),
(6, '資格・検定・就職', '資格・検定・就職', '2023-11-27 01:24:20', '2023-12-10 23:14:35', 1),
(7, '絵本・児童書', '絵本・児童書', '2023-11-27 01:24:20', '2023-12-10 23:14:40', 1),
(8, '写真集', '写真集', '2023-11-27 01:24:20', '2023-12-10 23:14:46', 1),
(9, 'ゲーム攻略本', 'ゲーム攻略本', '2023-11-27 01:24:20', '2023-12-10 23:14:51', 1),
(10, '雑誌', '雑誌', '2023-11-27 01:24:20', '2023-12-10 23:14:56', 1),
(11, 'アート・デザイン', 'アート・デザイン', '2023-11-27 01:24:20', '2023-12-10 23:15:00', 1),
(12, 'ノンフィクション', 'ノンフィクション', '2023-11-27 01:24:20', '2023-12-10 23:15:05', 1),
(13, 'ノートPC', 'ノートPC', '2023-11-27 01:24:20', '2023-12-10 23:15:14', 2),
(14, 'デスクトップPC', 'デスクトップPC', '2023-11-27 01:24:20', '2023-12-10 23:15:19', 2),
(15, 'タブレット', 'タブレット', '2023-11-27 01:24:20', '2023-12-10 23:15:28', 2),
(16, '19~20インチ', '19~20インチ', '2023-11-27 01:24:20', '2023-12-10 23:15:40', 3),
(17, 'デスクトップPC', 'デスクトップPC', '2023-11-27 01:24:20', '2023-12-10 23:15:46', 3),
(18, 'タブレット', 'タブレット', '2023-11-27 01:24:20', '2023-12-10 23:15:51', 3);

-- --------------------------------------------------------

--
-- テーブルの構造 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'user_id',
  `favoriteable_type` varchar(255) NOT NULL,
  `favoriteable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `major_categories`
--

CREATE TABLE `major_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `major_categories`
--

INSERT INTO `major_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, '本', '本', '2023-12-10 22:25:14', '2023-12-10 22:25:14'),
(2, 'コンピュータ', 'コンピュータ', '2023-12-10 22:25:14', '2023-12-10 22:25:14'),
(3, 'ディスプレイ', 'ディスプレイ', '2023-12-10 22:25:14', '2023-12-10 22:25:14');

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_21_080513_create_categories_table', 1),
(6, '2023_11_27_163626_create_products_table', 2),
(7, '2023_11_30_012641_create_reviews_table', 3),
(8, '2018_12_14_000000_create_favorites_table', 4),
(9, '2023_12_01_233750_add_columns_to_users', 5),
(10, '2018_12_23_120000_create_shoppingcart_table', 6),
(11, '2023_12_05_204955_add_buy_flag_to_shoppingcart', 7),
(12, '2023_12_07_211134_add_score_to_reviews', 8),
(13, '2016_01_04_173148_create_admin_tables', 9),
(14, '2023_12_09_103345_add_image_to_products', 10),
(15, '2023_12_11_071941_create_major_categories_table', 11),
(16, '2023_12_11_072240_add_major_category_to_categories', 12),
(17, '2023_12_11_081015_drop_column_categories_table', 13),
(18, '2023_12_12_102434_add_soft_delete_to_users', 14),
(19, '2023_12_12_204932_add_recommend_flag_to_products', 15),
(20, '2023_12_12_212458_add_carriage_flag_to_products', 16),
(21, '2023_12_13_104416_add_columns_to_shoppingcart', 17),
(22, '2023_12_16_073920_add_token_to_users', 18);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `recommend_flag` tinyint(1) NOT NULL DEFAULT 0,
  `carriage_flag` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created_at`, `updated_at`, `image`, `recommend_flag`, `carriage_flag`) VALUES
(1, 'Laravel入門', 'Laravel入門の本です', 2000, 5, '2023-11-27 15:30:31', '2023-12-12 12:28:00', 'img/38ee17f84dba6bb5aff80ad808b1d323.jpg', 1, 1),
(2, 'ツナマヨ', 'ツナマヨのおにぎり', 100, 11, '2023-12-01 05:54:59', '2023-12-12 11:53:17', 'img/tsuna.png', 1, 0),
(3, 'うめ', 'うめぼしのおにぎり', 100, 11, '2023-12-01 05:55:44', '2023-12-12 11:53:30', 'img/ume.png', 1, 0),
(4, 'name1', 'description1', 1000, 1, '2023-12-14 22:50:48', '2023-12-14 22:50:48', 'img/dummy.png', 1, 0),
(5, 'name2', 'description2', 2000, 2, '2023-12-14 22:50:48', '2023-12-14 22:50:48', 'img/dummy.png', 0, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `score` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `reviews`
--

INSERT INTO `reviews` (`id`, `content`, `product_id`, `user_id`, `created_at`, `updated_at`, `score`) VALUES
(1, 'とても良かった！', 1, 1, '2023-11-30 13:33:28', '2023-11-30 13:33:28', 0),
(2, '参考になった', 1, 1, '2023-12-07 12:17:30', '2023-12-07 12:17:30', 5);

-- --------------------------------------------------------

--
-- テーブルの構造 `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `buy_flag` tinyint(1) NOT NULL DEFAULT 0,
  `code` varchar(255) NOT NULL DEFAULT '',
  `price_total` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `qty` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `number`, `created_at`, `updated_at`, `buy_flag`, `code`, `price_total`, `qty`) VALUES
('1', '1', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";s:1:\"2\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:12:\"ツナマヨ\";s:5:\"price\";d:100;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:21;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";N;s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:1:\"1\";}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1, '2023-12-05 12:25:56', '2023-12-05 12:25:56', 1, '', 0, 0),
('2', '1', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";s:1:\"1\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:13:\"Laravel入門\";s:5:\"price\";d:2000;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:21;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";N;s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:1:\"1\";}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 2, '2023-12-08 01:26:29', '2023-12-08 01:26:29', 1, '', 0, 0),
('3', '1', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"8ac8341512da5b8ccdcef55175e0cd7c\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"8ac8341512da5b8ccdcef55175e0cd7c\";s:2:\"id\";s:1:\"3\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:6:\"うめ\";s:5:\"price\";d:100;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"image\";s:11:\"img/ume.png\";s:8:\"carriage\";s:1:\"0\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:21;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";N;s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:1:\"1\";}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 3, '2023-12-15 09:16:10', '2023-12-15 09:16:10', 1, 'z1mqc8th60', 100, 1),
('4', '1', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"30a089c76d18198a32084bd4bb9b25a9\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"30a089c76d18198a32084bd4bb9b25a9\";s:2:\"id\";s:1:\"2\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:12:\"ツナマヨ\";s:5:\"price\";d:100;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"image\";s:13:\"img/tsuna.png\";s:8:\"carriage\";s:1:\"0\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:21;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";N;s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:1:\"1\";}s:32:\"8ac8341512da5b8ccdcef55175e0cd7c\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"8ac8341512da5b8ccdcef55175e0cd7c\";s:2:\"id\";s:1:\"3\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:6:\"うめ\";s:5:\"price\";d:100;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"image\";s:11:\"img/ume.png\";s:8:\"carriage\";s:1:\"0\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:21;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";N;s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:1:\"1\";}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 4, '2023-12-15 22:51:05', '2023-12-15 22:51:05', 1, 'q4grvo8aj5', 200, 2);

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `postal_code` varchar(255) NOT NULL DEFAULT '',
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `token` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `postal_code`, `address`, `phone`, `deleted_at`, `token`) VALUES
(1, '侍 太郎', 'miei.s.0305@gmail.com', '2023-11-28 05:30:11', '$2y$10$1Qh.rvcG7qS6L14W8Sqyfe72vblNzmR8ZeOMJYvrn.Fd.BgNT5PU.', 'YEM1j0jVWbtxhObhyLBOKGVrixxBvjMJbYfieuN1ROSJUh2yCdWFRxHyQbDd', '2023-11-28 14:29:12', '2023-12-15 22:48:42', '150-0034', '東京都渋谷区道玄坂', '09012345678', NULL, 'cus_d15f302d3ccdfa403de3a922e734');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- テーブルのインデックス `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- テーブルのインデックス `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- テーブルのインデックス `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- テーブルのインデックス `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- テーブルのインデックス `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- テーブルのインデックス `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- テーブルのインデックス `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- テーブルのインデックス `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- テーブルのインデックス `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_favoriteable_type_favoriteable_id_index` (`favoriteable_type`,`favoriteable_id`),
  ADD KEY `favorites_user_id_index` (`user_id`);

--
-- テーブルのインデックス `major_categories`
--
ALTER TABLE `major_categories`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- テーブルのインデックス `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- テーブルのインデックス `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- テーブルの AUTO_INCREMENT `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- テーブルの AUTO_INCREMENT `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルの AUTO_INCREMENT `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルの AUTO_INCREMENT `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルの AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `major_categories`
--
ALTER TABLE `major_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- テーブルの AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルの AUTO_INCREMENT `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
