-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 14, 2021 at 03:44 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gs_db`
--
CREATE DATABASE IF NOT EXISTS `gs_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gs_db`;

-- --------------------------------------------------------

--
-- Table structure for table `gs_db`
--

CREATE TABLE `gs_db` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `naiyou` text NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gs_db`
--

INSERT INTO `gs_db` (`id`, `name`, `email`, `naiyou`, `indate`) VALUES
(1, 'fukushima', 'test@test.com', 'helloworld', '2021-03-27 14:51:01'),
(2, 'okamoto', 'takuoka@gmail.com', 'aaa', '2021-03-27 14:52:24'),
(3, 'neko', 'okaxtaku@gmail.com', 'taku', '2021-03-27 14:53:53'),
(4, 'ushi', 'tk@gmeil.com', 'neko', '2021-03-27 14:56:00'),
(5, 'first_a', 'takucoka@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(6, 'first_a', 'takucoka@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(7, 'first_a', 'takucokaA@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(8, 'first_b', 'takucokaB@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(9, 'first_a', 'takucoka@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(21, 'first_a', 'takucoka@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(22, 'first_a', 'takucokaA@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(23, 'first_b', 'takucokaB@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(24, 'first_a', 'takucoka@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(25, 'first_a', 'takucokaA@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(26, 'first_b', 'takucokaB@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(27, 'first_a', 'takucoka@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(28, 'first_a', 'takucokaA@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(29, 'first_b', 'takucokaB@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(30, 'first_a', 'takucoka@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(31, 'first_a', 'takucokaA@gmail.com', 'fdsfsd', '2021-04-10 00:00:00'),
(32, 'first_b', 'takucokaB@gmail.com', 'fdsfsd', '2021-04-10 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_db`
--
ALTER TABLE `gs_db`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_db`
--
ALTER TABLE `gs_db`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Database: `stock_data`
--
CREATE DATABASE IF NOT EXISTS `stock_data` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `stock_data`;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` text NOT NULL,
  `stock` text NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `date`, `userid`, `stock`, `amount`) VALUES
(1, '2021-04-10 00:00:00', 'guest', 'AAPL', 100),
(2, '2021-04-10 00:00:00', 'guest', 'AAPL', 100),
(3, '2021-04-10 00:00:00', 'guest', 'AAPL', 100),
(4, '2020-04-20 00:00:00', 'guest', 'AAPL', 100),
(5, '2020-04-20 00:00:00', 'guest', 'AAPL', 100),
(6, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(7, '2020-04-20 00:00:00', 'guest', 'AAPL', 100),
(8, '2020-04-20 00:00:00', 'guest', 'TSLA', 500),
(9, '2020-04-20 00:00:00', 'guest', 'AAPL', 100),
(10, '2020-04-20 00:00:00', 'guest', 'AAPL', -100),
(11, '2020-04-20 00:00:00', 'guest', 'AAPL', -100),
(12, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(13, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(14, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(15, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(16, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(17, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(18, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(19, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(20, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(21, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(22, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(23, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(24, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(25, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(26, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(27, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(28, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(29, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(30, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(31, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(32, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(33, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(34, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(35, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(36, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(37, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(38, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(39, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(40, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(41, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(42, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(43, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(44, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(45, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(46, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(47, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(48, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(49, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(50, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(51, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(52, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(53, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(54, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(55, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(56, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(57, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(58, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(59, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(60, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(61, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(62, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(63, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(64, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(65, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(66, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(67, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(68, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(69, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(70, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(71, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(72, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(73, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(74, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(75, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(76, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(77, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(78, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(79, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(80, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(81, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(82, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(83, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(84, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(85, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(86, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(87, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(88, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(89, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(90, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(91, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(92, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(93, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(94, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(95, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(96, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(97, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(98, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(99, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(100, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(101, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(102, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(103, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(104, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(105, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(106, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(107, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(108, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(109, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(110, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(111, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(112, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(113, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(114, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(115, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(116, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(117, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(118, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(119, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(120, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(121, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(122, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(123, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(124, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(125, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(126, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(127, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(128, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(129, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(130, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(131, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(132, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(133, '2020-04-20 00:00:00', 'guest', 'TSLA', -100),
(134, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(135, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(136, '2020-04-20 00:00:00', 'guest', 'TSLA', 100),
(137, '2020-04-20 00:00:00', 'guest', 'AAPL', 100),
(138, '2020-04-20 00:00:00', 'guest', 'AAPL', 100),
(139, '2020-04-20 00:00:00', 'guest', 'XOM', 100),
(140, '2020-04-20 00:00:00', 'guest', 'XOM', 100),
(141, '2020-04-20 00:00:00', 'guest', 'AAPL', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
