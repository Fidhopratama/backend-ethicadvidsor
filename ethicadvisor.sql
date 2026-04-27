-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 27, 2026 at 08:30 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ethicadvisor`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_04_06_103848_create_uploads_table', 1),
(5, '2026_04_06_103928_create_personal_access_tokens_table', 1);

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
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', 'b44aca0748b7d8860aad45c1e8bf1e3bbe678f7f0577136882b2290bbfe966f4', '[\"*\"]', '2026-04-08 05:14:35', NULL, '2026-04-08 01:19:36', '2026-04-08 05:14:35'),
(2, 'App\\Models\\User', 1, 'token', '99db19bcc185bd092e79ceb6d5f9422974e9dc9c703836a33f0c2ade7b72e2f3', '[\"*\"]', '2026-04-09 10:17:59', NULL, '2026-04-09 10:17:45', '2026-04-09 10:17:59'),
(3, 'App\\Models\\User', 1, 'token', '44d1368a9a85181cb904b8774dfda70a90bb6f5965d0febd7a6796918a58ed60', '[\"*\"]', '2026-04-10 02:06:21', NULL, '2026-04-09 10:18:21', '2026-04-10 02:06:21'),
(4, 'App\\Models\\User', 2, 'token', '1bc1169a162dd0c93da5978c4c7e9b5c143a57e55298552394eb2e05ee181aba', '[\"*\"]', '2026-04-22 15:30:12', NULL, '2026-04-21 23:45:58', '2026-04-22 15:30:12'),
(5, 'App\\Models\\User', 2, 'token', '996fd0b8c8f4b14c36d4715b32a6e08562307ed5c450c6f744d2142cd8e88b5e', '[\"*\"]', '2026-04-23 00:24:22', NULL, '2026-04-23 00:24:21', '2026-04-23 00:24:22'),
(6, 'App\\Models\\User', 2, 'token', 'bd997060b66fa2ef8707e3c9a1dd268369cefee44a434be548b0e6a94692f615', '[\"*\"]', '2026-04-24 07:34:40', NULL, '2026-04-23 00:24:22', '2026-04-24 07:34:40'),
(7, 'App\\Models\\User', 3, 'token', '27ee11508e03e6b29c6a8b07a066ad52ef3eec26b52d8a2ca9adfd40ff869d01', '[\"*\"]', NULL, NULL, '2026-04-24 07:50:25', '2026-04-24 07:50:25'),
(8, 'App\\Models\\User', 3, 'token', 'fafb3133dad15b762f0b300058bc8cc9061ec89e9ca8ea266e891a5025d0df6a', '[\"*\"]', NULL, NULL, '2026-04-24 08:01:17', '2026-04-24 08:01:17'),
(9, 'App\\Models\\User', 1, 'token', '056c36d3a7f42f45b28126f800197ddb30c46473df2c6189bcce6f6cac03bd6e', '[\"*\"]', NULL, NULL, '2026-04-24 08:01:57', '2026-04-24 08:01:57'),
(10, 'App\\Models\\User', 1, 'token', '949833506fac5c4f0cc3c7f768c26c1893da9a1dd80ff17843a9f7a04eb3d58c', '[\"*\"]', '2026-04-24 08:54:46', NULL, '2026-04-24 08:06:37', '2026-04-24 08:54:46'),
(11, 'App\\Models\\User', 2, 'token', 'a1cf2921a69d03261d570c026a64a143ac5763bba69338173b1ee0f28d0fd3f5', '[\"*\"]', '2026-04-25 04:09:20', NULL, '2026-04-24 08:55:49', '2026-04-25 04:09:20'),
(12, 'App\\Models\\User', 1, 'token', '0243f94416779c7374bfe923a520039020e08cba30c91aea33623e33cab2b67b', '[\"*\"]', '2026-04-25 04:11:49', NULL, '2026-04-25 04:11:34', '2026-04-25 04:11:49'),
(13, 'App\\Models\\User', 1, 'token', 'e661c576de8dd6ef3de97b39652795a3b73a5f3e72cd6082ff262e08307d3866', '[\"*\"]', '2026-04-25 04:25:32', NULL, '2026-04-25 04:15:34', '2026-04-25 04:25:32'),
(14, 'App\\Models\\User', 3, 'token', '75e4ae27ed69fbdea9baf892da7a36ad4001475152af16d31eab3f9e988b6562', '[\"*\"]', '2026-04-25 04:36:37', NULL, '2026-04-25 04:28:59', '2026-04-25 04:36:37'),
(15, 'App\\Models\\User', 3, 'token', '142f1473172e85cce4eaa78af32b57acde6135d8893262ebd521186b87d9678a', '[\"*\"]', '2026-04-27 01:23:36', NULL, '2026-04-27 01:21:50', '2026-04-27 01:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8CEHRLUKYWddgq0P6vFeGRNYEj0j9h62FreAsHIq', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiI4dkVhdGR6NlZ4YUxOMG1MNkdPZEwwck92YkFDNGdUS0pqUVl3VnBHIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1777040396),
('cabZeK2ronmuz27ldhFjDxPvSj1TjkX5mCpTImLS', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJic3ZobGRGM1Rac1E4SERaWGdRZ0YzNjdLenU2QnV0SnIwNDJCQ1VPIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1776072525),
('hPK9ygoEsP2xqQEAQ2iJ1ftoj6t3DYUP4MIlJZgF', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJNOHpTWFNmdXg4a3RCUnJSYmp1NU8yUllHdjJOakVHWm9tUFg2dm02IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1775661171),
('nXnHqvbutYB4nUKMVpyEc0SPgTV5RCuri2SvuJth', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJHR3o3UHd3UEcxM3JYM1hkOFd1ODB4WjRUMDlNTU9OSE1DT2VKR0Z4IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1777115798);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('finance','esg') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `user_id`, `file_name`, `file_path`, `type`, `created_at`, `updated_at`) VALUES
(1, 2, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/4zT9a8nkyGGZdBPD1btQwCmlokRwthfczwap6lQ2.pdf', 'finance', '2026-04-24 07:34:40', '2026-04-24 07:34:40'),
(2, 1, 'test.csv', 'uploads/zPA0KPMB1f06UpW7VtlMWHgjd6aNBNRP1kohdn9x.csv', 'finance', '2026-04-24 08:16:43', '2026-04-24 08:16:43'),
(3, 1, 'test.csv', 'uploads/q28u2mb2dFoR23JODDw8BnEOKaOtG6ZkdWdHbmjy.csv', 'finance', '2026-04-24 08:26:16', '2026-04-24 08:26:16'),
(4, 1, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/tCa6kucTmyC1VFiDn1AU8658fjnFBRetNIMcSzoo.pdf', 'finance', '2026-04-24 08:26:47', '2026-04-24 08:26:47'),
(5, 1, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/ykRLotwfEt3226eBvjQ132IRgP3jRK5Wk63soWYS.pdf', 'finance', '2026-04-24 08:28:52', '2026-04-24 08:28:52'),
(6, 1, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/Nou71veviZVtrhAnyUv1q1te7EDrkToSm26UhYTQ.pdf', 'finance', '2026-04-24 08:34:38', '2026-04-24 08:34:38'),
(7, 1, 'test.csv', 'uploads/GY2TBLVNNjdTTsWPZHqqObLenyFOoRzNzDcaHLoS.csv', 'finance', '2026-04-24 08:34:46', '2026-04-24 08:34:46'),
(8, 1, 'EthicAdvisor-Report.pdf', 'uploads/WRTV017r6NdWSZPjdq7M9wYoUVwL9aQI1nn0NtrJ.pdf', 'finance', '2026-04-24 08:35:06', '2026-04-24 08:35:06'),
(9, 1, 'EthicAdvisor-Report.pdf', 'uploads/nXSlGD4g1I7MRL7im78m9tIDc3RcEQR6rhZwKVsX.pdf', 'finance', '2026-04-24 08:35:13', '2026-04-24 08:35:13'),
(10, 1, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/XawXAMrtodVTFG5GZnj5RLIZLwYOUjrzuqnrk2I1.pdf', 'finance', '2026-04-24 08:35:17', '2026-04-24 08:35:17'),
(11, 1, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/ByhSe0Uu4Fz1cM0hGlOFwQp8dYtnKEz1Ap0EHLb1.pdf', 'finance', '2026-04-24 08:39:49', '2026-04-24 08:39:49'),
(12, 1, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/1SFfVRWX3j6a1kCks01GKw7LRSA6mtPOs0PiAImQ.pdf', 'finance', '2026-04-24 08:42:58', '2026-04-24 08:42:58'),
(13, 1, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/4PTVhemBJAngV9C9qzrvYxDasyDFRk3zHXwmScHh.pdf', 'finance', '2026-04-24 08:46:09', '2026-04-24 08:46:09'),
(14, 1, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/vghB4lDMX13pQbsJlLkpk2kQuSQEyo9ONhkMf78K.pdf', 'finance', '2026-04-24 08:48:14', '2026-04-24 08:48:14'),
(15, 1, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/HT6b0xUCQLFKKGwrGlsED6seOJdSueHuPs7qCy6w.pdf', 'finance', '2026-04-24 08:51:14', '2026-04-24 08:51:14'),
(16, 1, '662d83fef9_9bbff36b3e.pdf', 'uploads/9ef0KA17afgfdFYHW7g9mWKzihkyqNzuO83hW3YC.pdf', 'esg', '2026-04-24 08:52:13', '2026-04-24 08:52:13'),
(17, 1, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/8lPSimxAXL3hmNYNw5wOJ2SedNczpL88Yj1hnl9y.pdf', 'finance', '2026-04-24 08:54:46', '2026-04-24 08:54:46'),
(18, 2, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/2ybobj6QBAn6w4NH0eREahyaxPppuNEWC7KfpX7B.pdf', 'finance', '2026-04-24 08:55:57', '2026-04-24 08:55:57'),
(19, 2, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/sqan3Y6t0vun1uF0rbSEDhNfLxKiPHC3eRC4KrDZ.pdf', 'finance', '2026-04-24 09:01:48', '2026-04-24 09:01:48'),
(20, 2, '662d83fef9_9bbff36b3e.pdf', 'uploads/Lrb3yvomhlFLqvxYtdLjBQ1mwTSBAH7ihYsNcRr8.pdf', 'esg', '2026-04-24 09:03:10', '2026-04-24 09:03:10'),
(21, 2, 'test.csv', 'uploads/dS7ulZxO3T1eWWzGkgXxvZYTDJRwWIaevddZ2DNw.csv', 'finance', '2026-04-24 09:08:58', '2026-04-24 09:08:58'),
(22, 2, '662d83fef9_9bbff36b3e.pdf', 'uploads/Kc25D4394LmNGI8udlbH8o5XnU59CcOdtunuT72g.pdf', 'esg', '2026-04-24 09:14:00', '2026-04-24 09:14:00'),
(23, 2, 'test.csv', 'uploads/eTWlQhIDRAlMkBCL5xAXG2tBCglVHzih0orHx6bG.csv', 'finance', '2026-04-24 09:14:50', '2026-04-24 09:14:50'),
(24, 2, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/Fnu32Ue9bmEwUsHHfcczfgRJhIQ05qvxbkzurOjY.pdf', 'finance', '2026-04-24 09:21:13', '2026-04-24 09:21:13'),
(25, 2, '662d83fef9_9bbff36b3e.pdf', 'uploads/f3BWC2OO8Ey3FVTJwRjzHbS0VttquBykx3icnMsC.pdf', 'esg', '2026-04-24 09:22:03', '2026-04-24 09:22:03'),
(26, 2, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/wIp2hhCpsYs3c2xwPDk1elmXM6dwVTThfh2XQrTD.pdf', 'finance', '2026-04-25 04:06:55', '2026-04-25 04:06:55'),
(27, 2, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/yhnJs4982JxCT96nkhWl0jFvEHTWD2sd17KGc00F.pdf', 'finance', '2026-04-25 04:07:51', '2026-04-25 04:07:51'),
(28, 2, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/spXPfm0wgB6tD2Sn523d62EMozkvUlLxDSfcPdjp.pdf', 'finance', '2026-04-25 04:08:21', '2026-04-25 04:08:21'),
(29, 2, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/zhoqvSw0d1Ge4JcSd17jj5cDhnYpRE8PUtrMnNlx.pdf', 'finance', '2026-04-25 04:09:21', '2026-04-25 04:09:21'),
(30, 1, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/5W3JwOh7diPrGrf4Vsup5DWZDV5L3M04gOUZWy3C.pdf', 'finance', '2026-04-25 04:11:49', '2026-04-25 04:11:49'),
(31, 1, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/SnWEC2zH6m22ywcfepkhw6YwcBU05IyVXXyuxAtW.pdf', 'finance', '2026-04-25 04:15:49', '2026-04-25 04:15:49'),
(32, 1, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/mWd9jt7KfVYYncuLSfWQYFMYOfwHxuKB3CDqAW0G.pdf', 'finance', '2026-04-25 04:16:43', '2026-04-25 04:16:43'),
(33, 1, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/iONtpdLIq4sVGhtAB2Mbc5NAvB4jdIljQlgNk8fB.pdf', 'finance', '2026-04-25 04:25:32', '2026-04-25 04:25:32'),
(34, 3, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/RCu5BRSYW5ezvnco4eE30StCtqZMd51zAUbcWEl9.pdf', 'finance', '2026-04-25 04:29:08', '2026-04-25 04:29:08'),
(35, 3, '662d83fef9_9bbff36b3e.pdf', 'uploads/VDVt0wAxTyiH0hukX582LOhmzTY3NLPd0hl8mkNW.pdf', 'esg', '2026-04-25 04:31:39', '2026-04-25 04:31:39'),
(36, 3, '662d83fef9_9bbff36b3e.pdf', 'uploads/iYObRlDzlP5zobi02dnwCY7uEJUDzXn9dBWVdqQ6.pdf', 'finance', '2026-04-25 04:32:18', '2026-04-25 04:32:18'),
(37, 3, '662d83fef9_9bbff36b3e.pdf', 'uploads/TVFTZjlo9IijTLYbc4DMC1UZc36rLR7WTJrZWYRn.pdf', 'esg', '2026-04-25 04:32:38', '2026-04-25 04:32:38'),
(38, 3, '662d83fef9_9bbff36b3e.pdf', 'uploads/Z9Dtq3p0EJik4VyMPunSoFXkqdMTGaHXJRQVdtK1.pdf', 'esg', '2026-04-25 04:33:16', '2026-04-25 04:33:16'),
(39, 3, 'UNVR%20Q4%202023_FINAL (1).pdf', 'uploads/sQOu1WF4Ly7jNZIWqFUZEoeCKfVS6x8VG95nY7Xz.pdf', 'finance', '2026-04-27 01:22:24', '2026-04-27 01:22:24'),
(40, 3, '662d83fef9_9bbff36b3e.pdf', 'uploads/3XSrMUB6Btp5lmrmvOYxABBZ1kIecg3Eu9eGw2lP.pdf', 'esg', '2026-04-27 01:23:13', '2026-04-27 01:23:13');

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
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nadine', 'nadine@gmail.com', NULL, '$2y$12$qDAQAzVMi.buSUaXMq4bXe5A64BLAPdc1lsVG2tkMs.y.SYiMbeNC', 'user', NULL, '2026-04-08 01:19:11', '2026-04-08 01:19:11'),
(2, 'fidho', 'fidho@gmail.com', NULL, '$2y$12$CV1ViW4xEF9jNQGBqLH9Rulmlbtb3ZkTVAaYkE3vB.bzPiHSaRlrC', 'user', NULL, '2026-04-21 23:45:47', '2026-04-21 23:45:47'),
(3, 'test', 'test@gmail.com', NULL, '$2y$12$WfODgXrV6vb4qvbVhBGB9.payGUfptkJr1BDyBLm78AprNuCSpSqW', 'user', NULL, '2026-04-24 07:50:16', '2026-04-24 07:50:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
