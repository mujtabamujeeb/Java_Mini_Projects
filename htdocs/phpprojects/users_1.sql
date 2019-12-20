-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2019 at 09:08 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.3.11-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `usertype`, `theme`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'testing1', '$2y$10$Mj8U7kirbmzLwznDUmBuA.PD8cTJV8oFKWPssSY453OlBB5.Y2bQe', 'view', 'default', NULL, '2019-12-19 13:19:46', '2019-12-19 13:19:46'),
(2, 'Michael Jordan', 'testing2', '$2y$10$14SUrHqP/.42XJNRpZ2yUOG5jblEY6jDMRt1XEQEbYreLoatB0Dlu', 'view', 'default', NULL, '2019-12-19 13:20:41', '2019-12-19 13:20:41'),
(3, 'Tiger Woods', 'testing3', '$2y$10$mu3p5/MZWxt2JSZlagK3Au6ylQNUgBc829Qs6Vj5QkfgDnogHDNi6', 'view', 'default', NULL, '2019-12-19 13:21:07', '2019-12-19 13:21:07'),
(4, 'Danny Bravo', 'testing4', '$2y$10$aunJM4fJLEXTNV560ya13.LlED0kK/edGLfrzkLF0yaNvhPPEwz7G', 'view', 'default', NULL, '2019-12-19 13:21:58', '2019-12-19 13:21:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
