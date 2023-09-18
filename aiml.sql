-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2023 at 12:34 PM
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
-- Database: `aiml`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_code` varchar(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `fid` varchar(30) NOT NULL,
  `credits` int(11) DEFAULT NULL,
  `hours` int(11) DEFAULT NULL,
  `sem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_code`, `title`, `fid`, `credits`, `hours`, `sem`) VALUES
('AM302', 'Data Structures', 'AM01', 4, 5, 3),
('AM303', 'Digital Systems and Computer\r\nOrganization', 'AM03', 3, 3, 3),
('AM304', 'Introduction to Machine Learning ', 'AM02', 4, 5, 3),
('AM305', 'Object Oriented Programming with Python', 'AM02', 1, 2, 3),
('AM402', 'Design and Analysis of\r\nAlgorithms', 'AM02', 4, 5, 4),
('AM403', 'Database Systems', 'AM04', 4, 5, 4),
('AM404', 'Operating Systems', 'AM01', 3, 3, 4),
('AM405', 'Advanced Machine Learning', 'AM03', 3, 3, 4),
('AM406', 'Machine Learning and Data\r\nScience Lab ', 'AM03', 1, 2, 4),
('AMA42', 'Programming in JAVA with Examples', 'AM04', 1, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `name` varchar(50) NOT NULL,
  `id` varchar(30) NOT NULL,
  `office` varchar(255) NOT NULL,
  `hod_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`name`, `id`, `office`, `hod_id`) VALUES
('Artificial Intelligence and Machine Learning', 'AM', '5th Floor, Sir M Visvesvaraya Block', '');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `dep_id` varchar(30) NOT NULL,
  `fid` varchar(30) NOT NULL,
  `title` varchar(5) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `m_init` varchar(1) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `designation` varchar(30) NOT NULL,
  `qualifications` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`dep_id`, `fid`, `title`, `fname`, `m_init`, `lname`, `designation`, `qualifications`, `phone`, `email`, `address`) VALUES
('AM', 'AM01', 'Dr.', 'Sharada', 'U', 'Shenoy', 'Professor & Head', 'Ph.D in CSE', NULL, 'sharadauday@nitte.edu.in', NULL),
('AM', 'AM02', 'Mr.', 'Sudesh', NULL, 'Rao', 'Assistant Professor Gd.II', 'Ph.D(pursuing), M.tech in CSE', NULL, 'sudesh.rao@nitte.edu.in', NULL),
('AM', 'AM03', 'Ms.', 'Disha', 'D', 'N', 'Assistant Professor Gd.II', 'Ph.D in ML(pursuing), M.Tech in CSE', NULL, 'disha.dn@nitte.edu.in', NULL),
('AM', 'AM04', 'Mr.', 'Mahesh', 'B', 'L', 'Assistant Professor Gd.II', 'M.Tech in CSIS', NULL, 'mahesh.bl@nitte.edu.in', NULL),
('AM', 'AM05', 'Ms.', 'Rakshitha', NULL, NULL, 'Assistant Professor Gd. I', 'Ph.D in NLP, Deep Learning', NULL, 'rakshitha.s@nitte.edu.in', NULL),
('AM', 'AM06', 'Ms.', 'Swathi', NULL, 'Pai', 'Assistant Professor Gd.II', 'Ph.D(pursuing)', NULL, 'swathi.pai@nitte.edu.in', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `internships`
--

CREATE TABLE `internships` (
  `USN` varchar(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Company Name` varchar(50) DEFAULT NULL,
  `Position` varchar(30) DEFAULT NULL,
  `Advisor Name` varchar(30) DEFAULT NULL,
  `Stipend` int(11) DEFAULT NULL,
  `Started` date NOT NULL,
  `Ended` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `usertype` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `usertype`) VALUES
('admin', 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `usn` varchar(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `cie` int(2) NOT NULL,
  `see` int(3) DEFAULT NULL,
  `grade_point` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`usn`, `course_code`, `cie`, `see`, `grade_point`) VALUES
('4NM21AI022', 'AM302', 47, 41, 9),
('4NM21AI022', 'AM305', 45, 45, 10),
('4NM21AI022', 'AM402', 48, NULL, NULL),
('4NM21AI022', 'AM404', 43, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mooc_course`
--

CREATE TABLE `mooc_course` (
  `USN` varchar(11) NOT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `course_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `USN` varchar(11) NOT NULL,
  `Course_Code` varchar(10) NOT NULL,
  `Title` text DEFAULT NULL,
  `proj_loc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `ssid` varchar(10) NOT NULL,
  `sem` int(11) NOT NULL,
  `section` varchar(1) DEFAULT NULL,
  `batch` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`ssid`, `sem`, `section`, `batch`) VALUES
('20-7A', 7, 'A', '2020-24'),
('21-4A', 4, 'A', '2021-25');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `usn` varchar(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `dob` date NOT NULL,
  `ssid` varchar(10) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`usn`, `fname`, `mname`, `lname`, `dob`, `ssid`, `phone`, `email`, `address`) VALUES
('4NM21AI002', 'Adithi', NULL, 'Ram', '2003-06-21', '21-4A', NULL, '4nm21ai002@nmamit.in', 'Udupi'),
('4NM21AI004', 'Aditi', 'S', 'Rao', '2003-06-02', '21-4A', NULL, '4nm21ai004@nmamit.in', 'Udupi'),
('4NM21AI005', 'Adril', 'Jenice', 'Dsa', '2003-06-10', '21-4A', '', '4nm21ai005@nmamit.in', 'Shirva'),
('4NM21AI015', 'Anvita', 'D', 'Shettigar', '2003-05-12', '21-4A', NULL, '4nm21ai015@nmamit.in', 'Bramavara'),
('4NM21AI022', 'Deepshika', 'G', 'Poojary', '2003-10-10', '21-4A', '9167723340', '4nm21ai022@nmamit.in', 'Shruthi Compound, Opposite Nitte Panchayat, Nitte, 574110');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_activities`
--

CREATE TABLE `teacher_activities` (
  `fid` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `started` date DEFAULT NULL,
  `ended` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_code`),
  ADD KEY `fk1` (`fid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_ind` (`hod_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `Department_ID` (`dep_id`);

--
-- Indexes for table `internships`
--
ALTER TABLE `internships`
  ADD PRIMARY KEY (`USN`,`Title`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`usn`,`course_code`),
  ADD KEY `Course_Code` (`course_code`),
  ADD KEY `USN` (`usn`);

--
-- Indexes for table `mooc_course`
--
ALTER TABLE `mooc_course`
  ADD KEY `USN` (`USN`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`USN`,`Course_Code`),
  ADD KEY `USN` (`USN`),
  ADD KEY `Course_Code` (`Course_Code`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`ssid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`usn`),
  ADD KEY `fk2` (`ssid`);

--
-- Indexes for table `teacher_activities`
--
ALTER TABLE `teacher_activities`
  ADD PRIMARY KEY (`fid`,`title`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`fid`) REFERENCES `faculty` (`fid`) ON DELETE CASCADE;

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `dept_fk` FOREIGN KEY (`hod_id`) REFERENCES `faculty` (`fid`) ON DELETE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `department` (`id`);

--
-- Constraints for table `internships`
--
ALTER TABLE `internships`
  ADD CONSTRAINT `internships_ibfk_1` FOREIGN KEY (`USN`) REFERENCES `student` (`USN`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`USN`) REFERENCES `student` (`USN`),
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`Course_Code`) REFERENCES `course` (`Course_Code`);

--
-- Constraints for table `mooc_course`
--
ALTER TABLE `mooc_course`
  ADD CONSTRAINT `mooc_course_ibfk_1` FOREIGN KEY (`USN`) REFERENCES `student` (`USN`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`USN`) REFERENCES `student` (`USN`),
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`Course_Code`) REFERENCES `course` (`Course_Code`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`ssid`) REFERENCES `section` (`ssid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_activities`
--
ALTER TABLE `teacher_activities`
  ADD CONSTRAINT `tafk1` FOREIGN KEY (`fid`) REFERENCES `faculty` (`fid`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacher_activities_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `faculty` (`fid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
