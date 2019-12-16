-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 10:11 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intermediary`
--

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
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2019_12_16_203340_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
('14fecba757260e257b12305389c309837b557a08deb55a269553022bd24d491bb0c2a90f1cc9c914', NULL, 1, NULL, '[]', 1, '2019-12-16 20:39:03', '2019-12-16 20:39:03', '2020-12-16 20:39:03'),
('1a3b4b238fd65c625c69f1cc111532d85331e85ca701d60aa80fb6d35cd17d404d547a3d73f15f8f', NULL, 1, NULL, '[]', 1, '2019-12-16 20:38:54', '2019-12-16 20:38:54', '2020-12-16 20:38:54'),
('5727c1d628b650cfe8c585a4241063d9e96b0bd94d1e849f78245802f278941380c7adba5f31cd91', NULL, 1, NULL, '[]', 1, '2019-12-16 20:43:53', '2019-12-16 20:43:53', '2020-12-16 20:43:53'),
('587b4a1e166c4716a58c7c14e6d590abcf0e513378f520ecbd6710792de86c2f096e7b15b64e8b03', NULL, 1, NULL, '[]', 0, '2019-12-17 01:58:28', '2019-12-17 01:58:28', '2020-12-16 20:58:28'),
('625042d03f50a7bce0c20adda4dc86f90fd0c32ace96e7e0a56712a4cf7b3a97fcf4c3861d9c2eab', NULL, 1, NULL, '[]', 1, '2019-12-16 20:39:00', '2019-12-16 20:39:00', '2020-12-16 20:39:00'),
('65e3a187985faa0e61ca465d15db6e784195cc28594a3f563f276e74b90d61f38b2e32e9814cafcf', NULL, 1, NULL, '[]', 1, '2019-12-17 01:50:13', '2019-12-17 01:50:13', '2020-12-16 20:50:13'),
('6749bb4dcfdb0c414db63d8903de4683a00a2fe3f33c5c83c84615e3d95b2c74e5e3b1044caa0166', NULL, 1, NULL, '[]', 1, '2019-12-16 20:38:59', '2019-12-16 20:38:59', '2020-12-16 20:38:59'),
('73c0055fc12a3386eeaf3c1205424eeabdcd3578afb7c838bea24d9453d7cd5c2c69d280f261c5f1', NULL, 1, NULL, '[]', 1, '2019-12-16 20:39:18', '2019-12-16 20:39:18', '2020-12-16 20:39:18'),
('7b7b2e2083089f9981bf54b388800822a7389bfb19d619c5ba4d4d7e0338d93a05e8f7efad523afb', NULL, 1, NULL, '[]', 1, '2019-12-16 20:39:01', '2019-12-16 20:39:01', '2020-12-16 20:39:01'),
('da50be0d7cff642cba7d9027a6d6f2fa56c49b17c6727a2a784cf8e4ebb4c78416aab7d6fc0e509a', NULL, 1, NULL, '[]', 1, '2019-12-17 01:58:25', '2019-12-17 01:58:25', '2020-12-16 20:58:25'),
('daaae2a4c43951fe7244db8a08e3ba6d66b4534e45609debf55d8091cd04211e32c10aacfef93420', NULL, 1, NULL, '[]', 1, '2019-12-16 20:39:30', '2019-12-16 20:39:30', '2020-12-16 20:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, ' Personal Access Client', 'AtMEXDGHRWVaazcDog22PN2Wr8IKNBOxUdt4TdGo', 'http://localhost', 1, 0, 0, '2019-12-16 20:01:42', '2019-12-16 20:01:42'),
(2, NULL, ' Password Grant Client', '3aCE6pPESpRJX3x07g1PYGeKYG8QFOMLwOvhX5WU', 'http://localhost', 0, 1, 0, '2019-12-16 20:01:42', '2019-12-16 20:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-12-16 20:01:42', '2019-12-16 20:01:42');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Barton Waelchi', 'michelle.johnson@reynolds.com', '$2y$10$ePlP3x22X1Ba16uH0IkKTeTOl062lNKvewc7BEED1SmyYSCEFI/hK', '2019-12-16 20:37:40', '2019-12-16 20:37:40'),
(2, 'Ms. Mathilde Reinger', 'ilang@hotmail.com', '$2y$10$t3VMkD7Usi6i.VUNGXZJbe/bsDHkseCZ2jyEuytsbbszByGGBmYm.', '2019-12-16 20:37:40', '2019-12-16 20:37:40'),
(3, 'Mr. Anthony Schmidt', 'hmosciski@oreilly.org', '$2y$10$JZEt//lrpPVn1t5RT6YxgeW8cW.K2igF47fet5QJCcMvUt4sQQQPS', '2019-12-16 20:37:40', '2019-12-16 20:37:40'),
(4, 'Karson Stoltenberg', 'antonina17@gmail.com', '$2y$10$Pz4BK1I1I3Kjrf.3t1KszOo5bwKtwpp1vQ/0lV4cFRreRX/9Hj3..', '2019-12-16 20:37:40', '2019-12-16 20:37:40'),
(5, 'Dr. Arianna Romaguera DVM', 'hattie.rogahn@batz.com', '$2y$10$JRIo.sZIj5QlzBQKvTuUSeY3YDaQ7zCtOlO9lYFW7AQoM0Vn6tmpW', '2019-12-16 20:37:40', '2019-12-16 20:37:40'),
(6, 'Aliza Klein', 'berry.johnston@wintheiser.com', '$2y$10$0GKLnUop0hRH.hSabIpky.J4LG2NlHDyzJXbqfcuBj7LfBrlIAeLa', '2019-12-16 20:37:40', '2019-12-16 20:37:40'),
(7, 'Pansy Green', 'mbreitenberg@yahoo.com', '$2y$10$SBwdhn/O9zHxERJLFsRZMeRkU/0M6tEZEcvltqe7iAD88FJfLwwNm', '2019-12-16 20:37:40', '2019-12-16 20:37:40'),
(8, 'Mr. Dalton Skiles Jr.', 'jimmy91@mitchell.info', '$2y$10$QJ5y2SiVRlwBkBn5A53hdePh5AUKoQIBMUdgjJZcE51hORjQI4Ukm', '2019-12-16 20:37:40', '2019-12-16 20:37:40'),
(9, 'Sylvester Parker', 'kathryne82@renner.com', '$2y$10$ZkkohR4VpDSdEs.zrHlxaO5vM2.Tlt5y/AEMtz2VBxX94J0.rqQi2', '2019-12-16 20:37:40', '2019-12-16 20:37:40'),
(10, 'Prof. Stefan Ullrich IV', 'cristal.zemlak@breitenberg.net', '$2y$10$OP7/uS0EN/T3UowDfeocVeRYWCrAcWjhwKey8x3h3A5Wk3qzLcMwy', '2019-12-16 20:37:40', '2019-12-16 20:37:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
