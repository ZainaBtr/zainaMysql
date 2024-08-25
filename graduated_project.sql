-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18 أغسطس 2024 الساعة 17:10
-- إصدار الخادم: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `graduated_project`
--

-- --------------------------------------------------------

--
-- بنية الجدول `advanced_users`
--

CREATE TABLE `advanced_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `isAccountCompleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `advanced_users`
--

INSERT INTO `advanced_users` (`id`, `userID`, `isAccountCompleted`, `created_at`, `updated_at`) VALUES
(7, 17, 0, '2024-08-18 13:06:27', '2024-08-18 13:06:27'),
(8, 18, 0, '2024-08-18 13:06:27', '2024-08-18 13:06:27'),
(9, 19, 0, '2024-08-18 13:06:27', '2024-08-18 13:06:27'),
(10, 20, 0, '2024-08-18 13:06:27', '2024-08-18 13:06:27'),
(11, 21, 0, '2024-08-18 13:06:34', '2024-08-18 13:06:34');

-- --------------------------------------------------------

--
-- بنية الجدول `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serviceID` bigint(20) UNSIGNED DEFAULT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `announcements`
--

INSERT INTO `announcements` (`id`, `serviceID`, `userID`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'theoratical resultes', 'IR', '2024-08-18 14:20:32', '2024-08-18 14:20:32'),
(2, NULL, 2, 'theoratical resultes', 'Iss', '2024-08-18 14:28:33', '2024-08-18 14:28:33');

-- --------------------------------------------------------

--
-- بنية الجدول `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assignedServiceID` bigint(20) UNSIGNED NOT NULL,
  `roleID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `assignedServiceID`, `roleID`, `created_at`, `updated_at`) VALUES
(4, 3, 7, '2024-08-18 15:05:55', '2024-08-18 15:05:55');

-- --------------------------------------------------------

--
-- بنية الجدول `assigned_services`
--

CREATE TABLE `assigned_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `serviceID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `assigned_services`
--

INSERT INTO `assigned_services` (`id`, `userID`, `serviceID`, `created_at`, `updated_at`) VALUES
(3, 17, 4, '2024-08-18 15:05:41', '2024-08-18 15:05:41');

-- --------------------------------------------------------

--
-- بنية الجدول `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `normalUserID` bigint(20) UNSIGNED NOT NULL,
  `sessionID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
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
-- بنية الجدول `fake_reservations`
--

CREATE TABLE `fake_reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privateSessionID` bigint(20) UNSIGNED NOT NULL,
  `reservationStartTime` time NOT NULL,
  `reservationEndTime` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `announcementID` bigint(20) UNSIGNED NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `filePath` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `files`
--

INSERT INTO `files` (`id`, `announcementID`, `fileName`, `filePath`, `created_at`, `updated_at`) VALUES
(1, 1, 'IR_2023.pdf', 'uploads/IR_2023.pdf', '2024-08-18 14:20:32', '2024-08-18 14:20:32'),
(2, 2, 'ISS_Exam_Bank_Questions (1).pdf', 'uploads/ISS_Exam_Bank_Questions (1).pdf', '2024-08-18 14:28:33', '2024-08-18 14:28:33');

-- --------------------------------------------------------

--
-- بنية الجدول `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serviceID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `interested_services`
--

CREATE TABLE `interested_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `serviceID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `interested_services`
--

INSERT INTO `interested_services` (`id`, `userID`, `serviceID`, `created_at`, `updated_at`) VALUES
(2, 2, 2, '2024-08-18 14:11:44', '2024-08-18 14:11:44'),
(3, 2, 2, '2024-08-18 14:11:45', '2024-08-18 14:11:45'),
(4, 2, 2, '2024-08-18 14:11:45', '2024-08-18 14:11:45'),
(5, 2, 2, '2024-08-18 14:11:47', '2024-08-18 14:11:47'),
(6, 2, 2, '2024-08-18 14:11:48', '2024-08-18 14:11:48'),
(7, 2, 2, '2024-08-18 14:11:48', '2024-08-18 14:11:48'),
(8, 2, 2, '2024-08-18 14:11:48', '2024-08-18 14:11:48'),
(9, 2, 2, '2024-08-18 14:11:49', '2024-08-18 14:11:49'),
(10, 2, 2, '2024-08-18 14:11:49', '2024-08-18 14:11:49'),
(11, 2, 3, '2024-08-18 14:11:52', '2024-08-18 14:11:52'),
(12, 2, 3, '2024-08-18 14:11:53', '2024-08-18 14:11:53'),
(13, 2, 3, '2024-08-18 14:11:53', '2024-08-18 14:11:53'),
(14, 2, 3, '2024-08-18 14:11:54', '2024-08-18 14:11:54'),
(15, 2, 3, '2024-08-18 14:11:55', '2024-08-18 14:11:55'),
(16, 2, 7, '2024-08-18 14:24:55', '2024-08-18 14:24:55');

-- --------------------------------------------------------

--
-- بنية الجدول `invitations`
--

CREATE TABLE `invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `groupID` bigint(20) UNSIGNED NOT NULL,
  `normalUserID` bigint(20) UNSIGNED NOT NULL,
  `requestDate` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `join_requests`
--

CREATE TABLE `join_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `senderID` bigint(20) UNSIGNED NOT NULL,
  `groupID` bigint(20) UNSIGNED NOT NULL,
  `requestDate` date NOT NULL,
  `joiningRequestStatus` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_04_13_144058_create_services_managers_table', 1),
(11, '2024_04_13_144119_create_service_year_and_specializations_table', 1),
(12, '2024_04_13_144243_create_services_table', 1),
(14, '2024_04_13_144319_create_interested_services_table', 1),
(15, '2024_04_13_144330_create_announcements_table', 1),
(16, '2024_04_13_144342_create_saved_announcements_table', 1),
(17, '2024_04_13_144351_create_assigned_services_table', 1),
(18, '2024_04_13_144406_create_roles_table', 1),
(19, '2024_04_13_144424_create_assigned_roles_table', 1),
(20, '2024_04_13_144438_create_normal_users_table', 1),
(21, '2024_04_13_144450_create_groups_table', 1),
(22, '2024_04_13_144501_create_team_members_table', 1),
(23, '2024_04_13_144512_create_join_requests_table', 1),
(24, '2024_04_13_144525_create_sessionss_table', 1),
(25, '2024_04_13_144557_create_attendances_table', 1),
(26, '2024_04_13_144609_create_public_sessions_table', 1),
(27, '2024_04_13_144618_create_private_sessions_table', 1),
(28, '2024_04_13_144632_create_fake_reservations_table', 1),
(29, '2024_04_13_144701_create_private_reservations_table', 1),
(30, '2024_04_13_144710_create_public_reservations_table', 1),
(31, '2024_04_23_124210_create_files_table', 1),
(32, '2024_06_18_105711_create_swap_requests_table', 1),
(33, '2024_06_29_192114_create_invitations_table', 1),
(34, '2024_08_06_000530_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `normal_users`
--

CREATE TABLE `normal_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `serviceYearAndSpecializationID` bigint(20) UNSIGNED NOT NULL,
  `examinationNumber` bigint(20) NOT NULL,
  `studySituation` varchar(255) NOT NULL,
  `isAccountCompleted` tinyint(1) NOT NULL DEFAULT 0,
  `skills` varchar(255) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `motherBirthDate` date DEFAULT NULL,
  `fatherBirthDate` date DEFAULT NULL,
  `numberOfSisters` int(11) DEFAULT NULL,
  `numberOfBrothers` int(11) DEFAULT NULL,
  `numberOfMothersSister` int(11) DEFAULT NULL,
  `numberOfFathersSister` int(11) DEFAULT NULL,
  `numberOfMothersBrother` int(11) DEFAULT NULL,
  `numberOfFathersBrother` int(11) DEFAULT NULL,
  `favoriteColor` varchar(255) DEFAULT NULL,
  `favoriteHobby` varchar(255) DEFAULT NULL,
  `favoriteSport` varchar(255) DEFAULT NULL,
  `favoriteSeason` varchar(255) DEFAULT NULL,
  `favoriteBookType` varchar(255) DEFAULT NULL,
  `favoriteTravelCountry` varchar(255) DEFAULT NULL,
  `favoriteFood` varchar(255) DEFAULT NULL,
  `favoriteDessert` varchar(255) DEFAULT NULL,
  `favoriteDrink` varchar(255) DEFAULT NULL,
  `baccalaureateMark` int(11) DEFAULT NULL,
  `ninthGradeMark` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `normal_users`
--

INSERT INTO `normal_users` (`id`, `userID`, `serviceYearAndSpecializationID`, `examinationNumber`, `studySituation`, `isAccountCompleted`, `skills`, `birthDate`, `motherBirthDate`, `fatherBirthDate`, `numberOfSisters`, `numberOfBrothers`, `numberOfMothersSister`, `numberOfFathersSister`, `numberOfMothersBrother`, `numberOfFathersBrother`, `favoriteColor`, `favoriteHobby`, `favoriteSport`, `favoriteSeason`, `favoriteBookType`, `favoriteTravelCountry`, `favoriteFood`, `favoriteDessert`, `favoriteDrink`, `baccalaureateMark`, `ninthGradeMark`, `created_at`, `updated_at`) VALUES
(6, 6, 23, 52457, 'success', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-18 13:19:07', '2024-08-18 13:19:07'),
(7, 7, 23, 57558, 'success', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-18 13:19:07', '2024-08-18 13:19:07'),
(8, 8, 23, 52563, 'success', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-18 13:19:07', '2024-08-18 13:19:07'),
(9, 9, 23, 55625, 'success', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-18 13:19:07', '2024-08-18 13:19:07'),
(10, 10, 23, 55152, 'success', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-18 13:19:07', '2024-08-18 13:19:07');

-- --------------------------------------------------------

--
-- بنية الجدول `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('035960fc-a75c-491a-bb03-b2ca65920537', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 6, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('077658fc-a498-4814-885c-8946546fda22', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 8, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('194feaa4-982a-44ab-8047-516c255962c0', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 25, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('1bcf6e4c-fc74-4e68-8c2a-4a98a73ffad0', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 26, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('242d4d5c-e65d-4975-9f56-a2163588662e', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 2, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('2559fc0b-1975-480c-9ec5-819504b01b42', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 7, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('26630476-813b-4129-83a2-a6123300125a', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 19, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('2c4ec1b6-4d17-4867-a951-3838fd093f8f', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 4, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('30950a51-1b3e-461f-873b-a687f4d7f9d2', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 21, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('31c742c0-acf1-41a3-87bf-6fd659464aeb', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 18, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('398617b6-df5d-4969-a15f-bf7850194783', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 7, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('443561d6-bcc8-40c4-aa62-c6a1beda5197', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 8, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('5254dd71-3f56-452a-904d-be8945bcbab4', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 24, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('5caa35f8-80aa-4efe-a90c-4e0d01e70618', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 19, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('654e4a46-3707-4e2a-ac45-97baecdffc16', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 6, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('656e3b6a-2173-4068-9055-0fddaff619db', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 10, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('6e2a90c3-b865-4dbb-b99d-99e76a959742', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 17, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('7b23cf44-67e7-44a4-96c8-8c4ea6763bd1', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 27, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('90bb9015-7366-4464-b480-bc894a2f14b1', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 23, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('93de3d78-62a4-4414-b985-1708d9ef0611', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 17, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('94f5d8ae-9ed6-4804-8f58-dc688f0d6867', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 20, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('95ede7cb-acee-4b74-98c4-1381d5512b23', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 23, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('99caecd5-c096-44ac-87bf-6c005a34053c', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 27, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('a0a7d1e0-5052-4eea-8759-a6c770afb6d6', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 18, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('a567ca90-b16e-4bbd-a652-df7f3bfd4a45', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 24, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('ad2ab781-c375-4431-bc36-34970ff8cbeb', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 5, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('af96fe3f-38a1-4643-95f0-5fdf1338dce6', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 2, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('b998dd5b-02b8-4376-a107-6d4d293f2022', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 9, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('bc95b6ca-650e-40b1-9355-c8e7fa27a78a', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 20, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('bd6ccf6e-eb78-4cf6-b63c-1fbfa206934d', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 5, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('be8cde98-1073-46bd-8386-b0359e9e4339', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 26, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('ce5b1ad4-eaeb-4f6a-9050-35dd9aff4d1e', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 10, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('e2d63777-580c-4338-bce9-9cca9317d39a', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 21, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('f1ce8e08-74b8-44d9-9472-47123bac8740', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 4, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33'),
('f7c02c56-e696-4f14-9ee0-e3727efbe26d', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 25, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:28:34', '2024-08-18 14:28:34'),
('f8dd8b66-c722-4251-9602-a7c7b1284b4c', 'App\\Notifications\\AnnouncementNotification', 'App\\Models\\User', 9, '{\"serviceName\":null,\"title\":\"theoratical resultes\"}', NULL, '2024-08-18 14:20:33', '2024-08-18 14:20:33');

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('03c966451cc4548b058f8a13f6b7f245306da4fcd3cd7288a2b125588df5bd70de789f924e736252', 2, 1, 'Personal Access Token', '[]', 0, '2024-08-18 11:05:03', '2024-08-18 11:05:03', '2025-08-18 14:05:03'),
('1966789125c891ae2174a19ed175f7c4f894639e83f0b8513360d5e524d09d9d0e59fcb5a07a9937', 1, 1, 'Personal Access Token', '[]', 0, '2024-08-18 09:22:21', '2024-08-18 09:22:21', '2025-08-18 12:22:21'),
('6321543773ca2b4ec6f4e4e3c7dac5be380587fcf578e441cd88d4978849bf68f4365e2e0b0d1e96', 1, 1, 'Personal Access Token', '[]', 0, '2024-08-18 09:11:41', '2024-08-18 09:11:42', '2025-08-18 12:11:41'),
('6792c6ca4481c76c8822d039e6fae5261260822dd0cc934a5ef3f43096edf512f18fdb8c82284853', 2, 1, 'Personal Access Token', '[]', 0, '2024-08-18 11:21:08', '2024-08-18 11:21:09', '2025-08-18 14:21:08'),
('7e42ac54a8806e9c731ac50416529fdfa5d3a52ec880cdb49d25f955e6f77c3d827566c1f567ca70', 2, 1, 'Personal Access Token', '[]', 0, '2024-08-18 11:29:33', '2024-08-18 11:29:33', '2025-08-18 14:29:33');

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ITE Personal Access Client', 'oWKLP06X8SEom8Y7smwVmfhHB9jjnBCSIHANWYG7', NULL, 'http://localhost', 1, 0, 0, '2024-08-18 08:11:55', '2024-08-18 08:11:55'),
(2, NULL, 'ITE Password Grant Client', 'IZpca6Tt7sUdFz6clImhvjkaFGKn9UYEDDz4rGH3', 'users', 'http://localhost', 0, 1, 0, '2024-08-18 08:11:55', '2024-08-18 08:11:55');

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-08-18 08:11:55', '2024-08-18 08:11:55');

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '512859', NULL),
('admin2@gmail.com', '185212', NULL),
('administrator@gmail.com', '925853', NULL),
('ammar.jokhadar@gmail.com', '337807', NULL),
('neamaaltahalknr@gmail.com', '322353', NULL),
('neamaaltahalknr1@gmail.com', '857499', NULL),
('neamaaltahan@gmail.com', '256461', NULL),
('neamaaltahan2000@gmail.com', '707205', NULL),
('neamaaltahank@gmail.com', '650318', NULL),
('neamaaltahanr@gmail.com', '768945', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
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
-- بنية الجدول `private_reservations`
--

CREATE TABLE `private_reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `groupID` bigint(20) UNSIGNED NOT NULL,
  `privateSessionID` bigint(20) UNSIGNED NOT NULL,
  `reservationDate` date NOT NULL,
  `reservationStartTime` time NOT NULL,
  `reservationEndTime` time NOT NULL,
  `privateReservationStatus` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `private_sessions`
--

CREATE TABLE `private_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sessionID` bigint(20) UNSIGNED NOT NULL,
  `durationForEachReservation` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `public_reservations`
--

CREATE TABLE `public_reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `publicSessionID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `public_sessions`
--

CREATE TABLE `public_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sessionID` bigint(20) UNSIGNED NOT NULL,
  `MaximumNumberOfReservations` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roleName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `roles`
--

INSERT INTO `roles` (`id`, `roleName`, `created_at`, `updated_at`) VALUES
(6, 'practical teaching', '2024-08-18 12:49:01', '2024-08-18 12:49:01'),
(7, 'theoretical teaching', '2024-08-18 12:49:06', '2024-08-18 12:49:06'),
(8, 'writing practical exam questions', '2024-08-18 12:49:11', '2024-08-18 12:49:11'),
(9, 'writing theoretical exam questions', '2024-08-18 12:49:16', '2024-08-18 12:49:16');

-- --------------------------------------------------------

--
-- بنية الجدول `saved_announcements`
--

CREATE TABLE `saved_announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `announcementID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `saved_announcements`
--

INSERT INTO `saved_announcements` (`id`, `userID`, `announcementID`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2024-08-18 14:21:18', '2024-08-18 14:21:18'),
(2, 2, 1, '2024-08-18 14:21:19', '2024-08-18 14:21:19'),
(3, 2, 1, '2024-08-18 14:21:19', '2024-08-18 14:21:19'),
(4, 2, 1, '2024-08-18 14:21:20', '2024-08-18 14:21:20');

-- --------------------------------------------------------

--
-- بنية الجدول `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serviceManagerID` bigint(20) UNSIGNED NOT NULL,
  `parentServiceID` bigint(20) UNSIGNED DEFAULT NULL,
  `serviceYearAndSpecializationID` bigint(20) UNSIGNED NOT NULL,
  `serviceName` varchar(255) NOT NULL,
  `serviceDescription` text DEFAULT NULL,
  `serviceType` varchar(255) NOT NULL,
  `minimumNumberOfGroupMembers` int(11) NOT NULL,
  `maximumNumberOfGroupMembers` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `services`
--

INSERT INTO `services` (`id`, `serviceManagerID`, `parentServiceID`, `serviceYearAndSpecializationID`, `serviceName`, `serviceDescription`, `serviceType`, `minimumNumberOfGroupMembers`, `maximumNumberOfGroupMembers`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, 18, 'analysis 3', 'this subject is so important for every student', 'lectures', 0, 0, 1, '2024-08-18 13:22:34', '2024-08-18 13:22:34'),
(3, 1, NULL, 17, 'enlgish 1', 'this subject is so important for every student', 'lectures', 0, 0, 1, '2024-08-18 13:22:48', '2024-08-18 13:22:48'),
(4, 1, NULL, 23, 'software engineering 3', 'this subject is so important for every student', 'lectures', 4, 5, 1, '2024-08-18 13:23:20', '2024-08-18 13:23:20'),
(5, 1, NULL, 23, 'information system security', 'this subject is so important for every student', 'lectures', 4, 5, 1, '2024-08-18 13:24:54', '2024-08-18 13:24:54'),
(6, 1, NULL, 23, 'flutter workshop', 'in this activity , we will learn more about design patterns and architecture rules', 'activities', 3, 5, 1, '2024-08-18 13:27:32', '2024-08-18 13:27:32'),
(7, 1, NULL, 19, 'ptc workshop', 'all about framworks', 'activities', 0, 0, 1, '2024-08-18 13:29:02', '2024-08-18 13:29:02'),
(8, 1, NULL, 23, 'information retreival', 'this subject is so important for every student', 'lectures', 4, 5, 1, '2024-08-18 13:30:09', '2024-08-18 13:30:09'),
(10, 1, NULL, 23, 'information system engineering', 'this subject is so important for every student', 'lectures', 3, 5, 1, '2024-08-18 13:32:02', '2024-08-18 13:32:02'),
(11, 1, NULL, 19, 'rbc workshop', 'all about laravel', 'activities', 0, 0, 1, '2024-08-18 13:33:01', '2024-08-18 13:33:01'),
(12, 1, NULL, 17, 'english 1', 'hard exam', 'exams', 0, 0, 1, '2024-08-18 13:33:40', '2024-08-18 13:33:40'),
(13, 1, NULL, 17, 'arabic', 'soft exam', 'exams', 0, 0, 1, '2024-08-18 13:34:18', '2024-08-18 13:34:18'),
(15, 1, NULL, 18, 'analysis 3', 'so hard exam', 'exams', 0, 0, 1, '2024-08-18 13:35:37', '2024-08-18 13:35:37'),
(16, 1, NULL, 19, 'programming language', 'so hard project', 'projects interviews', 4, 5, 1, '2024-08-18 13:38:00', '2024-08-18 13:38:00'),
(17, 1, NULL, 20, 'project 1', 'hard exam', 'projects interviews', 4, 5, 1, '2024-08-18 13:38:46', '2024-08-18 13:38:46'),
(18, 1, NULL, 23, 'graduated project', 'so likely project', 'projects interviews', 4, 5, 1, '2024-08-18 13:39:43', '2024-08-18 13:39:43'),
(19, 1, NULL, 19, 'project 1', 'so important interviews for projects', 'advanced users interviews', 4, 5, 1, '2024-08-18 13:42:04', '2024-08-18 13:42:04'),
(20, 1, NULL, 21, 'project 2', 'so important interviews for projects', 'advanced users interviews', 3, 4, 1, '2024-08-18 13:42:35', '2024-08-18 13:42:35'),
(21, 1, NULL, 25, 'graduated project', 'so important interviews for final project', 'advanced users interviews', 4, 5, 1, '2024-08-18 13:43:22', '2024-08-18 13:43:22'),
(22, 1, 2, 18, 'practical', 'this subject is so important for every student', 'lectures', 0, 0, 1, '2024-08-18 13:46:06', '2024-08-18 13:46:06'),
(23, 1, 2, 19, 'theoretical', 'this subject is so important for every student', 'lectures', 0, 0, 1, '2024-08-18 13:46:40', '2024-08-18 13:46:40');

-- --------------------------------------------------------

--
-- بنية الجدول `services_managers`
--

CREATE TABLE `services_managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `position` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `services_managers`
--

INSERT INTO `services_managers` (`id`, `userID`, `position`, `created_at`, `updated_at`) VALUES
(1, 2, 'provost', '2024-08-18 09:44:09', '2024-08-18 09:44:09'),
(3, 4, 'provost representative', '2024-08-18 09:50:04', '2024-08-18 09:50:04'),
(4, 5, 'the head of software engineering department', '2024-08-18 09:50:54', '2024-08-18 09:50:54');

-- --------------------------------------------------------

--
-- بنية الجدول `service_year_and_specializations`
--

CREATE TABLE `service_year_and_specializations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serviceYear` varchar(255) NOT NULL,
  `serviceSpecializationName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `service_year_and_specializations`
--

INSERT INTO `service_year_and_specializations` (`id`, `serviceYear`, `serviceSpecializationName`, `created_at`, `updated_at`) VALUES
(17, 'first year', 'basic science', '2024-08-18 13:13:44', '2024-08-18 13:13:44'),
(18, 'second year', 'basic science', '2024-08-18 13:14:09', '2024-08-18 13:14:09'),
(19, 'third year', 'basic science', '2024-08-18 13:14:24', '2024-08-18 13:14:24'),
(20, 'fourth year', 'software engineering', '2024-08-18 13:14:34', '2024-08-18 13:14:34'),
(21, 'fourth year', 'artificial intelligent', '2024-08-18 13:17:56', '2024-08-18 13:17:56'),
(22, 'fourth year', 'networking', '2024-08-18 13:18:02', '2024-08-18 13:18:02'),
(23, 'fifth year', 'software engineering', '2024-08-18 13:18:15', '2024-08-18 13:18:15'),
(24, 'fifth year', 'artificial intelligent', '2024-08-18 13:18:22', '2024-08-18 13:18:22'),
(25, 'fifth year', 'networking', '2024-08-18 13:18:31', '2024-08-18 13:18:31');

-- --------------------------------------------------------

--
-- بنية الجدول `sessionss`
--

CREATE TABLE `sessionss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `serviceID` bigint(20) UNSIGNED NOT NULL,
  `sessionName` varchar(255) NOT NULL,
  `sessionDescription` text DEFAULT NULL,
  `sessionDate` date NOT NULL,
  `sessionStartTime` time NOT NULL,
  `sessionEndTime` time NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'created',
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `swap_requests`
--

CREATE TABLE `swap_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privateReservationID` bigint(20) UNSIGNED NOT NULL,
  `senderGroupID` bigint(20) UNSIGNED NOT NULL,
  `receiverGroupID` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','accepted','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `normalUserID` bigint(20) UNSIGNED NOT NULL,
  `groupID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `deviceToken` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `fullName`, `email`, `email_verified_at`, `password`, `deviceToken`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$hyjdrCBkHj93wvTCAmvkdOcmuhQqtjWGQGIJz2lr7jpsU4GG4Tgt2', NULL, NULL, '2024-08-18 08:11:46', '2024-08-18 10:38:55'),
(2, 'D. Ammar Jokhadar', 'ammar.jokhadar@gmail.com', NULL, 'avrG6CeqFUQi', NULL, NULL, '2024-08-18 09:44:09', '2024-08-18 11:01:22'),
(4, 'D. Ubai Sondok', NULL, NULL, '8dGEYgAeGVk9', NULL, NULL, '2024-08-18 09:50:04', '2024-08-18 09:50:04'),
(5, 'D. Rawan Koroni', NULL, NULL, 'L4WlcrsSUwJI', NULL, NULL, '2024-08-18 09:50:54', '2024-08-18 09:50:54'),
(6, 'salam alkhawwam', NULL, NULL, 'Ioox9gLVTAgw', NULL, NULL, '2024-08-18 12:55:47', '2024-08-18 12:55:47'),
(7, 'zaina albitar', NULL, NULL, 'WKfS1s1cUbd4', NULL, NULL, '2024-08-18 12:55:47', '2024-08-18 12:55:47'),
(8, 'sedra talas', NULL, NULL, 'EldprNsBIaW1', NULL, NULL, '2024-08-18 12:55:47', '2024-08-18 12:55:47'),
(9, 'heba sesan', NULL, NULL, '3BVAAepxg1zd', NULL, NULL, '2024-08-18 12:55:47', '2024-08-18 12:55:47'),
(10, 'neama altahan', NULL, NULL, 'TpTx12VVq6wY', NULL, NULL, '2024-08-18 12:55:47', '2024-08-18 12:55:47'),
(17, 'basem kosiabah', NULL, NULL, 'ofGEz8ZnjulM', NULL, NULL, '2024-08-18 13:06:27', '2024-08-18 13:06:27'),
(18, 'mohammad alahmad', NULL, NULL, '2sRFZD08hTT5', NULL, NULL, '2024-08-18 13:06:27', '2024-08-18 13:06:27'),
(19, 'saed abotrab', NULL, NULL, 'sCuXXXIlLLMu', NULL, NULL, '2024-08-18 13:06:27', '2024-08-18 13:06:27'),
(20, 'maher sarem', NULL, NULL, 'goTyVJUUKyKP', NULL, NULL, '2024-08-18 13:06:27', '2024-08-18 13:06:27'),
(21, 'huda habash', NULL, NULL, 'GvzscGnh8iUs', NULL, NULL, '2024-08-18 13:06:34', '2024-08-18 13:06:34'),
(23, 'salam alkhawwam', NULL, NULL, '7s8CwQ0XPxRR', NULL, NULL, '2024-08-18 13:19:07', '2024-08-18 13:19:07'),
(24, 'zaina albitar', NULL, NULL, '0hl0IDHQy90l', NULL, NULL, '2024-08-18 13:19:07', '2024-08-18 13:19:07'),
(25, 'sedra talas', NULL, NULL, 'PZ1EIOYGUEAP', NULL, NULL, '2024-08-18 13:19:07', '2024-08-18 13:19:07'),
(26, 'heba sesan', NULL, NULL, 'ttKrPxD5MZI0', NULL, NULL, '2024-08-18 13:19:07', '2024-08-18 13:19:07'),
(27, 'neama altahan', NULL, NULL, 'EaIJSRIjdtnG', NULL, NULL, '2024-08-18 13:19:07', '2024-08-18 13:19:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advanced_users`
--
ALTER TABLE `advanced_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advanced_users_userid_foreign` (`userID`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announcements_serviceid_foreign` (`serviceID`),
  ADD KEY `announcements_userid_foreign` (`userID`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assigned_service_and_role_unique` (`assignedServiceID`,`roleID`),
  ADD KEY `assigned_roles_roleid_foreign` (`roleID`);

--
-- Indexes for table `assigned_services`
--
ALTER TABLE `assigned_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_and_service_unique` (`userID`,`serviceID`),
  ADD KEY `assigned_services_serviceid_foreign` (`serviceID`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_normaluserid_foreign` (`normalUserID`),
  ADD KEY `attendances_sessionid_foreign` (`sessionID`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fake_reservations`
--
ALTER TABLE `fake_reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fake_reservations_privatesessionid_foreign` (`privateSessionID`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_announcementid_foreign` (`announcementID`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_serviceid_foreign` (`serviceID`);

--
-- Indexes for table `interested_services`
--
ALTER TABLE `interested_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interested_services_userid_foreign` (`userID`),
  ADD KEY `interested_services_serviceid_foreign` (`serviceID`);

--
-- Indexes for table `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invitations_groupid_foreign` (`groupID`),
  ADD KEY `invitations_normaluserid_foreign` (`normalUserID`);

--
-- Indexes for table `join_requests`
--
ALTER TABLE `join_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `join_requests_senderid_foreign` (`senderID`),
  ADD KEY `join_requests_groupid_foreign` (`groupID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `normal_users`
--
ALTER TABLE `normal_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `normal_users_examinationnumber_unique` (`examinationNumber`),
  ADD KEY `normal_users_userid_foreign` (`userID`),
  ADD KEY `normal_users_serviceyearandspecializationid_foreign` (`serviceYearAndSpecializationID`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `private_reservations`
--
ALTER TABLE `private_reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `private_reservations_groupid_foreign` (`groupID`),
  ADD KEY `private_reservations_privatesessionid_foreign` (`privateSessionID`);

--
-- Indexes for table `private_sessions`
--
ALTER TABLE `private_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `private_sessions_sessionid_foreign` (`sessionID`);

--
-- Indexes for table `public_reservations`
--
ALTER TABLE `public_reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `public_reservations_userid_foreign` (`userID`),
  ADD KEY `public_reservations_publicsessionid_foreign` (`publicSessionID`);

--
-- Indexes for table `public_sessions`
--
ALTER TABLE `public_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `public_sessions_sessionid_foreign` (`sessionID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_rolename_unique` (`roleName`);

--
-- Indexes for table `saved_announcements`
--
ALTER TABLE `saved_announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saved_announcements_userid_foreign` (`userID`),
  ADD KEY `saved_announcements_announcementid_foreign` (`announcementID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_name_and_parent_and_year_and_specialization_unique` (`serviceName`,`parentServiceID`,`serviceYearAndSpecializationID`),
  ADD KEY `services_servicemanagerid_foreign` (`serviceManagerID`),
  ADD KEY `services_parentserviceid_foreign` (`parentServiceID`),
  ADD KEY `services_serviceyearandspecializationid_foreign` (`serviceYearAndSpecializationID`);

--
-- Indexes for table `services_managers`
--
ALTER TABLE `services_managers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_managers_position_unique` (`position`),
  ADD KEY `services_managers_userid_foreign` (`userID`);

--
-- Indexes for table `service_year_and_specializations`
--
ALTER TABLE `service_year_and_specializations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_year_and_specialization_unique` (`serviceYear`,`serviceSpecializationName`);

--
-- Indexes for table `sessionss`
--
ALTER TABLE `sessionss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessionss_userid_foreign` (`userID`),
  ADD KEY `sessionss_serviceid_foreign` (`serviceID`);

--
-- Indexes for table `swap_requests`
--
ALTER TABLE `swap_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `swap_requests_privatereservationid_foreign` (`privateReservationID`),
  ADD KEY `swap_requests_sendergroupid_foreign` (`senderGroupID`),
  ADD KEY `swap_requests_receivergroupid_foreign` (`receiverGroupID`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_members_normaluserid_foreign` (`normalUserID`),
  ADD KEY `team_members_groupid_foreign` (`groupID`);

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
-- AUTO_INCREMENT for table `advanced_users`
--
ALTER TABLE `advanced_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `assigned_services`
--
ALTER TABLE `assigned_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fake_reservations`
--
ALTER TABLE `fake_reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interested_services`
--
ALTER TABLE `interested_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `join_requests`
--
ALTER TABLE `join_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `normal_users`
--
ALTER TABLE `normal_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `private_reservations`
--
ALTER TABLE `private_reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `private_sessions`
--
ALTER TABLE `private_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `public_reservations`
--
ALTER TABLE `public_reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `public_sessions`
--
ALTER TABLE `public_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `saved_announcements`
--
ALTER TABLE `saved_announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `services_managers`
--
ALTER TABLE `services_managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_year_and_specializations`
--
ALTER TABLE `service_year_and_specializations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sessionss`
--
ALTER TABLE `sessionss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `swap_requests`
--
ALTER TABLE `swap_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `advanced_users`
--
ALTER TABLE `advanced_users`
  ADD CONSTRAINT `advanced_users_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_serviceid_foreign` FOREIGN KEY (`serviceID`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `announcements_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_assignedserviceid_foreign` FOREIGN KEY (`assignedServiceID`) REFERENCES `assigned_services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assigned_roles_roleid_foreign` FOREIGN KEY (`roleID`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `assigned_services`
--
ALTER TABLE `assigned_services`
  ADD CONSTRAINT `assigned_services_serviceid_foreign` FOREIGN KEY (`serviceID`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assigned_services_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_normaluserid_foreign` FOREIGN KEY (`normalUserID`) REFERENCES `normal_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_sessionid_foreign` FOREIGN KEY (`sessionID`) REFERENCES `sessionss` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `fake_reservations`
--
ALTER TABLE `fake_reservations`
  ADD CONSTRAINT `fake_reservations_privatesessionid_foreign` FOREIGN KEY (`privateSessionID`) REFERENCES `private_sessions` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_announcementid_foreign` FOREIGN KEY (`announcementID`) REFERENCES `announcements` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_serviceid_foreign` FOREIGN KEY (`serviceID`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `interested_services`
--
ALTER TABLE `interested_services`
  ADD CONSTRAINT `interested_services_serviceid_foreign` FOREIGN KEY (`serviceID`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `interested_services_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `invitations`
--
ALTER TABLE `invitations`
  ADD CONSTRAINT `invitations_groupid_foreign` FOREIGN KEY (`groupID`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invitations_normaluserid_foreign` FOREIGN KEY (`normalUserID`) REFERENCES `normal_users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `join_requests`
--
ALTER TABLE `join_requests`
  ADD CONSTRAINT `join_requests_groupid_foreign` FOREIGN KEY (`groupID`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `join_requests_senderid_foreign` FOREIGN KEY (`senderID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `normal_users`
--
ALTER TABLE `normal_users`
  ADD CONSTRAINT `normal_users_serviceyearandspecializationid_foreign` FOREIGN KEY (`serviceYearAndSpecializationID`) REFERENCES `service_year_and_specializations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `normal_users_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `private_reservations`
--
ALTER TABLE `private_reservations`
  ADD CONSTRAINT `private_reservations_groupid_foreign` FOREIGN KEY (`groupID`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `private_reservations_privatesessionid_foreign` FOREIGN KEY (`privateSessionID`) REFERENCES `private_sessions` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `private_sessions`
--
ALTER TABLE `private_sessions`
  ADD CONSTRAINT `private_sessions_sessionid_foreign` FOREIGN KEY (`sessionID`) REFERENCES `sessionss` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `public_reservations`
--
ALTER TABLE `public_reservations`
  ADD CONSTRAINT `public_reservations_publicsessionid_foreign` FOREIGN KEY (`publicSessionID`) REFERENCES `public_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `public_reservations_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `public_sessions`
--
ALTER TABLE `public_sessions`
  ADD CONSTRAINT `public_sessions_sessionid_foreign` FOREIGN KEY (`sessionID`) REFERENCES `sessionss` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `saved_announcements`
--
ALTER TABLE `saved_announcements`
  ADD CONSTRAINT `saved_announcements_announcementid_foreign` FOREIGN KEY (`announcementID`) REFERENCES `announcements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_announcements_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_parentserviceid_foreign` FOREIGN KEY (`parentServiceID`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_servicemanagerid_foreign` FOREIGN KEY (`serviceManagerID`) REFERENCES `services_managers` (`id`),
  ADD CONSTRAINT `services_serviceyearandspecializationid_foreign` FOREIGN KEY (`serviceYearAndSpecializationID`) REFERENCES `service_year_and_specializations` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `services_managers`
--
ALTER TABLE `services_managers`
  ADD CONSTRAINT `services_managers_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `sessionss`
--
ALTER TABLE `sessionss`
  ADD CONSTRAINT `sessionss_serviceid_foreign` FOREIGN KEY (`serviceID`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sessionss_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `swap_requests`
--
ALTER TABLE `swap_requests`
  ADD CONSTRAINT `swap_requests_privatereservationid_foreign` FOREIGN KEY (`privateReservationID`) REFERENCES `private_reservations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `swap_requests_receivergroupid_foreign` FOREIGN KEY (`receiverGroupID`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `swap_requests_sendergroupid_foreign` FOREIGN KEY (`senderGroupID`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `team_members`
--
ALTER TABLE `team_members`
  ADD CONSTRAINT `team_members_groupid_foreign` FOREIGN KEY (`groupID`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_members_normaluserid_foreign` FOREIGN KEY (`normalUserID`) REFERENCES `normal_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
