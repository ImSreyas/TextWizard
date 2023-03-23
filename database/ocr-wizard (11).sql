-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2023 at 07:32 AM
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
  `full_name` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `gender` varchar(250) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `phone` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deo`
--

INSERT INTO `deo` (`id`, `username`, `password`, `email`, `name`, `gender`, `address`, `phone`, `status`) VALUES
(1, 'sreyas__one', 'cebf60f7f39b049aa5993d4f3141d86e', 'dehisehyq@mailinator.com', 'Indira Dudley', 'male', 'Sequi voluptate cons', 2147483647, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(65, 1, 1, '<nav class=\"nav-bar\">\n<ul>\n<a href=\"seller-index.php\" class=\"no-text-decoration\">\n<li class=\"request highlight\">request</1i>\n</a>\n<a href=\"delivery.php\" class=\"no-text-decoration\">\n<li class=\"delivery\">delivery</1li>\n</a>\n<a href=\"product.php\" class=\"no-text-decoration\">\n<li class=\"product\">product</1i>\n</a>\n<a href=\"details.php\" class=\"no-text-decoration\">\n<li class=\"details\">details</1i>\n</a>\n<a href=\"log-out.php\" class=\"no-text-decoration\">\n<li class=\"log-out\">log out</1i>\n</a>\n</ul>\n\n</nav>\n', 'good', '.txt', '2023-03-22 23:01:19');

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
  `text` varchar(500) DEFAULT NULL,
  `new_text` varchar(10000) NOT NULL,
  `file_name` varchar(1000) NOT NULL,
  `created_time` datetime DEFAULT current_timestamp(),
  `last_edited` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `text`
--

INSERT INTO `text` (`text_id`, `user_id`, `language`, `text`, `new_text`, `file_name`, `created_time`, `last_edited`) VALUES
(1, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', '', '2c3cfb3c-de9c-45c1-ae05-b2b70dd9fadd.png', '2023-03-19 17:22:18', '2023-03-19 17:22:18'),
(2, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\nimport javax.swing.JCheckBox;\n\npublic class checkBoxProgram extends JApplet implements ItemListener{\nJTextField te;\nJCheckBox first, second;\npublic void init(){\nContainer c = getContentPane();\nc.setVisible(true);\nc.setSize(500, 500);\n\nc.setlLayout(new FlowLayout());\n\nfirst = new JCheckBox(\"first\");\nsecond = new JCheckBox(\"second\");\nte = new JTextField(20);\nfirst.addItemListener(this);\nsecond.addItemListene', '', '05c55294-65c3-423d-b8c7-44e40291d6b0.png', '2023-03-21 13:00:37', '2023-03-21 13:00:37'),
(3, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', '', 'c93d9cb0-fd5d-4351-879d-294b72e2726f.png', '2023-03-21 13:02:13', '2023-03-21 13:02:13'),
(4, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', '443c43b2-47c1-40d6-b306-ad493b554836.png', '2023-03-21 16:41:53', '2023-03-21 16:41:53'),
(5, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', '9f0ba0af-41b3-47bb-afb1-d90586132219.png', '2023-03-21 16:48:20', '2023-03-21 16:48:20'),
(6, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', '6c0ac970-cfe9-4805-8615-8a8d591cfdee.png', '2023-03-21 16:48:47', '2023-03-21 16:48:47'),
(7, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', '9f8a587e-fe4c-4f19-9b6e-9162b99f5b6e.png', '2023-03-21 18:40:44', '2023-03-21 18:40:44'),
(8, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', 'd25c9707-6a1d-428a-8562-4b64d1b67532.png', '2023-03-21 19:16:38', '2023-03-21 19:16:38'),
(9, 1, 'eng', '<nav class=\"nav-bar\">\n<ul>\n<a href=\"seller-index.php\" class=\"no-text-decoration\">\n<li class=\"request highlight\">request</1i>\n</a>\n<a href=\"delivery.php\" class=\"no-text-decoration\">\n<li class=\"delivery\">delivery</1li>\n</a>\n<a href=\"product.php\" class=\"no-text-decoration\">\n<li class=\"product\">product</1i>\n</a>\n<a href=\"details.php\" class=\"no-text-decoration\">\n<li class=\"details\">details</1i>\n</a>\n<a href=\"log-out.php\" class=\"no-text-decoration\">\n<li class=\"log-out\">log out</1i>\n</a>\n</ul>\n\n</nav>\n', '<nav class=\"nav-bar\">\n<ul>\n<a href=\"seller-index.php\" class=\"no-text-decoration\">\n<li class=\"request highlight\">request</1i>\n</a>\n<a href=\"delivery.php\" class=\"no-text-decoration\">\n<li class=\"delivery\">delivery</1li>\n</a>\n<a href=\"product.php\" class=\"no-text-decoration\">\n<li class=\"product\">product</1i>\n</a>\n<a href=\"details.php\" class=\"no-text-decoration\">\n<li class=\"details\">details</1i>\n</a>\n<a href=\"log-out.php\" class=\"no-text-decoration\">\n<li class=\"log-out\">log out</1i>\n</a>\n</ul>\n\n</nav>\n\n', 'c981ce25-0888-4853-8f19-34e804600ba8.png', '2023-03-21 19:27:08', '2023-03-21 19:27:08'),
(10, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'e4fd8def-f4c7-49da-9606-8ed336c68c50.png', '2023-03-21 19:37:33', '2023-03-21 19:37:33'),
(11, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', 'cc49948b-bdd1-49b4-97c4-12e78f868cf3.png', '2023-03-21 19:38:19', '2023-03-21 19:38:19'),
(12, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'cb668ef4-0419-4de8-8a65-85966baa92dc.png', '2023-03-21 19:39:49', '2023-03-21 19:39:49'),
(13, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', '325bc2f2-f5a8-411d-bd7d-9ed16a663b24.png', '2023-03-21 19:42:47', '2023-03-21 19:42:47'),
(14, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', '0d359423-dccc-4f16-8b99-6d4ccfb12f70.png', '2023-03-21 19:44:00', '2023-03-21 19:44:00'),
(15, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'db45032e-d55b-49a4-a15f-9be8e255972c.png', '2023-03-21 19:45:29', '2023-03-21 19:45:29'),
(16, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', '9eca6834-cb3d-46aa-bfce-089a060013cb.png', '2023-03-21 19:45:55', '2023-03-21 19:45:55'),
(17, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', 'b99bd5a9-86ff-4f9a-9a04-a0ebcf4464ee.png', '2023-03-21 19:47:10', '2023-03-21 19:47:10'),
(18, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', '938e718f-2573-4098-b958-2c8e800ac6a6.png', '2023-03-21 19:48:36', '2023-03-21 19:48:36'),
(19, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'f1deb9d7-60d7-4c6f-84c7-ac10f4b6aaf9.png', '2023-03-21 19:49:05', '2023-03-21 19:49:05'),
(20, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'f94690eb-595c-472f-9d0c-be8ca9c5b5da.png', '2023-03-21 19:53:48', '2023-03-21 19:53:48'),
(21, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', '8833c14b-3ef2-44b9-aa04-f6ad05874688.png', '2023-03-21 19:57:54', '2023-03-21 19:57:54'),
(22, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'ad0828d0-d13c-461b-acce-9c583ca661c4.png', '2023-03-21 19:59:09', '2023-03-21 19:59:09'),
(23, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'e25d3795-b520-4c09-95cb-22b2edccfbd7.png', '2023-03-21 20:00:38', '2023-03-21 20:00:38'),
(24, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', '2a39adf4-522b-4b0b-b6ae-e472814dfcb9.png', '2023-03-21 20:02:28', '2023-03-21 20:02:28'),
(25, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', '541af670-ef98-4fe5-9326-995b794bead8.png', '2023-03-21 20:05:41', '2023-03-21 20:05:41'),
(26, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.a', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\npublic class cb extends JApplet implements ItemListener{\nJLabel label;\nImagelcon a, b, c, d;\npublic void init(){\nContainer cp = getContentPane();\ncp.setLayout(new FlowLayout());\ncp.setSize(500, 500);\ncp.setVisible(true);\n\nJComboBox jc = new JComboBox();\njc.addItem(\"a\");\njc.addItem(\"b\");\njc.addItem(\"c\");\n\njc.addItem(\"d\"\n\njc.addItemListener(this);\ncp.add(jc);\n\nlabel = new JLabel(new ImageIcon(\"a.png\"));\ncp.add(label);\n\n}\n\npublic void itemStateChanged(ItemEvent e){\nString s = (String) e.getItem();\nlabel.setIcon(new ImageIcon(s + \".png\"));\n\n', 'a49f9f39-e564-4e39-b9cf-559c351dec82.png', '2023-03-21 20:08:04', '2023-03-21 20:08:04'),
(27, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', '3a7c2208-f959-4bc7-9706-ce23895959a5.png', '2023-03-21 20:09:00', '2023-03-21 20:09:00'),
(28, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'd2f47ba8-3b20-426d-98cc-91563983bcde.png', '2023-03-21 20:10:02', '2023-03-21 20:10:02'),
(29, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', '59a0ba9b-f017-46de-8ff7-f08cf3b224c9.png', '2023-03-21 20:26:08', '2023-03-21 20:26:08'),
(30, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'cdb9f645-bb7a-4448-aa7a-0eefba094739.png', '2023-03-21 20:26:32', '2023-03-21 20:26:32'),
(31, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'eb0c23e2-892b-4227-b194-f71027206eea.png', '2023-03-21 20:27:44', '2023-03-21 20:27:44'),
(32, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', '75ce0915-61e0-4e61-8a01-15a53d32831f.png', '2023-03-21 20:27:53', '2023-03-21 20:27:53'),
(33, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'dbf1faf7-85a4-437b-a761-4fcea9165b21.png', '2023-03-21 20:29:13', '2023-03-21 20:29:13'),
(34, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', '6ecddb17-e02e-4fe0-a78a-51cc5847d03b.png', '2023-03-21 20:32:42', '2023-03-21 20:32:42'),
(35, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'a3eb732e-4c20-4afe-8316-940e0d14c8e9.png', '2023-03-21 20:34:17', '2023-03-21 20:34:17'),
(36, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'f6a49d13-20f9-4e72-aa36-5119f8340490.png', '2023-03-21 20:35:10', '2023-03-21 20:35:10');
INSERT INTO `text` (`text_id`, `user_id`, `language`, `text`, `new_text`, `file_name`, `created_time`, `last_edited`) VALUES
(37, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'f6e9a413-fda7-4b0b-a6b1-d1c49a54faff.png', '2023-03-21 20:39:07', '2023-03-21 20:39:07'),
(38, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', '17f39bae-6ac8-4da7-a1a1-82ec7681e5ad.png', '2023-03-21 20:39:32', '2023-03-21 20:39:32'),
(39, 1, 'eng', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\nimport javax.swing.JCheckBox;\n\npublic class checkBoxProgram extends JApplet implements ItemListener{\nJTextField te;\nJCheckBox first, second;\npublic void init(){\nContainer c = getContentPane();\nc.setVisible(true);\nc.setSize(500, 500);\n\nc.setlLayout(new FlowLayout());\n\nfirst = new JCheckBox(\"first\");\nsecond = new JCheckBox(\"second\");\nte = new JTextField(20);\nfirst.addItemListener(this);\nsecond.addItemListene', 'import java.awt.*;\nimport java.applet.x*;\nimport java.awt.event.x*;\nimport javax.swing.*;\n\nimport javax.swing.JCheckBox;\n\npublic class checkBoxProgram extends JApplet implements ItemListener{\nJTextField te;\nJCheckBox first, second;\npublic void init(){\nContainer c = getContentPane();\nc.setVisible(true);\nc.setSize(500, 500);\n\nc.setlLayout(new FlowLayout());\n\nfirst = new JCheckBox(\"first\");\nsecond = new JCheckBox(\"second\");\nte = new JTextField(20);\nfirst.addItemListener(this);\nsecond.addItemListener(this);\n\nc.add(first);\nc.add(second);\nc.add(te);\n}\npublic void itemStateChanged(ItemEvent e){\nte.setText(((JCheckBox) e.getItem()).getText());\n}\n\n', 'c3649b84-eaff-4822-99df-57af574ed8e5.png', '2023-03-21 20:43:05', '2023-03-21 20:43:05'),
(40, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', '898e1e95-c826-44c8-ac66-6ae00a7612e3.png', '2023-03-21 20:52:16', '2023-03-21 20:52:16'),
(41, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', 'd7aaaf2b-7fd7-47a4-bfb7-c3b57157b7d8.png', '2023-03-21 20:57:42', '2023-03-21 20:57:42'),
(42, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', '84d6e54e-7f10-4a7b-a0e2-22d33d44e034.png', '2023-03-21 20:58:25', '2023-03-21 20:58:25'),
(43, 1, 'eng', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new ', 'import javax.swing.*;\nimport java.awt.*;\nimport java.awt.event.x*;\n\nclass myclass extends JFrame implements ActionListener {\nJLabel labell, label2;\nJTextField textl, text2, result;\n\nmyclass() {\nsetSize(500, 500);\nsetlLayout(new FlowLayout());\nsetVisible(true);\nsetDefaultCloseOperation(EXIT_ON_CLOSE);\nlabell = new JLabel(\"Enter the first number\");\ntextl = new JTextField(20);\nlabel2 = new JLabel(\"Enter the second number\");\ntext2 = new JTextField(20);\nresult = new JTextField(10);\nJButton btn = new JButton(\"Add\");\nbtn.addActionListener(this);\nEG [ [QEGIIND\nadd(textl);\nadd(label2);\nadd(text2);\nadd(btn);\nadd(result);\n}\n\npublic void actionPerformed(ActionEvent e) {\nresult.setText(Integer.parseInt(textl.getText()) + Integer.parseInt(text2.getText()) + \"\");\n\n}\n\npublic static void main(String args[]) {\nnew myclass();\n\n}\n\n', '672830b3-0e15-4e87-bbe2-550ea68a1e7c.png', '2023-03-21 23:23:38', '2023-03-21 23:23:38'),
(44, 1, 'eng', '<nav class=\"nav-bar\">\n<ul>\n<a href=\"seller-index.php\" class=\"no-text-decoration\">\n<li class=\"request highlight\">request</1i>\n</a>\n<a href=\"delivery.php\" class=\"no-text-decoration\">\n<li class=\"delivery\">delivery</1li>\n</a>\n<a href=\"product.php\" class=\"no-text-decoration\">\n<li class=\"product\">product</1i>\n</a>\n<a href=\"details.php\" class=\"no-text-decoration\">\n<li class=\"details\">details</1i>\n</a>\n<a href=\"log-out.php\" class=\"no-text-decoration\">\n<li class=\"log-out\">log out</1i>\n</a>\n</ul>\n\n</nav>\n', '<nav class=\"nav-bar\">\n<ul>\n<a href=\"seller-index.php\" class=\"no-text-decoration\">\n<li class=\"request highlight\">request</1i>\n</a>\n<a href=\"delivery.php\" class=\"no-text-decoration\">\n<li class=\"delivery\">delivery</1li>\n</a>\n<a href=\"product.php\" class=\"no-text-decoration\">\n<li class=\"product\">product</1i>\n</a>\n<a href=\"details.php\" class=\"no-text-decoration\">\n<li class=\"details\">details</1i>\n</a>\n<a href=\"log-out.php\" class=\"no-text-decoration\">\n<li class=\"log-out\">log out</1i>\n</a>\n</ul>\n\n</nav>\n\n', '2abe2e8d-d9bd-442f-a22f-62851f4cd1c2.png', '2023-03-22 01:11:59', '2023-03-22 01:11:59');

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
  `status` varchar(50) DEFAULT NULL,
  `file_given` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `name`, `gender`, `phone`, `address`, `profile_pic`, `status`, `file_given`) VALUES
(1, 'sreyas', 'nevapil@mailinator.com', 'cebf60f7f39b049aa5993d4f3141d86e', 'sreyas satheesh', 'male', '8555585868', 'kanjirathinkal(H)\nthoppippala p.o\nmattappally\n', 'defaultUser.png', NULL, 0),
(2, 'sreyas_one', 'pywezevo@mailinator.com', 'cebf60f7f39b049aa5993d4f3141d86e', 'Wanda Mcknight', 'male', '8754785585', 'Eiusmod labore sunt ', 'defaultUser.png', NULL, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deo`
--
ALTER TABLE `deo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
