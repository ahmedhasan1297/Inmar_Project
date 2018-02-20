-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2018 at 04:03 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email_c` varchar(20) NOT NULL,
  `email_u` varchar(20) NOT NULL,
  `groupid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`name`, `phone`, `email_c`, `email_u`, `groupid`) VALUES
('ahmed', '9876543211', 'username@inmar.com', 'ram@inmar.com', ''),
('hasan', '9876543210', 'nameuser@inmar.com', 'ram@inmar.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `groupname` varchar(20) NOT NULL,
  `groupid` varchar(10) NOT NULL,
  `email_u` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groupname`, `groupid`, `email_u`) VALUES
('college', 'it', 'ram@inmar.com'),
('dep', 'cse', 'ram@inmar.com'),
('final year', '4', 'ram@inmar.com');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `adhar` varchar(20) NOT NULL,
  `email_u` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`firstname`, `lastname`, `phone`, `adhar`, `email_u`, `password`, `gender`) VALUES
('pavan', 'kumar', '9876543451', '123456543211', 'example2@inmar.com', 'aA1!uuuu', 'female'),
('ahmed', 'hasan', '7777777777', '999999999999', 'example5@inmar.com', 'aA!1aaaaa', 'male'),
('mounika', 'vinnakota', '8765432345', '333333333333', 'example6@inmar.com', 'aA1!iiii', 'female'),
('ahmed', 'hasan', '8765434567', '987654323456', 'example7@inmar.com', 'aA!1aaaa', 'male'),
('deekshith', 'srinivas', '9876543234', 'example@inmar.com', 'male', '987654321234', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`email_u`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
