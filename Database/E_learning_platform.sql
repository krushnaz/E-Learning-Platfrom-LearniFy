-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2023 at 01:09 PM
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
-- Database: `E_learning_platform`
--

-- --------------------------------------------------------

--
-- Table structure for table `businessAccount`
--

CREATE TABLE `businessAccount` (
  `id` int(12) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` int(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `about` varchar(20) DEFAULT NULL,
  `rdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile` varchar(50) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `businessAccount`
--

INSERT INTO `businessAccount` (`id`, `name`, `email`, `password`, `gender`, `about`, `rdate`, `profile`) VALUES
(1, 'omkar', 'sumit@gmail.com', 12345, 'male', 'dfgb', '2023-05-03 13:58:12', 'default.jpg'),
(2, 'krushna', 'krishnazarekar@gmail.com', 12345, 'male', 'sdfgn', '2023-05-03 14:17:22', 'default.jpg'),
(3, 'omkar jare', 'om@gmail.com', 12345, 'male', 'i am programmer', '2023-05-05 05:59:23', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(12) NOT NULL,
  `cname` varchar(200) DEFAULT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `cname`, `description`) VALUES
(1, 'Business', 'you can add business info'),
(2, 'Information Technology', 'Info'),
(3, 'Computer Science', 'computer science'),
(4, 'Creativity', 'creativity'),
(5, 'Personal Development', 'personal development'),
(6, 'Health and Fitness', 'health and fitness'),
(7, 'Language', 'language'),
(8, 'Acadamic', 'acadamic');

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `user_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `progress_percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`user_id`, `course_name`, `progress_percent`) VALUES
(6, 'Course Title', 0);

-- --------------------------------------------------------

--
-- Table structure for table `uploadCourse`
--

CREATE TABLE `uploadCourse` (
  `pId` int(12) NOT NULL,
  `pTitle` varchar(150) DEFAULT NULL,
  `pDescription` longtext DEFAULT NULL,
  `pShortDescription` longtext DEFAULT NULL,
  `pPic` varchar(100) DEFAULT NULL,
  `pDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `catId` int(12) DEFAULT NULL,
  `pAbout` varchar(2000) DEFAULT NULL,
  `pInstructor` varchar(2000) DEFAULT NULL,
  `pNote` varchar(2000) DEFAULT NULL,
  `week1` varchar(200) DEFAULT NULL,
  `week2` varchar(200) DEFAULT NULL,
  `week3` varchar(200) DEFAULT NULL,
  `week4` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploadCourse`
--

INSERT INTO `uploadCourse` (`pId`, `pTitle`, `pDescription`, `pShortDescription`, `pPic`, `pDate`, `catId`, `pAbout`, `pInstructor`, `pNote`, `week1`, `week2`, `week3`, `week4`) VALUES
(40, 'Accounting Principles', ' This course introduces students to the fundamentals of accounting, including financial statements, budgeting, and internal controls. Students will learn how to analyze financial data, interpret financial statements, and make sound financial decisions.', 'LearniFy', 'accounting principle.jpeg', '2023-05-06 16:47:35', 1, 'This course teaches the principles of financial accounting, including how to create and interpret financial statements. Specializations within accounting include tax accounting, auditing, and managerial accounting.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(41, 'Degital Marketing', 'This course covers marketing strategies, consumer behavior, and market research. Specializations within marketing include digital marketing, branding, and international marketing.', 'LearniFy', 'marketing.jpeg', '2023-05-06 16:50:58', 1, 'This course covers marketing strategies, consumer behavior, and market research. Specializations within marketing include digital marketing, branding, and international marketing.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(42, 'Operations Management', 'This course focuses on the management of the production process, including supply chain management, quality control, and inventory management. Specializations within operations management include logistics management, process improvement, and lean manufacturing.', 'LearniFy', 'operation management.jpeg', '2023-05-06 16:52:49', 1, 'This course focuses on the management of the production process, including supply chain management, quality control, and inventory management. Specializations within operations management include logistics management, process improvement, and lean manufacturing.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(43, 'Entrepreneurship', 'This course teaches students how to start and run a business, including market analysis, financial planning, and risk management. Specializations within entrepreneurship include social entrepreneurship, technology entrepreneurship, and small business management.', 'LearniFy', 'entraprunor.jpeg', '2023-05-06 16:54:41', 1, 'This course teaches students how to start and run a business, including market analysis, financial planning, and risk management. Specializations within entrepreneurship include social entrepreneurship, technology entrepreneurship, and small business management.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(44, 'Human Resources', ' This course focuses on managing employees and includes topics such as recruitment, training, and compensation. Specializations within human resources include labor relations, diversity and inclusion, and talent management.', 'LearniFy', 'HR.jpeg', '2023-05-06 16:58:14', 1, ' This course focuses on managing employees and includes topics such as recruitment, training, and compensation. Specializations within human resources include labor relations, diversity and inclusion, and talent management.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(45, 'Leadership', ' This course focuses on managing employees and includes topics such as recruitment, training, and compensation. Specializations within human resources include labor relations, diversity and inclusion, and talent management.', 'LearniFy', 'leadership.jpeg', '2023-05-06 16:59:43', 1, ' This course focuses on managing employees and includes topics such as recruitment, training, and compensation. Specializations within human resources include labor relations, diversity and inclusion, and talent management.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(46, 'Information Technology ', 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'LearniFy', 'IT.jpeg', '2023-05-07 02:20:05', 2, 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(47, 'Computer Engineering ', 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'LearniFy', 'SE.png', '2023-05-07 02:22:14', 2, 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(48, 'Data Science ', 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'LearniFy', 'data science.jpeg', '2023-05-07 02:23:43', 2, 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(49, 'Cybersecurity', 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'LearniFy', 'cyber securoty.jpeg', '2023-05-07 02:25:31', 2, 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(50, 'Avanced Java', 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'LearniFy', 'java.png', '2023-05-07 02:26:36', 2, 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(51, 'C programming language', 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'LearniFy', 'C prog.png', '2023-05-07 02:28:53', 2, 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(52, 'PHP', 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'LearniFy', 'PHP.png', '2023-05-07 02:30:20', 2, 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(53, 'Introduction to Computer Science', 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'LearniFy', 'cs.jpeg', '2023-05-07 02:32:08', 3, 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(54, 'Data Structures and Algorithms:', 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'LearniFy', 'DS.jpeg', '2023-05-07 02:33:03', 3, 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(55, 'Operating Systems', 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'LearniFy', 'Operating Systems.png', '2023-05-07 02:38:10', 3, 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(56, 'Database Systems', 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'LearniFy', 'Database Systems: .jpeg', '2023-05-07 02:39:16', 3, 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(57, 'Creative Writing', 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'LearniFy', 'Creative Writing.jpeg', '2023-05-07 02:47:16', 4, 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(58, 'Design Thinking', 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'LearniFy', 'Design Thinking.png', '2023-05-07 02:48:04', 4, 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(59, 'Visual Thinking', 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'LearniFy', 'Visual Thinking.png', '2023-05-07 02:49:56', 4, 'This course focuses on the use of technology to manage and analyze information in organizations. Specializations in this field include data management, network administration, web development, and cybersecurity.', 'krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(60, 'Communication Skills:', 'This course helps individuals develop effective communication skills to express their thoughts and ideas clearly and persuasively. It covers topics like active listening, nonverbal communication, and conflict resolution.', 'LearniFy', 'ccommunication.jpeg', '2023-05-07 02:58:30', 5, 'Communication Skills Trainer', 'krushna', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(61, 'Self-Confidence', 'This course helps individuals develop effective communication skills to express their thoughts and ideas clearly and persuasively. It covers topics like active listening, nonverbal communication, and conflict resolution.', 'LearniFy', 'Self-Confidence.jpeg', '2023-05-07 03:03:42', 5, 'Communication Skills Trainer', 'krushna', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(62, 'Yoga Teacher Training:', 'This course teaches individuals how to teach yoga poses, breathing techniques, and meditation to others, as well as how to lead a yoga class.', 'LearniFy', 'yog.jpeg', '2023-05-07 03:07:59', 6, 'Restorative Yoga, Yoga Therapy, Ashtanga Yoga', ' krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(63, 'Nutrition Certification', 'This course teaches individuals how to teach yoga poses, breathing techniques, and meditation to others, as well as how to lead a yoga class.', 'LearniFy', 'Nutrition Certification.jpeg', '2023-05-07 03:09:17', 6, 'Restorative Yoga, Yoga Therapy, Ashtanga Yoga', ' krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(64, 'Spanish Language Course', ' Spanish is one of the most widely spoken languages in the world, and learning it can open up many opportunities for personal and professional growth. Specializations in Spanish can include translation, interpretation, teaching, and cultural studies.', 'LearniFy', 'spanish.jpeg', '2023-05-07 03:11:09', 7, ' Spanish is one of the most widely spoken languages in the world, and learning it can open up many opportunities for personal and professional growth. Specializations in Spanish can include translation, interpretation, teaching, and cultural studies.', ' krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(65, 'German Language Course', ' Spanish is one of the most widely spoken languages in the world, and learning it can open up many opportunities for personal and professional growth. Specializations in Spanish can include translation, interpretation, teaching, and cultural studies.', 'LearniFy', 'German Language Course.jpeg', '2023-05-07 03:12:06', 7, ' Spanish is one of the most widely spoken languages in the world, and learning it can open up many opportunities for personal and professional growth. Specializations in Spanish can include translation, interpretation, teaching, and cultural studies.', ' krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4'),
(66, 'Japanese Language Course', ' Spanish is one of the most widely spoken languages in the world, and learning it can open up many opportunities for personal and professional growth. Specializations in Spanish can include translation, interpretation, teaching, and cultural studies.', 'LearniFy', 'Japanese Language Course.jpeg', '2023-05-07 03:24:16', 7, ' Spanish is one of the most widely spoken languages in the world, and learning it can open up many opportunities for personal and professional growth. Specializations in Spanish can include translation, interpretation, teaching, and cultural studies.', ' krushna zarekar', 'no', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4', 'y2mate.com - HTML Course Worlds most premium HTML Course Lecture 2_480p.mp4', 'y2mate.com - HTML Course From Beginners to Advance Level Lecture 1_480p.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` int(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `about` varchar(200) DEFAULT NULL,
  `rdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile` varchar(200) NOT NULL DEFAULT 'default.png',
  `collegeName` varchar(200) NOT NULL DEFAULT 'no',
  `universityName` varchar(200) NOT NULL DEFAULT 'no',
  `totalProject` varchar(200) NOT NULL DEFAULT 'no',
  `englishLevel` varchar(200) NOT NULL DEFAULT 'no',
  `availability` varchar(200) NOT NULL DEFAULT 'no',
  `myCourses` varchar(200) NOT NULL DEFAULT 'no',
  `myCertification` varchar(200) NOT NULL DEFAULT 'no',
  `courseName` varchar(200) NOT NULL DEFAULT 'java developer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `name`, `email`, `password`, `gender`, `about`, `rdate`, `profile`, `collegeName`, `universityName`, `totalProject`, `englishLevel`, `availability`, `myCourses`, `myCertification`, `courseName`) VALUES
(3, 'krushna', 'sham@gmail.com', 12345, 'male', 'krushna', '2023-04-27 13:39:44', '', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(4, 'ram', 'ram@gmail.com', 1234, 'male', 'this is ram', '2023-04-28 00:29:21', '', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(5, 'omkar jare', 'om@gmail.com', 12345, 'Male', 'i am python devolper', '2023-04-28 08:53:29', '', 'nacasca', 'pune', '2', 'Beginner', '6 month', 'no', 'no', 'no'),
(6, 'krushna zarekar', 'krishnazarekar@gmail.com', 12345, 'Male', 'i am a java developer', '2023-04-29 02:39:52', 'user(1).png', 'nacasca', 'pune', '1', 'Beginner', '6 month', 'no', 'no', 'Object oriented java programming'),
(7, 'sumit petkar', 'sumitz@gmail.com', 12345, 'male', 'i am hacker', '2023-04-30 06:30:32', 'default.png', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(8, 'omkar jare', 'om@gmail.com', 12345, 'male', 'i am python developer', '2023-04-30 10:20:14', 'default.png', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'Object oriented java programming'),
(9, 'krushna', 'krishnazarekar@gmail.com', 2345, 'male', 'dfgh', '2023-05-03 13:14:32', 'default.png', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'java developer'),
(10, 'krushna', 'sham@gmail.com', 12345, 'male', 'sdfghn', '2023-05-03 13:35:27', 'default.png', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'java developer'),
(11, 'omkar', 'om@gmail.com', 12345, 'male', 'sdfbn', '2023-05-03 13:39:27', 'default.png', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'java developer'),
(12, 'omkar', 'sham@gmail.com', 12345, 'male', 'sdfgh', '2023-05-03 13:43:36', 'default.png', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'java developer'),
(13, 'omkar', 'om@gmail.com', 12345, 'male', 'sdfgb', '2023-05-03 13:46:53', 'default.png', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'java developer'),
(14, 'omkar', 'sham@gmail.com', 12345, 'male', 'werfghn', '2023-05-03 13:52:38', 'default.png', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'java developer'),
(15, 'kundan kadam', 'kundan@gmail.com', 12345, 'Male', 'i am java programmer', '2023-05-05 06:01:41', 'slider-image1.jpg', 'no', 'no', '', 'Beginner', 'no', 'no', 'no', 'java developer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `businessAccount`
--
ALTER TABLE `businessAccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`user_id`,`course_name`);

--
-- Indexes for table `uploadCourse`
--
ALTER TABLE `uploadCourse`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `businessAccount`
--
ALTER TABLE `businessAccount`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `uploadCourse`
--
ALTER TABLE `uploadCourse`
  MODIFY `pId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
