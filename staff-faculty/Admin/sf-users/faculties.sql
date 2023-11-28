-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2023 at 12:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faculty_system`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
