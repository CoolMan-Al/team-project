-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 03, 2024 at 12:32 PM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c3654717`
--

-- --------------------------------------------------------

--
-- Table structure for table `value`
--

CREATE TABLE `value` (
  `valueID` int NOT NULL,
  `date` date DEFAULT NULL,
  `time` time NOT NULL,
  `temp` int NOT NULL,
  `humid` int NOT NULL,
  `press` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `value`
--

INSERT INTO `value` (`valueID`, `date`, `time`, `temp`, `humid`, `press`) VALUES
(36, '2024-05-01', '12:35:52', 25, 43, 997),
(37, '2024-05-01', '12:35:53', 25, 43, 997),
(38, '2024-05-01', '12:35:55', 25, 43, 997),
(39, '2024-05-01', '12:35:56', 25, 43, 997),
(40, '2024-05-01', '12:35:57', 25, 43, 997),
(41, '2024-05-01', '12:35:58', 25, 43, 997),
(42, '2024-05-01', '12:35:59', 25, 43, 997),
(43, '2024-05-01', '12:36:00', 25, 43, 997),
(44, '2024-05-01', '12:39:44', 25, 43, 997),
(45, '2024-05-01', '12:40:09', 25, 43, 997),
(46, '2024-05-01', '12:59:43', 25, 43, 997),
(47, '2024-05-01', '12:59:53', 25, 42, 997),
(48, '2024-05-01', '12:59:54', 25, 42, 997),
(49, '2024-05-01', '12:59:55', 25, 42, 997),
(50, '2024-05-01', '12:59:57', 25, 42, 997),
(51, '2024-05-01', '12:59:58', 25, 42, 997),
(52, '2024-05-01', '12:59:59', 25, 42, 997),
(53, '2024-05-01', '13:00:00', 25, 42, 997),
(54, '2024-05-01', '13:00:01', 25, 42, 997),
(55, '2024-05-01', '13:00:02', 25, 42, 997),
(56, '2024-05-01', '13:00:03', 25, 42, 997),
(57, '2024-05-01', '13:00:04', 25, 42, 997),
(58, '2024-05-01', '13:00:05', 25, 42, 997),
(59, '2024-05-01', '13:00:06', 25, 42, 997),
(60, '2024-05-01', '13:00:07', 25, 42, 997),
(61, '2024-05-01', '13:00:08', 25, 42, 997),
(62, '2024-05-01', '13:00:09', 25, 42, 997),
(63, '2024-05-01', '13:00:10', 25, 42, 997),
(64, '2024-05-01', '13:00:11', 25, 42, 997),
(65, '2024-05-01', '13:00:12', 25, 42, 997),
(66, '2024-05-01', '13:00:13', 25, 42, 997),
(67, '2024-05-01', '13:00:14', 25, 42, 997),
(68, '2024-05-01', '13:00:15', 25, 42, 997),
(69, '2024-05-01', '13:00:16', 25, 42, 997),
(70, '2024-05-01', '13:00:17', 25, 42, 997),
(71, '2024-05-01', '13:00:18', 25, 42, 997),
(72, '2024-05-01', '13:00:19', 25, 42, 997),
(73, '2024-05-01', '13:00:20', 25, 42, 997),
(74, '2024-05-01', '13:00:21', 25, 42, 997),
(75, '2024-05-01', '13:00:22', 25, 42, 997),
(76, '2024-05-01', '13:00:23', 25, 42, 997),
(77, '2024-05-01', '13:00:24', 25, 42, 997),
(78, '2024-05-01', '13:00:25', 25, 42, 997),
(79, '2024-05-01', '13:00:26', 25, 42, 997),
(80, '2024-05-01', '13:00:27', 25, 42, 997),
(81, '2024-05-01', '13:00:28', 25, 42, 997),
(82, '2024-05-01', '13:00:29', 25, 42, 997),
(83, '2024-05-01', '13:00:30', 25, 42, 997),
(84, '2024-05-01', '13:00:31', 25, 42, 997),
(85, '2024-05-01', '13:00:32', 25, 42, 997),
(86, '2024-05-01', '13:00:33', 25, 42, 997),
(87, '2024-05-01', '13:00:34', 25, 42, 997),
(88, '2024-05-01', '13:00:35', 25, 42, 997),
(89, '2024-05-01', '13:00:36', 25, 42, 997),
(90, '2024-05-01', '13:00:37', 25, 42, 997),
(91, '2024-05-01', '13:00:38', 25, 42, 997),
(92, '2024-05-01', '13:00:39', 25, 42, 997),
(93, '2024-05-01', '13:00:40', 25, 42, 997),
(94, '2024-05-01', '13:00:41', 25, 42, 997),
(95, '2024-05-01', '13:00:42', 25, 42, 997),
(96, '2024-05-01', '13:00:43', 25, 42, 997),
(97, '2024-05-01', '13:00:44', 25, 42, 997),
(98, '2024-05-01', '13:00:45', 25, 42, 997),
(99, '2024-05-01', '13:00:46', 25, 42, 997),
(100, '2024-05-01', '13:00:47', 25, 42, 997),
(101, '2024-05-01', '13:00:48', 25, 42, 997),
(102, '2024-05-01', '13:00:49', 25, 42, 997),
(103, '2024-05-01', '13:00:50', 25, 42, 997),
(104, '2024-05-01', '13:00:51', 25, 42, 997),
(105, '2024-05-01', '13:00:52', 25, 42, 997),
(106, '2024-05-01', '13:00:53', 25, 42, 997),
(107, '2024-05-01', '13:00:54', 25, 42, 997),
(108, '2024-05-01', '13:00:55', 25, 42, 997),
(109, '2024-05-01', '13:00:56', 25, 42, 997),
(110, '2024-05-01', '13:00:57', 25, 42, 997),
(111, '2024-05-01', '13:00:58', 25, 42, 997),
(112, '2024-05-01', '13:01:00', 25, 42, 997),
(113, '2024-05-01', '13:01:01', 25, 42, 997),
(114, '2024-05-01', '13:01:02', 25, 42, 997),
(115, '2024-05-01', '13:01:03', 25, 42, 997),
(116, '2024-05-01', '13:01:04', 25, 42, 997),
(117, '2024-05-01', '13:01:05', 25, 42, 997),
(118, '2024-05-01', '13:01:06', 25, 42, 997),
(119, '2024-05-01', '13:01:07', 25, 42, 997),
(120, '2024-05-01', '13:01:08', 25, 42, 997),
(121, '2024-05-01', '13:01:09', 25, 42, 997),
(122, '2024-05-01', '13:01:10', 25, 42, 997),
(123, '2024-05-01', '13:01:11', 25, 42, 997),
(124, '2024-05-01', '13:01:12', 25, 42, 997),
(125, '2024-05-01', '13:01:13', 25, 42, 997),
(126, '2024-05-01', '13:01:14', 25, 42, 997),
(127, '2024-05-01', '13:01:15', 25, 42, 997),
(128, '2024-05-01', '13:01:16', 25, 42, 997),
(129, '2024-05-01', '13:01:17', 25, 42, 997),
(130, '2024-05-01', '13:01:18', 25, 42, 997),
(131, '2024-05-01', '13:01:19', 25, 42, 997),
(132, '2024-05-01', '13:01:20', 25, 42, 997),
(133, '2024-05-01', '13:01:21', 25, 42, 997),
(134, '2024-05-01', '13:01:22', 25, 42, 997),
(135, '2024-05-01', '13:01:23', 25, 42, 997),
(136, '2024-05-01', '13:01:24', 25, 42, 997),
(137, '2024-05-01', '13:01:25', 25, 42, 997),
(138, '2024-05-01', '13:01:26', 25, 42, 997),
(139, '2024-05-01', '13:01:27', 25, 42, 997),
(140, '2024-05-01', '13:01:28', 25, 42, 997),
(141, '2024-05-01', '13:01:29', 25, 42, 997),
(142, '2024-05-01', '13:01:30', 25, 42, 997),
(143, '2024-05-01', '13:01:31', 25, 42, 997),
(144, '2024-05-01', '13:01:32', 25, 42, 997),
(145, '2024-05-01', '13:01:33', 25, 42, 997),
(146, '2024-05-01', '13:01:34', 25, 42, 997),
(147, '2024-05-01', '13:01:35', 25, 42, 997),
(148, '2024-05-01', '13:01:36', 25, 42, 997),
(149, '2024-05-01', '13:01:37', 25, 42, 997),
(150, '2024-05-01', '13:01:38', 25, 42, 997),
(151, '2024-05-01', '13:01:39', 25, 42, 997),
(152, '2024-05-01', '13:01:40', 25, 42, 997),
(153, '2024-05-01', '13:01:41', 25, 42, 997),
(154, '2024-05-01', '13:01:42', 25, 42, 997),
(155, '2024-05-01', '13:01:43', 25, 42, 997),
(156, '2024-05-01', '13:01:44', 25, 42, 997),
(157, '2024-05-01', '13:01:45', 25, 42, 997),
(158, '2024-05-01', '13:01:46', 25, 42, 997),
(159, '2024-05-01', '13:01:47', 25, 42, 997),
(160, '2024-05-01', '13:01:48', 25, 42, 997),
(161, '2024-05-01', '13:01:49', 25, 42, 997),
(162, '2024-05-01', '13:01:50', 25, 42, 997),
(163, '2024-05-01', '13:01:51', 25, 42, 997),
(164, '2024-05-01', '13:01:52', 25, 42, 997),
(165, '2024-05-01', '13:01:53', 25, 42, 997),
(166, '2024-05-01', '13:01:54', 25, 42, 997),
(167, '2024-05-01', '13:01:55', 25, 42, 997),
(168, '2024-05-01', '13:01:56', 25, 42, 997),
(169, '2024-05-01', '13:01:57', 25, 42, 997),
(170, '2024-05-01', '13:01:59', 25, 42, 997),
(171, '2024-05-01', '13:02:00', 25, 42, 997),
(172, '2024-05-01', '13:02:01', 25, 42, 997),
(173, '2024-05-01', '13:02:02', 25, 42, 997),
(174, '2024-05-01', '13:02:03', 25, 42, 997),
(175, '2024-05-01', '13:02:04', 25, 42, 997),
(176, '2024-05-01', '13:02:05', 25, 42, 997),
(177, '2024-05-01', '13:02:06', 25, 42, 997),
(178, '2024-05-01', '13:02:07', 25, 42, 997),
(179, '2024-05-01', '13:02:08', 25, 42, 997),
(180, '2024-05-01', '13:02:09', 25, 42, 997),
(181, '2024-05-01', '13:02:10', 25, 42, 997),
(182, '2024-05-01', '13:02:11', 25, 42, 997),
(183, '2024-05-01', '13:02:12', 25, 42, 997),
(184, '2024-05-01', '13:02:13', 25, 42, 997),
(185, '2024-05-01', '13:02:14', 25, 42, 997),
(186, '2024-05-01', '13:02:15', 25, 42, 997),
(187, '2024-05-01', '13:02:16', 25, 42, 997),
(188, '2024-05-01', '13:02:17', 25, 42, 997),
(189, '2024-05-01', '13:02:18', 25, 42, 997),
(190, '2024-05-01', '13:02:19', 25, 42, 997),
(191, '2024-05-01', '13:02:20', 25, 42, 997),
(192, '2024-05-01', '13:02:21', 25, 42, 997),
(193, '2024-05-01', '13:02:22', 25, 42, 997),
(194, '2024-05-01', '13:02:23', 25, 42, 997),
(195, '2024-05-01', '13:02:24', 25, 42, 997),
(196, '2024-05-01', '13:02:25', 25, 42, 997),
(197, '2024-05-01', '13:02:26', 25, 42, 997),
(198, '2024-05-01', '13:02:27', 25, 42, 997),
(199, '2024-05-01', '13:02:28', 25, 42, 997),
(200, '2024-05-01', '13:02:29', 25, 42, 997),
(201, '2024-05-01', '13:02:30', 25, 42, 997),
(202, '2024-05-01', '13:02:31', 25, 42, 997),
(203, '2024-05-01', '13:02:32', 25, 42, 997),
(204, '2024-05-01', '13:02:33', 25, 42, 997),
(205, '2024-05-01', '13:02:34', 25, 42, 997),
(206, '2024-05-01', '13:02:35', 25, 42, 997),
(207, '2024-05-01', '13:02:36', 25, 42, 997),
(208, '2024-05-01', '13:02:37', 25, 42, 997),
(209, '2024-05-01', '13:02:38', 25, 42, 997),
(210, '2024-05-01', '13:02:39', 25, 42, 997),
(211, '2024-05-01', '13:02:40', 25, 42, 997),
(212, '2024-05-01', '13:02:41', 25, 42, 997),
(213, '2024-05-01', '13:02:42', 25, 42, 997),
(214, '2024-05-01', '13:02:43', 25, 42, 997),
(215, '2024-05-01', '13:02:44', 25, 42, 997),
(216, '2024-05-01', '13:02:45', 25, 42, 997),
(217, '2024-05-01', '13:02:46', 25, 42, 997),
(218, '2024-05-01', '13:02:47', 25, 42, 997),
(219, '2024-05-01', '13:02:48', 25, 42, 997),
(220, '2024-05-01', '13:02:49', 25, 42, 997),
(221, '2024-05-01', '13:02:50', 25, 42, 997),
(222, '2024-05-01', '13:02:51', 25, 42, 997),
(223, '2024-05-01', '13:02:52', 25, 42, 997),
(224, '2024-05-01', '13:02:53', 25, 42, 997),
(225, '2024-05-01', '13:02:54', 25, 42, 997),
(226, '2024-05-01', '13:02:55', 25, 42, 997),
(227, '2024-05-01', '13:02:56', 25, 42, 997),
(228, '2024-05-01', '13:02:57', 25, 42, 997),
(229, '2024-05-01', '13:02:58', 25, 42, 997),
(230, '2024-05-01', '13:03:00', 25, 42, 997),
(231, '2024-05-01', '13:03:01', 25, 42, 997),
(233, '2024-04-30', '12:35:52', 23, 41, 996);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`valueID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `value`
--
ALTER TABLE `value`
  MODIFY `valueID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
