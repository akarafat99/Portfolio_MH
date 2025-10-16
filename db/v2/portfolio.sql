-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2025 at 06:59 PM
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

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`course_id`, `status`, `session`, `department`, `program_name`, `course_name`, `course_code`, `course_details`, `course_objectives`, `created_at`, `modified_at`) VALUES
(1, 0, '2019-20', 'Electrical and Electronic Engineering', 'Bachelor of Science', 'Electrical and Electronics Engineering (EEE) ', 'EEE1201C1', 'Electrical and Electronics Engineering (EEE) combines the study of electricity, electronics, and electromagnetism to design, develop, and test systems like power grids, communication networks, and consumer electronics. The broader field of electrical engineering focuses on power generation, transmission, and control, while electronics engineering is a subset that deals with smaller-scale circuits, devices (like transistors and integrated circuits), and systems, including those in robotics and telecommunications.  What EEE Professionals Do Design and Develop: Create electrical and electronic devices, circuits, and comprehensive systems. Testing and Quality Control: Inspect and test new products and systems to ensure safety, reliability, and performance. System Management: Oversee the manufacturing, construction, and maintenance of electrical and electronic equipment and systems. Innovation: Work on cutting-edge technologies in diverse sectors like renewable energy, healthcare (biosensors), robotics, and smart cities.  Key Differences Electrical Engineering: Deals with larger-scale systems and the flow of electrical power, from generating and distributing power to designing electrical motors and radar systems. Electronics Engineering: Focuses on smaller-scale components and circuits, such as those found in mobile phones, computers, and other consumer electronic devices.  Career Outlook Graduates in EEE have broad career opportunities across numerous industries, including:  Telecommunications Automotive and Robotics Renewable Energy Healthcare and Avionics Information Technology and Software Semiconductors and Power Systems  Electrical and Electronics Engineers : Occupational Outlook Handbook Electrical and electronics engineers design, develop, and test electrical and electronic equipment, components, and systems. Dutie... favicon Bureau of Labor Statistics (.gov)  ELECTRICAL vs ELECTRONICS Engineering | What\'s the Difference? Electrical engineering encompasses all aspects of electrical and electromagnetic properties, ranging from designing logic devices ... favicon YouTube  What is Electronic & Electrical Engineering? Electronic and electrical engineering merges creative design with scientific principles to innovate electrical products, applicati... favicon YouTube  Show all', 'N/A', '2025-10-16 15:09:48', '2025-10-16 15:10:19');

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

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`department_id`, `status`, `department_name`, `created_at`, `modified_at`) VALUES
(1, 1, 'Computer Science and Engineering', '2025-10-16 15:05:23', '2025-10-16 15:05:23'),
(2, 1, 'Electrical and Electronic Engineering', '2025-10-16 15:05:42', '2025-10-16 15:08:51');

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

--
-- Dumping data for table `tbl_file`
--

INSERT INTO `tbl_file` (`file_id`, `status`, `file_owner_id`, `file_original_name`, `file_new_name`, `created`, `modified`) VALUES
(1, 1, 0, 'temp.jpg', 'aeUlcuCsuUTL1.jpg', '2025-10-16 14:54:32', '2025-10-16 14:54:32'),
(2, 1, 0, 'temp.jpg', 'VVFSUrsdzGQ2.jpg', '2025-10-16 15:13:49', '2025-10-16 15:13:49'),
(3, 1, 0, 'temp.jpg', '3g0R3xJIf2773.jpg', '2025-10-16 15:15:15', '2025-10-16 15:15:15'),
(4, 1, 0, 'NCCIA - National Conference on Computational Intelligence and Applications 2025.pdf', 'lOXezSmqM944.pdf', '2025-10-16 15:15:15', '2025-10-16 15:15:15'),
(5, 1, 2, 'temp.jpg', 'LLBEGZuuQwrm5.jpg', '2025-10-16 15:26:07', '2025-10-16 15:26:07'),
(6, 1, 3, 'temp.jpg', 'ApeEE4MCDHE6.jpg', '2025-10-16 15:50:20', '2025-10-16 15:50:20'),
(7, 1, 4, 'temp.jpg', 'CV94XXzpuDh7.jpg', '2025-10-16 15:51:26', '2025-10-16 15:51:26'),
(8, 1, 5, 'temp.jpg', 'FeuBGQSkg1GC8.jpg', '2025-10-16 16:08:54', '2025-10-16 16:08:54');

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

--
-- Dumping data for table `tbl_lab`
--

INSERT INTO `tbl_lab` (`lab_id`, `status`, `lab_title`, `lab_about`, `lab_outcome`, `lab_head_name`, `lab_head_details`, `lab_members_name`, `lab_members_details`, `files`, `created_at`, `modified_at`) VALUES
(1, 1, 'Compiler Lab', 'The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Ada, Go, D, Modula-2, and COBOL as well as libraries for these languages (libstdc++,...). GCC was originally written as the compiler for the GNU operating system. The GNU system was developed to be 100% free software, free in the sense that it respects the user\'s freedom.\r\n\r\nWe strive to provide regular, high quality releases, which we want to work well on a variety of native and cross targets (including GNU/Linux), and encourage everyone to contribute changes or help testing GCC. Our sources are readily and freely available via Git and weekly snapshots.\r\n\r\nMajor decisions about GCC are made by the steering committee, guided by the mission statement.', 'The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Ada, Go, D, Modula-2, and COBOL as well as libraries for these languages (libstdc++,...). GCC was originally written as the compiler for the GNU operating system. The GNU system was developed to be 100% free software, free in the sense that it respects the user\'s freedom.\r\n\r\nWe strive to provide regular, high quality releases, which we want to work well on a variety of native and cross targets (including GNU/Linux), and encourage everyone to contribute changes or help testing GCC. Our sources are readily and freely available via Git and weekly snapshots.\r\n\r\nMajor decisions about GCC are made by the steering committee, guided by the mission statement.', 'Monishanker Halder', 'N/A', '[\"Arafat\"]', '[\"Hello World\"]', '3,4', '2025-10-16 15:15:15', '2025-10-16 15:15:15');

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

--
-- Dumping data for table `tbl_project`
--

INSERT INTO `tbl_project` (`project_id`, `status`, `title`, `description`, `project_type`, `github_link`, `live_link`, `files`, `created_at`, `modified_at`) VALUES
(1, 1, 'C Compiler GNU v0.0.1', 'The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Ada, Go, D, Modula-2, and COBOL as well as libraries for these languages (libstdc++,...). GCC was originally written as the compiler for the GNU operating system. The GNU system was developed to be 100% free software, free in the sense that it respects the user\'s freedom.\r\n\r\nWe strive to provide regular, high quality releases, which we want to work well on a variety of native and cross targets (including GNU/Linux), and encourage everyone to contribute changes or help testing GCC. Our sources are readily and freely available via Git and weekly snapshots.\r\n\r\nMajor decisions about GCC are made by the steering committee, guided by the mission statement.', 'academic', 'https://gcc.gnu.org/onlinedocs/', 'https://gcc.gnu.org/onlinedocs/', '2', '2025-10-16 15:13:49', '2025-10-16 15:13:49');

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

--
-- Dumping data for table `tbl_research`
--

INSERT INTO `tbl_research` (`research_id`, `status`, `research_type`, `research_title`, `abstract`, `published_date`, `accepted_date`, `journal_name`, `doi`, `isbn`, `issn`, `publisher`, `file_url`, `website_link`, `files`, `created_at`, `updated_at`) VALUES
(1, 1, 'thesis', 'Thesis Operating System', 'The document discusses the challenges of writing a thesis on operating systems, including conducting thorough research, formulating arguments, and understanding complex computer science principles. It notes the pressure to deliver a high-quality thesis and how the process can feel overwhelming. However, it recommends trusting HelpWriting.net to guide the reader through the process and deliver a successful thesis by leveraging their expertise in operating systems and computer science fields, customized writing assistance, prioritization of deadlines, and quality assurance procedures.', '2025-10-16', '2025-10-16', 'Open navigation menu Scribd', '12345', '12345', '45678vcx', 'Open navigation menu Scribd', 'https://www.scribd.com/document/711107430/Thesis-Operating-System', 'https://www.scribd.com/document/711107430/Thesis-Operating-System', '', '2025-10-16 15:12:13', '2025-10-16 15:12:13');

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
(1, 1, 'mh@gmail.com', '$2y$10$0Xcu6CEuplmwNPxWJU4DjOzBjtAf3cags1xqlomXT85P8nnLphi.G', 'admin', 'Monishanker Halder', '01512312313', 'male', 1, '2025-10-16 14:52:04', '2025-10-16 16:13:50'),
(2, 1, 'arafatabdulkhaled@gmail.com', '$2y$10$a1Imu4Pv/IT7QyVBVzDZWOpVNCpR4IHtvt4InLmE0h.Xi7DTDTlNK', 'client', 'Abdul Khaled Arafat', '+8801835866504', 'male', 5, '2025-10-16 15:26:06', '2025-10-16 15:49:10'),
(6, 1, 'monicsejust@gmail.com', '$2y$10$eq/1uGsTLxqJHtS3IXn36uKByn0qAse3.qLQzjRH9hjlF3sV/qPi2', 'admin', 'Admin', '', '', 0, '2025-10-16 16:25:42', '2025-10-16 16:25:42'),
(7, 1, 'm.halder@just.edu.bd', '$2y$10$DqQ5/cFJzO8gGgz.Qvxk..OMT0Qu0dMpXvZ.YeP2R62fISuXT7oo2', 'admin', 'Admin', '', '', 0, '2025-10-16 16:25:42', '2025-10-16 16:25:42');

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
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_course_details`
--
ALTER TABLE `tbl_course_details`
  MODIFY `details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_file`
--
ALTER TABLE `tbl_file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_lab`
--
ALTER TABLE `tbl_lab`
  MODIFY `lab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_research`
--
ALTER TABLE `tbl_research`
  MODIFY `research_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
