-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2022 at 04:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `Eventid` int(50) NOT NULL,
  `Eventname` varchar(50) NOT NULL,
  `Reg_number` varchar(50) NOT NULL,
  `Tickets` int(50) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `Eventid`, `Eventname`, `Reg_number`, `Tickets`, `price`) VALUES
(54, 41, 'DJ NIGHT', '19BNE2121', 2, 246),
(55, 42, 'DRAW-A-THON', '29bce1232', 3, 135);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(10) NOT NULL,
  `event_name` varchar(20) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `voulunteer1` varchar(30) NOT NULL,
  `1_number` varchar(15) NOT NULL,
  `volunteer2` varchar(30) NOT NULL,
  `2_number` varchar(15) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `poster` varchar(150) NOT NULL,
  `Entry_fee` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `start_date`, `end_date`, `voulunteer1`, `1_number`, `volunteer2`, `2_number`, `description`, `poster`, `Entry_fee`) VALUES
(40, 'Electronic Sound', '2021-12-25 19:40:00', '2022-01-02 20:00:00', 'Uday', '9053335999', 'Nivas ', '6300189494', 'You can make people pleasant by your voice. ', 'posteruploads/poster4.PNG', 50),
(41, 'DJ NIGHT', '2022-01-03 20:00:00', '2022-01-05 20:00:00', 'Ram', '4222882805', 'Laxman', '9053335999', 'Welcome To DJ Night', 'posteruploads/poster2.PNG', 123),
(42, 'DRAW-A-THON', '2022-01-15 00:00:00', '2022-01-17 00:00:00', 'Ram', '4222882805', 'Nivas ', '6300189494', 'Its time to show your skills', 'posteruploads/user2.jpg', 45),
(43, 'Spin And Win', '2022-01-20 00:00:00', '2022-01-30 00:00:00', 'Uday', '9053335999', 'Surya', '8465949869', 'Try your luck!!', 'posteruploads/poster.PNG', 100);

-- --------------------------------------------------------

--
-- Table structure for table `user_event`
--

CREATE TABLE `user_event` (
  `event_name` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob_no` varchar(50) NOT NULL,
  `descr` varchar(50) NOT NULL,
  `eve_poster` varchar(50) NOT NULL,
  `accepted` varchar(50) DEFAULT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_event`
--

INSERT INTO `user_event` (`event_name`, `mname`, `email`, `mob_no`, `descr`, `eve_poster`, `accepted`, `event_id`) VALUES
('HALLOWEN', 'Deves', 'deves2121@gmail.com', '9983421341', 'It was basically night club part with minimum entr', 'posteruploads/poster5.PNG', 'no', 54);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `userid` int(11) NOT NULL,
  `reg_number` varchar(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `contact_no` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`userid`, `reg_number`, `fname`, `lname`, `contact_no`, `email`, `password`, `gender`) VALUES
(15, '19BNE2121', 'KOVVURI UDAY SURYA', 'REDDY', '2323219', 'surya123@gmail.com', 'UD123', 'Male'),
(16, '29bce1232', 'Neha', 'Namini', '8675324568', 'neha123@gmail.com', 'neha1234', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `user_event`
--
ALTER TABLE `user_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user_event`
--
ALTER TABLE `user_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
