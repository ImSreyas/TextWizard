-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 08:03 AM
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
  `text` varchar(500) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `post_id`, `user_id`, `text`, `time`) VALUES
(144, 14, 1, 'Ive found that scheduling my work tasks has been a game-changer for me. I used to get so distracted throughout the day, but now that I have specific times set aside for each task, Im much more productive!', '2023-04-29 00:48:52'),
(145, 14, 1, 'Eliminating distractions has been key for me. Its amazing how much more I can get done when Im not constantly checking my phone or getting sucked into social media.', '2023-04-29 00:49:33'),
(146, 11, 1, 'This is a great example of how to use ItemListener to update the display based on user input. I think this would be a really helpful reference for anyone learning Java!', '2023-04-29 00:53:17'),
(147, 11, 1, 'I noticed that youve imported both java.awt.* and javax.swing.* - is there a reason for this, or could you just import javax.swing.* since it includes the AWT components as well?', '2023-04-29 00:53:46'),
(148, 11, 1, 'I like how youve used ImageIcon to display the images - it makes it really easy to switch between them. Have you considered adding a border or other styling to the label to make the images stand out more?', '2023-04-29 00:53:57'),
(149, 11, 1, 'It looks like the JComboBox doesn	 have a specified size - have you tried setting the preferred size or using a layout manager to make sure it displays correctly on different screen sizes?', '2023-04-29 00:54:05'),
(150, 11, 1, 'I think it would be helpful to add some error handling in case the user enters an invalid image filename or the file is not found. Have you thought about how you could handle those scenarios?', '2023-04-29 00:54:15'),
(151, 7, 1, 'ya, it is', '2023-04-29 14:29:48'),
(207, 23, 24, 'yep', '2023-05-01 12:25:37'),
(209, 29, 2, 'adfasf', '2023-05-01 22:58:00');

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
(2, 'user1', 'pass1', 'user1@example.com', 'User 1', 'defaultDeo.png', 'female', 'Address 1', 123, 1, 1),
(3, 'user2', 'pass2', 'user2@example.com', 'User 2', 'defaultDeo.png', 'male', 'Address 2', 123, 1, 1),
(4, 'user3', 'pass3', 'user3@example.com', 'User 3', 'defaultDeo.png', 'female', 'Address 3', 123, 1, 0),
(5, 'user4', 'pass4', 'user4@example.com', 'User 4', 'defaultDeo.png', 'male', 'Address 4', 123, 1, 0),
(7, 'user6', 'pass6', 'user6@example.com', 'User 6', 'defaultDeo.png', 'male', 'Address 6', 123, 0, 0),
(8, 'user7', 'pass7', 'user7@example.com', 'User 7', 'defaultDeo.png', 'female', 'Address 7', 123, 0, 0),
(9, 'user8', 'pass8', 'user8@example.com', 'User 8', 'defaultDeo.png', 'male', 'Address 8', 123, 0, 0),
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
(33, 'sreyas_', 'cebf60f7f39b049aa5993d4f3141d86e', 'sreyas@gmail.com', 'sreyas', 'defaultDeo.png', 'male', 'kanjirathinkal(H)\nthoppippala p.o\nmattappally', 2147483647, 1, 0),
(34, 'deo', 'baa7f5e11d1e563df7bc82d57554227c', 'deo@gmail.com', 'deo', 'defaultDeo.png', 'male', 'sreyas', 2147483647, 1, 0);

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
(69, 3, 'Subject 29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum imperdiet dolor, ut aliquet ante fermentum in. Proin id nisi suscipit, ultrices massa nec, blandit ipsum. Integer vel mi enim. Sed sagittis auctor massa, a efficitur elit lobortis vitae. Integer eget turpis rhoncus, dictum est ut, euismod lorem. Nam vitae libero vel massa congue imperdiet at id quam. Quisque sit amet enim velit. In ut velit neque. Sed vel elit ut elit finibus vestibulum. Donec laoreet bibendum dolor, ut aliqua', 'Reply 29', '2023-03-26 23:55:57', 'deo'),
(70, 1, 'accuracy ', 'the ocr engine is producing a good and accurate data', '', '2023-03-28 21:52:07', 'user'),
(71, 1, 'accuracy ', 'the ocr engine is producing a good and accurate data', '', '2023-03-28 21:53:54', 'user'),
(72, 1, 'accuracy', 'it provides a good accuracy', '', '2023-03-28 21:54:12', 'user'),
(73, 1, 'accuracy', 'good', '', '2023-03-28 21:54:25', 'user'),
(74, 1, 'good', 'good', '', '2023-03-28 21:56:13', 'user'),
(75, 1, 'good', 'good', '', '2023-03-28 21:56:38', 'user'),
(76, 1, 'good', 'good', '', '2023-03-28 21:57:56', 'user'),
(77, 1, 'good', 'good', '', '2023-03-28 21:59:02', 'user'),
(78, 1, 'good', 'good', '', '2023-03-28 22:00:57', 'user'),
(79, 33, 'work', 'there isnt enough work for me. can you please increase the work load', '', '2023-03-28 22:08:46', 'deo'),
(80, 33, 'good\'s', 'hello how are you, it isn\'t working well', '', '2023-03-28 22:18:30', 'deo'),
(81, 1, 'good\'s', 'hello\'s', '', '2023-03-28 22:19:48', 'user');

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
(69, 1, 2, 'how are you ', NULL, NULL, '2023-03-23 18:18:12'),
(70, 1, 1, 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', '', '.txt', '2023-03-28 22:39:48'),
(71, 1, 1, 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', '', '.txt', '2023-03-29 15:23:07'),
(72, 1, 2, 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', '', '.txt', '2023-03-29 15:23:07'),
(73, 1, 1, 'hi', NULL, NULL, '2023-03-30 21:43:12'),
(74, 1, 1, 'hello', NULL, NULL, '2023-03-31 11:53:57'),
(75, 1, 1, 'hi', NULL, NULL, '2023-03-31 11:54:00'),
(76, 1, 1, 'ഓ. വി. വിജയന്‌\nഖസാക്കിന്റെ ഇതിഹാസം\n\nകൂമന്‌ കാവില്‍ ബസ്സു ചെന്നു നിന്നപ്പോള്‌ ആ സ്ഥലം\nരവിയ്ക്ക്‌ അപരിചിതമായിത്തോന്നിയില്ല. അങ്ങിനെ പടന്്രു\nപന്തലിച്ച മാവുകള്ക്കടിയില്‌ നാലഞ്ച്‌ ഏറുമാടങ്ങളുടെ\nനടുവില്‌ താന വന്നെത്തുമെന്ന്‌ പണ്ടേ കരുതിക്കാണണം.\nവരുംവരായകളുടെ ഓമ്മുകളിലെവിടെയോ ആ മാവുകളുടെ\nജരയും ദീനതയും കണ്ടുകണ്ടു ഹൃദിസ്ഥമായിത്തീന്ന്രതാണ്‌.\nകനിവു നിറഞ്ഞ വാദ്ദ്ധക്യം, കുഷ്ഠം പറ്റിയ വേരുകള്‌,\nഎല്ലാമതുതന്നെ.\n', '', '.txt', '2023-03-31 12:11:38'),
(77, 1, 1, 'hello', NULL, NULL, '2023-03-31 12:12:28'),
(80, 1, 2, 'a', NULL, NULL, '2023-04-19 10:14:48'),
(81, 24, 24, 'hello', NULL, NULL, '2023-04-30 00:41:56'),
(82, 24, 1, 'GEFORCE\nGTX\n', 'kkk', '.html', '2023-04-30 00:53:08'),
(83, 24, 2, 'GEFORCE\nGTX\n', 'kkk', '.html', '2023-04-30 00:53:08'),
(84, 1, 1, 'import java.awt.*;\n\n', 'import ', '.txt', '2023-04-30 13:28:08'),
(85, 24, 1, 'good', NULL, NULL, '2023-05-01 12:38:26'),
(86, 1, 1, 'hi', NULL, NULL, '2023-05-01 12:41:58'),
(87, 1, 1, '<nav class=\"nav-bar\">\n<ul>\n<a href=\"seller-index.php\" class=\"no-text-decoration\">\n<li class=\"request highlight\">request</1i>\n</a>\n<a href=\"delivery.php\" class=\"no-text-decoration\">\n<li class=\"delivery\">delivery</1li>\n</a>\n<a href=\"product.php\" class=\"no-text-decoration\">\n<li class=\"product\">product</1i>\n</a>\n<a href=\"details.php\" class=\"no-text-decoration\">\n<li class=\"details\">details</1i>\n</a>\n<a href=\"log-out.php\" class=\"no-text-decoration\">\n<li class=\"log-out\">log out</1i>\n</a>\n</ul>\n\n</nav>\n\n', '', '.txt', '2023-05-01 12:58:25'),
(88, 1, 24, '<?php\n\ninclude(\' .. /data-base/constant.php\');\n$customer_id = $_POST[\'customer_id\'];\n$shop_id = $_POST[\'shop_id\'];\n$shop_name = $_POST[\'shop_name\'];\n\n$id = $_POST[\'id\'];\n\necho \"\n<div class=\'shop—name-container—expanded\'>\".ucfirst($shop_name).\"</div>\n\n<div class=\'product-list-name\'>Product list</div>\n\necho \"<div class=\'single-product—details—container—parent\'>\";\n\n$products = mysqli_query($conn, \"SELECT * FROM order_list WHERE id=$id && c_id=$customer_id && s_id=$shop_id\");\nwhile($row = $products—>fetch_assoc()){\n\n$product_id = $row[\'products\'];\n\n$quantity = $row[\'stock\'];\n\n= mysqli_query($conn, \"SELECT * FROM product WHERE p_id=$product_id\");\nwhile($details = $product_details—>fetch_assoc()){\n\n$product_details\n\n$product_name = $details[\'name\'];\n\n$price = $details[\'price’]*$quantity;\n\necho \"\n\n<div class=\'single-product—-details—container\'>\n<span>$product_name</span><span>$quantity</span><span>$price</span>\n</div>\n\n}\n}\necho \"</div>\";\n?>\n\n', 'this is a large name file added for testing purpose', '.txt', '2023-05-01 13:44:55'),
(89, 1, 2, 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\nimport javax.swing.JCheckBox;\n\npublic class checkBoxProgram extends JApplet implements ItemListener{\nJTextField te;\nJCheckBox first, second;\npublic void init(){\nContainer c = getContentPane();\nc.setVisible(true);\nc.setSize(500, 500);\n\nc.setlLayout(new FlowLayout());\n\nfirst = new JCheckBox(\"first\");\nsecond = new JCheckBox(\"second\");\nte = new JTextField(20);\nfirst.addItemListener(this);\nsecond.addItemListener(this);\n\nc.add(first);\nc.add(second);\nc.add(te);\n}\npublic void itemStateChanged(ItemEvent e){\nte.setText(((JCheckBox) e.getItem()).getText());\n}\n\n', 'jsonData', '.json', '2023-05-01 15:19:26'),
(90, 1, 2, '<?php\n\ninclude(\' .. /data-base/constant.php\');\n$customer_id = $_POST[\'customer_id\'];\n$shop_id = $_POST[\'shop_id\'];\n$shop_name = $_POST[\'shop_name\'];\n\n$id = $_POST[\'id\'];\n\necho \"\n<div class=\'shop—name-container—expanded\'>\".ucfirst($shop_name).\"</div>\n\n<div class=\'product-list-name\'>Product list</div>\n\necho \"<div class=\'single-product—details—container—parent\'>\";\n\n$products = mysqli_query($conn, \"SELECT * FROM order_list WHERE id=$id && c_id=$customer_id && s_id=$shop_id\");\nwhile($row = $products—>fetch_assoc()){\n\n$product_id = $row[\'products\'];\n\n$quantity = $row[\'stock\'];\n\n= mysqli_query($conn, \"SELECT * FROM product WHERE p_id=$product_id\");\nwhile($details = $product_details—>fetch_assoc()){\n\n$product_details\n\n$product_name = $details[\'name\'];\n\n$price = $details[\'price’]*$quantity;\n\necho \"\n\n<div class=\'single-product—-details—container\'>\n<span>$product_name</span><span>$quantity</span><span>$price</span>\n</div>\n\n}\n}\necho \"</div>\";\n?>\n\n', 'test', '.pdf', '2023-05-01 15:34:48'),
(91, 1, 2, 'GEFORCE\nGTX\n', 'graphicsCard', '.pdf', '2023-05-01 16:39:17'),
(92, 1, 1, '.user-not—found{\nmargin: O auto;\ndisplay: flex;\njustify—content: center;\nalign-items: center;\nbackground-color: white;\nwidth: 100vw;\nmax—height: fit-content;\nmin—height: 95vh;\n\n}\n\n.user-not-found~. order-main-body{\ndisplay: none;\n\n}\n\n.user-not-logged—-in—-container{\nmax—width: 95vw;\nmin-width: 37vw;\npadding:2% 5% 5%;\n\n}\n.p—t=1-1link{\ndisplay: flex;\njustify—content: center;\ntext—decoration: none;\ncolor: white;\n}\n.profile-to-log-in-page-link—container{\nwidth: 80%;\ntext-align: center;\nbackground—-color: #3dud54;\npadding: 2.2% 0;\nborder-radius: .5rem;\ntransform: translateY(-2rem);\ntransition: all 300ms ease-in-out;\n}\n\n.profile-to-log-in-page-link—container:hover{\nbackground-color: rgb(186,104,200);\ntransform: translateY(-2.u4rem);\n\n}\n.question{\n\ntext-align: center;\n\ntransform: translateY(-3.5rem);\n}\n\n.order-matin-body{\ndisplay: grid;\ngrid-template—columns: 1fr 1fr;\n\n}\n\n. list—-container-wrapper{\npadding: 1% 2% 1% 5%;\nbox-sizing: border-box;\nwidth: 100%;\n\n}\n\n. list-container{\nwidth: 100%;\n\n}\n\n.options{\ndisplay: grid;\ngrid-template—columns: 1fr 1fr;\nborder-radius: 1.2rem;\noverflow: hidden;\npadding: 3%;\nbackground—-color: #303aul;\nheight: fit-content;\n\n}\n\n.options>button{\nwidth: 100%;\nborder: none;\npadding: 3%;\nbackground-color: transparent;\ncolor: #808f96;\ntransition: color 250ms ease-in-out;\nborder-radius: 1.2rem;\n\n}\n\n.options>button:hover{\ncolor: #e9e9e9;\ncursor: pointer;\n\n}\n\n.options>button[selected=\"true\']{\nbackground-color: rgb(186,104,200);\ncolor: white;\n\n}\n.line{\nmargin: 1.2rem auto;\nheight: 1.5px;\nwidth: 70%;\nbackground-color: #d6d6d6;\n}\n\n.option-container{\nheight: 93vh;\nwidth: 100%;\npadding: 1% 5% 1% 2%;\nbox-sizing: border-box;\nposition: sticky;\ntop: 5.1rem;\ncolor: white;\n\n}\n\n.order-list{\nheight: 100%;\nbackground—-color: #303aul;\nborder-radius: 1.u4rem;\npadding: 3% U%;\n\n.no-list—-available{\nbox-sizing: border-box;\nmargin-top: 1.56vw;\nheight: 56vh;\nborder-radius: 1.3rem;\nbackground—-color: #303aul;\n\n.no-list-container{\nheight: 100%;\nwidth: 100%;\ndisplay: flex;\njustify—content: center;\nalign-items: center;\ncolor: #808f96;\npadding: 5%;\nbox-sizing: border-box;\n\n.single-order—container{\nwidth: 100%;\nheight: fit-content;\nbackground—-color: #303aul;\nborder-radius: lrem;\nmargin: .7rem O;\npadding: 3% ;\ncolor: white;\ntransition: all 300ms ease-in-out;\n\n}\n\n.single-order—container:last—child{\nmargin-bottom: 0;\n\n}\n\n.single-order—container:hover{\ncursor: pointer;\nbackground-color: #2c373d;\n\n}\n\n. shop—name-container{\nfont-size: 1.5rem;\n\n}\n\n.product-reference-parent{\nborder-left: 3px solid rgb(186,10u4,200);\npadding: .5rem lrem;\nmargin-top: .Urem;\ntransition: border 300ms ease—in-out;\n\n}\n\n.product-referencefi\nfont-size: 0.8rem;\n\n}\n\n.total—money—container{\nfont-size: 2.Urem;\nfont-weight: 900;\n\n}\n\n. total-money{\ndisplay: inline-block;\npadding-left: 2rem;\nfont-size: 2.Urem;\n\n}\n\n.total-money :: first-letter{\nfont-size: 2.8rem;\ncolor: #191f23;\ntransition: color 300ms ease-in-out;\n\n}\n\n.delivery-status—container{\nfont-size: .9rem;\n\n}\n\n.single-order-container[selected=\"true\']{\nbackground-color: rgb(186,104,200);\n\n}\n\n.single-order-container[selected=\"true\']>. shop—name-container, .single-order—container[selected=\"true\']>.product-reference-parent,.single-order-container[selected=\"true\']>.delivery-status—container, .single-order-container[selected=\"true\']>. total-money-container{\ncolor: #191e21;\nfont-weight: 900;\n\n}\n\n.single-order-container[selected=\"true\']>. product-reference-parent{\nborder-left: 3px solid #171clf;\n\n}\n\n.single-order—container[selected=\"true\'] .low-visibility{\nbackground—-color: #262e32;\n\n}\n\n.single-order—container[selected=\"true\'] .blue{\nbackground-color: rgb(0, 76, 255)\n\n}\n\n.single-order—container[selected=\"true\'] .total-money::first-letter{\ncolor: rgb(2u5, 190, 255);\n\n}\n\n.dot{\n--circle-size : .75rem;\ndisplay: inline-block;\nwidth: var(--circle-size);\nheight: var(--circle-size);\nborder-radius: 100rem;\nmargin-right: .drem;\n\n}\n\n. low-visibility{\nbackground-color: #808f96;\n\n}\n.blue{\nbackground-color:rgb(0, 115, 255);\n\n}\n.orange{\n\nbackground-color: orange;\n}\n.yellow{\n\nbackground-color: rgb(255, 2u4, 35);\n}\n.greenf{\n\nbackground-color: rgb(0, 255, 0);\n}\n.red{\n\nbackground-color:red;\n}\n\n. shop—name—container-expanded{\nfont-size: 2rem;\nfont-weight: 500;\n\n}\n\n.single—product-details-container—parent{\nborder-left: 3px solid rgb(186,10u4,200);\npadding:1% 3.5%;\nmargin: 2% O;\n\n}\n\n.product-list—name{\n\nmargin-top: 1%;\n\n}\n\n.product-list—name:before{\n--size: 1l.1lrem;\ncontent: \"\";\ndisplay: inline-block;\nwidth: var(--size);\nheight: var(--size);\nbackground-image: url(\'../images/ballot.png\');\nbackground-size: contain;\npadding-right: .5rem;\nbackground-repeat: no-repeat;\ntransform: translateY(calc(var(--size)/5.5));\n\n', 'largeTest', '.pdf', '2023-05-01 17:28:13'),
(93, 1, 1, 'package java;\nclass A{\nint a;\nAQ{\na=10;\n\n}\n}\n\nclass B extends A{\n\nint b;\n\nBO{\nsuper();\nb=20;\n\n}\nvoid print(){\nSystem.out.println(b);\n\n}\n}\nclass C extends A{\nint c;\ncOf\nsuper();\nc=25;\n}\nvoid display(){\nSystem.out.println(a+\"\n\"+c);\n}\n}\npublic class mul_inheritance {\npublic static void main(String ar[]){\nC objl=new CQ);\nB obj2=new B(Q);\nobjl.display(Q);\nobj2.print();\nSystem.out.println(objl.a);\n\n', '', '.txt', '2023-05-01 19:59:12');

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
  `caption` varchar(500) DEFAULT NULL,
  `content` varchar(5000) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `visibility`, `caption`, `content`, `time`) VALUES
(1, 1, NULL, 'hello', 'how are you', '2023-03-29 12:38:29'),
(2, 1, NULL, 'myself', 'hello my name is sreyas satheesh', '2023-03-29 14:47:00'),
(3, 1, NULL, 'Sunt pariatur Dolor', 'Velit consectetur qu', '2023-03-29 14:47:29'),
(4, 1, NULL, 'Amet quod dolor fug', 'Vitae in voluptates ', '2023-03-29 14:47:40'),
(6, 1, NULL, 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut tellus in velit luctus pharetra eu ut urna. Etiam euismod urna vitae elit pulvinar, non eleifend nisi vestibulum. Proin vulputate velit non purus pretium malesuada. Donec lacinia euismod urna, a lobortis mauris eleifend eu. Fusce efficitur ante ac mauris rhoncus dapibus. Aenean vel leo a mi condimentum pharetra. Maecenas vitae leo velit. Sed ultrices nisi a sagittis pharetra. Sed eleifend, nulla vitae fermentum dapibus, tellus odio imperdiet nibh, eget interdum dolor lacus id mauris. Vivamus vitae purus nunc. Vivamus eu aliquet metus. Nulla luctus velit sit amet lectus faucibus, vel vulputate tortor venenatis. Nam euismod, velit vel consequat dignissim, justo ante finibus ipsum, nec maximus magna metus id tellus. Sed sed tellus malesuada, pellentesque turpis a, tincidunt lacus.', '2023-03-29 15:01:27'),
(7, 1, NULL, 'good', 'this is a good day', '2023-03-29 15:13:59'),
(8, 1, NULL, 'hello, this is a java program to print something something', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\nimport javax.swing.JCheckBox;\n\npublic class checkBoxProgram extends JApplet implements ItemListener{\nJTextField te;\nJCheckBox first, second;\npublic void init(){\nContainer c = getContentPane();\nc.setVisible(true);\nc.setSize(500, 500);\n\nc.setlLayout(new FlowLayout());\n\nfirst = new JCheckBox(\"first\");\nsecond = new JCheckBox(\"second\");\nte = new JTextField(20);\nfirst.addItemListener(this);\nsecond.addItemListener(this);\n\nc.add(first);\nc.add(second);\nc.add(te);\n}\npublic void itemStateChanged(ItemEvent e){\nte.setText(((JCheckBox) e.getItem()).getText());\n}\n\n', '2023-03-29 17:16:56'),
(11, 1, NULL, 'java code. can anybody tell me whats wrong in this?', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', '2023-03-29 17:28:50'),
(14, 1, NULL, '5 Easy Ways to Improve Your Productivity', 'In today\'s fast-paced world, we all want to get more done in less time. But sometimes it feels like there are simply not enough hours in the day. If you\'re struggling to be productive, here are 5 easy ways to improve your productivity:\n\nCreate a schedule: Set specific times for your work tasks and stick to them. This will help you avoid distractions and stay focused.\n\nTake breaks: Regular breaks can actually boost your productivity by helping you stay fresh and alert. Try taking a short break every hour or so.\n\nPrioritize your tasks: Make a list of your most important tasks and tackle them first. This will help you stay focused on what really matters.\n\nEliminate distractions: Turn off your phone notifications, close your email, and shut down any other distractions that might be keeping you from getting work done.\n\nStay organized: Keep your workspace clean and tidy, and make sure everything you need is easily accessible. This will help you stay focused and avoid wasting time searching for things.\n\nBy implementing these simple strategies, you can improve your productivity and get more done in less time.', '2023-03-30 21:52:35'),
(19, 24, NULL, 'The Power of Debugging: How to Fix Your Code and Improve Your Skills', 'In programming, bugs are inevitable. But learning how to effectively debug your code not only helps you solve problems, it can also improve your programming skills. This post covers some tips and tricks for effective debugging.', '2023-05-01 11:59:35'),
(20, 24, NULL, 'Code Optimization: How to Make Your Programs Faster and More Efficient', 'Writing efficient code is an important part of programming. This post covers some strategies for optimizing your code, including algorithmic improvements, data structures, and more.', '2023-05-01 12:01:55'),
(21, 24, NULL, 'Why Documentation Matters: Tips for Writing Good Code Comments', 'Documentation is often overlooked in programming, but it\'s an important part of writing good code. This post covers some tips for writing effective comments and documentation, including best practices and common pitfalls to avoid.', '2023-05-01 12:02:11'),
(22, 24, NULL, 'The Future of Programming: What to Expect in the Next Decade', 'Programming is constantly evolving, and it\'s important to stay up-to-date on the latest trends and technologies. This post takes a look at some of the most promising developments in programming and predicts what the next decade might hold.', '2023-05-01 12:02:26'),
(23, 24, NULL, 'From Idea to App: A Beginner\'s Guide to App Development', 'App development can seem daunting, but it doesn\'t have to be. This post provides a step-by-step guide to developing your own app, from ideation to deployment.', '2023-05-01 12:02:39'),
(24, 24, NULL, 'The Art of Refactoring: How to Improve Your Code Without Breaking It', 'Refactoring is the process of improving existing code without changing its external behavior. This post covers some strategies for effective refactoring, including identifying code smells, writing good tests, and more.', '2023-05-01 12:02:55');

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
  `file_given` tinyint(1) NOT NULL DEFAULT 0,
  `file_given_done` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `text`
--

INSERT INTO `text` (`text_id`, `user_id`, `language`, `text`, `new_text`, `file_name`, `created_time`, `last_edited`, `file_given`, `file_given_done`) VALUES
(7, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', '9f8a587e-fe4c-4f19-9b6e-9162b99f5b6e.png', '2023-03-21 18:40:44', '2023-03-21 18:40:44', 1, 0),
(74, 1, 'chi_sim', '任 何 人 都 亢 有 本 定 言 所 记 载 的 一 切 权 利 和 自 由 , 不 分 科 族 . 肤 色 . 性 别 、 语\n言 、 宗 数 、 政 治 外 点 或 其 他 阮 点 、 民 族 出 身 或 社 会 出 躬 、 寺 产 、 出 生 躬 伍 我\n其 他 身 休 等 的 任 从 区 别 . 连 亚 权 利 和 自 由 不 得 团 为 一 个 人 所 栗 履 国 家 或 领 土\n的 政 治 地 位 、 司 法 地 色 或 国 际 地 位 的 不 合 帚 有 所 区 别 , 无 沙 该 国 家 武 领 土 是\n牲 立 的 、 托 管 的 、 非 自 治 的 或 处 于 主 权 取 到 限 制 的 其 他 任 伴 情 况\n', '任 何 人 都 亢 有 本 定 言 所 记 载 的 一 切 权 利 和 自 由 , 不 分 科 族 . 肤 色 . 性 别 、 语\n言 、 宗 数 、 政 治 外 点 或 其 他 阮 点 、 民 族 出 身 或 社 会 出 躬 、 寺 产 、 出 生 躬 伍 我\n其 他 身 休 等 的 任 从 区 别 . 连 亚 权 利 和 自 由 不 得 团 为 一 个 人 所 栗 履 国 家 或 领 土\n的 政 治 地 位 、 司 法 地 色 或 国 际 地 位 的 不 合 帚 有 所 区 别 , 无 沙 该 国 家 武 领 土 是\n牲 立 的 、 托 管 的 、 非 自 治 的 或 处 于 主 权 取 到 限 制 的 其 他 任 伴 情 况\n', '1f28b9d7-e57b-4297-927f-f205a78c62eb.gif', '2023-03-31 12:01:27', '2023-03-31 12:01:27', 0, 0),
(77, 1, 'mal', 'ഓ. വി. വിജയന്‌\nഖസാക്കിന്റെ ഇതിഹാസം\n\nകൂമന്‌ കാവില്‍ ബസ്സു ചെന്നു നിന്നപ്പോള്‌ ആ സ്ഥലം\nരവിയ്ക്ക്‌ അപരിചിതമായിത്തോന്നിയില്ല. അങ്ങിനെ പടന്്രു\nപന്തലിച്ച മാവുകള്ക്കടിയില്‌ നാലഞ്ച്‌ ഏറുമാടങ്ങളുടെ\nനടുവില്‌ താന വന്നെത്തുമെന്ന്‌ പണ്ടേ കരുതിക്കാണണം.\nവരുംവരായകളുടെ ഓമ്മുകളിലെവിടെയോ ആ മാവുകളുടെ\nജരയും ദീനതയും കണ്ടുകണ്ടു ഹൃദിസ്ഥമായിത്തീന്ന്രതാണ്‌.\nകനിവു നിറഞ്ഞ വാദ്ദ്ധക്യം, കുഷ്ഠം പറ്റിയ വേരുകള്‌,\nഎല്ലാമതുതന്നെ.\n', 'ഓ. വി. വിജയന്‌\nഖസാക്കിന്റെ ഇതിഹാസം\n\nകൂമന്‌ കാവില്‍ ബസ്സു ചെന്നു നിന്നപ്പോള്‌ ആ സ്ഥലം\nരവിയ്ക്ക്‌ അപരിചിതമായിത്തോന്നിയില്ല. അങ്ങിനെ പടന്്രു\nപന്തലിച്ച മാവുകള്ക്കടിയില്‌ നാലഞ്ച്‌ ഏറുമാടങ്ങളുടെ\nനടുവില്‌ താന വന്നെത്തുമെന്ന്‌ പണ്ടേ കരുതിക്കാണണം.\nവരുംവരായകളുടെ ഓമ്മുകളിലെവിടെയോ ആ മാവുകളുടെ\nജരയും ദീനതയും കണ്ടുകണ്ടു ഹൃദിസ്ഥമായിത്തീന്ന്രതാണ്‌.\nകനിവു നിറഞ്ഞ വാദ്ദ്ധക്യം, കുഷ്ഠം പറ്റിയ വേരുകള്‌,\nഎല്ലാമതുതന്നെ.\n', 'e93fb48b-c04c-4f1a-a363-fa5866304ef6.jpg', '2023-03-31 12:11:23', '2023-03-31 12:11:23', 1, 0),
(80, 24, 'eng', 'GEFORCE\nGTX\n', 'GEFORCE\nGTX\n', 'f7ea5644-643c-4fd1-8d94-9a5a0d399c04.jpeg', '2023-04-30 00:52:13', '2023-04-30 00:52:13', 0, 0),
(126, 1, 'chi_sim', '任 何 人 都 亢 有 本 定 言 所 记 载 的 一 切 权 利 和 自 由 , 不 分 科 族 . 肤 色 . 性 别 、 语\n言 、 宗 数 、 政 治 外 点 或 其 他 阮 点 、 民 族 出 身 或 社 会 出 躬 、 寺 产 、 出 生 躬 伍 我\n其 他 身 休 等 的 任 从 区 别 . 连 亚 权 利 和 自 由 不 得 团 为 一 个 人 所 栗 履 国 家 或 领 土\n的 政 治 地 位 、 司 法 地 色 或 国 际 地 位 的 不 合 帚 有 所 区 别 , 无 沙 该 国 家 武 领 土 是\n牲 立 的 、 托 管 的 、 非 自 治 的 或 处 于 主 权 取 到 限 制 的 其 他 任 伴 情 况\n', '任 何 人 都 亢 有 本 定 言 所 记 载 的 一 切 权 利 和 自 由 , 不 分 科 族 . 肤 色 . 性 别 、 语\n言 、 宗 数 、 政 治 外 点 或 其 他 阮 点 、 民 族 出 身 或 社 会 出 躬 、 寺 产 、 出 生 躬 伍 我\n其 他 身 休 等 的 任 从 区 别 . 连 亚 权 利 和 自 由 不 得 团 为 一 个 人 所 栗 履 国 家 或 领 土\n的 政 治 地 位 、 司 法 地 色 或 国 际 地 位 的 不 合 帚 有 所 区 别 , 无 沙 该 国 家 武 领 土 是\n牲 立 的 、 托 管 的 、 非 自 治 的 或 处 于 主 权 取 到 限 制 的 其 他 任 伴 情 况\n', '3bd99b6a-3b6f-46f0-9f5b-9db99628f0fb.gif', '2023-05-01 23:28:57', '2023-05-01 23:28:57', 0, 0),
(128, 1, 'eng', 'GEFORCE\nGTX\n', 'GEFORCE\nGTX\n', 'f68a77c2-7d5c-443d-9e2f-bc6ad8217cc6.jpeg', '2023-05-01 23:29:12', '2023-05-01 23:29:12', 0, 0);

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
(1, 'sreyas', 'sreyas@gmail.com', 'cebf60f7f39b049aa5993d4f3141d86e', 'sreyas satheesh', 'male', '8555585868', 'kanjirathinkal(H)\nthoppippala p.o\nmattappally\n', 'defaultUser.png', NULL),
(2, 'sreyas_one', 'pywezevo@mailinator.com', 'cebf60f7f39b049aa5993d4f3141d86e', 'Wanda Mcknight', 'male', '8754785585', 'Eiusmod labore sunt ', 'defaultUser.png', NULL),
(24, 'sreyas1', 'sreyas@gmail.com', 'cebf60f7f39b049aa5993d4f3141d86e', 'sreyas', 'male', '8585857585', 'goood', 'defaultUser.png', NULL);

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
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

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
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `deo`
--
ALTER TABLE `deo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `message_deo`
--
ALTER TABLE `message_deo`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `text`
--
ALTER TABLE `text`
  MODIFY `text_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `text`
--
ALTER TABLE `text`
  ADD CONSTRAINT `text_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
