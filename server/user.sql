-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 10, 2024 at 01:44 PM
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
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int NOT NULL,
  `username` varchar(90) NOT NULL,
  `email` varchar(90) NOT NULL,
  `password_hash` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `email`, `password_hash`) VALUES
(1, 'TESTING', 'TESTING@MAIL.COM', '$2y$10$tXRnQp1nNZB9iqi6fRaDO.VH31zkujiHOtlKDdSkDkNa2T25Zr5Ju'),
(2, 'benturner', 'benturner@example.com', '$2y$10$a/bmg065i.9yX0n1bW0WvO7PHr0QZeStUwrfDeA2ZKGG59ac0CSJS'),
(3, 'benny', 'bentest@gmail.com', '$2y$10$RRHEaeyiLW2d/MQCMgYdDO8iBbin3hb.lm..nuUXteTG2TgtPSZPa'),
(4, 'testuser', 'test@useremail.com', '$2y$10$bs6E.s6sL3GL8sDDajAM6eYYmFveAJ48m8ygYo7.H6FP8sn3Yds4q'),
(5, 'testingg', 'testing123@gmail.com', '$2y$10$pCwKIhPk4AFpo2Xzi7yT/.ZkkfMtzrTIAgRGp2KtlGt/ZzgriegCm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
