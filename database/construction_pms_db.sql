-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2024 at 10:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `construction_pms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `aid` int(10) NOT NULL,
  `eid` int(10) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `date_today` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`aid`, `eid`, `time_in`, `time_out`, `date_today`) VALUES
(21, 4, '10:41:25', '12:36:24', '2018-03-15'),
(23, 2, '11:04:43', '11:27:27', '2018-03-15'),
(24, 2, '07:52:02', '00:00:00', '2018-03-16'),
(25, 2, '07:52:58', '07:53:00', '2018-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(10) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `midname` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pid` int(10) NOT NULL,
  `status` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `ecode` varchar(10) NOT NULL,
  `date_added` date NOT NULL DEFAULT current_timestamp(),
  `e_pic` varchar(100) NOT NULL,
  `io` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `lastname`, `firstname`, `midname`, `bday`, `contact_no`, `address`, `pid`, `status`, `gender`, `ecode`, `date_added`, `e_pic`, `io`) VALUES
(1, 'Administrator', 'Admin', '', '1987-06-23', '12345678', 'Sample', 1, 'Single', 'Male', '78945', '0000-00-00', '9642_avatar.jpg', 1),
(2, 'suryawanshi', 'kunal', 'Ravindra', '2002-05-17', '8828481488', 'sec-2,airoli', 3, 'Single', 'Male', '78946', '2020-10-05', 'no_image.jpg', 2),
(3, 'Sutar', 'Himesh', 's', '2002-12-22', '9205131112', 'Thane', 4, 'Married', 'Male', '78947', '2020-10-05', 'no_image.jpg', 1),
(4, 'Mokal', 'Sahil', 'B', '2003-07-11', '9105381709', 'XYZ', 2, 'Single', 'Male', '78948', '2024-02-02', 'no_image.jpg', 1),
(5, 'Vanga', 'Govardhan', 'S', '2003-07-13', '6855553666', 'xhthtyrtsht', 3, 'Single', 'Male', '78949', '2024-02-02', 'no_image.jpg', 1),
(6, 'suryawanshi', 'kunal', 'Ravindra', '2024-02-01', '8828481488', 'hkjasdkfasf', 1, 'Married', 'Male', '78950', '2024-02-05', 'no_image.jpg', 1),
(7, 'Sharma', 'Rohit', 'G', '2001-11-30', '92051334345', 'ABC', 3, 'Single', 'Male', '78951', '2024-02-05', 'no_image.jpg', 1),
(8, 'Kohli', 'Virat', 'S', '2008-06-05', '6855553666', 'Delhi', 1, 'Married', 'Male', '78952', '2024-02-05', 'no_image.jpg', 1),
(9, 'kate', 'kuldeep', 'ravindra', '2003-06-08', '1234567891', 'sec1', 1, 'Single', 'Male', '78953', '2024-02-08', 'no_image.jpg', 1),
(10, 'nikam', 'sahil', 'pralhad', '2003-03-07', '7045071806', 'sec5', 1, 'Single', 'Male', '78954', '2024-03-01', 'no_image.jpg', 1),
(11, 'gupta', 'akash', 'singh', '2000-03-20', '8080809090', 'sec-1,airoli', 2, 'Single', 'Male', '78955', '2024-04-26', 'no_image.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `pid` int(10) NOT NULL,
  `position` varchar(100) NOT NULL,
  `p_type` varchar(15) NOT NULL,
  `daily_rate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`pid`, `position`, `p_type`, `daily_rate`) VALUES
(1, 'Manager', '', '2000'),
(2, 'Java Developer', '', '1500'),
(3, 'Database Engineer', '', '1200'),
(4, 'python Developer', '', '1300');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(10) NOT NULL,
  `project` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `overall_cost` varchar(10) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date NOT NULL,
  `site_pic` varchar(100) NOT NULL,
  `tid` int(10) NOT NULL,
  `proposed_project` int(5) NOT NULL,
  `date_added` date NOT NULL,
  `io` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project`, `location`, `overall_cost`, `start_date`, `deadline`, `site_pic`, `tid`, `proposed_project`, `date_added`, `io`) VALUES
(5, 'project Work Management', 'Kharghar', '2000', '2023-07-17', '2024-05-10', 'no_image.jpg', 1, 4, '2024-02-02', 1),
(6, 'dream india', 'mumbai', '2000', '2024-01-11', '2024-07-11', '8329_RS.jpg', 4, 2, '2024-03-01', 1),
(7, 'College management', 'thane', '1000', '2024-01-11', '2024-06-14', 'no_image.jpg', 2, 1, '2024-03-01', 1),
(8, 'Car management', 'airoli', '44444', '2024-09-28', '2024-10-28', 'no_image.jpg', 2, 1, '2024-09-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_division`
--

CREATE TABLE `project_division` (
  `pd_id` int(11) NOT NULL,
  `division` varchar(100) NOT NULL,
  `project_type` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_division`
--

INSERT INTO `project_division` (`pd_id`, `division`, `project_type`) VALUES
(1, 'Architecture Design', 1),
(2, 'Coding', 4),
(3, 'Unit Integrated Testing', 1),
(4, 'Packing And Dispatch', 5),
(5, 'Software Training To Customer', 1),
(6, 'Customer Handling', 3);

-- --------------------------------------------------------

--
-- Table structure for table `project_partition`
--

CREATE TABLE `project_partition` (
  `pp_id` int(10) NOT NULL,
  `project_id` int(10) NOT NULL,
  `pd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_partition`
--

INSERT INTO `project_partition` (`pp_id`, `project_id`, `pd_id`) VALUES
(1, 2, 5),
(2, 3, 2),
(3, 3, 1),
(4, 4, 2),
(5, 3, 3),
(6, 4, 1),
(7, 4, 3),
(8, 3, 5),
(9, 4, 5),
(10, 3, 4),
(11, 4, 4),
(12, 5, 1),
(13, 5, 6),
(14, 5, 5),
(15, 5, 3),
(16, 6, 1),
(17, 6, 6),
(18, 6, 5),
(19, 6, 3),
(20, 7, 1),
(21, 7, 6),
(22, 7, 5),
(23, 7, 3),
(24, 8, 1),
(25, 8, 6),
(26, 8, 5),
(27, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `project_progress`
--

CREATE TABLE `project_progress` (
  `prog_id` int(10) NOT NULL,
  `pp_id` int(10) NOT NULL,
  `progress` int(2) NOT NULL,
  `date_added` date NOT NULL,
  `partition_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_progress`
--

INSERT INTO `project_progress` (`prog_id`, `pp_id`, `progress`, `date_added`, `partition_img`) VALUES
(1, 0, 0, '2020-10-05', ''),
(2, 0, 0, '2020-10-05', 'no_image.jpg'),
(3, 0, 0, '2020-10-05', 'no_image.jpg'),
(4, 0, 0, '2020-10-05', ''),
(5, 0, 0, '2020-10-05', ''),
(6, 0, 0, '2020-10-05', ''),
(7, 0, 0, '2020-10-05', ''),
(8, 0, 0, '2020-10-05', ''),
(9, 0, 0, '2020-10-05', ''),
(10, 0, 0, '2020-10-05', 'no_image.jpg'),
(11, 0, 0, '2020-10-05', ''),
(12, 0, 0, '2020-10-05', 'no_image.jpg'),
(13, 1, 80, '2020-10-05', '4703_blank.jpg'),
(14, 0, 0, '2020-10-05', 'no_image.jpg'),
(15, 0, 0, '2020-10-05', 'no_image.jpg'),
(16, 4, 80, '2020-10-05', '6536_blank.jpg'),
(17, 6, 100, '2020-10-05', '1907_blank.jpg'),
(18, 7, 90, '2020-10-05', '8358_blank.jpg'),
(19, 7, 10, '2020-10-05', '9062_blank.jpg'),
(20, 9, 90, '2020-10-05', '3728_blank.jpg'),
(21, 11, 80, '2020-10-05', '9689_blank.jpg'),
(22, 0, 0, '2024-02-02', ''),
(23, 0, 0, '2024-02-02', ''),
(24, 0, 0, '2024-02-02', ''),
(25, 0, 0, '2024-02-02', 'no_image.jpg'),
(26, 0, 0, '2024-02-02', 'no_image.jpg'),
(27, 0, 0, '2024-02-02', 'no_image.jpg'),
(28, 12, 10, '2024-02-02', '2902_arch1.jpg'),
(29, 15, 40, '2024-02-02', '8015_9689_blank.jpg'),
(30, 0, 0, '2024-02-02', ''),
(31, 13, 50, '2024-02-05', '6084_creative (1).png'),
(32, 0, 0, '2024-02-05', 'no_image.jpg'),
(33, 0, 0, '2024-02-05', 'no_image.jpg'),
(34, 0, 0, '2024-02-05', ''),
(35, 0, 0, '2024-02-05', 'no_image.jpg'),
(36, 0, 0, '2024-02-08', 'no_image.jpg'),
(37, 0, 0, '2024-02-08', ''),
(39, 14, 50, '2024-03-01', '5752_9062_blank.jpg'),
(40, 0, 0, '2024-03-01', 'no_image.jpg'),
(41, 0, 0, '2024-03-01', 'no_image.jpg'),
(42, 0, 0, '2024-03-01', 'no_image.jpg'),
(43, 0, 0, '2024-04-26', 'no_image.jpg'),
(44, 18, 40, '2024-04-27', '6274_Screenshot from 2022-07-22 15-22-13.png'),
(45, 0, 0, '2024-09-28', 'no_image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project_team`
--

CREATE TABLE `project_team` (
  `tid` int(10) NOT NULL,
  `date_added` date NOT NULL,
  `eid` int(10) NOT NULL,
  `pio` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_team`
--

INSERT INTO `project_team` (`tid`, `date_added`, `eid`, `pio`) VALUES
(1, '2020-10-05', 5, 1),
(2, '2024-02-05', 6, 1),
(3, '2024-02-05', 6, 1),
(4, '2024-02-08', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_member`
--

CREATE TABLE `team_member` (
  `tm_id` int(10) NOT NULL,
  `tid` int(10) NOT NULL,
  `eid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `team_member`
--

INSERT INTO `team_member` (`tm_id`, `tid`, `eid`) VALUES
(24, 1, 2),
(32, 3, 4),
(33, 3, 3),
(35, 2, 1),
(36, 2, 1),
(37, 2, 8),
(38, 2, 7),
(41, 1, 2),
(46, 4, 9),
(52, 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(10) NOT NULL,
  `eid` int(5) NOT NULL,
  `user_type` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `io` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `eid`, `user_type`, `username`, `password`, `io`) VALUES
(1, 1, 1, 'kunal', 'kunal', 1),
(3, 5, 2, 'vanga', 'vanga', 1),
(4, 7, 2, 'rohit', 'sharma', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_division`
--
ALTER TABLE `project_division`
  ADD PRIMARY KEY (`pd_id`);

--
-- Indexes for table `project_partition`
--
ALTER TABLE `project_partition`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `project_progress`
--
ALTER TABLE `project_progress`
  ADD PRIMARY KEY (`prog_id`);

--
-- Indexes for table `project_team`
--
ALTER TABLE `project_team`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`tm_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project_division`
--
ALTER TABLE `project_division`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_partition`
--
ALTER TABLE `project_partition`
  MODIFY `pp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `project_progress`
--
ALTER TABLE `project_progress`
  MODIFY `prog_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `project_team`
--
ALTER TABLE `project_team`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `team_member`
--
ALTER TABLE `team_member`
  MODIFY `tm_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
