-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 03, 2023 at 02:57 PM
-- Server version: 8.0.33-0ubuntu0.20.04.2
-- PHP Version: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `salary` decimal(11,2) UNSIGNED DEFAULT '0.00',
  `status` tinyint UNSIGNED DEFAULT '0',
  `is_deleted` tinyint UNSIGNED DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `phone`, `organization`, `designation`, `salary`, `status`, `is_deleted`, `created_at`) VALUES
(1, 'John', 'Doe', 'johndoe@gmail.com', '1234567890', 'BR Softech Pvt Ltd', 'Full Stack Developer', '500.00', 1, 0, '2023-06-03 12:11:26'),
(2, 'Jane', 'Doe', 'janedoe@gmail.com', '9876543210', 'RG Infotech Jaipur', 'PHP Developer', '450.00', 1, 0, '2023-06-03 12:11:26'),
(4, 'Mayank', 'Pachouri', 'mayank@gmail.com', '9713498686', 'abcd', 'dev', '100000.00', 1, 0, '2023-06-03 12:16:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
