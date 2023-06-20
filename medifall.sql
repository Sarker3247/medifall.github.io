-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2021 at 08:49 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medifall`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `individualdonation`
--

CREATE TABLE `individualdonation` (
  `donorID` int(11) NOT NULL,
  `donorName` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `upzilla` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `medicine` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `daate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `individualdonation`
--

INSERT INTO `individualdonation` (`donorID`, `donorName`, `email`, `address`, `upzilla`, `district`, `medicine`, `quantity`, `phone`, `daate`) VALUES
(1, 'Hridoy', 'hridoy123@gmail.com', 'Bonosree', 'Badda', 'Dhaka', 'Napa', 10, '01312617206', '2021-08-27'),
(2, 'shourav', 'ssarker152167@bscse.uiu.ac.bd', '1/12 tajmohal road', 'mohammadpur', 'dhaka', 'gastrolfet', 10, '01679178054', '2021-09-03'),
(3, '123', 'shouravxp@gmail.com', '156', 'safa', 'fafa', 'fafafa', 20, 'fsaff', '2021-09-03');

-- --------------------------------------------------------

--
-- Table structure for table `organizationdonation`
--

CREATE TABLE `organizationdonation` (
  `orgID` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `location` varchar(50) NOT NULL,
  `upzilla` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `medicine` varchar(50) NOT NULL,
  `quantity` float NOT NULL,
  `phone` varchar(15) NOT NULL,
  `daate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organizationdonation`
--

INSERT INTO `organizationdonation` (`orgID`, `name`, `email`, `location`, `upzilla`, `district`, `medicine`, `quantity`, `phone`, `daate`) VALUES
(1, 'Life Hope Medicare', 'lhopemedicare@gmail.com', 'Dhanmondi 15', 'Dhanmondi', 'Dhaka', 'Osertile', 50, '01521434066', '2021-08-27 00:00:00'),
(2, 'Square', 'square@gmail.com', 'Tangail Sador', 'Tangail', 'Tangail', 'Ace', 100, '01657987898', '2021-08-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pharma`
--

CREATE TABLE `pharma` (
  `pharm_id` int(11) NOT NULL,
  `PharmaName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `upzilla` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `medicine_name` varchar(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `daate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharma`
--

INSERT INTO `pharma` (`pharm_id`, `PharmaName`, `email`, `area`, `upzilla`, `district`, `medicine_name`, `quantity`, `phone`, `daate`) VALUES
(8, 'Sarker_Medicine', 'shourav152167@gmail.com', 'bangladesh', 'dhaka', 'dhaka', 'gastrolfet', 20, '0171456789', '2021-09-03'),
(9, 'Mehedi_medicine', 'mehedi@gmail.com', 'bangladesh', 'dhaka', 'dhaka', 'gastrolfet', 20, '017125456789', '2021-09-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `individualdonation`
--
ALTER TABLE `individualdonation`
  ADD PRIMARY KEY (`donorID`);

--
-- Indexes for table `organizationdonation`
--
ALTER TABLE `organizationdonation`
  ADD PRIMARY KEY (`orgID`);

--
-- Indexes for table `pharma`
--
ALTER TABLE `pharma`
  ADD PRIMARY KEY (`pharm_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `individualdonation`
--
ALTER TABLE `individualdonation`
  MODIFY `donorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `organizationdonation`
--
ALTER TABLE `organizationdonation`
  MODIFY `orgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pharma`
--
ALTER TABLE `pharma`
  MODIFY `pharm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
