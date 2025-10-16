-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2025 at 07:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `course_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 0,
  `session` text DEFAULT NULL,
  `department` text DEFAULT NULL,
  `program_name` text DEFAULT NULL,
  `course_name` text DEFAULT NULL,
  `course_code` text DEFAULT NULL,
  `course_details` text DEFAULT NULL,
  `course_objectives` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_details`
--

CREATE TABLE `tbl_course_details` (
  `details_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 0,
  `course_id` int(11) DEFAULT NULL,
  `day_no` int(11) DEFAULT NULL,
  `content_details` text DEFAULT NULL,
  `resource_files` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `department_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 0,
  `department_name` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file`
--

CREATE TABLE `tbl_file` (
  `file_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 1,
  `file_owner_id` int(11) NOT NULL,
  `file_original_name` text NOT NULL,
  `file_new_name` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lab`
--

CREATE TABLE `tbl_lab` (
  `lab_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 0,
  `lab_title` text DEFAULT NULL,
  `lab_about` text DEFAULT NULL,
  `lab_outcome` text DEFAULT NULL,
  `lab_head_name` text DEFAULT NULL,
  `lab_head_details` text DEFAULT NULL,
  `lab_members_name` text DEFAULT NULL,
  `lab_members_details` text DEFAULT NULL,
  `files` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

CREATE TABLE `tbl_project` (
  `project_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 0,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `project_type` text DEFAULT NULL,
  `github_link` text DEFAULT NULL,
  `live_link` text DEFAULT NULL,
  `files` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_research`
--

CREATE TABLE `tbl_research` (
  `research_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 0,
  `research_type` text DEFAULT NULL,
  `research_title` text DEFAULT NULL,
  `abstract` text DEFAULT NULL,
  `published_date` date DEFAULT NULL,
  `accepted_date` date DEFAULT NULL,
  `journal_name` text DEFAULT NULL,
  `doi` text DEFAULT NULL,
  `isbn` text DEFAULT NULL,
  `issn` text DEFAULT NULL,
  `publisher` text DEFAULT NULL,
  `file_url` text DEFAULT NULL,
  `website_link` text DEFAULT NULL,
  `files` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 0,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `user_type` text DEFAULT NULL,
  `full_name` text DEFAULT NULL,
  `contact_no` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `profile_picture_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `status`, `email`, `password`, `user_type`, `full_name`, `contact_no`, `gender`, `profile_picture_id`, `created_at`, `modified_at`) VALUES
(1, 1, 'monicsejust@gmail.com', '$2y$10$maffzY8J1Z4z0eFoYSHe6Oz4Hz/KeDlNKj4AN0uh00usTRKbE74MS', 'admin', 'Admin', '', '', 0, '2025-10-16 17:45:43', '2025-10-16 17:45:43'),
(2, 1, 'm.halder@just.edu.bd', '$2y$10$c0RuNHY//Qv8KQrolTAzX.T6EKwfa1kX7la0URtKmzqLB9Z5PVQNm', 'admin', 'Admin', '', '', 0, '2025-10-16 17:45:43', '2025-10-16 17:45:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `tbl_course_details`
--
ALTER TABLE `tbl_course_details`
  ADD PRIMARY KEY (`details_id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_lab`
--
ALTER TABLE `tbl_lab`
  ADD PRIMARY KEY (`lab_id`);

--
-- Indexes for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `tbl_research`
--
ALTER TABLE `tbl_research`
  ADD PRIMARY KEY (`research_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_course_details`
--
ALTER TABLE `tbl_course_details`
  MODIFY `details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_file`
--
ALTER TABLE `tbl_file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_lab`
--
ALTER TABLE `tbl_lab`
  MODIFY `lab_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_research`
--
ALTER TABLE `tbl_research`
  MODIFY `research_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
