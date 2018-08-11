-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 11, 2018 at 09:08 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timesheet`
--

-- --------------------------------------------------------

--
-- Table structure for table `timerecord`
--

CREATE TABLE `timerecord` (
  `id` int(11) NOT NULL,
  `companyname` varchar(200) NOT NULL,
  `date` varchar(30) NOT NULL,
  `printname` varchar(200) NOT NULL,
  `id_verified` varchar(200) NOT NULL,
  `timein` varchar(20) NOT NULL,
  `timeout` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timerecord`
--

INSERT INTO `timerecord` (`id`, `companyname`, `date`, `printname`, `id_verified`, `timein`, `timeout`) VALUES
(35, 'ssola', '', 'Navjot Babrah', 'passport', '12:58 AM', '12:58 AM'),
(36, 'ssola', '', 'Navjot Babrah', '', '12:58 AM', '12:58 AM'),
(37, 'SA', 'Aug 23, 2018', 'ASAS', '', '01:02 AM', '06:02 AM'),
(38, 'SA', 'Aug 23, 2018', 'ASAS', '', '01:02 AM', '06:02 AM'),
(39, 'sdd', 'Aug 24, 2018', 'Navjot Babrah', '', '04:03 AM', '04:21 AM'),
(40, 'sas', 'Aug 09, 2018', 'Navjot Singh Babrah', '', '04:05 AM', '05:05 AM'),
(41, 'assa', 'Aug 25, 2018', 'navjot babrah', 'License', '01:17 AM', '05:17 AM'),
(42, '', '', '', 'Driving License', '', ''),
(43, 'saas', '', 'sadas', '', '', ''),
(44, 'sa', 'Aug 16, 2018', 'Navjot Babrah', 'License', '08:24 AM', '06:24 AM'),
(45, 'lalo', 'Aug 17, 2018', 'Navjot Singh Babrah', 'ss', '04:25 AM', '05:24 AM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `timerecord`
--
ALTER TABLE `timerecord`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `timerecord`
--
ALTER TABLE `timerecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
