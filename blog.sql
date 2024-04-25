-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2024 at 07:54 PM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'title man', 'ttt asdf aqw wq wqe wq eqw wqe qwe', '2024-04-06 11:18:48', '2024-04-06 11:18:48'),
(2, 'my blog 2', 'my comment 2 my comment 2my comment 2my comment 2my comment 2my comment 2my comment 2my comment 2my comment 2my comment 2my comment 2my comment 2my comment 2my comment 2my comment 2my comment 2', '2024-04-06 11:19:10', '2024-04-06 11:19:10'),
(3, 'blog title sevomii', 'commente badi...commente badi...commente badi...commente badi...commente badi...commente badi...commente badi...commente badi...commente badi...', '2024-04-06 11:44:48', '2024-04-06 11:44:48'),
(4, 'new', 'dddddd', '2024-04-06 11:55:16', '2024-04-06 11:55:16'),
(5, '', '', '2024-04-07 08:01:53', '2024-04-07 08:01:53'),
(6, 'serwer', 'ewrwer', '2024-04-07 09:41:21', '2024-04-07 09:41:21'),
(7, 'jadiddd', 'qaswdwdw jadid. qaswdwdw jadid. qaswdwdw jadid. ', '2024-04-07 10:13:01', '2024-04-07 10:13:01'),
(8, '', '3r53', '2024-04-07 10:30:46', '2024-04-07 10:30:46'),
(9, '43', '343', '2024-04-07 10:30:54', '2024-04-07 10:30:54'),
(10, 'tttttttttttttttt', 'erwer', '2024-04-07 10:38:31', '2024-04-07 10:38:31'),
(11, 'ewqr', 'erer', '2024-04-07 10:44:48', '2024-04-07 10:44:48'),
(12, 'tryy', 't', '2024-04-07 11:46:13', '2024-04-07 11:46:13'),
(13, 'ggg', 'dgf', '2024-04-07 20:47:06', '2024-04-07 20:47:06'),
(14, 'ret', 'rtrt', '2024-04-25 17:52:56', '2024-04-25 17:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(0, 'test@test.com', '123', NULL, NULL),
(0, '', NULL, '2024-04-06 12:28:08', '2024-04-06 12:28:08'),
(0, '', NULL, '2024-04-06 12:28:11', '2024-04-06 12:28:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
