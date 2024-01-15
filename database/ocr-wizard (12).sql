-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 11:54 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocr-wizard`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `full_name`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 'sreyas ');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deo`
--

CREATE TABLE `deo` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `profile_pic` varchar(1000) NOT NULL DEFAULT 'defaultDeo.png',
  `gender` varchar(250) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `phone` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `block` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deo`
--

INSERT INTO `deo` (`id`, `username`, `password`, `email`, `name`, `profile_pic`, `gender`, `address`, `phone`, `status`, `block`) VALUES
(2, 'user1', 'pass1', 'user1@example.com', 'User 1', 'defaultDeo.png', 'female', 'Address 1', 123, 0, 0),
(3, 'user2', 'pass2', 'user2@example.com', 'User 2', 'defaultDeo.png', 'male', 'Address 2', 123, 0, 0),
(4, 'user3', 'pass3', 'user3@example.com', 'User 3', 'defaultDeo.png', 'female', 'Address 3', 123, 0, 0),
(5, 'user4', 'pass4', 'user4@example.com', 'User 4', 'defaultDeo.png', 'male', 'Address 4', 123, 0, 0),
(6, 'user5', 'pass5', 'user5@example.com', 'User 5', 'defaultDeo.png', 'female', 'Address 5', 123, 0, 0),
(7, 'user6', 'pass6', 'user6@example.com', 'User 6', 'defaultDeo.png', 'male', 'Address 6', 123, 0, 0),
(8, 'user7', 'pass7', 'user7@example.com', 'User 7', 'defaultDeo.png', 'female', 'Address 7', 123, 0, 0),
(9, 'user8', 'pass8', 'user8@example.com', 'User 8', 'defaultDeo.png', 'male', 'Address 8', 123, 0, 0),
(10, 'user9', 'pass9', 'user9@example.com', 'User 9', 'defaultDeo.png', 'female', 'Address 9', 123, 0, 0),
(11, 'user10', 'pass10', 'user10@example.com', 'User 10', 'defaultDeo.png', 'male', 'Address 10', 123, 0, 0),
(12, 'user11', 'pass11', 'user11@example.com', 'User 11', 'defaultDeo.png', 'female', 'Address 11', 123, 0, 0),
(13, 'user12', 'pass12', 'user12@example.com', 'User 12', 'defaultDeo.png', 'male', 'Address 12', 123, 0, 0),
(14, 'user13', 'pass13', 'user13@example.com', 'User 13', 'defaultDeo.png', 'female', 'Address 13', 123, 0, 0),
(15, 'user14', 'pass14', 'user14@example.com', 'User 14', 'defaultDeo.png', 'male', 'Address 14', 123, 0, 0),
(16, 'user15', 'pass15', 'user15@example.com', 'User 15', 'defaultDeo.png', 'female', 'Address 15', 123, 0, 0),
(17, 'user16', 'pass16', 'user16@example.com', 'User 16', 'defaultDeo.png', 'male', 'Address 16', 123, 0, 0),
(18, 'user17', 'pass17', 'user17@example.com', 'User 17', 'defaultDeo.png', 'female', 'Address 17', 123, 0, 0),
(19, 'user18', 'pass18', 'user18@example.com', 'User 18', 'defaultDeo.png', 'male', 'Address 18', 123, 0, 0),
(20, 'user19', 'pass19', 'user19@example.com', 'User 19', 'defaultDeo.png', 'female', 'Address 19', 123, 0, 0),
(21, 'user20', 'pass20', 'user20@example.com', 'User 20', 'defaultDeo.png', 'male', 'Address 20', 123, 0, 0),
(33, 'sreyas_', 'cebf60f7f39b049aa5993d4f3141d86e', 'sreyas@gmail.com', 'sreyas', 'defaultDeo.png', 'male', 'kanjirathinkal(H)\nthoppippala p.o\nmattappally', 2147483647, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `reply` varchar(5000) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `user_type` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `user_id`, `subject`, `message`, `reply`, `date`, `user_type`) VALUES
(21, 1, 'Subject 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 1', '2023-03-26 23:43:10', 'user'),
(22, 3, 'Subject 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 2', '2023-03-26 23:43:10', 'deo'),
(23, 1, 'Subject 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 3', '2023-03-26 23:43:10', 'user'),
(24, 3, 'Subject 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 4', '2023-03-26 23:43:10', 'deo'),
(25, 1, 'Subject 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 5', '2023-03-26 23:43:10', 'user'),
(26, 3, 'Subject 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 6', '2023-03-26 23:43:10', 'deo'),
(27, 1, 'Subject 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 7', '2023-03-26 23:43:10', 'user'),
(28, 3, 'Subject 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 8', '2023-03-26 23:43:10', 'deo'),
(29, 1, 'Subject 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 9', '2023-03-26 23:43:10', 'user'),
(30, 3, 'Subject 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 10', '2023-03-26 23:43:10', 'deo'),
(31, 1, 'Subject 11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 11', '2023-03-26 23:43:10', 'user'),
(32, 3, 'Subject 12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 12', '2023-03-26 23:43:10', 'deo'),
(33, 1, 'Subject 13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 13', '2023-03-26 23:43:10', 'user'),
(34, 3, 'Subject 14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 14', '2023-03-26 23:43:10', 'deo'),
(35, 1, 'Subject 15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 15', '2023-03-26 23:43:10', 'user'),
(36, 3, 'Subject 16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 16', '2023-03-26 23:43:10', 'deo'),
(37, 1, 'Subject 17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 17', '2023-03-26 23:43:10', 'user'),
(38, 3, 'Subject 18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 18', '2023-03-26 23:43:10', 'deo'),
(39, 1, 'Subject 19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 19', '2023-03-26 23:43:10', 'user'),
(40, 3, 'Subject 20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 20', '2023-03-26 23:43:10', 'deo'),
(41, 1, 'Subject 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 1', '2023-03-26 23:55:57', 'user'),
(42, 3, 'Subject 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 2', '2023-03-26 23:55:57', 'deo'),
(43, 1, 'Subject 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 3', '2023-03-26 23:55:57', 'user'),
(44, 3, 'Subject 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 4', '2023-03-26 23:55:57', 'deo'),
(45, 1, 'Subject 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 5', '2023-03-26 23:55:57', 'user'),
(46, 3, 'Subject 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 6', '2023-03-26 23:55:57', 'deo'),
(47, 1, 'Subject 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 7', '2023-03-26 23:55:57', 'user'),
(48, 3, 'Subject 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 8', '2023-03-26 23:55:57', 'deo'),
(49, 1, 'Subject 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 9', '2023-03-26 23:55:57', 'user'),
(50, 3, 'Subject 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 10', '2023-03-26 23:55:57', 'deo'),
(51, 1, 'Subject 11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 11', '2023-03-26 23:55:57', 'user'),
(52, 3, 'Subject 12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 12', '2023-03-26 23:55:57', 'deo'),
(53, 1, 'Subject 13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 13', '2023-03-26 23:55:57', 'user'),
(54, 3, 'Subject 14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 14', '2023-03-26 23:55:57', 'deo'),
(55, 1, 'Subject 15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 15', '2023-03-26 23:55:57', 'user'),
(56, 3, 'Subject 16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 16', '2023-03-26 23:55:57', 'deo'),
(57, 1, 'Subject 17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 17', '2023-03-26 23:55:57', 'user'),
(58, 3, 'Subject 18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 18', '2023-03-26 23:55:57', 'deo'),
(59, 1, 'Subject 19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 19', '2023-03-26 23:55:57', 'user'),
(60, 3, 'Subject 20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 20', '2023-03-26 23:55:57', 'deo'),
(61, 1, 'Subject 21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 21', '2023-03-26 23:55:57', 'user'),
(62, 3, 'Subject 22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 22', '2023-03-26 23:55:57', 'deo'),
(63, 1, 'Subject 23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 23', '2023-03-26 23:55:57', 'user'),
(64, 3, 'Subject 24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 24', '2023-03-26 23:55:57', 'deo'),
(65, 1, 'Subject 25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 25', '2023-03-26 23:55:57', 'user'),
(66, 3, 'Subject 26', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 26', '2023-03-26 23:55:57', 'deo'),
(67, 3, 'Subject 27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 27', '2023-03-26 23:55:57', 'deo'),
(68, 3, 'Subject 28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 28', '2023-03-26 23:55:57', 'deo'),
(69, 3, 'Subject 29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 29', '2023-03-26 23:55:57', 'deo');

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `friend_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `text` varchar(10000) NOT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `file_type` varchar(100) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `sender_id`, `receiver_id`, `text`, `file_name`, `file_type`, `time`) VALUES
(1, 1, 1, 'hello', NULL, NULL, '2023-03-21 00:50:38'),
(2, 1, 2, 'hello', NULL, NULL, '2023-03-21 00:51:56'),
(3, 1, 2, 'how are you', NULL, NULL, '2023-03-21 00:52:25'),
(4, 2, 1, 'i\'m fine. You are?', NULL, NULL, '2023-03-21 01:10:39'),
(5, 1, 1, 'this is a new message', NULL, NULL, '2023-03-21 01:18:01'),
(6, 1, 1, 'this is another new message', NULL, NULL, '2023-03-21 01:19:29'),
(7, 1, 1, 'hy', NULL, NULL, '2023-03-21 01:21:21'),
(8, 1, 1, 'hoooi', NULL, NULL, '2023-03-21 01:23:56'),
(9, 1, 2, 'this is something new', NULL, NULL, '2023-03-21 01:24:46'),
(10, 1, 1, 'hello', NULL, NULL, '2023-03-21 02:17:16'),
(11, 1, 2, 'hello', NULL, NULL, '2023-03-21 02:43:36'),
(12, 1, 2, 'i want to say a lot of things to you. because there is nothing to be afraid of anymore.', NULL, NULL, '2023-03-21 02:51:23'),
(13, 1, 1, 'hello', NULL, NULL, '2023-03-21 02:59:48'),
(14, 1, 1, 'hello', NULL, NULL, '2023-03-21 06:03:11'),
(15, 1, 1, 'ennokke ond', NULL, NULL, '2023-03-21 06:03:33'),
(16, 1, 1, 'hello', NULL, NULL, '2023-03-21 06:27:57'),
(17, 1, 1, 'hoi', NULL, NULL, '2023-03-21 06:28:06'),
(18, 1, 1, 'dd', NULL, NULL, '2023-03-21 06:31:26'),
(19, 1, 1, 'afaf', NULL, NULL, '2023-03-21 06:31:36'),
(20, 1, 1, 'adfdf', NULL, NULL, '2023-03-21 06:31:45'),
(21, 1, 1, 'hey', NULL, NULL, '2023-03-21 06:32:32'),
(22, 1, 1, 'daafd', NULL, NULL, '2023-03-21 06:35:30'),
(23, 1, 1, 'd', NULL, NULL, '2023-03-21 06:37:11'),
(24, 1, 1, 'da', NULL, NULL, '2023-03-21 06:37:17'),
(25, 1, 1, 'ad', NULL, NULL, '2023-03-21 06:40:31'),
(26, 1, 1, 'adf', NULL, NULL, '2023-03-21 06:42:58'),
(27, 1, 1, 'afda', NULL, NULL, '2023-03-21 06:43:18'),
(28, 1, 1, 'adaf', NULL, NULL, '2023-03-21 06:48:31'),
(29, 1, 1, 'fff', NULL, NULL, '2023-03-21 06:48:36'),
(30, 1, 1, 'ffff', NULL, NULL, '2023-03-21 06:48:40'),
(31, 1, 1, 'adfa', NULL, NULL, '2023-03-21 06:49:26'),
(32, 1, 1, 'hello', NULL, NULL, '2023-03-21 12:21:34'),
(33, 1, 1, 'adf', NULL, NULL, '2023-03-21 12:23:44'),
(34, 1, 1, 'adfad', NULL, NULL, '2023-03-21 12:23:55'),
(35, 1, 1, 'adfa', NULL, NULL, '2023-03-21 12:25:07'),
(36, 1, 1, 'af', NULL, NULL, '2023-03-21 12:25:26'),
(37, 1, 1, 'adaf', NULL, NULL, '2023-03-21 12:28:47'),
(38, 1, 1, 'adfasfd', NULL, NULL, '2023-03-21 12:29:02'),
(39, 1, 1, 'adf', NULL, NULL, '2023-03-21 12:30:01'),
(40, 1, 1, 'afd', NULL, NULL, '2023-03-21 12:30:05'),
(41, 1, 2, 'adfas', NULL, NULL, '2023-03-21 12:30:15'),
(42, 1, 2, 'adfasf', NULL, NULL, '2023-03-21 12:31:56'),
(43, 1, 2, 'this is a new message, right', NULL, NULL, '2023-03-21 12:32:11'),
(44, 1, 2, 'adfdf', NULL, NULL, '2023-03-21 12:33:48'),
(45, 1, 2, 'adfa', NULL, NULL, '2023-03-21 12:35:27'),
(46, 1, 2, 'ithokke ennathada', NULL, NULL, '2023-03-21 12:35:34'),
(47, 1, 1, 'good', NULL, NULL, '2023-03-21 12:55:34'),
(53, 1, 1, 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'afsadf', '.txt', '2023-03-21 20:39:38'),
(54, 1, 2, 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'afsadf', '.txt', '2023-03-21 20:39:38'),
(55, 1, 1, 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'afsadf', '.txt', '2023-03-21 20:40:04'),
(56, 1, 1, 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\nimport javax.swing.JCheckBox;\n\npublic class checkBoxProgram extends JApplet implements ItemListener{\nJTextField te;\nJCheckBox first, second;\npublic void init(){\nContainer c = getContentPane();\nc.setVisible(true);\nc.setSize(500, 500);\n\nc.setlLayout(new FlowLayout());\n\nfirst = new JCheckBox(\"first\");\nsecond = new JCheckBox(\"second\");\nte = new JTextField(20);\nfirst.addItemListener(this);\nsecond.addItemListener(this);\n\nc.add(first);\nc.add(second);\nc.add(te);\n}\npublic void itemStateChanged(ItemEvent e){\nte.setText(((JCheckBox) e.getItem()).getText());\n}\n\n', 'javaAwtProgram', '.txt', '2023-03-21 20:45:10'),
(57, 1, 2, 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\nimport javax.swing.JCheckBox;\n\npublic class checkBoxProgram extends JApplet implements ItemListener{\nJTextField te;\nJCheckBox first, second;\npublic void init(){\nContainer c = getContentPane();\nc.setVisible(true);\nc.setSize(500, 500);\n\nc.setlLayout(new FlowLayout());\n\nfirst = new JCheckBox(\"first\");\nsecond = new JCheckBox(\"second\");\nte = new JTextField(20);\nfirst.addItemListener(this);\nsecond.addItemListener(this);\n\nc.add(first);\nc.add(second);\nc.add(te);\n}\npublic void itemStateChanged(ItemEvent e){\nte.setText(((JCheckBox) e.getItem()).getText());\n}\n\n', 'javaAwtProgram', '.txt', '2023-03-21 20:45:10'),
(58, 1, 1, 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'good', '.txt', '2023-03-21 20:52:24'),
(59, 1, 1, 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'good', '.txt', '2023-03-21 20:53:19'),
(60, 1, 1, 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'aaa', '.txt', '2023-03-21 20:57:56'),
(61, 1, 1, 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'aaa', '.txt', '2023-03-21 20:58:31'),
(62, 1, 1, '<nav class=\"nav-bar\">\n<ul>\n<a href=\"seller-index.php\" class=\"no-text-decoration\">\n<li class=\"request highlight\">request</1i>\n</a>\n<a href=\"delivery.php\" class=\"no-text-decoration\">\n<li class=\"delivery\">delivery</1li>\n</a>\n<a href=\"product.php\" class=\"no-text-decoration\">\n<li class=\"product\">product</1i>\n</a>\n<a href=\"details.php\" class=\"no-text-decoration\">\n<li class=\"details\">details</1i>\n</a>\n<a href=\"log-out.php\" class=\"no-text-decoration\">\n<li class=\"log-out\">log out</1i>\n</a>\n</ul>\n\n</nav>\n\n', 'html_code', '.json', '2023-03-22 01:12:59'),
(63, 1, 2, '<nav class=\"nav-bar\">\n<ul>\n<a href=\"seller-index.php\" class=\"no-text-decoration\">\n<li class=\"request highlight\">request</1i>\n</a>\n<a href=\"delivery.php\" class=\"no-text-decoration\">\n<li class=\"delivery\">delivery</1li>\n</a>\n<a href=\"product.php\" class=\"no-text-decoration\">\n<li class=\"product\">product</1i>\n</a>\n<a href=\"details.php\" class=\"no-text-decoration\">\n<li class=\"details\">details</1i>\n</a>\n<a href=\"log-out.php\" class=\"no-text-decoration\">\n<li class=\"log-out\">log out</1i>\n</a>\n</ul>\n\n</nav>\n\n', 'html_code', '.json', '2023-03-22 01:12:59'),
(64, 1, 1, '<nav class=\"nav-bar\">\n<ul>\n<a href=\"seller-index.php\" class=\"no-text-decoration\">\n<li class=\"request highlight\">request</1i>\n</a>\n<a href=\"delivery.php\" class=\"no-text-decoration\">\n<li class=\"delivery\">delivery</1li>\n</a>\n<a href=\"product.php\" class=\"no-text-decoration\">\n<li class=\"product\">product</1i>\n</a>\n<a href=\"details.php\" class=\"no-text-decoration\">\n<li class=\"details\">details</1i>\n</a>\n<a href=\"log-out.php\" class=\"no-text-decoration\">\n<li class=\"log-out\">log out</1i>\n</a>\n</ul>\n\n</nav>\n', '', '.txt', '2023-03-22 22:59:29'),
(65, 1, 1, '<nav class=\"nav-bar\">\n<ul>\n<a href=\"seller-index.php\" class=\"no-text-decoration\">\n<li class=\"request highlight\">request</1i>\n</a>\n<a href=\"delivery.php\" class=\"no-text-decoration\">\n<li class=\"delivery\">delivery</1li>\n</a>\n<a href=\"product.php\" class=\"no-text-decoration\">\n<li class=\"product\">product</1i>\n</a>\n<a href=\"details.php\" class=\"no-text-decoration\">\n<li class=\"details\">details</1i>\n</a>\n<a href=\"log-out.php\" class=\"no-text-decoration\">\n<li class=\"log-out\">log out</1i>\n</a>\n</ul>\n\n</nav>\n', 'good', '.txt', '2023-03-22 23:01:19'),
(66, 1, 2, 'hai', NULL, NULL, '2023-03-23 12:26:17'),
(67, 1, 2, 'hello', NULL, NULL, '2023-03-23 12:28:54'),
(68, 1, 1, 'hello', NULL, NULL, '2023-03-23 12:29:14'),
(69, 1, 2, 'how are you ', NULL, NULL, '2023-03-23 18:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `message_deo`
--

CREATE TABLE `message_deo` (
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visibility` varchar(50) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `reply_id` int(11) NOT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL,
  `user_ref_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `text`
--

CREATE TABLE `text` (
  `text_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `text` varchar(5000) DEFAULT NULL,
  `new_text` varchar(10000) NOT NULL,
  `file_name` varchar(1000) NOT NULL,
  `created_time` datetime DEFAULT current_timestamp(),
  `last_edited` datetime DEFAULT current_timestamp(),
  `file_given` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `text`
--

INSERT INTO `text` (`text_id`, `user_id`, `language`, `text`, `new_text`, `file_name`, `created_time`, `last_edited`, `file_given`) VALUES
(5, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', '9f0ba0af-41b3-47bb-afb1-d90586132219.png', '2023-03-21 16:48:20', '2023-03-21 16:48:20', 0),
(6, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', '6c0ac970-cfe9-4805-8615-8a8d591cfdee.png', '2023-03-21 16:48:47', '2023-03-21 16:48:47', 0),
(7, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', '9f8a587e-fe4c-4f19-9b6e-9162b99f5b6e.png', '2023-03-21 18:40:44', '2023-03-21 18:40:44', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `profile_pic` varchar(1000) NOT NULL DEFAULT 'defaultUser.png',
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `name`, `gender`, `phone`, `address`, `profile_pic`, `status`) VALUES
(1, 'sreyas', 'nevapil@mailinator.com', 'cebf60f7f39b049aa5993d4f3141d86e', 'sreyas satheesh', 'male', '8555585868', 'kanjirathinkal(H)\nthoppippala p.o\nmattappally\n', 'defaultUser.png', NULL),
(2, 'sreyas_one', 'pywezevo@mailinator.com', 'cebf60f7f39b049aa5993d4f3141d86e', 'Wanda Mcknight', 'male', '8754785585', 'Eiusmod labore sunt ', 'defaultUser.png', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `deo`
--
ALTER TABLE `deo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `receiver_id` (`receiver_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `message_deo`
--
ALTER TABLE `message_deo`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`text_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deo`
--
ALTER TABLE `deo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `message_deo`
--
ALTER TABLE `message_deo`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `text`
--
ALTER TABLE `text`
  MODIFY `text_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `text`
--
ALTER TABLE `text`
  ADD CONSTRAINT `text_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
