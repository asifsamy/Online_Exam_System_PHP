-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2017 at 05:31 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exams`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'asifsamy@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `que_id` int(10) NOT NULL,
  `sub_id` int(10) DEFAULT NULL,
  `que` varchar(200) DEFAULT NULL,
  `op1` varchar(100) DEFAULT NULL,
  `op2` varchar(100) DEFAULT NULL,
  `op3` varchar(100) DEFAULT NULL,
  `op4` varchar(100) DEFAULT NULL,
  `ans` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`que_id`, `sub_id`, `que`, `op1`, `op2`, `op3`, `op4`, `ans`) VALUES
(1, 1, 'HTML Means?', 'Hyper Text Manage Line', 'Hyper Text Markup Language', 'Hyper Text Manage Language', 'Hyper Text Markup Line', 2),
(2, 1, 'Who is making the Web standards?', 'Google', 'Microsoft', 'The World Wide Web Consortium', 'Mozilla', 3),
(3, 1, 'Choose the correct HTML element for the largest heading:', 'a', 'b', 'c', 'd', 1),
(4, 2, 'Which of the following type of variables are whole numbers, without a decimal point, like 4195?', 'Integers', 'Doubles', 'Booleans', 'Strings', 1),
(5, 2, 'Which of the following is correct about PHP?', 'PHP can access cookies variables and set cookies.', 'Using PHP, you can restrict users to access some pages of your website.', 'It can encrypt data.', 'All of the above.', 4),
(6, 2, 'Which of the following array represents an array with strings as index?', 'Numeric Array', 'Associative Array', 'Multidimentional Array', 'None of the above.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `email` varchar(50) DEFAULT NULL,
  `sub_id` int(5) DEFAULT NULL,
  `test_date` timestamp NULL DEFAULT NULL,
  `tot_que` int(5) DEFAULT NULL,
  `score` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`email`, `sub_id`, `test_date`, `tot_que`, `score`) VALUES
('sk@yahoo.com', 1, '2017-03-20 05:49:04', 3, 2),
('sm@gmail.com', 1, '2017-03-20 05:49:49', 3, 3),
('sm@gmail.com', 1, '2017-03-20 05:55:42', 3, 2),
('sk@yahoo.com', 1, '2017-03-20 15:38:15', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_id` int(5) NOT NULL,
  `sub_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `sub_name`) VALUES
(1, 'HTML'),
(2, 'PHP'),
(3, 'Javascript');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `password`, `institution`, `phone`) VALUES
(1, 'Samy', 'sm@gmail.com', 'samy', 'EWU', '01731683427'),
(2, 'Sakib', 'sk@yahoo.com', 'sakib', 'PLSCR', '01731683427'),
(3, 'Shohag', 'sh@gmail.com', 'shohag', 'EWU', '01731683427');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `que_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sub_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
