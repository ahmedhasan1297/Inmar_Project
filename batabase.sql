-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2018 at 09:07 AM
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
('hasan', '9876543210', 'nameuser@inmar.com', 'ram@inmar.com', ''),
('', '', '', 'example7%40inmar.com', ''),
('', '', '', 'example7%40inmar.com', ''),
('', '', '', 'example7%40inmar.com', ''),
('', '', '', 'example7%40inmar.com', ''),
('', '', '', 'example7%40inmar.com', ''),
('sai', '', 'sai@gmail.com', 'example7%40inmar.com', ''),
('sai', '', 'sai@gmail.com', 'example7%40inmar.com', ''),
('ram', '', 'ram@gmail.com', 'example7%40inmar.com', ''),
('sandeep', '999999999999', 'sandeep@gmail.com', 'example7%40inmar.com', ''),
('', '', '', 'example7%40inmar.com', ''),
('prudvi', '765456765', 'abc@gmail.com', 'example7%40inmar.com', ''),
('ahmed', '888888888', 'hasan@gmail.com', 'example7%40inmar.com', ''),
('rajesh', '234567890', 'rajesh@inmar.com', 'example7%40inmar.com', ''),
('raghu', '8901234578', 'raghu@inmar.com', 'example7%40inmar.com', 'college'),
('hasan', '88888888888', 'hasan@gmail.com', 'example7%40inmar.com', 'undefined'),
('narendra', '9877677889', 'naren@gmail.com', 'example7%40inmar.com', 'undefined'),
('naren', '8746464', 'kumar@gmail.com', 'example7%40inmar.com', 'undefined'),
('naren', '8746464', 'kumar@gmail.com', 'example7%40inmar.com', 'undefined'),
('kumar', '243442342', 'kumar@gmail.com', 'example7%40inmar.com', 'undefined'),
('krishna', '877778888', 'krishna@gmail.com', 'example7%40inmar.com', ''),
('rahul', '8767777', 'rahul@gmail.com', 'example7%40inmar.com', 'undefined'),
('hasan', '76545678', 'hasan@gmail.com', 'example7%40inmar.com', ''),
('pavan', '7896541230', 'pavan@inmar.com', 'example7%40inmar.com', '123'),
('kumar', '9874563210', 'kumar@inmar.com', 'example7%40inmar.com', 'NULL'),
('rohith', '998889282', 'rohith@inmar.com', 'example7%40inmar.com', 'NULL'),
('eswar', '9988221919', 'eswar@inmar.com', 'example7%40inmar.com', 'NULL'),
('gaffar', '778778371', 'gaffar@gmail.com', 'example7%40inmar.com', 'Details'),
('', '', '', 'example7%40inmar.com', ''),
('', '', '', 'example7%40inmar.com', ''),
('harsha', '9876545678', 'harsha@inmar.com', 'example7%40inmar.com', ''),
('ranjith', '9876545678', 'ranjith@inmar.com', 'example7%40inmar.com', ''),
('azith', '8788878889', 'azith@inmar.com', 'example7%40inmar.com', ''),
('fayaz', '9878987655', 'fayaz@inmar.com', 'example7%40inmar.com', ''),
('ravi', '7997009777', 'ravi@gmail.com', 'example7%40inmar.com', 'narayana'),
('dhana', '876599999', 'dhana@inmar.com', 'example7%40inmar.com', '123');

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
('project', '123', 'example7%40inmar.com'),
('final year', '4', 'ram@inmar.com'),
('college', '456', ''),
('school', '678', 'example7%40inmar.com'),
('hostel', '876', 'example7%40inmar.com'),
('PVPSIT', 'college', 'example7%40inmar.com'),
('dep', 'cse', 'ram@inmar.com'),
('Family', 'Details', 'example7%40inmar.com'),
('college', 'it', 'ram@inmar.com'),
('intermediate', 'narayana', 'example7%40inmar.com');

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
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`firstname`, `lastname`, `phone`, `adhar`, `email_u`, `password`) VALUES
('hasan', 'ahmed', '9032474014', '999999999999', 'ahmed@inmar.com', 'zZ1!zzzz'),
('pavan', 'kumar', '9876543451', '123456543211', 'example2@inmar.com', 'aA1!uuuu'),
('ahmed', 'hasan', '7777777777', '999999999999', 'example5@inmar.com', 'aA!1aaaaa'),
('mounika', 'vinnakota', '8765432345', '333333333333', 'example6@inmar.com', 'aA1!iiii'),
('ahmed', 'hasan', '8765434567', '987654323456', 'example7@inmar.com', 'aA!1aaaa'),
('deekshith', 'srinivas', '9876543234', 'example@inmar.com', 'male', '987654321234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`email_u`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
