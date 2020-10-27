-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 26, 2020 at 02:54 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ewsd`
--

-- --------------------------------------------------------

--
-- Table structure for table `academics`
--

CREATE TABLE `academics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academics`
--

INSERT INTO `academics` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2017', NULL, '2020-10-26 02:19:11', '2020-10-26 02:19:11'),
(2, '2018', NULL, '2020-10-26 02:19:11', '2020-10-26 02:19:11'),
(3, '2019', NULL, '2020-10-26 02:19:11', '2020-10-26 02:19:11'),
(4, '2020', NULL, '2020-10-26 02:19:11', '2020-10-26 02:19:11'),
(5, '2021', NULL, '2020-10-26 02:19:11', '2020-10-26 02:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `announces`
--

CREATE TABLE `announces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decsription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editLDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announces`
--

INSERT INTO `announces` (`id`, `title`, `decsription`, `deadline`, `editLDate`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2019 magazine', '<p>2019 mag<br></p>', '2020-10-29', '2020-11-05', NULL, '2020-10-26 02:53:19', '2020-10-26 02:53:19'),
(2, '2020 mag', '<p>2020 mag<br></p>', '2020-10-30', '2020-11-05', NULL, '2020-10-26 02:53:40', '2020-10-26 02:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `name`, `level_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'A', 1, NULL, '2020-10-26 02:19:11', '2020-10-26 02:19:11'),
(2, 'A', 2, NULL, '2020-10-26 02:19:11', '2020-10-26 02:19:11'),
(3, 'A', 3, NULL, '2020-10-26 02:19:12', '2020-10-26 02:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `magazine_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `magazine_id`, `user_id`, `comment`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'selected', NULL, '2020-10-26 03:09:41', '2020-10-26 03:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `coordinators`
--

CREATE TABLE `coordinators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `nrc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coordinators`
--

INSERT INTO `coordinators` (`id`, `user_id`, `faculty_id`, `nrc`, `education`, `phone`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '12/abcd(n)12345', 'bsc hon computing', '0999999', 'YGN', NULL, '2020-10-26 02:41:20', '2020-10-26 02:41:20'),
(2, 4, 2, '9/HMZ(N)54464646', 'bsc hon physic', '312313131', 'YGN', NULL, '2020-10-26 02:42:15', '2020-10-26 02:42:15'),
(3, 5, 3, '9/HMZ(N)5446321', 'bsc hon physic', '098766543', 'YGN', NULL, '2020-10-26 02:43:35', '2020-10-26 02:43:35');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `name`, `logo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Business', '/storages/faculty/1603703338.png', NULL, '2020-10-26 02:19:11', '2020-10-26 02:38:58'),
(2, 'Web', '/storages/faculty/1603703351.png', NULL, '2020-10-26 02:19:11', '2020-10-26 02:39:11'),
(3, 'Network', '/storages/faculty/1603703366.png', NULL, '2020-10-26 02:19:11', '2020-10-26 02:39:26');

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
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'L4', NULL, '2020-10-26 02:19:11', '2020-10-26 02:19:11'),
(2, 'L5', NULL, '2020-10-26 02:19:11', '2020-10-26 02:19:11'),
(3, 'final', NULL, '2020-10-26 02:19:11', '2020-10-26 02:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `magazines`
--

CREATE TABLE `magazines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postDate` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `selected_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `record_id` bigint(20) UNSIGNED NOT NULL,
  `announce_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `magazines`
--

INSERT INTO `magazines` (`id`, `title`, `photo`, `postDate`, `description`, `article`, `comment_status`, `selected_status`, `record_id`, `announce_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'article 2020 business', '/storages/cover/1603704591.png', '2020-10-26 09:29:51', '<p>test<br></p>', '/storages/article/1603704591.pdf', '1', '1', 1, 2, NULL, '2020-10-26 02:59:51', '2020-10-26 03:09:41'),
(2, '2019 business test', '/storages/cover/1603704677.jpeg', '2020-10-26 09:31:17', '<p>test 2019<br></p>', '/storages/article/1603704677.pdf', '0', '0', 2, 1, NULL, '2020-10-26 03:01:17', '2020-10-26 03:01:17'),
(3, 'testing 2019', '/storages/cover/1603704724.jpeg', '2020-10-26 09:32:04', '<p>testtest<br></p>', '/storages/article/1603704724.pdf', '0', '1', 2, 1, NULL, '2020-10-26 03:02:04', '2020-10-26 03:09:50'),
(4, '2020 network test', '/storages/cover/1603704778.jpeg', '2020-10-26 09:32:58', '<p>test<br></p>', '/storages/article/1603704778.pdf', '0', '1', 5, 2, NULL, '2020-10-26 03:02:58', '2020-10-26 03:11:08'),
(5, 'test2019', '/storages/cover/1603704845.jpeg', '2020-10-26 09:34:05', '<p>testtest<br></p>', '/storages/article/1603704845.pdf', '0', '1', 6, 1, NULL, '2020-10-26 03:04:05', '2020-10-26 03:11:17'),
(6, '2020wtest', '/storages/cover/1603704927.png', '2020-10-26 09:35:27', '<p>testest<br></p>', '/storages/article/1603704927.pdf', '0', '0', 3, 2, NULL, '2020-10-26 03:05:27', '2020-10-26 03:05:27'),
(7, 'tesst2', '/storages/cover/1603704953.jpeg', '2020-10-26 09:35:53', '<p>test<br></p>', '/storages/article/1603704953.pdf', '0', '1', 3, 2, NULL, '2020-10-26 03:05:53', '2020-10-26 03:10:33'),
(8, 'testweb2020', '/storages/cover/1603705074.jpeg', '2020-10-26 09:37:54', '<p>testtest<br></p>', '/storages/article/1603705074.pdf', '0', '1', 4, 2, NULL, '2020-10-26 03:07:54', '2020-10-26 03:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nrc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `user_id`, `nrc`, `education`, `phone`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, '12/MGLD(N)041267', 'bsc hon physic', '09876654d3', 'YGN', NULL, '2020-10-26 02:40:22', '2020-10-26 02:40:22');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_04_145235_create_academics_table', 1),
(5, '2020_09_04_145315_create_levels_table', 1),
(6, '2020_09_04_145400_create_classrooms_table', 1),
(7, '2020_09_04_145424_create_faculties_table', 1),
(8, '2020_09_04_145520_create_students_table', 1),
(9, '2020_09_04_145552_create_coordinators_table', 1),
(10, '2020_09_04_145821_create_managers_table', 1),
(11, '2020_09_04_154253_create_records_table', 1),
(12, '2020_09_04_171617_create_permission_tables', 1),
(13, '2020_09_05_021042_create_announces_table', 1),
(14, '2020_09_06_063920_create_magazines_table', 1),
(15, '2020_09_06_075818_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(3, 'App\\User', 3),
(3, 'App\\User', 4),
(3, 'App\\User', 5),
(4, 'App\\User', 6),
(4, 'App\\User', 7),
(4, 'App\\User', 8),
(4, 'App\\User', 9),
(4, 'App\\User', 10),
(4, 'App\\User', 11);

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `academic_id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `rollno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `student_id`, `classroom_id`, `academic_id`, `faculty_id`, `rollno`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 4, 1, '1', NULL, '2020-10-26 02:44:43', '2020-10-26 02:44:43'),
(2, 2, 3, 3, 1, '1', NULL, '2020-10-26 02:45:31', '2020-10-26 02:45:31'),
(3, 3, 2, 4, 2, '1', NULL, '2020-10-26 02:47:52', '2020-10-26 02:47:52'),
(4, 4, 1, 3, 2, '1', NULL, '2020-10-26 02:48:50', '2020-10-26 02:48:50'),
(5, 5, 1, 4, 3, '1', NULL, '2020-10-26 02:50:39', '2020-10-26 02:50:39'),
(6, 6, 3, 3, 3, '1', NULL, '2020-10-26 02:51:37', '2020-10-26 02:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2020-10-26 02:19:10', '2020-10-26 02:19:10'),
(2, 'manager', 'web', '2020-10-26 02:19:10', '2020-10-26 02:19:10'),
(3, 'coordinator', 'web', '2020-10-26 02:19:10', '2020-10-26 02:19:10'),
(4, 'student', 'web', '2020-10-26 02:19:11', '2020-10-26 02:19:11'),
(5, 'guest', 'web', '2020-10-26 02:19:11', '2020-10-26 02:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nrc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fatherName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motherName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `nrc`, `fatherName`, `motherName`, `phone`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 6, '9/HMZ(N)5446321', 'u hla', NULL, '0987665432', 'YGN', NULL, '2020-10-26 02:44:43', '2020-10-26 02:44:43'),
(2, 7, '12/MGLD(N)041267', 'U MIn', NULL, '0999999', 'YGN', NULL, '2020-10-26 02:45:31', '2020-10-26 02:45:31'),
(3, 8, '9/HMZ(N)54464646', 'U Hla', NULL, '098766543', 'YGN', NULL, '2020-10-26 02:47:52', '2020-10-26 02:47:52'),
(4, 9, '12/MGLD(N)041267', 'u min', NULL, '098766543', 'YGN', NULL, '2020-10-26 02:48:50', '2020-10-26 02:48:50'),
(5, 10, '12/abcd(n)12345', 'U Hla', NULL, '0999999', 'hlaing', NULL, '2020-10-26 02:50:39', '2020-10-26 02:50:39'),
(6, 11, '9/HMZ(N)5446323', 'U MIn', NULL, '0999999', 'YGN', NULL, '2020-10-26 02:51:37', '2020-10-26 02:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 'admin@gmail.com', NULL, '$2y$10$5U1rS/XREeGOw8MBf0kYoOEWGt202u3vOHtfW9XiaPUjjnaNSBYKu', NULL, '2020-10-26 02:19:14', '2020-10-26 02:19:14'),
(2, 'manager', '/users/image/1603703421731avatar.png', 'manager@gmail.com', NULL, '$2y$10$SdAyjJzU8LfIaT323OPWGeuKGq566QJWy5wHfgvhEEV7SW3XiyZNC', NULL, '2020-10-26 02:40:21', '2020-10-26 02:40:21'),
(3, 'business-coordinator', '/users/image/1603703480423avatar.jpeg', 'bobo.im2@gmail.com', NULL, '$2y$10$nYarN/MfYlekzRwHHFAOjOCp3dLAgl2nWKK5uC2znf0hwVBPgabQ2', NULL, '2020-10-26 02:41:20', '2020-10-26 02:41:20'),
(4, 'web-coordinatpor', '/users/image/1603703535417avatar.jpeg', 'webcoordinator@email.com', NULL, '$2y$10$9b/xRRLZ4R4pZ04NjQQSoOkHWyQ1qvrs./GPAA/pfTyk3v3j10AuO', NULL, '2020-10-26 02:42:15', '2020-10-26 02:42:15'),
(5, 'network-coordinator', '/users/image/1603703615201avatar.png', 'networkcoordinator@gmail.com', NULL, '$2y$10$vUM7K6AesUSXsDN44J2pJuf5pkjpEr83odCrX7756KxCjaz9FDeie', NULL, '2020-10-26 02:43:35', '2020-10-26 02:43:35'),
(6, 'bstudent1', '/users/image/1603703683758avatar.png', 'bstudent1@gmail.com', NULL, '$2y$10$HMP4uG5HFzobRidwKrVN.uXz6w4TaP62CQUWdG2nowJ0og7p4tGF6', NULL, '2020-10-26 02:44:43', '2020-10-26 02:44:43'),
(7, 'Bstudent2', '/users/image/1603703731798avatar.png', 'bstudent2@gmail.com', NULL, '$2y$10$D.fAraXsGkMJD1iEWDWMdurfmLbPdFha63EPBuBisRuXqrVEcqXxC', NULL, '2020-10-26 02:45:31', '2020-10-26 02:45:31'),
(8, 'wstudent1', '/users/image/1603703872779avatar.png', 'wstudent1@gmail.com', NULL, '$2y$10$M8FNqfNQprvuj3cKBj6/l.RTuXEooUGieAqKih/nPvz1pFnYtRJ/a', NULL, '2020-10-26 02:47:52', '2020-10-26 02:47:52'),
(9, 'wstudent2', '/users/image/1603703930617avatar.png', 'wstudent2@gmail.com', NULL, '$2y$10$ykVNB0eOiPEvtTL70VeCU.K6dWHopI.mkbD9ukSBxA30KiV8PL2H.', NULL, '2020-10-26 02:48:50', '2020-10-26 02:48:50'),
(10, 'nstudent1', '/users/image/1603704039105avatar.png', 'nstudent1@gmail.com', NULL, '$2y$10$7tNaXHt0I5jHfMp.0K3bQuuN0bGDBr4cbCJdFc74JkH5qs0dQRtIK', NULL, '2020-10-26 02:50:39', '2020-10-26 02:50:39'),
(11, 'nstudnet2', '/users/image/1603704097471avatar.png', 'nstudent2@gmail.com', NULL, '$2y$10$6bmZhUR5DHskPmWwoRzOPeoUk7BZjxuja6.iFoPHTPZIz4TVzDt2q', NULL, '2020-10-26 02:51:37', '2020-10-26 02:51:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academics`
--
ALTER TABLE `academics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `academics_name_unique` (`name`);

--
-- Indexes for table `announces`
--
ALTER TABLE `announces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classrooms_level_id_foreign` (`level_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_magazine_id_foreign` (`magazine_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `coordinators`
--
ALTER TABLE `coordinators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coordinators_user_id_foreign` (`user_id`),
  ADD KEY `coordinators_faculty_id_foreign` (`faculty_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculties_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magazines`
--
ALTER TABLE `magazines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `magazines_record_id_foreign` (`record_id`),
  ADD KEY `magazines_announce_id_foreign` (`announce_id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `managers_user_id_foreign` (`user_id`);

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
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `records_student_id_foreign` (`student_id`),
  ADD KEY `records_faculty_id_foreign` (`faculty_id`),
  ADD KEY `records_classroom_id_foreign` (`classroom_id`),
  ADD KEY `records_academic_id_foreign` (`academic_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `academics`
--
ALTER TABLE `academics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `announces`
--
ALTER TABLE `announces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coordinators`
--
ALTER TABLE `coordinators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `magazines`
--
ALTER TABLE `magazines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD CONSTRAINT `classrooms_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_magazine_id_foreign` FOREIGN KEY (`magazine_id`) REFERENCES `magazines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coordinators`
--
ALTER TABLE `coordinators`
  ADD CONSTRAINT `coordinators_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `coordinators_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `magazines`
--
ALTER TABLE `magazines`
  ADD CONSTRAINT `magazines_announce_id_foreign` FOREIGN KEY (`announce_id`) REFERENCES `announces` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `magazines_record_id_foreign` FOREIGN KEY (`record_id`) REFERENCES `records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `managers`
--
ALTER TABLE `managers`
  ADD CONSTRAINT `managers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `records_academic_id_foreign` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `records_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `records_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
