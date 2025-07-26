-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2025 at 01:41 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kbkbdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `othername` varchar(50) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `dob` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `resident_address` varchar(50) NOT NULL,
  `skill` varchar(50) NOT NULL,
  `lg` enum('Birnin_kebbi','Kalgo','Bunza') NOT NULL COMMENT 'Local Government',
  `educational_status` enum('Current Student','Graduate Completed Studies','NYSC Member') NOT NULL,
  `school_name` varchar(50) NOT NULL,
  `course_of_study` varchar(50) NOT NULL,
  `level` enum('100 level','200 level','300 level','400 level','Graduate') NOT NULL,
  `indigenePhoto` varchar(50) NOT NULL,
  `volunteering` enum('Yes','No') NOT NULL,
  `Expectations_from_the_Forum` varchar(50) NOT NULL,
  `dateRegister` timestamp(5) NOT NULL DEFAULT CURRENT_TIMESTAMP(5)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `firstname`, `surname`, `othername`, `gender`, `dob`, `phone`, `email`, `resident_address`, `skill`, `lg`, `educational_status`, `school_name`, `course_of_study`, `level`, `indigenePhoto`, `volunteering`, `Expectations_from_the_Forum`, `dateRegister`) VALUES
(1, 'Attahiru', 'Ahmad', 'Alkali', 'male', '2025-07-30', '09056935165', 'attahirualkali1320@gmail.com', 'Zoramawa', 'computer', 'Birnin_kebbi', 'Graduate Completed Studies', 'dff', 'ggg', '400 level', 'Attahiru My Resumed.png', 'Yes', 'good', '2025-07-25 22:42:33.32267');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(10) NOT NULL,
  `ip` int(10) NOT NULL,
  `DateVisited` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip`, `DateVisited`) VALUES
(1, 0, '2025-07-21 14:23:12.679138'),
(2, 0, '2025-07-21 14:23:12.679138'),
(3, 0, '2025-07-21 14:23:12.679138'),
(4, 0, '2025-07-21 14:24:06.061165'),
(5, 0, '2025-07-21 14:24:08.592603'),
(6, 0, '2025-07-21 14:25:24.618701'),
(7, 0, '2025-07-21 14:25:32.142052'),
(8, 0, '2025-07-21 14:25:32.888592'),
(9, 0, '2025-07-21 14:25:33.072480'),
(10, 0, '2025-07-21 14:25:33.215389'),
(11, 0, '2025-07-25 22:11:57.948962'),
(12, 0, '2025-07-25 22:14:02.186825'),
(13, 0, '2025-07-25 22:15:19.318699'),
(14, 0, '2025-07-25 22:16:23.474073'),
(15, 0, '2025-07-25 22:16:53.682400'),
(16, 0, '2025-07-25 22:16:54.857415'),
(17, 0, '2025-07-25 22:17:52.460115'),
(18, 0, '2025-07-25 22:17:54.640483'),
(19, 0, '2025-07-25 22:18:41.615256'),
(20, 0, '2025-07-25 22:18:43.278651'),
(21, 0, '2025-07-25 22:21:57.725415'),
(22, 0, '2025-07-25 22:21:57.728412'),
(23, 0, '2025-07-25 22:22:00.610635'),
(24, 0, '2025-07-25 22:22:55.872604'),
(25, 0, '2025-07-25 22:22:56.736073'),
(26, 0, '2025-07-25 22:22:57.364685'),
(27, 0, '2025-07-25 22:22:58.602923'),
(28, 0, '2025-07-25 22:37:29.866899'),
(29, 0, '2025-07-25 22:42:35.585286'),
(30, 0, '2025-07-25 22:43:48.492379'),
(31, 0, '2025-07-25 22:44:52.703832'),
(32, 0, '2025-07-25 22:44:57.179075'),
(33, 0, '2025-07-25 22:45:11.322363'),
(34, 0, '2025-07-25 22:45:51.028861'),
(35, 0, '2025-07-25 22:45:52.379255');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
