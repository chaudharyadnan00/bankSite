-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 03:48 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `accountNumber` bigint(255) NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `email`, `name`, `password`, `accountNumber`, `balance`) VALUES
(1, 'chaudharyadnan00@gmail.com', 'Adnan Chaudhary', 'Adnan@1234', 8192981242, 82281.675),
(2, 'kundan00@gmail.com', 'Kundan Yadav', 'Kundan@1234', 8934954650, 17955.098),
(3, 'shantanu00@gmail.com', 'Shantanu Khare', 'Shantanu@1234', 6396960682, 910.5),
(4, 'priyanshu00@gmail.com', 'Priyanshu Singh', 'Priyanshu@1234', 919451880, 11852.727),
(5, 'shivansh00@gmail.com', 'Shivansh Yadav', 'Shivansh@1234', 8931234650, 1100.9),
(6, 'aditya00@gmail.com', 'Aditya Srivastav', 'Aditya@1234', 9870454650, 500),
(7, 'abhishek00@gmail.com', 'Abhishek Singh', 'Abhishek@1234', 8195670150, 200),
(8, 'shrey00@gmail.com', 'Shrey Mishra', 'shrey@1234', 9720154650, 250),
(9, 'ayush00@gmail.com', 'Ayush Singh', 'Ayush@1234', 6307780082, 150.5),
(10, 'ankur00@gmail.com', 'Ankur Yadav', 'Ankur@1234', 9720890682, 700);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(255) NOT NULL,
  `payerName` varchar(255) NOT NULL,
  `payer` bigint(255) NOT NULL,
  `payeeName` varchar(255) NOT NULL,
  `payee` bigint(255) NOT NULL,
  `amount` double NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `payerName`, `payer`, `payeeName`, `payee`, `amount`, `time`) VALUES
(3, 'Adnan Chaudhary', 8192981242, 'Shantanu Khare', 6396960682, 10.5, '2022-10-11 10:49:22'),
(4, 'Priyanshu Singh', 919451880, 'Kundan Yadav', 8934954650, 50, '2022-10-11 10:53:28'),
(5, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100.1, '2022-10-13 06:28:27'),
(6, 'Shivansh Yadav', 8931234650, 'Adnan Chaudhary', 8192981242, 1100.9, '2022-10-13 06:30:29'),
(7, 'Kundan Yadav', 8934954650, 'Shivansh Yadav', 8931234650, 1100.9, '2022-10-13 06:32:24'),
(8, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-13 06:47:16'),
(9, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 5000.5, '2022-10-13 07:14:11'),
(10, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 5000.5, '2022-10-13 07:17:11'),
(11, 'Kundan Yadav', 8934954650, 'Adnan Chaudhary', 8192981242, 100, '2022-10-13 07:21:44'),
(12, 'Kundan Yadav', 8934954650, 'Adnan Chaudhary', 8192981242, 100, '2022-10-13 07:22:09'),
(13, 'Kundan Yadav', 8934954650, 'Adnan Chaudhary', 8192981242, 100, '2022-10-13 07:22:12'),
(14, 'Kundan Yadav', 8934954650, 'Adnan Chaudhary', 8192981242, 100, '2022-10-13 07:23:08'),
(15, 'Adnan Chaudhary', 8192981242, 'Adnan Chaudhary', 8192981242, 100, '2022-10-13 07:29:35'),
(16, 'Kundan Yadav', 8934954650, 'Adnan Chaudhary', 8192981242, 100, '2022-10-13 07:33:57'),
(17, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 11:34:20'),
(18, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 11:37:56'),
(19, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 11:39:45'),
(20, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 11:39:58'),
(21, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 11:40:41'),
(22, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 11:40:45'),
(23, 'Kundan Yadav', 8934954650, 'Adnan Chaudhary', 8192981242, 2000, '2022-10-18 11:42:08'),
(24, 'Kundan Yadav', 8934954650, 'Adnan Chaudhary', 8192981242, 2000, '2022-10-18 11:42:31'),
(25, 'Adnan Chaudhary', 8192981242, 'Priyanshu Singh', 919451880, 3700.909, '2022-10-18 11:45:12'),
(26, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 12:09:09'),
(27, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 12:09:32'),
(28, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 12:14:08'),
(29, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 12:14:58'),
(30, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 12:15:42'),
(31, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 12:16:16'),
(32, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 12:16:36'),
(33, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 12:16:51'),
(34, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 12:17:39'),
(35, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 12:22:33'),
(36, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 12:22:59'),
(37, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 12:23:38'),
(38, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 12:24:22'),
(39, 'Adnan Chaudhary', 8192981242, 'Kundan Yadav', 8934954650, 100, '2022-10-18 12:26:51'),
(40, 'Adnan Chaudhary', 8192981242, 'Priyanshu Singh', 919451880, 3700.909, '2022-10-18 12:30:14'),
(41, 'Adnan Chaudhary', 8192981242, 'Priyanshu Singh', 919451880, 3700.909, '2022-10-18 12:40:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
