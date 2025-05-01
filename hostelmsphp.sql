-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2025 at 09:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelmsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@mail.com', 'D00F5D5217896FB7FD601412CB890830', '2020-09-08 20:31:45', '2021-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, '401', 'Diploma in engineering', 'Computer', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `postingDate`, `updationDate`) VALUES
(26, 101, 3000, 1, '2024-05-23', 2, 'Please Select...', '2401', 'Pal', 'M.', 'Vachhani', 'male', 9714215040, 'palvachhani8@gmail.com', '0', 'Jamnagar', '', 361170, '2024-05-23 09:52:07', ''),
(27, 101, 3000, 0, '2024-05-23', 1, 'Please Select...', '2402', 'Diya', 'S.', 'Suthar', 'female', 6654282000, 'diyasuthar@gmail.com', '0', 'Vadodara', '', 300018, '2024-05-23 09:53:52', ''),
(28, 103, 2700, 0, '2024-05-23', 2, 'Please Select...', '2403', 'Aum', 'V.', 'Ghodasara', 'male', 7990026069, 'aumghodasara@gmail.com', '0', 'Rajkot', '', 360490, '2024-05-23 09:56:13', ''),
(29, 103, 2700, 0, '2024-05-23', 2, 'Please Select...', '2404', 'Neev', 'L.', 'Bhalodia', 'male', 8401771721, 'neevbhalodia@gmai.com', '0', 'Rajkot', '', 360490, '2024-05-23 09:58:19', ''),
(30, 102, 2500, 0, '2024-06-07', 2, 'Please Select...', '2405', 'Nisarg', 'J.', 'Patel', 'male', 9316629416, 'nisarg@gmail.com', '0', 'Dehgaam', '', 382315, '2024-05-23 10:01:24', ''),
(31, 102, 2500, 0, '2024-05-23', 2, 'Please Select...', '2406', 'Fenil', 'M.', 'Sakaria', 'male', 9313803278, 'fenilms@gmail.com', '0', 'Surat', '', 395006, '2024-05-23 10:02:39', ''),
(32, 102, 2500, 0, '2024-05-23', 1, 'Please Select...', '2407', 'Hrushikesh', 'V.', 'Trivedi', 'male', 7016360661, 'hrushitrivedi@gmail.com', '0', 'Katch', '', 370615, '2024-05-23 10:05:15', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(12, 2, 101, 2000, '2024-05-23 09:49:14'),
(13, 3, 102, 2500, '2024-05-23 09:49:35'),
(14, 3, 103, 2700, '2024-05-23 09:49:56'),
(15, 4, 104, 2000, '2024-05-24 07:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(29, 34, 'palvachhani9@gmail.com', 0x3a3a31, '', '', '2024-05-05 19:18:40'),
(30, 42, 'hrushitrivedi@gmail.com', 0x3a3a31, '', '', '2024-05-23 10:24:33'),
(31, 36, 'palvachhani8@gmail.com', 0x3a3a31, '', '', '2024-05-23 19:58:50'),
(32, 36, 'palvachhani8@gmail.com', 0x3a3a31, '', '', '2024-05-24 06:48:51'),
(33, 36, 'palvachhani8@gmail.com', 0x3a3a31, '', '', '2024-05-24 07:45:59'),
(34, 36, 'palvachhani8@gmail.com', 0x3a3a31, '', '', '2024-05-26 08:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(36, '2401', 'Pal', 'M.', 'Vachhani', 'Female', 9714215040, 'palvachhani8@gmail.com', '938687cdd67b1f0f7ec798d358570922', '2024-05-23 09:31:35', '', ''),
(37, '2402', 'Diya', 'S.', 'Suthar', 'Female', 9714215040, 'diyasuthar@gmail.com', '9badac667c5c63f6ecc56dd022af723f', '2024-05-23 09:32:50', '', ''),
(38, '2403', 'Aum', 'V.', 'Ghodasara', 'Male', 7990026069, 'aumghodasara@gmail.com', 'ee9ecfb974d1d6bc8abbf01412ab9acd', '2024-05-23 09:34:04', '', ''),
(39, '2404', 'Neev', 'L.', 'Bhalodia', 'Male', 8401771721, 'neevbhalodia@gmai.com', '9e4f4e11a137585548acb38c1fcd0c82', '2024-05-23 09:39:15', '', ''),
(40, '2405', 'Nisarg', 'J.', 'Patel', 'Male', 9316629416, 'njpatel@gmail.com', '6da242a63bfc276df1afb4637a93b56e', '2024-05-23 09:40:58', '', ''),
(41, '2406', 'Fenil', 'M.', 'Sakaria', 'Male', 9313803278, 'fenilms@gmail.com', '415b348ea23a30d1c92e6fc5e3815258', '2024-05-23 09:42:31', '', ''),
(42, '2407', 'Hrushikesh', 'V.', 'Trivedi', 'Male', 7016360661, 'hrushitrivedi@gmail.com', 'fa6400da740226c369f5e71b85b50ef9', '2024-05-23 09:45:24', '23-05-2024 05:24:42', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
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
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
