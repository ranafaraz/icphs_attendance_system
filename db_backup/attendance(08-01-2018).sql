-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2018 at 04:02 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `attendance_std_master_id` int(11) NOT NULL,
  `attendance_status` varchar(12) NOT NULL,
  `created_at` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `attendance_std_master_id`, `attendance_status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 1, 'Present', '2018-01-01', 1, '2018-01-01 04:16:17', 2, 1),
(65, 1, '1', '0000-00-00', 0, '0000-00-00 00:00:00', 0, 0),
(66, 2, '2', '0000-00-00', 0, '0000-00-00 00:00:00', 0, 0),
(67, 3, '3', '0000-00-00', 0, '0000-00-00 00:00:00', 0, 0),
(68, 1, '3', '0000-00-00', 0, '0000-00-00 00:00:00', 0, 0),
(69, 2, '2', '0000-00-00', 0, '0000-00-00 00:00:00', 0, 0),
(70, 3, '3', '0000-00-00', 0, '0000-00-00 00:00:00', 0, 0),
(71, 1, '1', '0000-00-00', 0, '0000-00-00 00:00:00', 0, 0),
(72, 2, '1', '0000-00-00', 0, '0000-00-00 00:00:00', 0, 0),
(73, 3, '1', '0000-00-00', 0, '0000-00-00 00:00:00', 0, 0),
(74, 1, '3', '2018-01-07', 0, '0000-00-00 00:00:00', 0, 0),
(75, 2, '3', '2018-01-07', 0, '0000-00-00 00:00:00', 0, 0),
(76, 3, '3', '2018-01-07', 0, '0000-00-00 00:00:00', 0, 0),
(77, 4, '2', '2018-01-07', 0, '0000-00-00 00:00:00', 0, 0),
(78, 5, '3', '2018-01-07', 0, '0000-00-00 00:00:00', 0, 0),
(79, 6, '2', '2018-01-07', 0, '0000-00-00 00:00:00', 0, 0),
(80, 4, '1', '2018-01-07', 0, '0000-00-00 00:00:00', 0, 0),
(81, 5, '2', '2018-01-07', 0, '0000-00-00 00:00:00', 0, 0),
(82, 6, '1', '2018-01-07', 0, '0000-00-00 00:00:00', 0, 0),
(83, 4, '3', '2018-01-08', 0, '0000-00-00 00:00:00', 0, 0),
(84, 5, '3', '2018-01-08', 0, '0000-00-00 00:00:00', 0, 0),
(85, 6, '3', '2018-01-08', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `batch_id` int(11) NOT NULL,
  `batch_name` varchar(120) NOT NULL,
  `batch_course_id` int(11) NOT NULL,
  `batch_alias` varchar(35) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`batch_id`, `batch_name`, `batch_course_id`, `batch_alias`, `start_date`, `end_date`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Nursing (2018 - 2020)', 3, 'Nursing (2018 - 2020)', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 6, 1),
(2, 'Nursing (2019 - 2021)', 3, '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(3, 'Nursing (2020 - 2022)', 3, '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(4, 'BBA (2000 - 2004)', 1, '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(5, 'BBA (2004 - 2008)', 1, '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(6, 'BBA (2008 - 2012)', 1, '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(9, 'DD - (2000 - 2004)', 2, '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(10, 'DD - (2004 - 2008)', 2, '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `course_alias` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_code`, `course_alias`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Bachelor in Business Administration', 'BBA - 01', 'BBA', '2018-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(2, 'Diploma in Dispensary', 'DD - 001', 'Diploma in Dispensary', '2018-03-24 05:15:50', 1, '2018-03-24 05:15:50', 2, 1),
(3, 'Diploma in Nursing', 'DN - 001', 'Diploma in Nursing', '2018-03-24 05:15:50', 5, '2018-03-24 05:15:50', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `emp_info`
--

CREATE TABLE `emp_info` (
  `emp_info_id` int(11) NOT NULL,
  `emp_unique_id` int(11) NOT NULL,
  `emp_attendance_card_id` int(50) NOT NULL,
  `emp_title` varchar(15) NOT NULL,
  `emp_first_name` varchar(35) NOT NULL,
  `emp_middle_name` varchar(35) NOT NULL,
  `emp_last_name` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_info`
--

INSERT INTO `emp_info` (`emp_info_id`, `emp_unique_id`, `emp_attendance_card_id`, `emp_title`, `emp_first_name`, `emp_middle_name`, `emp_last_name`) VALUES
(1, 1, 1, '1', 'X', '1', '1'),
(2, 2, 2, '2', 'Y', '2', '2'),
(3, 3, 3, '3', 'Z', '3', '3');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section_name` varchar(50) NOT NULL,
  `section_batch_id` int(11) NOT NULL,
  `intake` int(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section_name`, `section_batch_id`, `intake`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, '1st Year', 1, 50, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 6, 1),
(2, '2nd Year', 1, 15, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 6, 1),
(3, '1st Year', 4, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(4, '1st Year', 5, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(5, '1st Year', 6, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(6, '1st Year', 9, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(7, '1st Year', 10, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(8, '1st Year', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(9, '1st Year', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(10, '1st Year', 3, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(11, '2nd Year', 4, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(12, '2nd Year', 4, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(13, '2nd Year', 6, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(14, '2nd Year', 9, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(15, '2nd Year', 10, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(16, '2nd Year', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(17, '2nd Year', 2, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(18, '2nd Year', 3, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stu_info`
--

CREATE TABLE `stu_info` (
  `stu_info_id` int(11) NOT NULL,
  `stu_unique_id` int(11) NOT NULL,
  `stu_title` varchar(15) NOT NULL,
  `stu_first_name` varchar(50) NOT NULL,
  `stu_middle_name` varchar(50) NOT NULL,
  `stu_last_name` varchar(50) NOT NULL,
  `stu_gender` varchar(20) NOT NULL,
  `stu_dob` date NOT NULL,
  `stu_email_id` varchar(65) NOT NULL,
  `stu_bloodgroup` varchar(15) NOT NULL,
  `stu_birthplace` varchar(45) NOT NULL,
  `stu_religion` varchar(50) NOT NULL,
  `stu_admission_date` date NOT NULL,
  `stu_photo` varchar(150) NOT NULL,
  `stu_languages` varchar(255) NOT NULL,
  `stu_mobile_no` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_info`
--

INSERT INTO `stu_info` (`stu_info_id`, `stu_unique_id`, `stu_title`, `stu_first_name`, `stu_middle_name`, `stu_last_name`, `stu_gender`, `stu_dob`, `stu_email_id`, `stu_bloodgroup`, `stu_birthplace`, `stu_religion`, `stu_admission_date`, `stu_photo`, `stu_languages`, `stu_mobile_no`) VALUES
(1, 1, 'Mr.', 'Rana', 'Faraz', 'Ahmed', '1', '0000-00-00', '1', '1', '1', '1', '0000-00-00', '1', '1', 1),
(2, 2, 'Mr.', 'Anas', '1', '1', '1', '0000-00-00', '1', '1', '1', '1', '0000-00-00', '1', '1', 1),
(3, 3, '1', 'Noman', '1', '1', '1', '0000-00-00', '1', '1', '1', '1', '0000-00-00', '1', '1', 1),
(4, 4, '1', 'Waleed', '1', '1', '1', '0000-00-00', '1', '1', '1', '1', '0000-00-00', '1', '1', 1),
(5, 5, '1', 'Abid', '1', '1', '1', '0000-00-00', '1', '1', '1', '1', '0000-00-00', '1', '1', 1),
(6, 6, '1', 'Mehtab', '1', '1', '1', '0000-00-00', '1', '1', '1', '1', '0000-00-00', '1', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stu_master`
--

CREATE TABLE `stu_master` (
  `stu_master_id` int(11) NOT NULL,
  `stu_master_stu_info_id` int(11) NOT NULL,
  `stu_master_section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_master`
--

INSERT INTO `stu_master` (`stu_master_id`, `stu_master_stu_info_id`, `stu_master_section_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Operating System', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(2, 'Networks', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(3, 'Marketing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(4, 'English', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(5, 'Urdu', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(6, 'Biology', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(7, 'Bla Bla Bla', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'Bla Bla Bla', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'Bla Bla Bla', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subjects_per_section`
--

CREATE TABLE `subjects_per_section` (
  `sub_per_sec_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `num_of_lec` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects_per_section`
--

INSERT INTO `subjects_per_section` (`sub_per_sec_id`, `section_id`, `subject_id`, `num_of_lec`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 1, 1, 15, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(2, 1, 2, 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(3, 1, 3, 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(4, 2, 4, 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(5, 2, 5, 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(6, 2, 6, 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(7, 2, 5, 22, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(8, 1, 5, 11, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `time_table_id` int(11) NOT NULL,
  `tt_sub_per_sec_id` int(11) NOT NULL,
  `tt_emp_id` int(11) NOT NULL,
  `tt_date` date NOT NULL,
  `tt_time` time NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`time_table_id`, `tt_sub_per_sec_id`, `tt_emp_id`, `tt_date`, `tt_time`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 1, 3, '0000-00-00', '00:00:06', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(2, 2, 2, '0000-00-00', '00:00:01', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(3, 3, 3, '0000-00-00', '00:00:01', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(4, 4, 1, '0000-00-00', '00:00:01', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(5, 5, 1, '0000-00-00', '00:00:01', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(6, 6, 1, '0000-00-00', '00:00:01', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `attendance_std_master_id` (`attendance_std_master_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`batch_id`),
  ADD KEY `batch_name` (`batch_name`),
  ADD KEY `batch_course_id` (`batch_course_id`),
  ADD KEY `batch_alias` (`batch_alias`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `course_name` (`course_name`),
  ADD KEY `course_code` (`course_code`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `emp_info`
--
ALTER TABLE `emp_info`
  ADD PRIMARY KEY (`emp_info_id`),
  ADD KEY `emp_unique_id` (`emp_unique_id`),
  ADD KEY `emp_attendance_card_id` (`emp_attendance_card_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`),
  ADD KEY `section_name` (`section_name`),
  ADD KEY `section_batch_id` (`section_batch_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `stu_info`
--
ALTER TABLE `stu_info`
  ADD PRIMARY KEY (`stu_info_id`),
  ADD KEY `stu_unique_id` (`stu_unique_id`),
  ADD KEY `stu_email_id` (`stu_email_id`);

--
-- Indexes for table `stu_master`
--
ALTER TABLE `stu_master`
  ADD PRIMARY KEY (`stu_master_id`),
  ADD KEY `stu_master_stu_info_id` (`stu_master_stu_info_id`),
  ADD KEY `stu_master_section_id` (`stu_master_section_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `subject_name` (`subject_name`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `subjects_per_section`
--
ALTER TABLE `subjects_per_section`
  ADD PRIMARY KEY (`sub_per_sec_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`time_table_id`),
  ADD KEY `tt_sub_per_sec_id` (`tt_sub_per_sec_id`),
  ADD KEY `tt_emp_id` (`tt_emp_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `emp_info`
--
ALTER TABLE `emp_info`
  MODIFY `emp_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `stu_info`
--
ALTER TABLE `stu_info`
  MODIFY `stu_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `stu_master`
--
ALTER TABLE `stu_master`
  MODIFY `stu_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `subjects_per_section`
--
ALTER TABLE `subjects_per_section`
  MODIFY `sub_per_sec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `time_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`attendance_std_master_id`) REFERENCES `stu_master` (`stu_master_id`);

--
-- Constraints for table `batches`
--
ALTER TABLE `batches`
  ADD CONSTRAINT `batches_ibfk_1` FOREIGN KEY (`batch_course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`section_batch_id`) REFERENCES `batches` (`batch_id`);

--
-- Constraints for table `stu_master`
--
ALTER TABLE `stu_master`
  ADD CONSTRAINT `stu_master_ibfk_1` FOREIGN KEY (`stu_master_section_id`) REFERENCES `section` (`section_id`),
  ADD CONSTRAINT `stu_master_ibfk_2` FOREIGN KEY (`stu_master_stu_info_id`) REFERENCES `stu_info` (`stu_info_id`);

--
-- Constraints for table `subjects_per_section`
--
ALTER TABLE `subjects_per_section`
  ADD CONSTRAINT `subjects_per_section_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`),
  ADD CONSTRAINT `subjects_per_section_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

--
-- Constraints for table `time_table`
--
ALTER TABLE `time_table`
  ADD CONSTRAINT `time_table_ibfk_1` FOREIGN KEY (`tt_emp_id`) REFERENCES `emp_info` (`emp_info_id`),
  ADD CONSTRAINT `time_table_ibfk_2` FOREIGN KEY (`tt_sub_per_sec_id`) REFERENCES `subjects_per_section` (`sub_per_sec_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
