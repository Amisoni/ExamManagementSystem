-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2020 at 07:34 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `no` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `topics` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`no`, `name`, `class`, `topics`, `image`) VALUES
(1, 'software engineering', 'flaticon-feature', '111', 'assets/img/category/1.jpg'),
(2, 'Interactive Programming', 'flaticon-interaction', '123', 'assets/img/category/2.jpg'),
(3, 'Quantum Mechanics', 'flaticon-conveyor', '456', 'assets/img/category/3.jpg'),
(4, 'Preventing Dementia', 'flaticon-education', '1123', 'assets/img/category/4.jpg'),
(5, 'Hidden Potential', 'flaticon-potential', '546', 'assets/img/category/5.jpg'),
(6, 'Introduction Programming', 'flaticon-print', '3,340', 'assets/img/category/6.jpg'),
(7, 'Machine Learning', 'flaticon-translate', '7,800', 'assets/img/category/7.jpg'),
(8, 'Maintaining a Mindful', 'flaticon-firewall', '2480', 'assets/img/category/8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `no` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int(5) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`no`, `name`, `price`, `image`, `description`) VALUES
(1, 'Data Science and Software', 5000, 'assets/img/courses/1.jpg', ' Would day nor ask walls known. But preserved advantage are but and certainty earnestly enjoyment.'),
(2, 'Stanford Engineering', 12000, 'assets/img/courses/2.jpg', ' Would day nor ask walls known. But preserved advantage are but and certainty earnestly enjoyment.'),
(3, 'Covers Big Data Analysis', 15000, 'assets/img/courses/3.jpg', 'Would day nor ask walls known. But preserved advantage are but and certainty earnestly enjoyment.'),
(4, 'Java Programming Masterclass', 30000, 'assets/img/courses/4.jpg', 'Would day nor ask walls known. But preserved advantage are but and certainty earnestly enjoyment.'),
(5, 'Professional Web Development', 20000, 'assets/img/courses/5.jpg', 'Would day nor ask walls known. But preserved advantage are but and certainty earnestly enjoyment.'),
(6, 'aa', 11, 'assets/img/courses/vertical.jpg', 'aaaa'),
(7, 'aaaa', 1234, 'assets/img/courses/6.jpg', 'szdgio'),
(8, 'abc', 771, 'assets/img/courses/17.jpg', 'nxi'),
(9, 'xxx', 111, 'assets/img/courses/22.jpg', 'nchdx');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `no` int(3) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`no`, `email`, `username`, `password`) VALUES
(1, 'ami@gmail.com', 'Ami', '123'),
(2, 'rinkal@gmail.com', 'rinkal', '456'),
(3, 'dhara@gmail.com', 'dhara', '123'),
(4, 'rinkal123@gmail.com', 'rinkal', '123'),
(5, 'aryan@gmail.com', 'aryan', '456'),
(6, 'abc@gmail.com', 'abc', '123'),
(7, 'xyz@gmail.com', 'xyz', '123'),
(8, 'pqr@gmail.com', 'pqr', '456'),
(9, 'admin@gmail.com', 'admin', 'admin'),
(10, 'aa@gmail.com', 'aa', 'aa'),
(11, 'a@gmail.com', 'aa', 'aa'),
(12, 'xxx', 'xxx', 'xxx'),
(13, 'in@gmail.com', 'vishal', '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
