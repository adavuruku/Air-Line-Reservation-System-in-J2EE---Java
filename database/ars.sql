-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2019 at 04:29 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ars`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `adminName` varchar(250) NOT NULL,
  `userId` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adminName`, `userId`, `password`) VALUES
(1, 'Aminat Usman', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookflight`
--

CREATE TABLE `bookflight` (
  `id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `bc` int(11) NOT NULL,
  `fc` int(11) NOT NULL,
  `sc` int(11) NOT NULL,
  `nsc` int(11) NOT NULL,
  `cc` int(11) NOT NULL,
  `rc` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `dateBooked` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookflight`
--

INSERT INTO `bookflight` (`id`, `fid`, `bc`, `fc`, `sc`, `nsc`, `cc`, `rc`, `userid`, `pid`, `dateBooked`, `status`) VALUES
(1, 3, 0, 5, 0, 0, 0, 5, 'ARS560139', 7, '2019-10-29 18:50:34', 0),
(3, 3, 0, 5, 0, 0, 0, 5, 'ARS560139', 7, '2019-10-29 19:08:50', 1),
(4, 3, 0, 5, 0, 0, 0, 5, 'ARS560139', 7, '2019-10-29 19:09:52', 0),
(5, 3, 3, 0, 0, 4, 3, 22, 'ARS560139', 7, '2019-10-30 16:16:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `closecity`
--

CREATE TABLE `closecity` (
  `id` int(11) NOT NULL,
  `city` varchar(200) NOT NULL,
  `close` varchar(200) NOT NULL,
  `distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `closecity`
--

INSERT INTO `closecity` (`id`, `city`, `close`, `distance`) VALUES
(1, 'Abuja', 'Jos', 9),
(2, 'Abuja', 'Kano', 12),
(3, 'Rivers', 'Kano', 4),
(4, 'Rivers', 'Jos', 10),
(5, 'Jos', 'Abuja', 9),
(6, 'Jos', 'Rivers', 10),
(7, 'Jos', 'Kano', 5),
(8, 'Kano', 'Jos', 5),
(9, 'Kano', 'Abuja', 12),
(10, 'Bauchi', 'Kano', 7),
(11, 'Bauchi', 'Jos', 30),
(12, 'Bauchi', 'Rivers', 8),
(13, 'Enugu', 'Jos', 5),
(14, 'Enugu', 'Kano', 6),
(15, 'Oyo', 'Abuja', 3),
(16, 'Oyo', 'Jos', 6);

-- --------------------------------------------------------

--
-- Table structure for table `flightschedule`
--

CREATE TABLE `flightschedule` (
  `id` int(11) NOT NULL,
  `plname` varchar(250) NOT NULL,
  `plid` int(11) NOT NULL,
  `origin` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `total` int(11) NOT NULL,
  `bc` int(11) NOT NULL COMMENT 'business class',
  `fc` int(11) NOT NULL COMMENT 'first class',
  `nsc` int(11) NOT NULL COMMENT 'non smoking class',
  `sc` int(11) NOT NULL COMMENT 'smoking class',
  `cc` int(11) NOT NULL COMMENT 'club class',
  `regular` int(11) NOT NULL COMMENT 'regular class',
  `Dhours` int(11) NOT NULL,
  `DDate` date NOT NULL,
  `status` varchar(5) NOT NULL,
  `distance` int(11) NOT NULL,
  `hours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flightschedule`
--

INSERT INTO `flightschedule` (`id`, `plname`, `plid`, `origin`, `destination`, `total`, `bc`, `fc`, `nsc`, `sc`, `cc`, `regular`, `Dhours`, `DDate`, `status`, `distance`, `hours`) VALUES
(1, 'Kenya Airways Airline', 4, 'Rivers', 'Jos', 232, 23, 12, 5, 10, 15, 167, 3, '2019-10-30', '0', 8, 6),
(2, 'Qatar Airways', 5, 'Kano', 'Abuja', 552, 120, 100, 55, 35, 30, 212, 4, '2019-12-20', '0', 9, 7),
(3, 'Qatar Airways', 5, 'Abuja', 'Jos', 480, 117, 80, 51, 35, 27, 170, 22, '2019-11-26', '0', 9, 7),
(4, 'IRS Airline', 2, 'Abuja', 'Kano', 454, 55, 30, 12, 20, 26, 311, 11, '2019-11-12', '0', 9, 6),
(5, 'Macho Airlines', 1, 'Kano', 'Jos', 322, 25, 10, 10, 12, 15, 250, 3, '2019-11-09', '0', 9, 7),
(6, 'AL-Nur AirWays', 3, 'Kano', 'Jos', 434, 23, 25, 15, 15, 56, 300, 4, '2019-12-26', '0', 9, 7),
(7, 'AL-Nur AirWays', 3, 'Rivers', 'Jos', 434, 23, 25, 15, 15, 56, 300, 8, '2019-12-27', '0', 8, 6),
(8, 'AL-Nur AirWays', 3, 'Abuja', 'Kano', 434, 23, 25, 15, 15, 56, 300, 5, '2019-12-19', '0', 9, 6),
(9, 'IRS Airline', 2, 'Kano', 'Jos', 454, 55, 30, 12, 20, 26, 311, 5, '2019-12-19', '0', 9, 7);

-- --------------------------------------------------------

--
-- Table structure for table `flighttype`
--

CREATE TABLE `flighttype` (
  `id` int(11) NOT NULL,
  `origin` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `distance` int(11) NOT NULL,
  `hours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flighttype`
--

INSERT INTO `flighttype` (`id`, `origin`, `destination`, `description`, `distance`, `hours`) VALUES
(1, 'Abuja', 'Jos', 'Abuja To Jos', 9, 5),
(2, 'Jos', 'Abuja', 'Jos To Abuja', 9, 5),
(3, 'Abuja', 'Kano', 'Abuja To Kano', 12, 8),
(4, 'Kano', 'Abuja', 'Kano To Abuja', 12, 8),
(5, 'Jos', 'Kano', 'Jos To Kano', 5, 3),
(6, 'Kano', 'Jos', 'Kano To Jos', 5, 3),
(7, 'Jos', 'Rivers', 'Jos To Rivers', 10, 7),
(8, 'Rivers', 'Jos', 'Rivers To Jos', 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `planes`
--

CREATE TABLE `planes` (
  `id` int(11) NOT NULL,
  `plname` varchar(250) NOT NULL,
  `bc` int(11) NOT NULL COMMENT 'business class',
  `fc` int(11) NOT NULL COMMENT 'first class',
  `nsc` int(11) NOT NULL COMMENT 'non smoking class',
  `sc` int(11) NOT NULL COMMENT 'smoking class',
  `cc` int(11) NOT NULL COMMENT 'club class',
  `regular` int(11) NOT NULL COMMENT 'regular class',
  `bccost` int(11) NOT NULL,
  `fccost` int(11) NOT NULL,
  `sccost` int(11) NOT NULL,
  `nsccost` int(11) NOT NULL,
  `cccost` int(11) NOT NULL,
  `regularcost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `planes`
--

INSERT INTO `planes` (`id`, `plname`, `bc`, `fc`, `nsc`, `sc`, `cc`, `regular`, `bccost`, `fccost`, `sccost`, `nsccost`, `cccost`, `regularcost`) VALUES
(1, 'Macho Airlines', 25, 10, 10, 12, 15, 250, 95000, 103500, 65000, 18500, 31000, 10000),
(2, 'IRS Airline', 55, 30, 12, 20, 26, 311, 92900, 95000, 62500, 25500, 25000, 9000),
(3, 'AL-Nur AirWays', 23, 25, 15, 15, 56, 300, 150000, 150000, 53955, 45300, 43500, 11000),
(4, 'Kenya Airways Airline', 23, 12, 5, 10, 15, 167, 93520, 110520, 54500, 71000, 14500, 10000),
(5, 'Qatar Airways', 120, 100, 55, 35, 30, 212, 99500, 112000, 45000, 10000, 15600, 11500);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state`, `code`) VALUES
(1, 'Abuja', 'A'),
(2, 'Jos', 'B'),
(3, 'Kano', 'C'),
(4, 'Rivers', 'D'),
(5, 'Bauchi', 'E'),
(6, 'Enugu', 'F'),
(7, 'Oyo', 'G');

-- --------------------------------------------------------

--
-- Table structure for table `usersrecord`
--

CREATE TABLE `usersrecord` (
  `id` int(11) NOT NULL,
  `userId` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `cardNo` varchar(200) NOT NULL,
  `DateReg` datetime NOT NULL,
  `skymiles` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersrecord`
--

INSERT INTO `usersrecord` (`id`, `userId`, `password`, `fname`, `lname`, `address`, `phone`, `email`, `gender`, `age`, `cardNo`, `DateReg`, `skymiles`) VALUES
(1, 'ARS560139', '1122', 'Adamu', 'Ciroma S', 'D41 Ahmadu Bello Way Abuja Nigeria', '09031311212', 'adamuc@gmail.com', 'Male', 35, '34342', '2019-10-26 13:42:01', 0),
(2, 'ARS166980', '1234', 'Faisal', 'Yahaya', 'garki1', '09094518977', 'faisalyahya519@gmail.com', 'Male', 19, '02573310', '2019-10-29 15:26:48', 0),
(3, 'ARS875231', '1234', 'faisal', 'Yahaya', '                                \r\n                            garki1', '09094518977', 'faisalyahya519@gmail.com', 'Male', 18, '4567887653', '2019-10-29 15:34:26', 0),
(4, 'ARS515233', '1234', 'faisal', 'Yahaya', '                                \r\n                            garki1', '09094518977', 'faisalyahya519@gmail.com', 'Male', 18, '4567887653', '2019-10-29 15:39:56', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookflight`
--
ALTER TABLE `bookflight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `closecity`
--
ALTER TABLE `closecity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flightschedule`
--
ALTER TABLE `flightschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flighttype`
--
ALTER TABLE `flighttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersrecord`
--
ALTER TABLE `usersrecord`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookflight`
--
ALTER TABLE `bookflight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `closecity`
--
ALTER TABLE `closecity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `flightschedule`
--
ALTER TABLE `flightschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `flighttype`
--
ALTER TABLE `flighttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `planes`
--
ALTER TABLE `planes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usersrecord`
--
ALTER TABLE `usersrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
