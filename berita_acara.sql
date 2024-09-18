-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2024 at 08:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berita_acara`
--

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `level_name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `level_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2024-09-07 01:42:54', '2024-09-07 01:42:54'),
(2, 'Admin', '2024-09-07 01:42:54', '2024-09-07 01:42:54'),
(3, 'Pic', '2024-09-07 01:42:54', '2024-09-07 01:42:54'),
(4, 'Instruktur', '2024-09-07 01:42:54', '2024-09-07 01:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2024-09-07 01:59:52', '2024-09-07 01:59:52'),
(2, 'Nawa', 'nawa@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2024-09-07 01:59:52', '2024-09-07 01:59:52'),
(8, 'Meimei007', 'mei07@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2024-09-09 04:26:52', '2024-09-09 04:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_levels`
--

CREATE TABLE `user_levels` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_levels`
--

INSERT INTO `user_levels` (`id`, `user_id`, `level_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-09-09 06:40:51', '2024-09-09 06:40:51'),
(2, 2, 1, '2024-09-09 06:42:47', '2024-09-09 06:42:47'),
(3, 2, 3, '2024-09-09 06:44:58', '2024-09-09 06:44:58'),
(4, 2, 3, '2024-09-09 07:23:32', '2024-09-09 07:23:32'),
(5, 2, 2, '2024-09-09 07:23:34', '2024-09-09 07:23:34'),
(6, 1, 3, '2024-09-09 07:24:37', '2024-09-09 07:24:37'),
(7, 1, 4, '2024-09-09 07:26:21', '2024-09-09 07:26:21'),
(8, 1, 4, '2024-09-09 07:26:50', '2024-09-09 07:26:50'),
(9, 1, 2, '2024-09-09 07:28:39', '2024-09-09 07:28:39'),
(10, 1, 2, '2024-09-09 07:29:28', '2024-09-09 07:29:28'),
(12, 0, 4, '2024-09-09 07:35:06', '2024-09-09 07:35:06'),
(13, 1, 2, '2024-09-09 07:37:02', '2024-09-09 07:37:02'),
(14, 2, 3, '2024-09-09 07:38:27', '2024-09-09 07:38:27'),
(15, 1, 1, '2024-09-09 07:40:04', '2024-09-09 07:40:04'),
(19, 8, 4, '2024-09-10 02:19:20', '2024-09-10 02:19:20'),
(20, 8, 1, '2024-09-10 02:19:22', '2024-09-10 02:19:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_levels`
--
ALTER TABLE `user_levels`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_levels`
--
ALTER TABLE `user_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
