-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 12:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staff&faculty`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(20) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email_add` varchar(100) NOT NULL,
  `contact_num` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `lastname`, `name`, `email_add`, `contact_num`, `department`) VALUES
(1, 'Tizon', 'Marylyn', 'tizonmarylyn2@gmail.com', '09308968357', 'Arts Department'),
(2, 'Batistil', 'Kurt Richmar', 'kurtrichmar@gmail.com', '09378596542', 'Music Department'),
(3, 'Melgazo', 'Lalaine', 'lainemelgazo819@gmail.com', '09207276696', 'Mathematics Department'),
(4, 'Estandarte', 'Immalyn', 'immalynrstandarte@gmail.com', '094679375268', 'Science Department'),
(5, 'Kayson', 'Jeralyn', 'kaysonjeralyn@gmail.com', '096025795894', 'Music Department'),
(6, 'Orit', 'Cathyrine', 'cathyrineorit@gmail.com', '095882655434', 'Reading Department'),
(7, 'Orias', 'Avelino', 'oriasavelino@gmail.com', '094748393794', 'Social Studies Deaprtment'),
(8, 'jhh', 'huy', 'iuyui', 'iuy', 'Science Department'),
(9, 'jhjg', 'tizon', 'uhkuuhiu', '09308968357', 'Mathematics Department'),
(10, 'Bronson', 'Brando', 'brandobronson@gmail.com', '096853785378', 'Music Departmnent'),
(11, 'Brooks', 'John', 'brooksjohn', '092578926892', 'Arts Department'),
(12, 'Burke', 'James', 'burkejames@gmail.com', '096783453679', 'Science Department'),
(13, 'Cruz', 'Kiem', 'kiemcruz@gmail.com', '098765479064', 'Mathematics Department'),
(14, 'Carey', 'Cyrus', 'careycyrus@gmail.com', '095836805468', 'Science Department'),
(15, 'Bernido', 'Korina', 'korinabernido@gmail.com', '097383694629', 'Arts Department'),
(16, 'Nierras', 'Jackielyn', 'jackielynnierras@gmail.com', '097865467897', 'Reading Department'),
(17, 'Arbiol', 'Kim', 'arbiolkim@gmail.com', '097865437892', 'Social Studies Deaprtment'),
(18, 'Guevarra', 'Acel', 'guevarraacel@gmail.com', '093689647926', 'Music Department'),
(19, 'Zhul', 'Alexis', 'zhulalexis@gmail.com', '096389268936', 'Arts Department'),
(20, 'Archieval', 'James', 'archievaljames@gmail.com', '096983684992', 'Music Departmnent');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `login_form`
--

CREATE TABLE `login_form` (
  `id` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(50) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_form`
--

INSERT INTO `login_form` (`id`, `username`, `password`, `usertype`) VALUES
(1, 'admin', 1234, 'admin'),
(2, 'user', 1234, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `log_info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `log_info`) VALUES
(1, 'user: jhee salan logged out!'),
(2, 'user: Lalaine Melgazo logged in!'),
(3, 'user: Lalaine Melgazo logged out!'),
(4, 'user: Lalaine Melgazo logged out!'),
(5, 'user: Lalaine Melgazo logged in!'),
(6, 'user: Lalaine Melgazo logged out!'),
(7, 'user: Lalaine Melgazo logged in!'),
(8, 'user: Lalaine Melgazo logged out!'),
(9, 'user: ejie florida logged in!'),
(10, 'user: ejie florida logged out!'),
(11, 'user: ejie florida logged out!'),
(12, 'user: ejie florida logged in!'),
(13, 'user: ejie florida logged in!'),
(14, 'user:   logged out!'),
(15, 'user: jhee salan logged in!'),
(16, 'user: jhee salan logged out!'),
(17, 'user: jhee salan logged out!'),
(18, 'user: Lalaine Melgazo logged in!'),
(19, 'user:   logged out!'),
(20, 'user: Lalaine Melgazo logged in!'),
(21, 'user: Lalaine Melgazo logged out!'),
(22, 'user: Lalaine Melgazo logged in!'),
(23, 'user: Lalaine Melgazo logged out!'),
(24, 'user: jhee salan logged in!'),
(25, 'user: jhee salan logged out!'),
(26, 'user: jhee salan logged out!'),
(27, 'user: bea enovero logged in!'),
(28, 'user: bea enovero logged out!'),
(29, 'user: bea enovero logged out!'),
(30, 'user: Lalaine Melgazo logged in!'),
(31, 'user: Lalaine Melgazo logged out!'),
(32, 'user: Lalaine Melgazo logged out!'),
(33, 'user: Lalaine Melgazo logged in!'),
(34, 'user: Lalaine Melgazo logged out!'),
(35, 'user: jhee salan logged in!');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `email_address` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `profile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `first_name`, `last_name`, `email_address`, `username`, `password`, `profile`) VALUES
(2, 'ejie', 'florida', 'ejieflorida128@gmail.com', 'ejie123', '123', '../profile_pictures/nopictures.jpg'),
(4, 'Lalaine', 'Melgazo', 'lainemelgazo819@gmail.com', 'laine15', '123', '../profile_pictures/nopictures.jpg'),
(5, 'Jheanne', 'Salan', 'jheanne@gmail.com', 'just_jhee92203', '1234', '../profile_pictures/nopictures.jpg'),
(6, 'jhee', 'salan', 'jhee@gmail.com', 'jhee', '123', '../profile_pictures/nopictures.jpg'),
(7, 'bea', 'enovero', 'belajenchixx@gmail.com', 'bhea', '12345', '../profile_pictures/nopictures.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time_in` varchar(255) NOT NULL,
  `time_out` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `name`, `position`, `faculty`, `date`, `time_in`, `time_out`, `task`) VALUES
(24, 'anne', 'admin', 'faculty 004', '2023-11-19', '22:32', '10:32', 'decoding'),
(25, 'jhee', 'admin', 'faculty 001', '2023-11-19', '22:33', '10:33', 'coding'),
(26, 'salan', 'admin', 'faculty 007', '2023-11-20', '22:43', '10:43', 'tasking'),
(27, 'admin', 'admin', 'admin', '2023-01-01', '01:00', '01:00', 'admin'),
(28, 'ejie', 'ejie', 'ejie', '2023-01-01', '01:00', '01:00', 'asdas');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(50) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email_add` varchar(100) NOT NULL,
  `contact_num` varchar(100) NOT NULL,
  `job` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `lastname`, `name`, `email_add`, `contact_num`, `job`) VALUES
(1, 'mercolita', 'Roy', 'mercolitaroy@gmail.com', '095863785478', 'clerk'),
(2, 'Coton', 'Michael', 'michaelcoton@gmail.com', '09693578257', 'cashier');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
