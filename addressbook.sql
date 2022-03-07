-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 05:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `addressbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `notes` text NOT NULL,
  `contacts_group` varchar(200) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `phone`, `address1`, `address2`, `city`, `state`, `zipcode`, `notes`, `contacts_group`, `date_added`, `email`) VALUES
(1, 'John', 'Doen', '(978) 555-1', '223 Massachusetts Ave', '', 'Cambridge', 'MA', 2136, '', 'Business', '2014-07-11 16:21:01', 'jdoe@gmail.com'),
(2, 'Mark', 'Jackson', '(978) 555-2', '566 Main St', 'Unit 4', 'Haverhill', 'MA', 1830, '', 'Business', '2014-07-11 16:21:01', 'markjax@yahoo.com'),
(3, 'Samuel', 'Smith', '(978) 555-3', '23 Elm St', '', 'Amesbury', 'MA', 1913, '', 'Friends', '2014-07-11 16:22:41', 'samsmith@gmail.com'),
(8, 'Jennifer', 'Sheehan', '9783848273', '44 Birchmeadow rd', '', 'Amesbury', 'MA', 1913, '', 'Family', '2014-07-13 10:30:40', 'jen.irish@hotmail.com'),
(9, 'mohamed ', 'hassan', 'o0000000000', '', '', '', 'AL', 0, '', 'husker', '2022-03-07 15:51:06', 'test@test.com'),
(10, 'MOhamed ', 'Hassan', '00000000000', '', '', '', 'AL', 0, '', 'husker', '2022-03-07 15:53:57', 'test@test.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
