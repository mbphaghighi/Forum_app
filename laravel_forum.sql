-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 26, 2020 at 01:41 PM
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
-- Database: `laravel_forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `subject_id`, `subject_type`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 'App\\Models\\Thread', 'created_thread', '2020-04-28 02:40:13', '2020-04-28 02:40:13'),
(2, 1, 51, 'App\\Models\\Reply', 'created_reply', '2020-04-28 03:04:58', '2020-04-28 03:04:58'),
(3, 1, 52, 'App\\Models\\Reply', 'created_reply', '2020-04-28 03:07:51', '2020-04-28 03:07:51'),
(4, 1, 53, 'App\\Models\\Reply', 'created_reply', '2020-04-28 03:13:12', '2020-04-28 03:13:12'),
(5, 1, 54, 'App\\Models\\Reply', 'created_reply', '2020-04-28 03:14:03', '2020-04-28 03:14:03'),
(7, 2, 9, 'App\\Models\\Thread', 'created_thread', '2020-04-28 03:26:38', '2020-04-28 03:26:38'),
(8, 2, 10, 'App\\Models\\Thread', 'created_thread', '2020-04-28 03:27:37', '2020-04-28 03:27:37'),
(9, 2, 56, 'App\\Models\\Reply', 'created_reply', '2020-04-28 03:32:16', '2020-04-28 03:32:16'),
(10, 2, 11, 'App\\Models\\Thread', 'created_thread', '2020-04-28 03:33:02', '2020-04-28 03:33:02'),
(12, 3, 12, 'App\\Models\\Thread', 'created_thread', '2020-05-06 14:21:28', '2020-05-06 14:21:28'),
(13, 3, 1, 'App\\Models\\Favorite', 'created_favorite', '2020-05-06 14:24:18', '2020-05-06 14:24:18'),
(15, 3, 59, 'App\\Models\\Reply', 'created_reply', '2020-05-06 14:50:23', '2020-05-06 14:50:23'),
(42, 354, 74, 'App\\Models\\Reply', 'created_reply', '2020-05-21 23:24:04', '2020-05-21 23:24:04'),
(46, 354, 16, 'App\\Models\\Thread', 'created_thread', '2020-05-22 01:05:53', '2020-05-22 01:05:53'),
(47, 354, 16, 'App\\Models\\Thread', 'created_thread', '2020-05-22 01:05:53', '2020-05-22 01:05:53'),
(49, 354, 17, 'App\\Models\\Thread', 'created_thread', '2020-06-06 03:24:42', '2020-06-06 03:24:42'),
(50, 354, 17, 'App\\Models\\Thread', 'created_thread', '2020-06-06 03:24:42', '2020-06-06 03:24:42'),
(51, 354, 77, 'App\\Models\\Reply', 'created_reply', '2020-06-06 03:26:06', '2020-06-06 03:26:06'),
(55, 354, 12, 'App\\Models\\Favorite', 'created_favorite', '2020-06-06 04:12:05', '2020-06-06 04:12:05'),
(72, 354, 95, 'App\\Models\\Reply', 'created_reply', '2020-06-16 15:34:52', '2020-06-16 15:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 'PHP', '2020-04-28 01:08:19', '2020-04-28 01:08:19'),
(2, 'Laravel', 'Laravel', '2020-04-28 01:08:19', '2020-04-28 01:08:19'),
(3, 'Vue.js', 'Vue.js', '2020-04-28 01:08:19', '2020-04-28 01:08:19'),
(4, 'jQuery', 'jQuery', '2020-04-28 01:08:20', '2020-04-28 01:08:20'),
(5, 'SQL', 'SQL', '2020-04-28 01:08:20', '2020-04-28 01:08:20'),
(6, 'Drupal', 'Drupal', '2020-04-28 01:08:20', '2020-04-28 01:08:20'),
(7, 'Javascript', 'Javascript', '2020-04-28 01:08:20', '2020-04-28 01:08:20'),
(8, 'Ajax', 'Ajax', '2020-04-28 01:08:20', '2020-04-28 01:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL,
  `favorite_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `favorite_id`, `favorite_type`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'App\\Models\\Reply', '2020-05-06 14:24:18', '2020-05-06 14:24:18'),
(2, 1, 4, 'App\\Models\\Reply', '2020-05-06 16:19:50', '2020-05-06 16:19:50'),
(3, 1, 3, 'App\\Models\\Reply', '2020-05-06 16:19:55', '2020-05-06 16:19:55'),
(6, 1, 6, 'App\\Models\\Reply', '2020-05-06 19:38:02', '2020-05-06 19:38:02'),
(7, 1, 5, 'App\\Models\\Reply', '2020-05-08 16:30:29', '2020-05-08 16:30:29'),
(9, 1, 15, 'App\\Models\\Reply', '2020-05-08 16:33:35', '2020-05-08 16:33:35'),
(12, 354, 9, 'App\\Models\\Reply', '2020-06-06 04:12:05', '2020-06-06 04:12:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_29_072148_create_channels_table', 1),
(4, '2018_06_30_074915_create_threads_table', 1),
(5, '2018_06_30_083405_create_replies_table', 1),
(6, '2018_07_08_075714_favorites_table', 1),
(7, '2018_07_26_133409_create_activities_table', 1),
(8, '2018_08_14_120711_create_thread_subscriptions_table', 1),
(9, '2018_08_14_131553_create_notifications_table', 1),
(10, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(11, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(12, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(13, '2016_06_01_000004_create_oauth_clients_table', 2),
(14, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1b9484e9-dd39-4f90-b717-92116fc461a9', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 1, '{\"message\":\"mehdii replied to et\",\"link\":\"\\/threads\\/consequuntur\\/5#reply-55\"}', '2020-05-06 19:55:46', '2020-04-28 03:23:22', '2020-05-06 19:55:46'),
('2413ab2f-3470-4223-9de9-4744e365438e', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 1, '{\"message\":\"mehdii replied to et\",\"link\":\"\\/threads\\/consequuntur\\/5#reply-54\"}', '2020-05-06 22:52:30', '2020-04-28 03:14:03', '2020-05-06 22:52:30'),
('34e3c5af-95f7-4c94-8f03-2e9ee1cf5a52', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 354, '{\"message\":\"Mehdi replied to at\",\"link\":\"\\/threads\\/jQuery\\/7#reply-80\"}', '2020-06-06 04:12:32', '2020-06-06 04:11:39', '2020-06-06 04:12:32'),
('66725e16-7ced-45e7-9919-bf9020beb64f', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 354, '{\"message\":\"Mehdi replied to at\",\"link\":\"\\/threads\\/jQuery\\/7#reply-78\"}', '2020-06-06 04:11:11', '2020-06-06 03:26:49', '2020-06-06 04:11:11'),
('7227e010-ff3e-48ed-8f12-35e01f0e851f', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 354, '{\"message\":\"Mehdi replied to h\",\"link\":\"\\/threads\\/jQuery\\/13#reply-94\"}', '2020-06-06 16:17:17', '2020-06-06 16:17:11', '2020-06-06 16:17:17'),
('7d41b46c-9095-42fa-a07d-4cc57cd8b8e7', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 354, '{\"message\":\"Mehdi replied to at\",\"link\":\"\\/threads\\/jQuery\\/7#reply-75\"}', '2020-05-21 23:25:58', '2020-05-21 23:25:51', '2020-05-21 23:25:58'),
('802af40c-b175-477d-ad05-bc8fb8c9f46b', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 1, '{\"message\":\"mehdii replied to maxime\",\"link\":\"\\/threads\\/sed\\/6#reply-57\"}', '2020-05-06 14:23:46', '2020-04-28 04:05:44', '2020-05-06 14:23:46'),
('8cc7fc31-bb68-4754-89fd-ace7c9022d9d', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 354, '{\"message\":\"Mehdi replied to at\",\"link\":\"\\/threads\\/jQuery\\/7#reply-95\"}', '2020-06-24 16:44:16', '2020-06-16 15:34:52', '2020-06-24 16:44:16'),
('96259d5e-ad99-4d49-91fb-88f25df1262a', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 1, '{\"message\":\"mehdii replied to why this is\",\"link\":\"\\/threads\\/vitae\\/8#reply-51\"}', NULL, '2020-04-28 03:04:58', '2020-04-28 03:04:58'),
('9a441ef8-8d6d-4627-b26c-90fcb76bc716', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 354, '{\"message\":\"Mehdi replied to maxime\",\"link\":\"\\/threads\\/Vue.js\\/6#reply-76\"}', '2020-06-06 04:11:14', '2020-05-22 01:11:16', '2020-06-06 04:11:14'),
('c3715e6b-4c0e-4c37-9e48-73b01974f024', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 1, '{\"message\":\"mehdii replied to aliquid\",\"link\":\"\\/threads\\/quia\\/2#reply-59\"}', '2020-05-06 19:55:30', '2020-05-06 14:50:23', '2020-05-06 19:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0de44edf810ea4971e8669c579022c829f6f25db92843c7d1b81a013ceab7f948c13b4d7801f6fc9', 353, 1, 'create', '[]', 0, '2020-05-08 03:34:27', '2020-05-08 03:34:27', '2021-05-08 13:04:27'),
('24ff8d023fb725801a667080dd34d7f04e21547b773596ea8c68ad654984308ca7938970cf5aa66d', 353, 1, 'create', '[]', 0, '2020-05-08 02:55:32', '2020-05-08 02:55:32', '2021-05-08 12:25:32'),
('5ecba10f3e5603c016e9423f1bbc3b6330febe3489f30db1e46075825c2ca696b41b840afe794439', 353, 1, 'create', '[]', 0, '2020-05-08 03:57:37', '2020-05-08 03:57:37', '2021-05-08 13:27:37'),
('b24ec94129ed000acf444ce2f369909794b7bc9fa8f076e1f64f5d4344a2eeb96b640d2b1e943a13', 353, 1, 'create', '[]', 0, '2020-05-08 02:21:33', '2020-05-08 02:21:33', '2021-05-08 11:51:33'),
('e24d191d643140acb88a5a5c032b6b3e2d2392b9a85ba36ae0e1bac1a4ea8a02be3f1a5a2a1e3357', 353, 1, 'create', '[]', 0, '2020-05-08 02:54:04', '2020-05-08 02:54:04', '2021-05-08 12:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Forum Personal Access Client', 'KyfipDBmB7vqnMUj5KTU1ffe7sR7cwvKkzlIOiIx', NULL, 'http://localhost', 1, 0, 0, '2020-05-08 00:36:46', '2020-05-08 00:36:46'),
(2, NULL, 'Forum Password Grant Client', '83T3dPkdy7IFHb1dq9UuVRwCx0x54bJTo48Xuw6W', 'users', 'http://localhost', 0, 1, 0, '2020-05-08 00:36:46', '2020-05-08 00:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-05-08 00:36:46', '2020-05-08 00:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `thread_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'This will now detect any changes to the objects in the item array and additions to the array itself (when used with Vue.set).', '2020-04-28 02:23:23', '2020-04-28 02:23:23'),
(2, 7, 2, ' The whereColumn method can be passed an array of multiple conditions. These conditions will be joined using the and operator.', '2020-04-28 02:23:23', '2020-04-28 02:23:23'),
(3, 1, 2, 'Be sure to apply any other filters to sub queries, otherwise the or might gather all records.', '2020-04-28 02:23:23', '2020-04-28 02:23:23'),
(4, 2, 3, 'Without a real example, it is difficult to make a recommendation. However, I\'ve never needed to use that many WHERE clauses in a query and it may indicate a problem with the structure of your data.', '2020-04-28 02:23:24', '2020-04-28 02:23:24'),
(5, 3, 3, 'The error message indicates that a MySQL connection via socket is tried (which is not supported).', '2020-04-28 02:23:24', '2020-04-28 02:23:24'),
(6, 7, 3, 'I had the exact same problem. None of the above solutions worked for me. I solved the problem by changing the \"host\" in the /app/config/database.php file from \"localhost\" to \"127.0.0.1\".', '2020-04-28 02:23:24', '2020-04-28 02:23:24'),
(7, 1, 3, 'I got the same problem and I\'m running Mac OS X 10.10 Yosemite.', '2020-04-28 02:23:24', '2020-04-28 02:23:24'),
(8, 6, 4, 'The reason I found is just because PHP and MySQL can\'t get connected themselves. ', '2020-04-28 02:23:24', '2020-04-28 02:23:24'),
(9, 7, 4, 'If you are using Laravel Homestead, make sure you\'re calling the commands on the server.', '2020-04-28 02:23:24', '2020-04-28 02:23:24'),
(10, 3, 4, 'Find the path to your unix_socket, to do that just run netstat -ln | grep mysql', '2020-04-28 02:23:24', '2020-04-28 02:23:24'),
(11, 3, 4, 'I\'m running on MAMP Pro and had this similar problem when trying to migrate (create db tables). Tried a few of these mentioned suggestions as well but didn\'t do it for me. ', '2020-04-28 02:23:24', '2020-04-28 02:23:24'),
(12, 1, 3, 'Check your port carefully . In my case it was 8889 and i am using 8888. change \"DB_HOST\" from \"localhost\" to \"127.0.0.1\" and vice versa.', '2020-04-28 02:23:24', '2020-04-28 02:23:24'),
(13, 2, 1, 'I had this problems when I was running my application using docker containers. ', '2020-04-28 02:23:24', '2020-04-28 02:23:24'),
(14, 4, 1, 'As of Laravel 5 the database username and password goes in the .env file that exists in the project directory.', '2020-04-28 02:23:24', '2020-04-28 02:23:24'),
(15, 1, 2, 'I ran into this problem when running PHPUnit in Elixir/Gulp, and Homestead as my Vagrant enviroment.', '2020-04-28 02:23:24', '2020-04-28 02:23:24'),
(74, 13, 354, 'This happened to me because MySQL wasn\'t running. MySQL was failing to start because I had a missing /usr/local/etc/my.cnf.d/ directory.', '2020-05-21 23:24:04', '2020-05-21 23:24:04'),
(77, 7, 354, 'Because you forgot to put the setting parameters in config file!', '2020-06-06 03:26:06', '2020-06-06 03:26:06'),
(95, 7, 354, 'I had similar problems accessing my Drupal website. I fixed it by opening the command line, and restarting my MySQL server or service:\r\n\r\nservice mysqld restart', '2020-06-16 15:34:52', '2020-06-16 15:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `replies_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`id`, `user_id`, `channel_id`, `title`, `body`, `replies_count`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'How to use Mutation in VueJS?', 'So i have a Vuex Store setup which returns me headers and desserts. Inside my desserts i have a property setup named display which is initially false.', 4, '2020-04-28 01:08:32', '2020-05-07 02:47:35'),
(2, 3, 4, 'Why does this jQuery click handler not work in Codesandbox?', 'This very simple jQuery click handler code works here on StackOverflow, but when I paste it here to Codesandbox, it only works for button and span but not a anchor tags', 2, '2020-04-28 01:37:19', '2020-05-06 14:50:23'),
(3, 1, 2, 'How to send multiple domain email in laravel', 'I using laravel 7 and tried to send email using Mailtrap and it\'s successfully but actually i want to send gmail, yahoo and any other mail', 4, '2020-04-28 01:45:34', '2020-04-28 02:23:28'),
(4, 2, 3, 'Issue displaying menu vue/vuetify on firefox', 'I\'ve working on the header menu and it displays the content perfecty in every browser but not in firefox.', 1, '2020-04-28 01:47:39', '2020-05-07 02:50:19'),
(5, 3, 2, 'Laravel remove pending migration execution', 'I have two Laravel apps that use the same database. I moved migrations from app 1 to app 2. Now I want to remove the pending migrations from app 2 ', 0, '2020-04-28 01:51:22', '2020-05-06 14:23:20'),
(6, 2, 3, 'How to proccess nested arrays of objects in VueJs', 'Anyone have some info how to proccess array like this in this situation im need render all information in response', 1, '2020-04-28 02:11:12', '2020-06-06 16:08:58'),
(7, 1, 4, 'How to download CSV file from PHP script via AJAX?', 'So I\'m wanting to download a CSV file that is created by my PHP file upon the click of a button.', 5, '2020-04-28 02:12:38', '2020-06-16 15:34:52'),
(13, 1, 4, 'How to check for empty div which has not text in jQuery?', 'I have an html code as shown below in which big-block div is empty. What I want to achieve is if big-block div is empty then apply css display:none on hello-world div.', 1, '2020-05-06 17:56:17', '2020-06-06 16:17:23'),
(16, 354, 2, 'Laravel pagination', 'Why my laravel pagination does not work?', 0, '2020-05-22 01:05:53', '2020-05-22 01:05:53'),
(17, 354, 3, 'Why my page does not open?', 'I have a question for one of my pages in my app.', 0, '2020-06-06 03:24:42', '2020-06-06 03:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `thread_subscriptions`
--

CREATE TABLE `thread_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thread_subscriptions`
--

INSERT INTO `thread_subscriptions` (`id`, `user_id`, `thread_id`, `created_at`, `updated_at`) VALUES
(6, 1, 2, '2020-05-06 14:49:55', '2020-05-06 14:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(6) NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Babi', 'helene68@example.org', NULL, '$2y$10$hSsyWNpPLxI84bdec8eshOdtohyLbirnRLPfpuXonUNqTirzJ6ieS', NULL, '2020-04-28 01:08:16', '2020-04-28 01:08:16'),
(2, 'Mina', 'hill.lennie@example.net', NULL, '$2y$10$pv5GsX1spjOrf5TZr6qLIutLAEDd6FL7.nUWXknlp1xMhafIuRajO', NULL, '2020-04-28 01:08:16', '2020-04-28 01:08:16'),
(3, 'Mani', 'anabelle10@example.org', NULL, '$2y$10$Dju8CUrI5IuRXcnrFWrrYe8CnEc.94wqj/4c1cObWNpNx5QbgSh4m', NULL, '2020-04-28 01:08:17', '2020-04-28 01:08:17'),
(4, 'Ali', 'tania.labadie@example.com', NULL, '$2y$10$.8DD/Mf0/5yrPdlQegJhf.cyovhfgADZDoagDEyHKiZFrJf2mAoES', NULL, '2020-04-28 01:08:17', '2020-04-28 01:08:17'),
(354, 'Mehdi', 'mb@gmail.com', NULL, '$2y$10$QACj/qAe8aLb5Yr4F8rKu.fcBvtf51aZA2FPfBojBYWAO6tUfW1kK', NULL, '2020-05-21 22:41:51', '2020-05-21 22:41:51'),
(355, 'reza', 'reza@gmail.com', NULL, '$2y$10$wF0I.noAomYMKkFeekjvVu691nfdBlQFrF.32Zaw5Z2na7sA3.PQi', NULL, '2020-06-26 00:42:09', '2020-06-26 00:42:09'),
(357, 'mehdibph', 'mbph471@gmail.com', '2020-06-26 01:28:22.000000', '$2y$10$Ua4UPhTpVKu/W45wC0dUIuA7qp8p0KHgV4pzwQONlokQiayyBLp.m', NULL, '2020-06-26 01:27:54', '2020-06-26 01:28:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_foreign` (`user_id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorites_user_id_favorite_id_favorite_type_unique` (`user_id`,`favorite_id`,`favorite_type`),
  ADD KEY `favorites_favorite_id_foreign` (`favorite_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_thread_id_foreign` (`thread_id`),
  ADD KEY `replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `threads_user_id_foreign` (`user_id`),
  ADD KEY `threads_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `thread_subscriptions`
--
ALTER TABLE `thread_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thread_subscriptions_user_id_thread_id_unique` (`user_id`,`thread_id`),
  ADD KEY `thread_subscriptions_thread_id_foreign` (`thread_id`);

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
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `thread_subscriptions`
--
ALTER TABLE `thread_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `replies` (`id`),
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`),
  ADD CONSTRAINT `replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `threads`
--
ALTER TABLE `threads`
  ADD CONSTRAINT `threads_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`),
  ADD CONSTRAINT `threads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `thread_subscriptions`
--
ALTER TABLE `thread_subscriptions`
  ADD CONSTRAINT `thread_subscriptions_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `thread_subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
