-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 06:14 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sequelize_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `addressdata`
--

CREATE TABLE `addressdata` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `country` enum('india','maldives','congo','germany') DEFAULT NULL,
  `state` enum('gujarat','goa','punjab','rajasthan') DEFAULT NULL,
  `city` enum('navsari','ahmedabad','surat','gandhinagar') DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addressdata`
--

INSERT INTO `addressdata` (`id`, `title`, `address1`, `address2`, `country`, `state`, `city`, `pincode`) VALUES
(1, 'urvi', 'KoliWad Faliyu,Gadat', 'Gadat,Navsari', 'india', 'gujarat', 'navsari', '396350'),
(2, 'jaini', 'gota chowkadi', 'thaltej,Ahmedabad', 'india', 'gujarat', 'ahmedabad', '396350'),
(3, 'jinal', 'KoliWad Faliyu,Gadat', 'Gadat,Navsari', 'india', 'gujarat', 'navsari', '396350');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `uploadImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `name`, `email`, `gender`, `password`, `uploadImage`) VALUES
(1, 'urvi patel', 'patelur.sd@gmail.com', 'female', '$2b$10$bNl9xQN42RaTnTUtNDa09.yNEhbBaVe9VpWHL4aWGELudeUO1pPWe', 'uploadImage-1641561645541'),
(2, 'urvi patel', 'patelur.sd12@gmail.com', 'female', '$2b$10$zyrN6mDSvSmev262OQYXuevT2r53KHBNwW0VSVcTpL.CQIfcZYcbi', 'uploadImage-1641558913445');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addressdata`
--
ALTER TABLE `addressdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addressdata`
--
ALTER TABLE `addressdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
