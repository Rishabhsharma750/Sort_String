-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 11, 2021 at 08:19 AM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3b4dzsxNYc`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp_details_employee`
--

CREATE TABLE `emp_details_employee` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `roll_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `class_name` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emp_details_employee`
--

INSERT INTO `emp_details_employee` (`id`, `name`, `roll_no`, `class_name`) VALUES
(1, 'Rishabh Sharma', '24', 12),
(2, 'Ritik Tripathi', '12', 11),
(3, 'Abhishek Mishra', '45', 9),
(4, 'Nitish sharma', '56', 10),
(6, 'Rashmi Sharma', '32', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp_details_employee`
--
ALTER TABLE `emp_details_employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp_details_employee`
--
ALTER TABLE `emp_details_employee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
