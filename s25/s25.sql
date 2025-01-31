-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 17, 2024 at 01:46 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s25`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:12:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"role-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:11:\"role-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:9:\"role-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"role-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:10:\"tiket-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"tiket-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:10:\"tiket-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"tiket-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:9:\"user-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:11:\"user-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:9:\"user-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:11:\"user-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:7:\"Manager\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:8:\"Staff IT\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:14:\"Pengguna Akhir\";s:1:\"c\";s:3:\"web\";}}}', 1731726664);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catatans`
--

CREATE TABLE `catatans` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catatans`
--

INSERT INTO `catatans` (`id`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'aaa', 'aaa', '2024-11-13 04:07:29', '2024-11-13 04:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'IT Support', '2024-10-24 03:21:27', '2024-10-24 03:21:27'),
(2, 'Network Issue', '2024-10-24 03:21:27', '2024-10-24 03:21:27'),
(3, 'Hardware Issue', '2024-10-24 03:21:27', '2024-10-24 03:21:27'),
(4, 'Software Issue', '2024-10-24 03:21:27', '2024-10-24 03:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_06_042211_create_permission_tables', 1),
(5, '2024_10_07_071317_create_kategoris_table', 1),
(6, '2024_10_07_088817_create_tikets_table', 1),
(7, '2024_10_09_024358_create_notifications_table', 1),
(8, '2024_10_09_040610_wkwkwk', 1),
(9, '2024_11_13_104336_create_catatans_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0ea88f39-d0e9-4172-bb87-502e9af40dac', 'App\\Notifications\\TicketUpdated', 'App\\Models\\User', 4, '{\"tiket_id\":1,\"nama\":\"Waguri\",\"judul\":\"Waguri\",\"status\":\"Selesai\",\"message\":\"Tiket \\\"Waguri\\\" telah diperbarui\"}', NULL, '2024-10-31 07:44:39', '2024-10-31 07:44:39'),
('2c93b609-2216-4f7a-947b-ffc6d5650485', 'App\\Notifications\\TicketUpdated', 'App\\Models\\User', 3, '{\"tiket_id\":2,\"nama\":\"Usap\",\"judul\":\"Usap\",\"status\":\"Ditolak\",\"message\":\"Tiket \\\"Usap\\\" telah diperbarui\"}', NULL, '2024-10-31 07:45:09', '2024-10-31 07:45:09'),
('30a8987f-f2ed-4ab5-bc19-12b543e02a51', 'App\\Notifications\\TicketUpdated', 'App\\Models\\User', 2, '{\"tiket_id\":1,\"nama\":\"Waguri\",\"judul\":\"Waguri\",\"status\":\"Selesai\",\"message\":\"Tiket \\\"Waguri\\\" telah diperbarui\"}', NULL, '2024-10-31 07:44:39', '2024-10-31 07:44:39'),
('47f2efe0-712f-4e49-a5bb-17de964f1fbc', 'App\\Notifications\\TicketUpdated', 'App\\Models\\User', 1, '{\"tiket_id\":2,\"nama\":\"Usap\",\"judul\":\"Usap\",\"status\":\"Ditolak\",\"message\":\"Tiket \\\"Usap\\\" telah diperbarui\"}', NULL, '2024-10-31 07:45:09', '2024-10-31 07:45:09'),
('4a3b63d6-d988-43c5-8cf0-a003ef702d39', 'App\\Notifications\\TicketUpdated', 'App\\Models\\User', 4, '{\"tiket_id\":2,\"nama\":\"Usap\",\"judul\":\"Usap\",\"status\":\"Ditolak\",\"message\":\"Tiket \\\"Usap\\\" telah diperbarui\"}', NULL, '2024-10-31 07:45:09', '2024-10-31 07:45:09'),
('4f12d568-7fc0-4ed6-8182-e9bc6b31df1f', 'App\\Notifications\\TiketDieskalasi', 'App\\Models\\User', 2, '{\"tiket_id\":1,\"judul\":\"Waguri\",\"message\":\"Karena belum mendapat tanggapan, tiket \\\"Waguri\\\" telah dieskalasi\"}', '2024-10-24 06:13:02', '2024-10-24 03:25:10', '2024-10-24 06:13:02'),
('6ea096a5-d250-42cb-905e-50004d75eccc', 'App\\Notifications\\TicketUpdated', 'App\\Models\\User', 5, '{\"tiket_id\":1,\"nama\":\"Waguri\",\"judul\":\"Waguri\",\"status\":\"Selesai\",\"message\":\"Tiket \\\"Waguri\\\" telah diperbarui\"}', NULL, '2024-10-31 07:44:39', '2024-10-31 07:44:39'),
('7eccca8f-e0f7-4284-a8ae-9d1575976111', 'App\\Notifications\\TicketUpdated', 'App\\Models\\User', 3, '{\"tiket_id\":1,\"nama\":\"Waguri\",\"judul\":\"Waguri\",\"status\":\"Selesai\",\"message\":\"Tiket \\\"Waguri\\\" telah diperbarui\"}', NULL, '2024-10-31 07:44:39', '2024-10-31 07:44:39'),
('82997d52-0205-4688-be03-9f2343ed951e', 'App\\Notifications\\TicketUpdated', 'App\\Models\\User', 2, '{\"tiket_id\":2,\"nama\":\"Usap\",\"judul\":\"Usap\",\"status\":\"Ditolak\",\"message\":\"Tiket \\\"Usap\\\" telah diperbarui\"}', NULL, '2024-10-31 07:45:09', '2024-10-31 07:45:09'),
('8a440e1d-038f-4edb-ab7c-f03393776aac', 'App\\Notifications\\TicketUpdated', 'App\\Models\\User', 5, '{\"tiket_id\":2,\"nama\":\"Usap\",\"judul\":\"Usap\",\"status\":\"Ditolak\",\"message\":\"Tiket \\\"Usap\\\" telah diperbarui\"}', NULL, '2024-10-31 07:45:09', '2024-10-31 07:45:09'),
('cdbb4a45-4fc3-40f1-b239-306c354beaf4', 'App\\Notifications\\TiketDieskalasi', 'App\\Models\\User', 2, '{\"tiket_id\":2,\"judul\":\"Usap\",\"message\":\"Karena belum mendapat tanggapan, tiket \\\"Usap\\\" telah dieskalasi\"}', NULL, '2024-10-24 07:43:55', '2024-10-24 07:43:55'),
('e36d73fd-92d7-4f1d-a021-717e0323b218', 'App\\Notifications\\TiketDieskalasi', 'App\\Models\\User', 2, '{\"tiket_id\":3,\"judul\":\"Batak\",\"message\":\"Karena belum mendapat tanggapan, tiket \\\"Batak\\\" telah dieskalasi\"}', NULL, '2024-10-31 07:30:07', '2024-10-31 07:30:07'),
('f96ac9bb-1f75-4d73-9489-689c9e047aa5', 'App\\Notifications\\TicketUpdated', 'App\\Models\\User', 1, '{\"tiket_id\":1,\"nama\":\"Waguri\",\"judul\":\"Waguri\",\"status\":\"Selesai\",\"message\":\"Tiket \\\"Waguri\\\" telah diperbarui\"}', NULL, '2024-10-31 07:44:39', '2024-10-31 07:44:39');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2024-10-24 03:16:14', '2024-10-24 03:16:14'),
(2, 'role-create', 'web', '2024-10-24 03:16:14', '2024-10-24 03:16:14'),
(3, 'role-edit', 'web', '2024-10-24 03:16:14', '2024-10-24 03:16:14'),
(4, 'role-delete', 'web', '2024-10-24 03:16:14', '2024-10-24 03:16:14'),
(5, 'tiket-list', 'web', '2024-10-24 03:16:14', '2024-10-24 03:16:14'),
(6, 'tiket-create', 'web', '2024-10-24 03:16:14', '2024-10-24 03:16:14'),
(7, 'tiket-edit', 'web', '2024-10-24 03:16:14', '2024-10-24 03:16:14'),
(8, 'tiket-delete', 'web', '2024-10-24 03:16:14', '2024-10-24 03:16:14'),
(9, 'user-list', 'web', '2024-10-24 03:16:14', '2024-10-24 03:16:14'),
(10, 'user-create', 'web', '2024-10-24 03:16:14', '2024-10-24 03:16:14'),
(11, 'user-edit', 'web', '2024-10-24 03:16:14', '2024-10-24 03:16:14'),
(12, 'user-delete', 'web', '2024-10-24 03:16:14', '2024-10-24 03:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2024-10-24 03:16:22', '2024-10-24 03:16:22'),
(2, 'Manager', 'web', '2024-10-24 03:18:32', '2024-10-24 03:18:32'),
(3, 'Staff IT', 'web', '2024-10-24 03:18:55', '2024-10-24 03:18:55'),
(4, 'Pengguna Akhir', 'web', '2024-10-24 03:19:12', '2024-10-24 03:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
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
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(5, 4),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jmsru4Sjlebfb8pKgN0rHblieSXirbNKJanwymog', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTE92VVFoV2dZR2hEZ1czbU1VR2N3T1NHaHhGT1d5UUpNSXdVdlNQNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC90aWtldHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O30=', 1731656596),
('pD06jLLEGUVkAH143eebvbwws4B7dhoKAH1huNnV', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYXJpVkF1SWlaMFQzemhjQUNKVUZxbkFKZmQxYTVLVzJBU0xnazhjYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC90aWtldHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1731656985);

-- --------------------------------------------------------

--
-- Table structure for table `tikets`
--

CREATE TABLE `tikets` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `tingkat_urgensi` enum('Ringan','Sedang','Berat') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Dibuka','Butuh Ditinjau','Ditinjau','Dikerjakan','Selesai','Ditolak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `troubleshoot` text COLLATE utf8mb4_unicode_ci,
  `tanggapan` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tikets`
--

INSERT INTO `tikets` (`id`, `nama`, `judul`, `image`, `kategori_id`, `tingkat_urgensi`, `status`, `description`, `troubleshoot`, `tanggapan`, `user_id`, `created_at`, `updated_at`) VALUES
(805, 'Germaine Stanton', 'Ullam dolor et exercitationem velit.', NULL, 2, 'Sedang', 'Dikerjakan', 'Et ab voluptates cumque hic dicta temporibus dolorem. Occaecati consequatur sed rerum et in. Mollitia voluptatem veritatis quas.', NULL, 'Consequuntur harum adipisci quisquam.', 3, '2024-11-02 01:27:33', '2024-11-15 07:20:05'),
(806, 'Maymie Weber', 'Quod quibusdam molestiae.', NULL, 1, 'Ringan', 'Dibuka', 'Quas sit natus delectus rerum quibusdam quis adipisci. Ea accusamus et quod eaque incidunt non. Sed cumque consequatur voluptatem facilis molestias eveniet recusandae dolorum. Sint itaque atque ipsum in.', 'Qui sed voluptatem et commodi ut illo.', NULL, 2, '2024-10-25 17:29:20', '2024-11-15 07:20:05'),
(807, 'Dr. Pink Armstrong Jr.', 'Vero et labore voluptas.', NULL, 2, 'Ringan', 'Ditinjau', 'Aspernatur fugiat saepe voluptate aut et hic accusantium. Ut est sint autem delectus nostrum et eaque. A culpa vel est tempora.', NULL, 'Iure impedit iste est dolor et.', 2, '2024-10-29 17:02:00', '2024-11-15 07:20:05'),
(808, 'Arthur Casper', 'Voluptatum laboriosam.', NULL, 2, 'Sedang', 'Butuh Ditinjau', 'Repudiandae modi et unde. Iusto impedit placeat assumenda ullam animi. Ut atque nihil voluptas nemo omnis voluptatem. Non assumenda labore fugit quia eveniet quidem.', NULL, 'Et et suscipit aspernatur tempora.', 1, '2024-09-07 21:42:33', '2024-11-15 07:20:05'),
(809, 'Prof. Gilda Kuhn', 'Earum animi dolor.', NULL, 2, 'Sedang', 'Dikerjakan', 'Nihil amet id aliquam quia qui et. Earum ducimus occaecati vel impedit laboriosam quis inventore. Illo voluptatem quia eaque debitis fugiat minus. Deserunt voluptatem in autem voluptates eum.', NULL, 'Est eius quo iste.', 3, '2024-09-13 05:33:20', '2024-11-15 07:20:05'),
(810, 'Dr. Shanna Kilback', 'Quidem voluptatibus unde maxime.', NULL, 2, 'Berat', 'Butuh Ditinjau', 'Quaerat molestiae voluptas rerum consequuntur voluptatum necessitatibus sunt non. Omnis omnis sed incidunt perferendis aut omnis. Dolores unde aperiam ut maiores unde est.', NULL, NULL, 2, '2024-10-03 00:12:28', '2024-11-15 07:20:05'),
(811, 'Ethyl Fisher', 'Eum blanditiis libero.', NULL, 4, 'Ringan', 'Dikerjakan', 'Suscipit aut non delectus quaerat tenetur in. Similique quidem consequatur perspiciatis quia voluptatem quidem saepe. Rerum eveniet omnis qui. Architecto et vel illo omnis.', 'Perferendis tempore officia nihil at.', 'Nulla animi quia architecto at illum.', 2, '2024-08-30 14:53:31', '2024-11-15 07:20:05'),
(812, 'Cale Murazik', 'Officiis ullam quam aut.', NULL, 2, 'Sedang', 'Ditolak', 'Dolor assumenda repudiandae sed ut rerum sequi ea. Mollitia voluptatem quia officiis quia debitis. Sint alias inventore officia quia incidunt sed labore.', NULL, 'Animi illo totam.', 2, '2024-08-12 15:56:42', '2024-11-15 07:20:05'),
(813, 'Deontae Wiegand PhD', 'Excepturi dolor quia aspernatur.', NULL, 2, 'Berat', 'Selesai', 'Minima sequi et natus dolor laudantium. Autem eligendi deserunt sed incidunt eum voluptatum deleniti. Illum expedita corporis reiciendis blanditiis eum.', NULL, NULL, 1, '2024-10-08 12:22:00', '2024-11-15 07:20:05'),
(814, 'Mr. Jettie Doyle Jr.', 'Ex reprehenderit assumenda ab id.', NULL, 1, 'Sedang', 'Ditolak', 'Consequatur sed maxime nobis maiores officia eum esse. Adipisci vel autem sit. Corporis corporis rerum nihil quas eos. Molestias beatae cumque quibusdam non eveniet.', NULL, 'Dolorem libero laudantium fuga.', 3, '2024-11-27 13:33:24', '2024-11-15 07:20:05'),
(815, 'Freida Stehr', 'Nulla quo.', NULL, 4, 'Ringan', 'Dibuka', 'Atque omnis ipsum voluptate veritatis id molestias. Eaque nostrum qui et ullam soluta illum voluptatibus. Occaecati provident non ut.', NULL, NULL, 2, '2024-11-27 02:10:13', '2024-11-15 07:20:05'),
(816, 'Meta Schamberger', 'Maiores quia exercitationem vel mollitia.', NULL, 1, 'Sedang', 'Ditolak', 'Ipsum id aut numquam tenetur. Consectetur architecto quidem sunt. Eaque repellendus molestiae ea sapiente pariatur laborum et. Doloribus unde excepturi earum qui expedita.', NULL, 'Quo sit voluptate esse.', 1, '2024-08-09 19:23:14', '2024-11-15 07:20:05'),
(817, 'Magdalena Padberg IV', 'Provident vitae dignissimos quia.', NULL, 1, 'Berat', 'Ditolak', 'Et assumenda quod quos fugit placeat. Nemo ut maiores eos repellendus ratione. Debitis est aut hic sunt voluptatem rem.', 'Rerum hic corrupti dolores autem.', NULL, 3, '2024-08-30 06:59:27', '2024-11-15 07:20:05'),
(818, 'Raegan Collier DDS', 'Voluptates odio illum occaecati.', NULL, 3, 'Ringan', 'Selesai', 'Eum iure consequatur sit. Ullam alias eaque expedita saepe voluptatibus.', NULL, 'Voluptas et consequatur est aspernatur recusandae.', 2, '2024-09-20 14:24:50', '2024-11-15 07:20:05'),
(819, 'Kenna Mueller', 'Aliquid laudantium tempora.', NULL, 3, 'Sedang', 'Selesai', 'Nesciunt cupiditate quisquam nemo repudiandae eum eligendi deleniti. Non minima odio qui incidunt. Non voluptatibus sunt beatae sed ipsum delectus quasi.', 'Voluptatem est omnis non doloremque.', 'Qui animi eum maxime ut.', 1, '2024-09-06 20:53:54', '2024-11-15 07:20:05'),
(820, 'Ms. Earline Halvorson PhD', 'Quasi assumenda perferendis qui.', NULL, 2, 'Ringan', 'Ditinjau', 'Aut adipisci non aut at. Ex adipisci ut odit magnam voluptatem quas. Quas et omnis qui consectetur vel.', NULL, 'Rerum molestiae quis quaerat cum quas.', 3, '2024-08-06 15:58:33', '2024-11-15 07:20:05'),
(821, 'Gaetano Kiehn', 'Ut nulla est odit.', NULL, 3, 'Berat', 'Dibuka', 'Est ut esse tempore facilis. Iusto ea neque debitis vitae possimus nihil vero. Ad dolores ducimus veritatis nostrum fugiat reprehenderit. Aut qui quia temporibus reiciendis temporibus.', 'Atque eum quia suscipit et quos dolor.', NULL, 3, '2024-11-25 03:15:46', '2024-11-15 07:20:05'),
(822, 'Herta Wintheiser', 'Corporis commodi aut.', NULL, 1, 'Ringan', 'Dibuka', 'Eos adipisci id voluptatem et. Amet blanditiis molestiae nesciunt magni. Optio dolores pariatur iusto vel voluptatum tenetur qui.', NULL, 'Asperiores dolor et saepe fugit.', 1, '2024-11-15 17:25:11', '2024-11-15 07:20:05'),
(823, 'Dr. Chanelle Pouros Jr.', 'Cumque cumque et.', NULL, 4, 'Ringan', 'Selesai', 'Ex nostrum autem perferendis rerum. Vel iste doloribus ea repellat a. Hic doloribus voluptas eum reprehenderit.', NULL, 'Dolorem sapiente dolore repudiandae quo.', 3, '2024-11-04 17:21:50', '2024-11-15 07:20:05'),
(824, 'Luz Dicki Sr.', 'Odit laudantium alias est alias.', NULL, 2, 'Sedang', 'Ditinjau', 'Iure molestiae deleniti rerum quo eligendi recusandae voluptas. Rerum et earum nihil iste. In maiores aperiam enim animi. Ex voluptas aut officiis non.', NULL, 'Sit quis natus eaque distinctio.', 1, '2024-11-03 06:09:06', '2024-11-15 07:20:05'),
(825, 'Prof. Philip Ziemann', 'Ut autem eum perferendis.', NULL, 3, 'Sedang', 'Dikerjakan', 'Rerum hic et laudantium magni nam quod non ut. Repellendus modi quis magni similique corporis delectus. Voluptas non sit praesentium voluptatum magnam distinctio qui. Officia aperiam dolores minus ut optio est animi.', NULL, NULL, 3, '2024-08-04 07:55:17', '2024-11-15 07:20:05'),
(826, 'Ada Medhurst', 'Officiis molestiae suscipit minima.', NULL, 2, 'Berat', 'Selesai', 'Ea iure eius cum distinctio dolore soluta. Sequi quam accusantium inventore. Et eius voluptatem ullam fugiat et eligendi atque tempore.', NULL, NULL, 3, '2024-11-04 22:40:29', '2024-11-15 07:20:05'),
(827, 'Nina Corwin', 'Totam dolore harum.', NULL, 1, 'Sedang', 'Dikerjakan', 'Minus fugiat rerum rerum. Voluptates enim sed vel dolore non. Voluptatem cumque iste consectetur soluta maxime. Deserunt qui vero hic eius placeat numquam.', 'Dignissimos similique optio quo earum.', NULL, 1, '2024-11-28 23:45:29', '2024-11-15 07:20:05'),
(828, 'Prof. Neha Stroman IV', 'Ut non nihil.', NULL, 1, 'Ringan', 'Dibuka', 'Consequatur nobis minus quasi et ea. Voluptatem sapiente fuga blanditiis similique ad molestiae. Qui quis non ratione hic alias est nemo et. Voluptas eligendi et est ullam adipisci enim accusamus.', 'Ut alias aliquam ab omnis voluptates quis.', NULL, 1, '2024-11-09 15:25:49', '2024-11-15 07:20:05'),
(829, 'Dr. Breanna Torphy', 'Nostrum laudantium debitis.', NULL, 1, 'Berat', 'Butuh Ditinjau', 'Ex laboriosam ad vero. Quis consectetur pariatur ut blanditiis accusamus. Dolor accusantium quibusdam omnis in perferendis non iusto. Iure accusantium rem iure officiis earum voluptatem ipsa. Sequi voluptas et enim consequuntur id perferendis rerum.', NULL, NULL, 2, '2024-10-21 06:08:14', '2024-11-15 07:20:05'),
(830, 'Prudence Dickens', 'Deleniti non quia.', NULL, 3, 'Sedang', 'Ditolak', 'Rerum est veniam qui. Accusantium dolores exercitationem odio a corporis. Delectus eos doloremque et quaerat reprehenderit. Omnis necessitatibus quasi impedit eum.', NULL, NULL, 2, '2024-09-29 10:45:46', '2024-11-15 07:20:05'),
(831, 'Ms. Shannon Shanahan', 'Occaecati corporis provident.', NULL, 2, 'Ringan', 'Butuh Ditinjau', 'Consequuntur repellendus optio id ex. Ab magni consectetur dicta dolorem expedita nostrum aliquam. Et illum doloremque harum aperiam. Nisi mollitia sint natus quia.', NULL, NULL, 2, '2024-11-28 04:56:41', '2024-11-15 07:20:05'),
(832, 'Trycia Weissnat', 'Minima minima suscipit illum.', NULL, 2, 'Ringan', 'Ditinjau', 'Alias id animi et saepe molestiae quis id nostrum. Non nam aut eligendi ea autem et. Sit eum id delectus neque autem.', 'Placeat omnis laborum qui aspernatur ea et.', 'Vel explicabo quia.', 1, '2024-08-26 16:58:41', '2024-11-15 07:20:05'),
(833, 'Prof. Colt Kirlin DVM', 'Nesciunt aut est quod.', NULL, 3, 'Berat', 'Selesai', 'Libero laboriosam animi impedit placeat consequatur. Quidem sunt autem voluptatem. Voluptate et est velit eos. Doloremque optio ratione optio incidunt.', 'Sed rerum sit explicabo doloribus.', 'Quis exercitationem consequuntur qui maxime voluptatem.', 3, '2024-09-08 22:26:06', '2024-11-15 07:20:05'),
(834, 'Dr. Allan Gusikowski III', 'Possimus aut.', NULL, 3, 'Berat', 'Ditolak', 'Facere sunt necessitatibus aspernatur quia et. Ducimus et est blanditiis soluta optio a quia tempora. Fugit officiis velit iusto accusantium fugit. Animi exercitationem dolor quisquam veniam et a vitae.', NULL, 'Tenetur odit et.', 2, '2024-09-03 14:00:59', '2024-11-15 07:20:05'),
(835, 'Mr. Mitchel Glover', 'Eligendi eaque et quo.', NULL, 4, 'Ringan', 'Ditinjau', 'Aut et expedita eum amet ad et. Est blanditiis similique non aut. Expedita praesentium ea quos maxime.', 'Minus sint est reiciendis et.', 'Delectus ut quae perferendis.', 2, '2024-08-15 20:27:19', '2024-11-15 07:20:05'),
(836, 'Dr. Richard Kiehn MD', 'Ipsam dignissimos a.', NULL, 2, 'Berat', 'Butuh Ditinjau', 'Autem et velit ex provident modi error. Ut est minima dolore cumque totam minus et. At molestias et sunt et.', NULL, 'Sint dignissimos quia.', 3, '2024-08-02 16:18:26', '2024-11-15 07:20:05'),
(837, 'Dr. Marianne Spinka MD', 'Quisquam quam.', NULL, 4, 'Sedang', 'Ditolak', 'Doloremque fugit dignissimos in et id est eveniet. Quia at non sunt quam. Ut repellat modi non cumque aperiam aut expedita sunt. Facere adipisci debitis adipisci aperiam consequatur.', NULL, 'Qui iusto debitis impedit amet.', 1, '2024-10-10 06:40:24', '2024-11-15 07:20:05'),
(838, 'Prof. Jordyn Goldner DDS', 'Necessitatibus nihil.', NULL, 2, 'Sedang', 'Dikerjakan', 'Velit aperiam dignissimos blanditiis et. Officia libero nemo rerum. Illo et totam et enim temporibus. Et aliquam eius quo soluta. Sed soluta nesciunt perspiciatis adipisci.', 'Ipsam velit aut consequatur modi quia officiis.', NULL, 3, '2024-09-06 22:00:54', '2024-11-15 07:20:05'),
(839, 'Preston Bernhard III', 'Qui non consequatur.', NULL, 4, 'Ringan', 'Ditinjau', 'Enim est ab in ut vero. Nulla aliquam modi quia. Suscipit expedita sunt consequatur molestiae ad. Et deserunt nostrum dolores voluptas dolorem ipsum. Voluptates maiores voluptatem saepe asperiores.', 'Tempore sit dolores soluta esse nisi.', NULL, 3, '2024-11-29 03:59:33', '2024-11-15 07:20:05'),
(840, 'Carson Huel', 'Facere saepe deleniti.', NULL, 1, 'Sedang', 'Dibuka', 'Non iste mollitia labore magnam rerum ea et nihil. Sed sint et in sint sed ut. Sint earum consequuntur iure atque natus dolore facilis. Perferendis enim ipsum omnis earum saepe sed. Quia asperiores blanditiis dolores sed sit.', NULL, 'Sed et est ab quis.', 3, '2024-10-10 06:46:01', '2024-11-15 07:20:05'),
(841, 'Ophelia Heathcote', 'Adipisci qui facere.', NULL, 3, 'Ringan', 'Ditolak', 'Eos laudantium sapiente nemo ut. Error voluptates voluptates occaecati in. Dolore et quibusdam voluptates.', NULL, 'Sequi laborum perspiciatis ipsam necessitatibus culpa.', 2, '2024-09-26 22:23:42', '2024-11-15 07:20:05'),
(842, 'Weston Douglas', 'Sit voluptatem totam dolores.', NULL, 3, 'Berat', 'Selesai', 'Quos velit hic et porro nemo nihil ipsa. Unde delectus ut facilis repellat et. Sint maxime illo iste fuga possimus laborum praesentium quod.', 'Reiciendis soluta eaque ratione et inventore at.', 'Ut consequatur tenetur consequuntur quis vel.', 1, '2024-09-19 11:13:56', '2024-11-15 07:20:05'),
(843, 'Nikolas Senger', 'Nam impedit iste ut.', NULL, 4, 'Sedang', 'Selesai', 'Voluptatum rem molestiae nisi minus eveniet ipsum porro voluptas. Id voluptate exercitationem et aspernatur. Voluptas omnis mollitia eos provident itaque iusto. Ipsum quo eaque ullam velit.', 'In qui sequi voluptas non.', 'Tempora unde ratione inventore molestiae voluptas.', 2, '2024-10-07 15:10:52', '2024-11-15 07:20:05'),
(844, 'Mrs. Aurelie Ullrich DVM', 'Itaque a velit vel.', NULL, 2, 'Ringan', 'Butuh Ditinjau', 'Ad sed numquam ex doloremque nisi expedita facere. Delectus ea ullam explicabo velit iste reiciendis qui. Et et quia est minus. Qui temporibus dignissimos vel quo ipsum quibusdam.', 'Necessitatibus consectetur perferendis quod.', 'Voluptas illum architecto quidem quasi.', 3, '2024-11-23 18:33:42', '2024-11-15 07:20:05'),
(845, 'Brady Kerluke', 'Beatae quis dolor rerum.', NULL, 2, 'Sedang', 'Dibuka', 'Molestias atque explicabo rerum reprehenderit non voluptatem. Culpa sint eligendi neque consequatur non sunt esse. Ut corporis magni aspernatur est deserunt.', 'Alias et magnam et.', NULL, 2, '2024-11-27 17:30:41', '2024-11-15 07:20:05'),
(846, 'Dr. Kathleen Johnson', 'Vel iste facilis et aut.', NULL, 4, 'Berat', 'Selesai', 'Et eveniet aut soluta non laborum labore voluptates. Sit eaque nihil omnis sapiente sunt consequatur culpa. Aut aspernatur praesentium qui laboriosam.', NULL, NULL, 2, '2024-10-25 03:46:04', '2024-11-15 07:20:05'),
(847, 'Prof. Nellie Kling V', 'Soluta ullam modi eaque.', NULL, 1, 'Berat', 'Selesai', 'Autem quia consequatur sit voluptate aut nihil. Sint possimus unde et dolorem voluptatem blanditiis corrupti odit. Sit iusto dolore qui repudiandae voluptas qui. Fuga dolor cum velit illum sit. Qui sapiente quisquam eligendi.', NULL, NULL, 2, '2024-09-06 18:25:04', '2024-11-15 07:20:05'),
(848, 'Mr. Raven Runolfsson DVM', 'Occaecati omnis voluptatem quia.', NULL, 1, 'Sedang', 'Selesai', 'Ipsa sed maiores sunt quis vel atque ad aliquid. Nostrum non in exercitationem necessitatibus earum aperiam quis. Hic aspernatur et et aut libero consequuntur. Numquam eaque qui consequatur sunt est.', NULL, 'Quod corporis sit.', 2, '2024-09-15 07:32:18', '2024-11-15 07:20:05'),
(849, 'Eda Cormier', 'Maxime molestiae iste et.', NULL, 4, 'Berat', 'Dibuka', 'Ex alias possimus a neque consequuntur harum incidunt. Dolorem vel et maxime. Tempora expedita soluta exercitationem.', NULL, NULL, 3, '2024-10-11 18:57:24', '2024-11-15 07:20:05'),
(850, 'Dr. Nova Murray MD', 'Nemo ipsa non.', NULL, 3, 'Berat', 'Ditinjau', 'Et aut ipsa rerum. Ducimus similique voluptas non excepturi temporibus dolorum sunt. Amet veritatis atque architecto est.', NULL, 'Molestiae facilis repudiandae.', 3, '2024-09-03 04:45:21', '2024-11-15 07:20:05'),
(851, 'Dr. Eveline Zemlak', 'Esse aut voluptas pariatur.', NULL, 3, 'Berat', 'Selesai', 'Occaecati enim id cupiditate rerum officiis. Illum in molestias sed sunt dignissimos fuga.', 'Aut alias quisquam doloremque sed.', NULL, 3, '2024-10-03 14:26:36', '2024-11-15 07:20:05'),
(852, 'Dedrick Gutkowski PhD', 'Excepturi perferendis nostrum rem.', NULL, 4, 'Berat', 'Selesai', 'Quia vero voluptatum adipisci aliquam facere qui voluptates veniam. Temporibus voluptate quos eaque quaerat omnis. Fugit dolorem perferendis ipsa atque ut deleniti. Quaerat laboriosam veritatis veniam hic ea voluptatem.', NULL, 'Rerum quisquam eum omnis assumenda.', 1, '2024-10-01 18:17:40', '2024-11-15 07:20:05'),
(853, 'Amya Koelpin', 'Ab voluptas aut.', NULL, 4, 'Ringan', 'Ditolak', 'Libero eaque sed quis mollitia qui. Qui provident omnis qui temporibus. Repellat possimus ipsam delectus omnis rerum in. Ea vero molestiae quasi culpa vel nobis neque.', NULL, 'Sunt est omnis recusandae sunt cum.', 1, '2024-08-30 12:41:28', '2024-11-15 07:20:05'),
(854, 'Jessika Stokes', 'Quia esse quia debitis.', NULL, 1, 'Berat', 'Butuh Ditinjau', 'Vero in natus sint tempore. Explicabo exercitationem quos non aut. Eligendi velit qui nemo neque distinctio quisquam.', 'Qui cum quia veniam ratione.', 'Quia nesciunt magnam animi ab.', 1, '2024-11-05 10:38:23', '2024-11-15 07:20:05'),
(855, 'Kennedy Kautzer', 'Est quae aut aut.', NULL, 1, 'Sedang', 'Butuh Ditinjau', 'Corporis iusto sunt culpa iste. Id aut quis blanditiis repellat ducimus. Debitis soluta doloribus delectus. Est quia earum deserunt laboriosam adipisci qui.', NULL, 'Et soluta culpa et.', 1, '2024-08-20 08:14:52', '2024-11-15 07:20:05'),
(856, 'Reymundo Robel', 'Asperiores et autem necessitatibus.', NULL, 2, 'Ringan', 'Selesai', 'Commodi sunt vel aut possimus sed fugit est. Alias laudantium iusto qui et amet.', NULL, 'Hic molestias optio modi cum quibusdam.', 1, '2024-10-21 04:43:55', '2024-11-15 07:20:05'),
(857, 'Miss Rossie Huels', 'Cum est aut.', NULL, 2, 'Berat', 'Ditolak', 'Quis deleniti deleniti cum iure ut ea. Placeat qui minima velit est. Libero praesentium voluptatem hic perspiciatis aliquid labore repellendus. Ea ut odio incidunt voluptatem.', 'Est culpa eaque placeat neque.', 'Libero sapiente enim itaque.', 3, '2024-09-27 21:45:36', '2024-11-15 07:20:05'),
(858, 'Grady Erdman', 'Nam molestiae laborum tempore.', NULL, 3, 'Sedang', 'Selesai', 'Delectus ea repudiandae est quasi ratione. Ea rem enim aut quo. Blanditiis accusamus deserunt fuga praesentium quia facere qui.', NULL, NULL, 1, '2024-08-26 03:14:14', '2024-11-15 07:20:05'),
(859, 'Dameon Sporer IV', 'Tempore fugiat eaque alias.', NULL, 1, 'Sedang', 'Butuh Ditinjau', 'Et omnis iure quo molestiae. Est minus qui voluptates et quo. Qui expedita tenetur tenetur incidunt.', NULL, NULL, 3, '2024-10-09 06:49:14', '2024-11-15 07:20:05'),
(860, 'Korey Kub', 'Inventore minima nobis voluptatem.', NULL, 4, 'Ringan', 'Ditolak', 'Aliquid aut quaerat dolorum. Est reprehenderit quisquam architecto quaerat vitae debitis. Qui voluptates culpa tempore. Dolorem amet officia et eum asperiores quod eum.', NULL, 'Quis et omnis necessitatibus culpa.', 2, '2024-09-20 13:25:05', '2024-11-15 07:20:05'),
(861, 'Rodger Kuhic', 'Enim esse illo.', NULL, 3, 'Ringan', 'Ditinjau', 'Exercitationem fugit ut laborum quo numquam vero praesentium sequi. In ratione est facere sit inventore. Et quae ratione sed eius aperiam maiores unde. Et ipsam aut modi accusantium.', NULL, 'Laborum sit id.', 3, '2024-08-18 17:29:16', '2024-11-15 07:20:05'),
(862, 'Alberto Gorczany', 'Eveniet et aliquam quia.', NULL, 3, 'Sedang', 'Dikerjakan', 'Doloremque voluptatum autem sint asperiores voluptatem alias. In dignissimos accusantium fuga qui natus. Modi natus nostrum ullam iusto quis.', NULL, 'Est et et et qui.', 3, '2024-09-07 04:16:07', '2024-11-15 07:20:05'),
(863, 'Haleigh Ankunding', 'Sit qui quia dolorum.', NULL, 4, 'Sedang', 'Dibuka', 'Est quis nesciunt id in. Quia consequuntur sit atque voluptatem assumenda. Distinctio vitae officia ducimus sequi vel maxime nihil consequatur.', NULL, NULL, 3, '2024-08-30 04:37:10', '2024-11-15 07:20:05'),
(864, 'Annie Douglas', 'Ab qui dolorum modi.', NULL, 1, 'Ringan', 'Dikerjakan', 'Vero rerum sed consequatur. Perferendis illo nostrum perferendis culpa sint dolorem aperiam sapiente. Quas maxime dicta quae. Iure nam accusamus hic vel aut nihil illo.', 'Ut aut reprehenderit doloremque beatae corporis suscipit praesentium.', NULL, 1, '2024-09-10 09:58:03', '2024-11-15 07:20:05'),
(865, 'Joany Brakus', 'Quibusdam veritatis placeat sed sint.', NULL, 3, 'Ringan', 'Ditinjau', 'Vel voluptatem iure voluptatibus. Inventore earum ut repudiandae. Amet aliquid voluptatem repudiandae facilis sapiente nam quis voluptatem. Iusto omnis harum repellat ipsum nobis blanditiis animi iure.', NULL, 'Deleniti et dolorem incidunt.', 1, '2024-08-17 23:15:11', '2024-11-15 07:20:05'),
(866, 'Erika Greenholt PhD', 'Aut optio qui.', NULL, 4, 'Berat', 'Butuh Ditinjau', 'Delectus consequatur officia provident. Tempora et minus accusamus doloremque ea reiciendis. Nisi quos commodi nisi ad. Est voluptatem sit sint beatae et ducimus cumque.', NULL, 'Aliquam vero deleniti.', 3, '2024-11-22 10:07:30', '2024-11-15 07:20:05'),
(867, 'Dominique Mitchell III', 'Praesentium doloremque occaecati.', NULL, 2, 'Ringan', 'Ditolak', 'Est non eum nam voluptas odit quibusdam eos nam. Sed similique aperiam tenetur pariatur et et deleniti. Autem optio totam nostrum aut dolorem odio deserunt.', NULL, 'Quis possimus nihil nam modi.', 3, '2024-09-11 20:40:06', '2024-11-15 07:20:05'),
(868, 'Prof. Mohammed Kreiger II', 'Quod velit qui asperiores.', NULL, 1, 'Ringan', 'Dibuka', 'Ducimus aliquam dolorum quia ut dolorum magnam et. Ut voluptatem omnis sit qui dolor velit. Blanditiis similique error est nihil pariatur ullam. Repellat voluptatem necessitatibus velit iure omnis.', 'Et fugiat libero quia.', NULL, 3, '2024-09-21 13:07:59', '2024-11-15 07:20:05'),
(869, 'Lindsay Kertzmann', 'Non rerum nihil et.', NULL, 2, 'Sedang', 'Ditinjau', 'Sint ipsa optio autem ullam id minus architecto provident. Atque dolore fuga laudantium voluptas molestiae qui vero. Ipsa repellendus aut consequatur et beatae iure.', 'Accusantium et dolores amet.', NULL, 2, '2024-10-01 15:37:02', '2024-11-15 07:20:05'),
(870, 'Jovany Legros', 'Inventore qui est tenetur.', NULL, 2, 'Ringan', 'Dikerjakan', 'Et maxime perspiciatis perferendis. Harum tempora sit quod necessitatibus quaerat. Sit est velit dolorum labore magnam rerum placeat eaque. Omnis excepturi ut iste cum rerum facere.', 'Quis sit id totam.', NULL, 1, '2024-08-14 15:28:49', '2024-11-15 07:20:05'),
(871, 'Kailey Auer', 'Maiores earum quo ut.', NULL, 2, 'Sedang', 'Butuh Ditinjau', 'Cumque velit impedit est molestiae est non modi. Quod saepe atque qui voluptatem aut. Unde accusamus ullam ea suscipit ullam porro voluptates suscipit. Sit placeat fugit eos deleniti dolor.', NULL, NULL, 1, '2024-09-28 08:51:45', '2024-11-15 07:20:05'),
(872, 'Nona Conroy', 'Quibusdam neque alias.', NULL, 3, 'Ringan', 'Dikerjakan', 'Nostrum vel dignissimos mollitia amet rem porro rerum. Natus voluptates voluptatibus aliquid illum veniam dolorum. Aut ut aliquam consectetur nostrum ipsam doloremque dolorum. Alias accusamus numquam eum autem saepe est.', NULL, NULL, 1, '2024-09-16 14:46:20', '2024-11-15 07:20:05'),
(873, 'Mr. Mariano Mraz II', 'Culpa ut occaecati non.', NULL, 1, 'Berat', 'Dibuka', 'Rem amet ex suscipit rerum consequuntur. Optio reprehenderit quis dolores aut consequatur sit minus. Inventore tempore est aspernatur dolores culpa velit et.', 'Perferendis error harum nihil error rerum tempora.', NULL, 2, '2024-11-18 05:34:51', '2024-11-15 07:20:05'),
(874, 'Tianna Huel', 'Ipsa placeat veniam.', NULL, 1, 'Ringan', 'Dikerjakan', 'Nulla temporibus accusantium dolor nihil et et. Explicabo quibusdam modi similique. Voluptatibus repellat tempore sit. Laborum amet ab officia doloribus deleniti esse.', 'Aperiam nam sit et eius accusantium consequatur.', 'Quaerat ut accusantium voluptate.', 2, '2024-09-17 03:23:24', '2024-11-15 07:20:05'),
(875, 'Alfreda Howell', 'Nobis amet iusto.', NULL, 4, 'Sedang', 'Dikerjakan', 'Ipsum eligendi facere ratione cumque. Dolor dolor dolor sequi ut. Non necessitatibus tenetur aut et debitis.', NULL, NULL, 2, '2024-08-29 07:01:13', '2024-11-15 07:20:05'),
(876, 'Olen Murray', 'Velit minima rerum.', NULL, 4, 'Sedang', 'Ditinjau', 'Voluptatem ut magnam suscipit vel. Laboriosam voluptas nam et reiciendis iusto explicabo voluptas. Officiis porro dolorum dignissimos eveniet rerum.', NULL, NULL, 2, '2024-11-11 19:55:55', '2024-11-15 07:20:05'),
(877, 'Earl Predovic', 'Nostrum non.', NULL, 3, 'Sedang', 'Ditinjau', 'Cupiditate quo delectus dolor dolor. Quo et voluptas consectetur itaque. Nihil et consequuntur id animi autem hic et.', 'Debitis odio quisquam repudiandae omnis.', NULL, 1, '2024-08-31 00:17:57', '2024-11-15 07:20:05'),
(878, 'Prof. Judson Dooley', 'Accusantium qui ducimus.', NULL, 1, 'Berat', 'Selesai', 'Voluptas accusamus tempora corrupti eos qui. Repudiandae nihil non ex cum. Voluptatibus consequuntur quia odit ullam et nihil culpa quas. Nobis eveniet consequuntur voluptatum natus atque consectetur harum.', NULL, 'Itaque quis illo in nihil.', 1, '2024-09-15 15:46:15', '2024-11-15 07:20:05'),
(879, 'Freeman Gibson', 'Voluptatem dignissimos quo.', NULL, 3, 'Berat', 'Dibuka', 'Nesciunt velit omnis unde recusandae. Eaque blanditiis nisi magni repudiandae similique ex doloremque. Doloribus in autem suscipit accusantium autem. Non aut est sequi qui pariatur.', 'Quia autem reiciendis quidem est.', NULL, 1, '2024-10-10 03:32:17', '2024-11-15 07:20:05'),
(880, 'Fredrick Koelpin IV', 'Facilis beatae dolores recusandae.', NULL, 1, 'Sedang', 'Selesai', 'Eveniet qui explicabo animi accusamus earum qui cumque. Eius consequatur quidem sint maxime eaque officiis placeat veritatis. Quibusdam quis omnis iusto unde inventore alias. Ut aut totam sit officiis nobis ab alias.', 'Labore sit fugiat omnis sit ab.', 'Quaerat distinctio molestiae veniam in.', 1, '2024-08-01 21:16:05', '2024-11-15 07:20:05'),
(881, 'Diego Goldner', 'Ut officia minima qui.', NULL, 4, 'Berat', 'Selesai', 'Non architecto ipsam recusandae et est voluptas voluptatem. Vel sit voluptas voluptas libero sunt eius mollitia quibusdam. Officia aut rerum ut exercitationem eum. Non dignissimos nobis unde deserunt doloribus ipsa quis.', NULL, NULL, 2, '2024-09-17 15:56:21', '2024-11-15 07:20:05'),
(882, 'Zack Gibson', 'Explicabo laboriosam.', NULL, 2, 'Sedang', 'Ditolak', 'Unde quaerat ut qui culpa facilis dolor est. Non explicabo nesciunt a. Molestiae quidem dolorem illum dolorem accusamus consequatur voluptatem quia.', NULL, 'Cumque quia est odio et.', 1, '2024-08-08 02:09:35', '2024-11-15 07:20:05'),
(883, 'Katlynn Marvin', 'Consequatur maxime sit accusantium voluptas.', NULL, 4, 'Berat', 'Dibuka', 'Veniam sint id temporibus debitis ut itaque molestiae. Numquam nihil incidunt earum eligendi. Quidem incidunt porro suscipit. Id eum est dolor molestiae omnis dolores.', 'Iure dolorem quaerat ullam.', 'Cum ratione quas doloribus non voluptatem.', 2, '2024-08-19 06:14:24', '2024-11-15 07:20:05'),
(884, 'Claud Blanda', 'Illum sint architecto.', NULL, 2, 'Ringan', 'Dikerjakan', 'Rerum consequatur optio aspernatur sint. Suscipit aut distinctio rerum. Occaecati qui cupiditate voluptatem laboriosam et quibusdam. Facilis suscipit commodi modi voluptates.', 'Quibusdam dolorem nihil ut modi maxime cum.', NULL, 2, '2024-09-01 04:34:11', '2024-11-15 07:20:05'),
(885, 'Kenneth Barton', 'Non quo quia molestiae.', NULL, 1, 'Ringan', 'Butuh Ditinjau', 'Quisquam et modi qui quaerat cumque fugiat. Nobis numquam et et labore. Error totam quae blanditiis fugit. Amet odio rerum placeat.', NULL, NULL, 2, '2024-09-24 03:00:50', '2024-11-15 07:20:05'),
(886, 'Prof. Marcos Lemke', 'Autem sed temporibus.', NULL, 2, 'Sedang', 'Butuh Ditinjau', 'Officiis omnis quos tempora veniam sit blanditiis qui. Necessitatibus omnis inventore natus ut voluptatem. Id soluta quam sint molestiae quam nemo.', NULL, 'Pariatur libero placeat.', 3, '2024-11-20 19:19:31', '2024-11-15 07:20:05'),
(887, 'Mr. Dewayne Gislason', 'Et tempora et molestias.', NULL, 3, 'Sedang', 'Ditinjau', 'Ab sed totam recusandae ut doloremque. Laboriosam eveniet ex eos et error fugiat sit. Et sunt excepturi quam voluptatibus. Modi molestias odio ex quia perferendis rem.', 'Voluptatem nesciunt eum distinctio voluptatem.', 'Reprehenderit quo illum vitae et.', 3, '2024-08-09 20:40:33', '2024-11-15 07:20:05'),
(888, 'Ruth Pollich', 'Vel aliquam excepturi.', NULL, 4, 'Sedang', 'Dibuka', 'Quo non natus aut id dolores. Et laboriosam unde quae consequatur corrupti sed. Nihil fuga quos nihil doloremque. Qui reprehenderit doloremque velit aut dolorum aut fugit.', 'Debitis assumenda omnis eos.', 'Impedit molestiae harum provident qui.', 3, '2024-09-10 21:36:10', '2024-11-15 07:20:05'),
(889, 'Amira Schimmel', 'Sint rerum esse sapiente.', NULL, 2, 'Ringan', 'Dibuka', 'Omnis earum rerum labore asperiores veritatis quibusdam eos illo. Fuga ut repellat numquam minus libero voluptates. Nostrum ut aut aut dicta excepturi nisi. Similique nisi suscipit tenetur autem.', 'Nesciunt laborum eos illum quidem.', NULL, 3, '2024-08-08 12:48:18', '2024-11-15 07:20:05'),
(890, 'Melba Schiller', 'Atque earum id quia.', NULL, 1, 'Ringan', 'Butuh Ditinjau', 'Non sit nesciunt et dolorum eum saepe. Sed magnam animi dolorem in in aut. Doloribus quaerat doloremque nihil commodi.', NULL, 'Quaerat alias ut occaecati porro.', 1, '2024-11-24 12:45:15', '2024-11-15 07:20:05'),
(891, 'Ashtyn Nolan', 'Dolorem qui dignissimos.', NULL, 3, 'Ringan', 'Dikerjakan', 'Aut consequatur eum quia accusamus qui. Sequi rerum repellendus error qui explicabo debitis minima. Et esse eum occaecati pariatur ut nemo tempore.', NULL, 'Aut aut natus in iure.', 2, '2024-10-05 08:12:23', '2024-11-15 07:20:05'),
(892, 'Mrs. Noelia Wiza I', 'Ut omnis ut illo.', NULL, 1, 'Sedang', 'Butuh Ditinjau', 'Voluptates ut et assumenda impedit est quis aspernatur. Minus harum praesentium aut illo eveniet voluptatum. Nulla officiis minus laborum voluptatibus amet excepturi. Sint perferendis officiis accusamus quidem excepturi voluptatem eum.', 'Totam veritatis nihil fugit quas ad.', 'Aliquid magni eos quo.', 1, '2024-10-12 08:33:37', '2024-11-15 07:20:05'),
(893, 'Hallie Grimes', 'Autem architecto omnis.', NULL, 4, 'Sedang', 'Butuh Ditinjau', 'Magnam ipsum et alias laborum non odit id. Odit deleniti officia exercitationem dolores veritatis debitis vero ullam. Voluptatem libero laboriosam reprehenderit ducimus perferendis.', NULL, NULL, 3, '2024-11-04 05:49:08', '2024-11-15 07:20:05'),
(894, 'Dr. Cory Hintz', 'Quasi perspiciatis quaerat.', NULL, 2, 'Ringan', 'Ditinjau', 'Consequatur et deserunt eligendi. Optio nesciunt impedit dolorem deleniti nostrum. Aspernatur alias sit nisi adipisci. Tempore et harum voluptates quasi.', NULL, NULL, 3, '2024-08-21 19:12:06', '2024-11-15 07:20:05'),
(895, 'Theresia Russel', 'Nisi ipsum vero eligendi.', NULL, 2, 'Ringan', 'Ditinjau', 'Corporis ut quia velit accusantium sed ducimus. Omnis aliquid necessitatibus aut et nemo pariatur eos facere. Aut voluptas veritatis nesciunt occaecati. Minus dicta nulla facere omnis eaque.', 'Repellendus a sed nesciunt.', 'Architecto numquam magni sit repellendus.', 2, '2024-08-23 01:03:20', '2024-11-15 07:20:05'),
(896, 'Prof. Tamia Jast II', 'Accusantium a ducimus.', NULL, 3, 'Berat', 'Butuh Ditinjau', 'Numquam aut sit sint impedit explicabo reiciendis totam. Nam laborum optio quia qui delectus corrupti natus. Quasi voluptatem magni minus voluptatem consequuntur id.', NULL, NULL, 1, '2024-08-15 15:57:59', '2024-11-15 07:20:05'),
(897, 'Prof. Augustine Beer I', 'Aspernatur possimus velit minus.', NULL, 3, 'Sedang', 'Ditinjau', 'Voluptatibus quia qui quaerat eligendi ullam consequatur aut. Dolor omnis itaque non ad. Sed eius architecto enim nostrum ipsum.', NULL, NULL, 1, '2024-08-07 20:56:26', '2024-11-15 07:20:05'),
(898, 'Prof. Rosalia Collins', 'Iste a aperiam.', NULL, 1, 'Sedang', 'Ditolak', 'Iste sed illum inventore perspiciatis non autem doloremque aut. Unde vitae iure sit autem ut dignissimos officiis. Qui a totam assumenda aut blanditiis non.', 'Minima in ullam quasi quaerat iste et.', NULL, 2, '2024-08-27 13:20:32', '2024-11-15 07:20:05'),
(899, 'Brennon Mayert', 'Illum rem aut.', NULL, 1, 'Berat', 'Dibuka', 'Odit in sint facilis. Odio non dolor occaecati placeat. Fugit et quis quaerat libero dolor. Animi aut dicta veniam voluptatem nesciunt. Exercitationem autem qui doloribus assumenda et iusto odit.', 'Qui sunt ut culpa quia.', NULL, 2, '2024-09-05 00:55:34', '2024-11-15 07:20:05'),
(900, 'Dr. Bennie Boyer III', 'Provident delectus et et.', NULL, 3, 'Berat', 'Selesai', 'Non sint maxime voluptates laudantium odit iste. Illum molestias minima excepturi qui aut est. Pariatur soluta ut voluptates rerum ad. Id quia quia est velit voluptatum vitae quibusdam.', 'Eos reprehenderit et nostrum non.', 'Ipsum eveniet ea laudantium.', 1, '2024-08-03 14:03:03', '2024-11-15 07:20:05'),
(901, 'Prof. Pat Jakubowski', 'Consequatur error aut nam.', NULL, 4, 'Ringan', 'Butuh Ditinjau', 'Sint consequatur et nihil autem autem reiciendis est. Et non quis ut magnam ratione. Molestias dolores repellat dolorem accusamus consequatur excepturi voluptate. Est nihil dolor sit eveniet ad quam. Aut modi debitis odit et aut dolorem laudantium autem.', 'Quas voluptatum repellendus vitae.', NULL, 3, '2024-08-17 03:38:26', '2024-11-15 07:20:05'),
(902, 'Thaddeus Schultz', 'Itaque esse voluptas.', NULL, 4, 'Ringan', 'Dibuka', 'Porro ipsum magnam est aut non et. Natus expedita et assumenda autem sit cumque. Quae temporibus deserunt harum dolor.', 'Facilis eligendi cumque id eos.', NULL, 3, '2024-10-05 09:44:28', '2024-11-15 07:20:05'),
(903, 'Ms. Alison Prosacco I', 'Tempora illo asperiores corrupti.', NULL, 1, 'Ringan', 'Dikerjakan', 'Veritatis exercitationem voluptatibus quas et voluptatem maiores. Fugiat et est pariatur vel id ullam. Sed ullam laborum at harum consequatur. Nobis soluta unde provident eos itaque modi in.', NULL, 'Dolores eos iure ducimus.', 1, '2024-10-29 09:32:43', '2024-11-15 07:20:05'),
(904, 'Bernadette Reilly', 'Hic nesciunt consequuntur voluptas.', NULL, 4, 'Sedang', 'Selesai', 'Sunt eius doloremque sed. Expedita dolorum voluptatem numquam adipisci exercitationem. Esse dolorem voluptatem et consequatur.', 'Fugiat consequuntur impedit hic vel numquam.', 'Vero nesciunt sapiente labore.', 1, '2024-10-29 01:24:17', '2024-11-15 07:20:05'),
(905, 'Ayana Hudson II', 'Quo sit voluptate.', NULL, 2, 'Sedang', 'Ditolak', 'Ut dicta in laboriosam ut culpa neque corrupti. Voluptates vero quidem suscipit. Dolorem nostrum recusandae consequuntur maxime dolor aliquam. Minus quidem veniam tenetur quia repellendus consequuntur.', 'Incidunt laudantium qui voluptatum quasi eveniet.', 'Repellendus quia vel beatae animi.', 2, '2024-11-18 15:47:30', '2024-11-15 07:20:05'),
(906, 'Gideon Sipes', 'Omnis officiis aut iure rem.', NULL, 4, 'Sedang', 'Dibuka', 'Necessitatibus qui hic sint ut modi sequi est. Natus in alias consectetur eum. Rem non inventore delectus quo esse quo.', NULL, NULL, 3, '2024-08-16 14:55:15', '2024-11-15 07:20:05'),
(907, 'Dr. Cale White', 'Aperiam eum qui distinctio.', NULL, 4, 'Ringan', 'Dikerjakan', 'Et dolor molestias dolores quod nisi. Et omnis qui vero eos similique laborum. At possimus ullam natus consectetur dolores minima repudiandae. Dolor labore non velit eligendi delectus impedit.', NULL, 'Cupiditate omnis esse ab omnis.', 1, '2024-11-27 19:57:15', '2024-11-15 07:20:05'),
(908, 'Domenick Purdy IV', 'Beatae sit mollitia.', NULL, 3, 'Berat', 'Dikerjakan', 'Omnis ut tempora voluptatem et. Velit nemo sint earum excepturi sequi nam.', 'Nostrum recusandae possimus similique odio ut dolorem sit.', NULL, 1, '2024-09-11 12:36:00', '2024-11-15 07:20:05'),
(909, 'Nat Hettinger', 'Omnis qui eveniet.', NULL, 3, 'Berat', 'Butuh Ditinjau', 'Libero consequatur explicabo omnis corrupti ut blanditiis nam cumque. Molestias occaecati assumenda qui illum enim. Sint id qui quam aspernatur voluptatibus aperiam quo.', 'Repellendus sapiente sequi temporibus dolorum.', NULL, 3, '2024-09-26 12:55:03', '2024-11-15 07:20:05'),
(910, 'Paxton Little', 'Impedit exercitationem rerum magnam harum.', NULL, 4, 'Sedang', 'Ditolak', 'Eius quasi aut cum. Nihil et ut non et. Necessitatibus officia quia non dolores dolor. Labore adipisci numquam aspernatur ut ea animi sint consequatur.', 'Fugiat sunt dicta modi.', 'Doloremque ut natus mollitia.', 3, '2024-10-01 06:24:01', '2024-11-15 07:20:05'),
(911, 'Dr. Mariah Watsica', 'Ullam rerum consectetur natus.', NULL, 3, 'Ringan', 'Dikerjakan', 'Natus officiis harum et impedit corrupti odio. Quia voluptatibus ullam quo id omnis itaque. Dicta consequatur beatae consequatur odio aut facilis ut. Optio aut dolor quia suscipit corporis beatae.', 'Omnis sequi vel quos rerum et iusto.', NULL, 2, '2024-10-30 04:50:22', '2024-11-15 07:20:05'),
(912, 'Darrick Kerluke', 'Repellendus reprehenderit.', NULL, 3, 'Berat', 'Ditinjau', 'Non odio possimus in ea in consequatur. Et veritatis amet dolorem inventore et et et. Voluptatem eos tenetur blanditiis repudiandae minima. Debitis explicabo blanditiis nesciunt pariatur cumque necessitatibus.', 'In eius sed ipsa et nemo adipisci.', NULL, 3, '2024-09-06 02:25:28', '2024-11-15 07:20:05'),
(913, 'Heber Stoltenberg V', 'Reiciendis voluptas dolorem.', NULL, 4, 'Ringan', 'Ditinjau', 'Nemo quia odio ullam sunt. Autem aliquam vero necessitatibus rerum veritatis accusantium. Nobis numquam nam adipisci ut.', 'Corrupti sunt eius perspiciatis architecto nemo.', NULL, 2, '2024-08-29 22:00:31', '2024-11-15 07:20:05'),
(914, 'Peggie Robel', 'Maxime ullam tenetur.', NULL, 3, 'Sedang', 'Ditolak', 'Facilis dicta ut blanditiis assumenda dolorem fuga nostrum. Totam eos sit velit quia ut et. Repellendus itaque minus eaque. Qui autem debitis molestiae.', NULL, NULL, 2, '2024-08-22 15:54:18', '2024-11-15 07:20:05'),
(915, 'Clark Balistreri V', 'Sed dolore consequuntur natus.', NULL, 4, 'Ringan', 'Dibuka', 'Ex alias alias eos. Consequuntur et ratione nostrum velit libero est. Alias praesentium voluptas vitae possimus praesentium animi sit.', 'Ut fugit velit asperiores facere et et.', 'Cupiditate saepe quo.', 2, '2024-10-24 11:31:39', '2024-11-15 07:20:05'),
(916, 'Hardy Ratke', 'Quis id et eius.', NULL, 2, 'Sedang', 'Selesai', 'Voluptatibus asperiores sunt ut et ipsa. Suscipit ex itaque ipsum autem. Non fugiat explicabo inventore et sit voluptas odit officiis.', NULL, NULL, 1, '2024-09-21 00:39:08', '2024-11-15 07:20:05'),
(917, 'Manley Pfannerstill', 'Sed ex laboriosam.', NULL, 2, 'Berat', 'Butuh Ditinjau', 'Ut ut cumque et. Aperiam repellendus quibusdam neque non dignissimos reiciendis. Ut totam dolores error molestiae ab dolor et. At laborum occaecati veritatis aut assumenda aut consequatur. Consequatur alias quia quas vel exercitationem dolorum.', 'Facere iure omnis illum qui aperiam.', NULL, 2, '2024-11-04 10:14:48', '2024-11-15 07:20:05'),
(918, 'Prof. Asa Sauer DDS', 'Illum velit ab officiis.', NULL, 1, 'Ringan', 'Dikerjakan', 'Velit qui quia quas pariatur quo fugiat sint hic. Odio necessitatibus voluptate ipsa ad tempora quibusdam. Velit ad iusto autem ea. Velit quia aliquam non aspernatur rerum.', NULL, 'Quis velit pariatur dicta fugit iste.', 3, '2024-11-18 05:31:25', '2024-11-15 07:20:05'),
(919, 'Yvette Hermiston', 'Quaerat et et.', NULL, 4, 'Berat', 'Dibuka', 'Et dolores distinctio libero sint veritatis est. Ut voluptatibus deserunt sunt qui. Culpa nihil quia magni qui illum fuga. Quaerat id earum rerum tempora. Modi ipsa similique impedit.', NULL, NULL, 1, '2024-11-28 20:09:47', '2024-11-15 07:20:05'),
(920, 'Mr. Adelbert Renner DDS', 'Ipsa corporis est et.', NULL, 1, 'Sedang', 'Selesai', 'Voluptate exercitationem enim laborum quia. At cupiditate sit totam totam qui. In doloribus rem eum. Modi aliquid ut libero pariatur magnam sit incidunt.', 'Magnam omnis quisquam voluptatem.', 'Ea aut ut qui.', 1, '2024-08-27 23:17:50', '2024-11-15 07:20:05'),
(921, 'Charlie Walter', 'Autem sunt qui.', NULL, 4, 'Ringan', 'Dibuka', 'Maxime minima est et reprehenderit autem repellendus. Et pariatur fugit illo facere ea. Consequatur rerum cum illo consectetur dolorem et. Est qui expedita facere ut eum iusto eius.', NULL, 'Adipisci est minima voluptatum qui.', 2, '2024-11-07 11:46:59', '2024-11-15 07:20:05'),
(922, 'Dr. Name Heaney', 'Quo cumque voluptas.', NULL, 3, 'Berat', 'Dibuka', 'Pariatur quae culpa excepturi eligendi inventore non ut. Et autem vitae error qui voluptatem. Voluptatem aut totam blanditiis omnis et cum debitis. Laborum sapiente ex est esse. Saepe ducimus voluptates quam qui harum qui.', NULL, 'Temporibus occaecati est fuga corporis.', 1, '2024-08-08 22:48:42', '2024-11-15 07:20:05'),
(923, 'Prof. Kennith Steuber Sr.', 'Ea voluptatibus voluptatem dolor non.', NULL, 4, 'Ringan', 'Butuh Ditinjau', 'Est fugit exercitationem quis et qui nihil repellat. Impedit totam labore qui ad. At ipsam ipsum odit eos aut amet. Aut et vitae accusamus quaerat eos minima iste.', 'Quos ratione ducimus est est omnis.', 'Soluta quis at voluptas.', 2, '2024-10-23 11:21:30', '2024-11-15 07:20:05'),
(924, 'Mina Buckridge I', 'Et autem voluptate illo.', NULL, 3, 'Ringan', 'Selesai', 'Sit non molestiae quos similique. Ut debitis aut ducimus culpa temporibus aut. Temporibus adipisci ut aut neque sint officiis.', 'Sapiente tempore ipsam dolores odio nihil.', NULL, 1, '2024-08-23 15:07:17', '2024-11-15 07:20:05'),
(925, 'Dr. Elyse Ryan', 'Aut omnis porro.', NULL, 2, 'Sedang', 'Butuh Ditinjau', 'Dolor ut maiores voluptas illum blanditiis aut eum. Repellat non quia possimus saepe aut voluptatem excepturi. Hic ut eos quod aut accusantium. Perferendis earum praesentium et recusandae nostrum et aut.', NULL, 'Error et repellendus.', 2, '2024-11-21 03:56:44', '2024-11-15 07:20:05'),
(926, 'Mr. Jordy Conroy', 'Nihil explicabo.', NULL, 1, 'Ringan', 'Butuh Ditinjau', 'Esse distinctio non aut nulla facilis. Eos ut est praesentium in perspiciatis. Quia non assumenda amet et voluptate.', NULL, 'Assumenda qui occaecati.', 2, '2024-10-08 23:27:54', '2024-11-15 07:20:05'),
(927, 'Cornelius Wisoky', 'Praesentium nam et.', NULL, 2, 'Berat', 'Selesai', 'Enim omnis ad et. Vel cupiditate a aut ex aliquid et. Laborum neque adipisci pariatur aut pariatur nostrum quibusdam quam.', NULL, NULL, 1, '2024-11-01 19:07:03', '2024-11-15 07:20:05'),
(928, 'Letha Graham', 'Excepturi non blanditiis.', NULL, 4, 'Berat', 'Butuh Ditinjau', 'Odio dolorem et saepe sit. Maxime minus nisi magni distinctio quo. Et omnis error dolor adipisci et.', 'Porro atque non reiciendis.', 'Deleniti consequuntur porro.', 2, '2024-10-21 15:35:10', '2024-11-15 07:20:05'),
(929, 'Mr. Quinn Carter', 'Quasi autem inventore ex.', NULL, 4, 'Berat', 'Ditinjau', 'Dignissimos nihil neque ab at. Quo eveniet quaerat minima quis maiores. Sequi omnis possimus ab non quam et. Accusantium possimus totam eum est eum.', NULL, NULL, 1, '2024-11-04 03:44:42', '2024-11-15 07:20:05'),
(930, 'Kurtis Fadel', 'Aspernatur libero voluptatem animi laudantium.', NULL, 2, 'Berat', 'Ditinjau', 'Nesciunt non ullam ut. Beatae harum cumque praesentium. Atque sequi quae reiciendis voluptatem quos.', 'Consequatur totam numquam voluptatibus laudantium non dolores.', NULL, 2, '2024-10-11 01:57:57', '2024-11-15 07:20:05'),
(931, 'Mr. Angus Abshire', 'Fuga voluptates sunt sit.', NULL, 2, 'Berat', 'Ditolak', 'Repellendus alias amet sed sint enim sapiente. Qui repudiandae voluptas ea quia nisi. Excepturi dolores aliquam sunt id. Alias deserunt hic non quod eos.', NULL, NULL, 3, '2024-08-27 21:31:37', '2024-11-15 07:20:05'),
(932, 'Dr. Wendy O\'Conner IV', 'Sed deserunt ipsum consequatur.', NULL, 4, 'Berat', 'Butuh Ditinjau', 'Sunt laborum doloribus ratione provident quae quo magni. Dolor qui ut voluptatem eos. Odio ducimus provident et nam nisi deleniti provident. Delectus facere consequatur nulla omnis quas voluptatum voluptas.', NULL, 'Quis ut ex nobis quibusdam.', 2, '2024-10-13 22:45:56', '2024-11-15 07:20:05'),
(933, 'Berta Little', 'Omnis explicabo quisquam.', NULL, 1, 'Sedang', 'Butuh Ditinjau', 'Porro corporis tempora illo aut ipsa vel consequatur. Aspernatur minus soluta quia at sed. Blanditiis quidem sapiente et impedit odit non ut.', 'Totam sed incidunt velit quia sequi.', NULL, 3, '2024-11-12 05:28:48', '2024-11-15 07:20:05'),
(934, 'Fatima Bednar', 'Perferendis et quis dolorem.', NULL, 4, 'Berat', 'Dikerjakan', 'Officia id consequatur aut laudantium magnam soluta esse. Cumque iste molestiae aut qui. Aut ut maiores totam qui ullam quia.', 'Sunt deserunt quod sunt minus.', 'Nesciunt repellendus sapiente eveniet suscipit.', 1, '2024-11-11 16:39:33', '2024-11-15 07:20:05'),
(935, 'Melody Lueilwitz Sr.', 'Perspiciatis quis.', NULL, 3, 'Ringan', 'Ditolak', 'Sint ullam et nam tempore placeat praesentium eum. Pariatur earum modi autem vel veniam vel omnis.', 'Quisquam est molestiae voluptatibus minima commodi numquam.', 'Accusamus accusamus voluptas.', 3, '2024-10-18 10:30:27', '2024-11-15 07:20:05'),
(936, 'Amy Hagenes', 'Ab vero consequatur.', NULL, 2, 'Berat', 'Selesai', 'Officiis odit accusantium error est. Similique impedit voluptas dolorem sit quas esse. Nemo ut ea enim enim. Dolorum quia nobis odio voluptate molestiae aut quibusdam.', NULL, 'Id dolorum commodi aut quia.', 1, '2024-10-03 16:49:37', '2024-11-15 07:20:05'),
(937, 'Ray Heidenreich', 'Quae illo.', NULL, 1, 'Ringan', 'Dibuka', 'Perspiciatis et rerum nulla sed. Voluptatem incidunt sed qui. Aperiam inventore qui ipsum vitae ipsam. Nemo nisi et consectetur placeat.', NULL, NULL, 3, '2024-11-15 14:30:06', '2024-11-15 07:20:05'),
(938, 'Alexzander Barrows', 'Autem consequatur aut.', NULL, 2, 'Sedang', 'Ditolak', 'Aut ipsum laborum voluptates fugit consectetur soluta distinctio ipsum. Incidunt quasi voluptas aut earum ut ipsam temporibus. Sint occaecati corrupti porro sapiente nihil rerum est.', NULL, NULL, 1, '2024-10-19 23:11:07', '2024-11-15 07:20:05'),
(939, 'Verlie Champlin', 'Sit quasi natus.', NULL, 4, 'Sedang', 'Selesai', 'Debitis ipsa et alias beatae. Quaerat et rerum quisquam accusamus nobis. Assumenda libero omnis sint quae sapiente. At ut assumenda est et ut non consequatur aut.', NULL, 'Est est officiis aut.', 2, '2024-11-14 12:50:44', '2024-11-15 07:20:05'),
(940, 'Kylie McKenzie IV', 'Recusandae eius a.', NULL, 1, 'Sedang', 'Dibuka', 'Vitae nostrum possimus facilis porro officia. Quisquam fugit tempore consequuntur est et aut veritatis.', 'Dolores vitae dolores libero ipsa et veniam.', NULL, 1, '2024-10-16 00:34:22', '2024-11-15 07:20:05'),
(941, 'Jessy Torp', 'Perferendis expedita quae alias.', NULL, 2, 'Ringan', 'Butuh Ditinjau', 'Minima rerum quisquam quis corrupti molestiae hic. Est et eius vel quisquam quod. Facilis culpa quibusdam suscipit esse et magnam. Consequatur non sit rerum ducimus fugit.', 'Aperiam consequatur voluptate recusandae.', NULL, 3, '2024-08-28 07:49:32', '2024-11-15 07:20:05'),
(942, 'Niko Mosciski', 'Voluptates facilis magnam nobis.', NULL, 1, 'Sedang', 'Butuh Ditinjau', 'Ipsam voluptatem corrupti quibusdam voluptatum sit iste itaque. Voluptatem debitis ad sit nobis explicabo ullam.', NULL, NULL, 1, '2024-08-24 23:10:33', '2024-11-15 07:20:05'),
(943, 'Tia Connelly III', 'Consequatur delectus quam aut.', NULL, 4, 'Ringan', 'Butuh Ditinjau', 'Molestiae numquam deleniti commodi aliquam. Repellendus consectetur nihil perferendis debitis voluptatem dignissimos quis et. Quo et odio quibusdam laudantium non illo. Repudiandae minima et et omnis nesciunt fugit dolorem.', 'At aliquid minima inventore sed in vitae.', NULL, 1, '2024-08-25 08:05:15', '2024-11-15 07:20:05'),
(944, 'Miss Kaylah Romaguera', 'Voluptatem ipsum non nihil.', NULL, 1, 'Sedang', 'Selesai', 'Quia et fuga ab quidem fugit perferendis. Nam et debitis impedit est. Asperiores id fuga eum harum molestiae libero.', 'Molestiae est quisquam necessitatibus animi omnis.', NULL, 1, '2024-09-08 12:33:16', '2024-11-15 07:20:05'),
(945, 'Prof. Cary Hudson Sr.', 'Suscipit autem ut eligendi.', NULL, 2, 'Sedang', 'Selesai', 'Temporibus molestiae aut vitae ipsam sint ipsam. Eos et eveniet consectetur aut voluptas. Quas voluptas et accusamus voluptates. Autem laborum accusantium eum.', 'Perspiciatis cumque deserunt eum cum nesciunt.', NULL, 3, '2024-10-16 11:56:02', '2024-11-15 07:20:05'),
(946, 'Daryl Sipes DVM', 'Omnis mollitia consequatur cumque.', NULL, 3, 'Sedang', 'Selesai', 'Magni magni natus doloremque iusto quas. Eligendi laboriosam in voluptas totam at. Eum quam autem ipsa ipsa. Consequatur dolor iste ratione temporibus id ex. Tempora omnis incidunt minima laboriosam officiis.', NULL, NULL, 1, '2024-08-16 20:31:40', '2024-11-15 07:20:05'),
(947, 'Aubree Langosh', 'Adipisci quaerat quis est.', NULL, 1, 'Sedang', 'Butuh Ditinjau', 'Sapiente veniam maiores eum magni ratione. Eos ratione quos eum est exercitationem placeat enim minus. Et est qui error in qui quae sunt incidunt. Ipsum numquam autem provident velit minima doloribus et.', NULL, NULL, 3, '2024-11-13 01:14:07', '2024-11-15 07:20:05'),
(948, 'Jodie O\'Connell', 'Ut voluptatem cupiditate.', NULL, 3, 'Ringan', 'Dikerjakan', 'Optio totam accusamus quod. Sed asperiores maxime unde. Dolorum consequatur et qui est. Et asperiores aperiam ea cupiditate. Est sed nam id sint asperiores dignissimos officiis.', 'Veniam et rerum excepturi repellendus ut.', NULL, 2, '2024-09-28 05:43:24', '2024-11-15 07:20:05'),
(949, 'Arch Homenick', 'Qui suscipit distinctio.', NULL, 4, 'Sedang', 'Dikerjakan', 'Qui quia voluptatem quia est illo unde eum aut. Laborum et ratione non et sed. Molestiae sit aliquid illo. Aut qui qui vero eius atque.', NULL, 'Quisquam et ipsam quia asperiores.', 3, '2024-09-30 15:47:09', '2024-11-15 07:20:05'),
(950, 'Ms. Willow Barrows', 'Sit aut est.', NULL, 1, 'Ringan', 'Dikerjakan', 'Error voluptate corporis recusandae ut minima quisquam sequi. Ab enim sunt voluptatum aliquam omnis dolor odio. Aliquam placeat consequatur totam deserunt commodi ab aut est. Laboriosam esse est iure nihil autem.', NULL, 'Velit voluptas et rem neque.', 3, '2024-11-26 21:53:56', '2024-11-15 07:20:05');
INSERT INTO `tikets` (`id`, `nama`, `judul`, `image`, `kategori_id`, `tingkat_urgensi`, `status`, `description`, `troubleshoot`, `tanggapan`, `user_id`, `created_at`, `updated_at`) VALUES
(951, 'Rosella Hirthe Jr.', 'Aperiam minima voluptas.', NULL, 4, 'Ringan', 'Ditinjau', 'Atque dolor itaque natus voluptas amet debitis reprehenderit. Reiciendis ut sed illum dolores praesentium. Aut similique eveniet suscipit qui porro.', NULL, NULL, 2, '2024-09-07 16:59:38', '2024-11-15 07:20:05'),
(952, 'Isadore Grant', 'Dolore praesentium molestiae cum.', NULL, 4, 'Sedang', 'Dikerjakan', 'Aut non consectetur porro et at aut aliquid. Velit nisi repudiandae nisi suscipit. At explicabo adipisci iste illum quis. Hic quo corporis est incidunt.', 'Error totam officia asperiores autem.', NULL, 2, '2024-09-17 05:24:38', '2024-11-15 07:20:05'),
(953, 'Rosalind Farrell PhD', 'Est maiores reiciendis cumque.', NULL, 4, 'Ringan', 'Selesai', 'Facilis dolores mollitia aut tempore sequi rerum. Laborum reiciendis impedit nihil dolorum voluptates cupiditate. Tempora quidem aperiam velit quasi non hic ullam. Dolorem non eligendi et repudiandae aspernatur impedit odio.', 'Eveniet accusamus et ad consequuntur minima dolorum.', 'Non nulla maxime earum sit.', 3, '2024-08-09 10:46:21', '2024-11-15 07:20:05'),
(954, 'Gilda Walker', 'Architecto cumque eos eligendi voluptas.', NULL, 4, 'Sedang', 'Selesai', 'Deleniti et qui molestiae labore. Voluptatem qui odit vero. Molestiae earum saepe iusto consectetur nihil blanditiis nostrum. Eos dolores dolorum nulla et dolores delectus sed.', NULL, 'Dolor doloremque esse sit.', 3, '2024-11-03 03:10:46', '2024-11-15 07:20:05'),
(955, 'Cierra Gleichner', 'Et animi earum eos.', NULL, 1, 'Sedang', 'Dikerjakan', 'Culpa nobis nulla commodi laudantium fugit. Amet rem ea et. Eligendi deleniti veniam ducimus odit voluptas assumenda expedita. Quia reiciendis molestias autem voluptatem omnis mollitia.', NULL, 'Similique sequi perferendis.', 2, '2024-10-24 08:32:32', '2024-11-15 07:20:05'),
(956, 'Rubie Brekke', 'Nesciunt temporibus doloribus nobis.', NULL, 1, 'Berat', 'Ditinjau', 'Dolor nostrum itaque mollitia et. Fugit ratione exercitationem asperiores possimus. Eos aperiam unde sapiente sunt nisi nisi.', NULL, 'Optio modi at et iusto eaque.', 3, '2024-09-22 06:21:38', '2024-11-15 07:20:05'),
(957, 'Hal Kihn DDS', 'Praesentium nihil modi.', NULL, 3, 'Berat', 'Dibuka', 'Placeat in hic et quia enim atque voluptatem. Rerum eos eius earum. Excepturi quae ipsa error quam deserunt rem. Explicabo laboriosam similique sit.', 'Facilis veritatis quia assumenda beatae velit.', NULL, 1, '2024-10-16 01:21:29', '2024-11-15 07:20:05'),
(958, 'Sarina Rodriguez', 'Perspiciatis quis vitae.', NULL, 2, 'Ringan', 'Selesai', 'Et non recusandae vel quia. Delectus aut repellendus non consequatur. Totam fuga et consectetur vero aut et officia.', 'Quibusdam repellat est ratione earum.', NULL, 3, '2024-10-12 01:25:40', '2024-11-15 07:20:05'),
(959, 'Zachary Goyette', 'Officiis laboriosam porro quaerat.', NULL, 3, 'Sedang', 'Butuh Ditinjau', 'Ducimus occaecati consectetur modi ullam aut. Tenetur fuga ut debitis aliquid consequatur et. Ut tempora aut molestias magnam repellendus. Suscipit aut provident consequatur sit nostrum quia.', NULL, 'Dolores aut et qui maiores.', 1, '2024-11-22 03:12:38', '2024-11-15 07:20:05'),
(960, 'Miss Lenna Considine', 'Quos et eum fugit quia.', NULL, 2, 'Sedang', 'Butuh Ditinjau', 'Quasi inventore molestias praesentium voluptatem ut voluptatem ut. Laudantium incidunt harum in vero odio nobis dicta amet. Necessitatibus qui quam voluptas non.', 'Soluta rerum quae laboriosam.', NULL, 1, '2024-09-01 17:48:52', '2024-11-15 07:20:05'),
(961, 'Dedrick Jacobi', 'Repellendus at vel omnis.', NULL, 1, 'Ringan', 'Dibuka', 'Incidunt eius est voluptatem. Quisquam aut quis sit magni cumque occaecati. Optio reprehenderit saepe nesciunt suscipit.', NULL, NULL, 2, '2024-08-30 22:52:57', '2024-11-15 07:20:05'),
(962, 'Prof. Kamren Gulgowski DDS', 'Itaque magni non ex.', NULL, 3, 'Ringan', 'Ditinjau', 'Eos accusamus pariatur sint ex. Tempora dolorem dolore vel dignissimos et quae. Molestiae ullam quisquam molestiae non aliquam laborum ut.', NULL, 'Eum accusamus sequi impedit assumenda.', 3, '2024-10-10 07:06:02', '2024-11-15 07:20:05'),
(963, 'Keshawn Wolf MD', 'Cum et dolor.', NULL, 1, 'Berat', 'Selesai', 'Laboriosam molestiae non at facere. Consequatur ipsum qui officiis fugit cumque neque praesentium. Enim sit sed suscipit qui est autem rerum. Voluptas dicta modi alias deleniti sit quo sequi.', NULL, 'Temporibus recusandae necessitatibus ut consectetur.', 2, '2024-08-22 12:37:27', '2024-11-15 07:20:05'),
(964, 'Jaclyn Funk', 'Repudiandae minima reiciendis sunt.', NULL, 1, 'Berat', 'Selesai', 'Tempora consectetur aliquam atque libero magni molestiae ut. Velit maxime aut quas eaque. Omnis id omnis quia dolor omnis. Voluptas soluta voluptatem voluptas ut qui rerum molestiae. Voluptas id repudiandae necessitatibus dicta.', NULL, NULL, 1, '2024-11-04 06:42:19', '2024-11-15 07:20:05'),
(965, 'Frank Schumm', 'Odio repellat autem et.', NULL, 3, 'Sedang', 'Dikerjakan', 'Dolor quas vitae exercitationem ex ipsa inventore. Et officiis in commodi nobis ipsum sed cum. Architecto dolorem nesciunt laborum architecto ut dolor.', NULL, NULL, 3, '2024-10-17 01:00:16', '2024-11-15 07:20:05'),
(966, 'Cornell Graham', 'Natus ut suscipit.', NULL, 3, 'Sedang', 'Selesai', 'Reiciendis autem et aut dolor aperiam aliquid. Eum quis inventore voluptas cumque. Omnis debitis qui ab quia aut et. Beatae veniam corporis maxime sed.', NULL, 'Soluta ex optio.', 2, '2024-10-02 07:07:37', '2024-11-15 07:20:05'),
(967, 'Mr. Ferne Ortiz V', 'Voluptatem qui enim.', NULL, 4, 'Ringan', 'Dibuka', 'Temporibus praesentium quisquam debitis quos vitae voluptas non. Tempora illo aliquam et blanditiis minima aut dolorem tenetur.', NULL, 'Quis voluptatum quaerat.', 1, '2024-09-17 19:38:24', '2024-11-15 07:20:05'),
(968, 'Gustave Harvey', 'Veritatis beatae nobis.', NULL, 4, 'Berat', 'Ditolak', 'Saepe pariatur qui saepe odio. Repellendus quos commodi expedita sit veniam est. In sint vero earum nisi. Fugiat eos sunt quia qui.', 'Perferendis mollitia ut cupiditate dolor eum asperiores.', NULL, 2, '2024-09-25 00:20:23', '2024-11-15 07:20:05'),
(969, 'Ilene Kuhlman', 'Dolorem laudantium sint.', NULL, 1, 'Sedang', 'Ditolak', 'Incidunt perspiciatis quod similique earum. Minima temporibus numquam et non dolorem vitae doloribus doloribus. Amet debitis nam consequatur labore incidunt. Illo facere aspernatur fuga et excepturi id. Rerum sunt et quia qui.', 'Rerum iusto aut aperiam voluptatem molestiae consequuntur.', NULL, 1, '2024-08-29 04:07:23', '2024-11-15 07:20:05'),
(970, 'Reagan O\'Conner', 'Similique nobis id.', NULL, 3, 'Berat', 'Butuh Ditinjau', 'Quis aut magnam animi eius veniam. Doloribus tempora est consequatur et aut qui. Quasi est autem fugit vel a.', NULL, NULL, 1, '2024-09-13 06:50:55', '2024-11-15 07:20:05'),
(971, 'Eldon Rolfson', 'Ea iste magnam.', NULL, 1, 'Ringan', 'Ditinjau', 'Ut et consequatur voluptatem quisquam sed magnam autem. Dicta ut minus aspernatur necessitatibus enim quo sapiente. Accusamus doloremque sit consequuntur tenetur. Sunt sequi quibusdam voluptas eius.', 'Dolores totam iste molestiae velit necessitatibus sit.', 'Autem libero rerum voluptatem iure quod.', 3, '2024-09-26 21:44:05', '2024-11-15 07:20:05'),
(972, 'Emory Upton', 'Pariatur sed sit sunt.', NULL, 1, 'Berat', 'Ditolak', 'Consequuntur nesciunt rem molestiae ab voluptatibus eaque perspiciatis. Quis quisquam earum odit velit dolore cum. Blanditiis eaque cupiditate vel aut sunt.', NULL, NULL, 1, '2024-08-15 17:52:42', '2024-11-15 07:20:05'),
(973, 'Karelle Yost', 'Quasi qui et nemo.', NULL, 1, 'Ringan', 'Ditinjau', 'Aut voluptatibus facere voluptas ex nesciunt nisi debitis. Dicta aspernatur ad aperiam omnis quia. Repudiandae id voluptas alias doloremque quae.', NULL, 'Rem unde omnis aut.', 1, '2024-10-07 21:24:58', '2024-11-15 07:20:05'),
(974, 'Elmo Gusikowski', 'Fuga ipsam consequatur.', NULL, 3, 'Berat', 'Dibuka', 'Quia cumque sint facilis vel laboriosam. Suscipit sit laudantium odit aut modi. Voluptatum facilis voluptatem tempora asperiores dolorem. Sit vitae reiciendis voluptatem ipsam fuga a amet.', 'Magnam impedit esse temporibus voluptatem aspernatur.', NULL, 3, '2024-11-04 20:18:03', '2024-11-15 07:20:05'),
(975, 'Mrs. Brandi Wilkinson', 'Quod natus cupiditate.', NULL, 1, 'Berat', 'Ditolak', 'Fuga nisi neque quasi dolor commodi magni deleniti. Ad et fugiat aut eum similique alias.', NULL, 'Nam labore perferendis et.', 2, '2024-09-16 22:53:26', '2024-11-15 07:20:05'),
(976, 'Dolly Walsh', 'Eveniet animi dolorem.', NULL, 1, 'Sedang', 'Selesai', 'Nihil accusantium placeat et ex. Mollitia praesentium eos aliquam natus sint repellendus qui.', 'Ratione sit optio adipisci.', NULL, 1, '2024-10-01 14:12:26', '2024-11-15 07:20:05'),
(977, 'Delilah Heller', 'Quo cumque in.', NULL, 1, 'Ringan', 'Dikerjakan', 'In velit atque molestias fugiat id cum delectus. Dolorum et odit eos aliquid itaque. Ipsa laborum aspernatur magnam ipsam nesciunt hic qui exercitationem. Voluptatem atque eveniet qui repudiandae fuga enim nisi a.', NULL, NULL, 3, '2024-11-28 14:06:56', '2024-11-15 07:20:05'),
(978, 'Chanel Schaden III', 'Ab quod reiciendis.', NULL, 3, 'Sedang', 'Ditolak', 'Aut maiores eaque commodi veritatis fugit quia. Ut non molestiae ipsum fugiat rerum est esse. Molestiae nihil mollitia aut aut voluptatem et ea est. Aut placeat quia facilis error eos inventore est.', NULL, NULL, 3, '2024-10-30 13:08:35', '2024-11-15 07:20:05'),
(979, 'Alfred Lebsack', 'Est excepturi et.', NULL, 1, 'Ringan', 'Ditolak', 'Voluptas sit consectetur id rem ut natus labore atque. Pariatur officia qui eos et ex saepe.', 'Eos ipsum aut error nesciunt.', 'Voluptas sed sequi consequuntur rerum.', 2, '2024-11-04 09:26:17', '2024-11-15 07:20:05'),
(980, 'Cali Mitchell', 'Ex tenetur ut dolor et.', NULL, 1, 'Sedang', 'Selesai', 'Voluptates earum esse cupiditate officia quisquam sint. Omnis nesciunt eos labore vel ratione necessitatibus sed laborum. Ullam itaque voluptatum id quis.', 'Minus facilis iure omnis quo eius nemo.', 'Porro in laborum placeat.', 1, '2024-10-08 02:39:06', '2024-11-15 07:20:05'),
(981, 'Max Hermann', 'Nostrum dolores maiores.', NULL, 3, 'Berat', 'Ditinjau', 'Et aspernatur et laudantium perferendis. Odio facilis animi facilis omnis ipsa voluptatem. Dolorem qui labore ullam. Sapiente nulla eius praesentium.', NULL, 'Nihil numquam accusantium.', 2, '2024-08-13 09:56:40', '2024-11-15 07:20:05'),
(982, 'Tamara Christiansen', 'Et qui id labore.', NULL, 4, 'Sedang', 'Ditolak', 'Possimus nesciunt repudiandae et itaque et. Repellat totam recusandae modi quidem nulla repudiandae. Quas non odio eligendi delectus sunt et debitis. Beatae sed voluptas provident dolores aut.', 'Ratione qui eum et.', NULL, 3, '2024-11-20 12:12:39', '2024-11-15 07:20:05'),
(983, 'Mr. Anthony Denesik', 'Ut nihil perferendis est impedit.', NULL, 1, 'Berat', 'Ditolak', 'Sit dolor est dicta error dolorum voluptas. Enim et voluptas quis id omnis voluptate officia.', NULL, 'Iusto ea repudiandae voluptatem.', 2, '2024-08-02 16:33:33', '2024-11-15 07:20:05'),
(984, 'Dr. Brown Konopelski', 'Porro velit maxime enim.', NULL, 1, 'Ringan', 'Dikerjakan', 'Laudantium ipsa sunt et qui omnis molestiae ea. Sit molestiae veniam repellendus. Sit et ducimus quod quaerat nihil odit omnis.', NULL, NULL, 2, '2024-09-01 06:35:00', '2024-11-15 07:20:05'),
(985, 'Rhianna Weimann', 'Velit aut suscipit.', NULL, 4, 'Sedang', 'Butuh Ditinjau', 'Consequatur vel accusantium deserunt dicta nam quo. Assumenda omnis labore nihil quos dolorem dolore amet vel. Recusandae in exercitationem omnis officiis assumenda nemo voluptatem.', NULL, NULL, 3, '2024-11-09 14:40:15', '2024-11-15 07:20:05'),
(986, 'Mandy Altenwerth', 'Nostrum impedit dolores.', NULL, 2, 'Ringan', 'Dibuka', 'Deleniti quas omnis nulla consequuntur alias. At vitae similique voluptas. Exercitationem eveniet nam nam.', 'Aut doloribus aspernatur est architecto dignissimos voluptatem.', NULL, 2, '2024-11-12 10:53:14', '2024-11-15 07:20:05'),
(987, 'Dr. Johathan Dooley', 'Labore inventore voluptatem voluptas.', NULL, 2, 'Sedang', 'Dikerjakan', 'Aut consequatur harum sint quam aut quisquam. Officia ut eos officia voluptatem. Atque dolorem perspiciatis quia magni. Repudiandae consequatur sunt quae iusto ad.', 'Sit enim magni consequatur natus dolor earum.', NULL, 3, '2024-11-26 12:42:53', '2024-11-15 07:20:05'),
(988, 'Prof. Elenora Kemmer', 'Consectetur sed quibusdam.', NULL, 4, 'Sedang', 'Dibuka', 'Neque ut sed beatae rem doloremque. Id voluptas mollitia aspernatur a qui dolores occaecati. A reiciendis tenetur sequi.', 'Nisi corporis odio dolor error.', 'Nisi accusantium voluptatem laborum voluptatum.', 1, '2024-08-05 07:32:10', '2024-11-15 07:20:05'),
(989, 'Prof. Garnet Kirlin', 'Natus tempore corrupti.', NULL, 1, 'Sedang', 'Dibuka', 'Non minus eos quia eius sequi sint optio. Sed iusto sit et eos. Aperiam et asperiores ratione voluptates. Quos porro consequuntur qui cumque voluptas ut.', NULL, 'Sit architecto odio quibusdam eos facilis.', 2, '2024-08-09 12:58:41', '2024-11-15 07:20:05'),
(990, 'Celestine Bradtke I', 'Debitis magnam asperiores.', NULL, 2, 'Ringan', 'Ditinjau', 'Enim consequatur vitae ipsa praesentium et in totam. Asperiores magni adipisci eaque atque. Natus non voluptatem voluptatum soluta et impedit. Voluptatem ratione alias ipsam voluptatem illum similique laborum quos.', NULL, 'Numquam nemo eius rerum.', 3, '2024-08-26 00:25:48', '2024-11-15 07:20:05'),
(991, 'Prof. Eloise Batz Sr.', 'Dolor et vero.', NULL, 4, 'Sedang', 'Dibuka', 'Ipsa dolor numquam natus cupiditate laudantium. Eos consequuntur deleniti sed. Et soluta necessitatibus illum similique corrupti quod.', 'Molestias et voluptatem corrupti amet officiis.', 'Iure architecto est velit nulla.', 1, '2024-11-12 07:20:08', '2024-11-15 07:20:05'),
(992, 'Stephon Schumm', 'Provident mollitia velit provident.', NULL, 3, 'Ringan', 'Dikerjakan', 'Vel debitis laborum nisi ratione officiis eveniet quibusdam non. Ullam tempore pariatur praesentium magnam odit est assumenda porro. Itaque quos iure dignissimos dolorem. Vero nostrum aliquid beatae maiores libero. Fugit vel repellat consequuntur.', 'Consequatur sit ab quibusdam.', NULL, 2, '2024-10-29 00:49:42', '2024-11-15 07:20:05'),
(993, 'Prof. Lew Nicolas V', 'Rerum molestiae aut vel.', NULL, 3, 'Sedang', 'Dikerjakan', 'Perspiciatis amet ipsum impedit autem. Omnis illo tempora dolore saepe qui. Libero in quia hic ex aliquam consequatur nihil. Cumque assumenda minima praesentium quam ab. Velit sequi quia et soluta laboriosam.', 'Quia nam quidem iure et.', 'Quis deleniti eum et recusandae.', 3, '2024-11-05 15:45:16', '2024-11-15 07:20:05'),
(994, 'Carole Breitenberg', 'Autem fugit laboriosam ut.', NULL, 1, 'Sedang', 'Ditinjau', 'Voluptates nobis suscipit voluptas aut dolorem doloremque. Molestiae praesentium amet repellendus ex repellendus dolor. Quo officiis et aut occaecati omnis et voluptas. Explicabo quia nisi non at. Beatae alias quasi dolores voluptatem repellendus.', NULL, 'Qui incidunt doloremque.', 3, '2024-10-16 04:44:08', '2024-11-15 07:20:05'),
(995, 'Verla Zemlak', 'Porro numquam.', NULL, 3, 'Sedang', 'Dikerjakan', 'Neque sit blanditiis veritatis rerum ratione. Vitae eligendi modi sed qui omnis exercitationem deserunt. In et aut aut consequatur ea laudantium rem. Esse et debitis consequatur autem nemo autem.', 'Veniam repellendus error illo voluptatem asperiores totam.', 'Temporibus est ipsam voluptas incidunt eveniet.', 1, '2024-11-06 16:15:27', '2024-11-15 07:20:05'),
(996, 'Raheem Frami', 'Ut rem sunt.', NULL, 3, 'Berat', 'Selesai', 'Neque et et minus nulla est ullam perspiciatis. Modi et sed consequatur rerum. Quae id nobis labore dolores earum. Eos facere et voluptas dolor magni quia qui. Et quia sunt quos deserunt ea.', 'Et id aut aperiam atque.', 'Omnis debitis id error quia.', 1, '2024-09-26 13:11:55', '2024-11-15 07:20:05'),
(997, 'Dr. Jasmin Zulauf DDS', 'Nihil in a.', NULL, 3, 'Sedang', 'Ditolak', 'Reiciendis aut id dolorem rerum omnis et ea. Rerum dolores eius voluptas pariatur ipsum ipsum. Officia porro iure et molestiae autem vero voluptate.', 'Iure possimus dolorem provident.', NULL, 2, '2024-10-10 14:12:21', '2024-11-15 07:20:05'),
(998, 'Raven Emard', 'Sit suscipit non accusantium.', NULL, 1, 'Sedang', 'Selesai', 'Vitae voluptates praesentium dolores voluptatem laudantium aliquid. Et officia ut fugiat officia exercitationem. Unde neque aut sed facilis quia perferendis quia. Adipisci omnis suscipit est est ipsa incidunt eum.', 'Quod et est repellat aut est ad.', 'Et et qui et.', 1, '2024-11-18 07:09:35', '2024-11-15 07:20:05'),
(999, 'Miss Macie McLaughlin MD', 'Distinctio possimus voluptas nulla.', NULL, 1, 'Sedang', 'Selesai', 'Perferendis consectetur voluptatum vitae asperiores. Rerum sit voluptas voluptas ea totam enim officiis. Esse pariatur dolorem cum ipsa.', 'Perspiciatis laborum quaerat et natus temporibus.', 'Mollitia atque amet vero.', 3, '2024-09-20 12:35:06', '2024-11-15 07:20:05'),
(1000, 'Talia Smitham', 'Provident qui voluptas suscipit.', NULL, 4, 'Ringan', 'Selesai', 'Accusantium provident eius dolor fugit minima adipisci repellat. Ad eligendi sint quia fugit impedit. Commodi ipsa unde quia reiciendis ea quasi.', NULL, NULL, 1, '2024-08-23 06:11:34', '2024-11-15 07:20:05'),
(1001, 'Mohammad Kulas', 'Commodi ut at.', NULL, 4, 'Berat', 'Selesai', 'Autem omnis eaque reprehenderit quisquam quaerat nisi dicta. Exercitationem id cupiditate ut deserunt nobis nemo. Magnam eveniet cumque itaque suscipit a.', NULL, NULL, 3, '2024-08-08 08:55:01', '2024-11-15 07:20:05'),
(1002, 'Clark Murray PhD', 'Velit facilis laborum et iusto.', NULL, 4, 'Ringan', 'Dibuka', 'Deleniti mollitia iure velit impedit laudantium aut in quisquam. Minus tempora velit aliquam neque neque quia non. Nihil doloremque doloribus laborum qui quod exercitationem tenetur.', 'Optio facilis error perspiciatis eligendi.', NULL, 2, '2024-08-07 23:12:41', '2024-11-15 07:20:05'),
(1003, 'Lorna Harvey', 'Perspiciatis in et beatae.', NULL, 4, 'Sedang', 'Ditinjau', 'Est delectus rerum deserunt repellat. Aperiam quo voluptates aliquam consequatur magnam ad et eos. Error sit ab est tenetur est.', NULL, 'Earum ut ab hic asperiores et.', 2, '2024-11-05 16:29:50', '2024-11-15 07:20:05'),
(1004, 'Delmer Hermann', 'Ea laborum voluptatibus.', NULL, 2, 'Ringan', 'Dikerjakan', 'Quod consequatur amet fuga. Quis omnis exercitationem non odio quam. Voluptatibus iusto nostrum aliquid eum sequi. Est laboriosam ad molestiae sed voluptates consequatur.', NULL, 'Soluta enim eos in.', 3, '2024-08-09 16:55:40', '2024-11-15 07:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$SjLXPXE/R8ykMrPB90aWDulTp2hy1w5l7wCMb34ExMHUE7boZyQv2', NULL, '2024-10-24 03:16:22', '2024-10-24 03:16:22'),
(2, 'Maman', 'mamansudrajatreal@gmail.com', NULL, '$2y$12$jFwyWuvKxazd/5tGFO.19uIHSS3NRau88AoCNrmFTdAi9UzR.jG5e', NULL, '2024-10-24 03:19:43', '2024-10-24 03:19:43'),
(3, 'Idun', 'idun@gmail.com', NULL, '$2y$12$mL8QWHAvfDVpuDoLqeFpcOqSTtg4KJa.e8BfjKT1vbBGJi.UGTsKi', NULL, '2024-10-24 03:20:08', '2024-10-24 03:20:08'),
(4, 'Harja', 'harjasantaiaja@gmail.com', NULL, '$2y$12$PZFR2fAKP7U0wCPHGEsJgOwqC6nHkz0ld.3kmj/X9PG2mJOWcU0Ma', NULL, '2024-10-24 03:20:35', '2024-10-24 07:41:52'),
(5, 'Gugun', 'gugunmachinegun@gmail.com', NULL, '$2y$12$cfouQIQZBuR6CHnZhDopMe2vXoQO7deDZTLdpgSRIAwTB5HFP0wjK', NULL, '2024-10-31 07:24:05', '2024-10-31 07:24:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `catatans`
--
ALTER TABLE `catatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tikets`
--
ALTER TABLE `tikets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tikets_kategori_id_foreign` (`kategori_id`),
  ADD KEY `tikets_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `catatans`
--
ALTER TABLE `catatans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tikets`
--
ALTER TABLE `tikets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tikets`
--
ALTER TABLE `tikets`
  ADD CONSTRAINT `tikets_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tikets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
