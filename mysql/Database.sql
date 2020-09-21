-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 21, 2020 at 08:30 AM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qJkXGOrBPl`
--

-- --------------------------------------------------------

--
-- Table structure for table `botcalls`
--

CREATE TABLE `botcalls` (
  `id` int(11) NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `called` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `botcalls`
--

INSERT INTO `botcalls` (`id`, `date`, `called`) VALUES
(1, '5.8.2020', '5'),
(2, '6.8.2020', '2'),
(3, '11.8.2020', '1'),
(4, '23.8.2020', '4'),
(5, '24.8.2020', '1'),
(6, '25.8.2020', '1'),
(7, '26.8.2020', '1'),
(8, '27.8.2020', '1'),
(9, '28.8.2020', '14'),
(10, '31.8.2020', '8'),
(11, '1.9.2020', '2'),
(12, '2.9.2020', '3'),
(13, '3.9.2020', '2'),
(14, '4.9.2020', '1'),
(15, '4.9.2020', '1');

-- --------------------------------------------------------

--
-- Table structure for table `errors`
--

CREATE TABLE `errors` (
  `id` int(11) NOT NULL,
  `serviceName` varchar(255) NOT NULL,
  `errorMessage` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `cr_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `title`, `text`, `cr_date`) VALUES
(227, 'Regular', 'Message%20sent%20every%20day.', '23%2F08%2F2020'),
(228, 'OneTime', 'Message%20sent%20one%20time.', '23%2F08%2F2020'),
(229, 'Test7Day', 'Send%20message%20every%207th%20day.', '23%2F08%2F2020'),
(230, 'Merikrismis', 'Nek%20je%20sretan%2C%20%C5%A1ta%20dalje%20da%20pi%C5%A1em%3F', '26%2F08%2F2020'),
(232, 'hello', 'Hello%2C%20is%20there%20anybody%20out%20there%3F', '28%2F08%2F2020'),
(233, 'jokes', 'There%20was%20a%20joke%20somewhere%20out%20here.', '28%2F08%2F2020'),
(234, 'NewMess', 'Some%20new%20message%20sent%20in%20General%20chat.', '28%2F08%2F2020'),
(235, 'newonetime', 'New%20message%20sent%20once', '28%2F08%2F2020');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `report_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `report_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `report_name`, `report_value`, `last_update`) VALUES
(1, 'Messages count', '8', '15.9.2020'),
(2, 'Schedules count', '4', '15.9.2020'),
(3, 'Triggers count', '3', '15.9.2020'),
(4, 'Messages deleted', '8', '3.9.2020'),
(5, 'Schedules deleted', '4', '30.8.2020'),
(6, 'Triggers deleted', '2', '31.8.2020');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `run_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `active` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `repeat_range` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`message`, `run_date`, `active`, `repeat_range`) VALUES
('Regular', '5%2F9%2F2020', 'true', '1'),
('OneTime', '29%2F08%2F2020', 'false', '0'),
('Test7Day', '14%2F9%2F2020', 'true', '7'),
('Merikrismis', '17%2F9%2F2020', 'true', '7');

-- --------------------------------------------------------

--
-- Table structure for table `triggers`
--

CREATE TABLE `triggers` (
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `trigger_word` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `channel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `active` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `triggers`
--

INSERT INTO `triggers` (`message`, `trigger_word`, `channel`, `active`) VALUES
('hello', 'hello', 'Private', 'true'),
('jokes', 'jokes', 'Private', 'true'),
('NewMess', 'sendme', 'Private', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `url`
--

CREATE TABLE `url` (
  `id` int(11) NOT NULL,
  `realURL` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `shortURL` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `url`
--

INSERT INTO `url` (`id`, `realURL`, `shortURL`) VALUES
(4, 'http://localhost/test2', 'http://localhost:5000/8308f423f8d05ddcde6811e4571fc1d26f88558d'),
(5, 'http://localhost/test2', 'http://localhost:5000/8308f423f8d05ddcde6811e4571fc1d26f88558d'),
(6, 'http://localhost/test5', 'http://localhost:5000/37789e07d95d0ba57f316e202d63f28ef1d0e0a6'),
(7, 'http://localhost/test6', 'http://localhost:5000/43693f66b0b59546ae68c0a9c362d4dc6ce8311e'),
(8, 'http://localhost/test7', 'http://localhost:5000/f600b1438c7be9d6081fbeaf3ca137edc4a267c0'),
(9, 'http://localhost/test8', 'http://localhost:5000/9ea0889820f0ba3462ca633bfdf3fa9e0e9f83d3'),
(11, 'http://localhost/test90', 'http://localhost:5000/0fa6a8e0496459a9eedc7609acc71a8190a368e2'),
(12, 'http://localhost/test909', 'http://localhost:5000/SG6CUugEO'),
(13, 'http://localhost/test9019', 'http://localhost:5000/1YmiJK3Bw'),
(14, 'http://localhost/test90191', 'http://localhost:5000/LVS69NIaq'),
(16, 'http://localhost/test901dsdasd91', 'http://localhost:5000/TvdlhNw7H'),
(17, 'http://localhost/test901dsdaswdefwefwefd91', 'http://localhost:5000/nSEV2unEG'),
(18, 'http://localhost/test901dsdaswdefwefwedddsfd91', 'http://localhost:5000/8_OYtINPb'),
(19, 'http://localhost/test901dsdaswdefwefwedddsfdwdqwd91', 'http://localhost:5000/nHzWRQtOX'),
(20, 'http://localhost/test901dsdaswdefwefwedddsfdwd3rqwd91', 'http://localhost:5000/49b2iAloC'),
(21, 'http://localhost/test901fwedfsfwd3rqwd91', 'http://localhost:5000/pQiTOJFhl'),
(22, 'http://localhost/test901fwedfsfwd3feferqwd91', 'http://localhost:5000/peyr5Y7Vu'),
(23, 'http://localhost/test901fwedfsffgfwd3feferqwd91', 'http://localhost:5000/67SOLnXve'),
(24, 'http://localhost/test901fwedfsffgfwd3fefecfcgdfgrqwdfsdfd91', 'http://localhost:5000/XleBUTox0'),
(25, 'http://localhost/test901dfdfgfwedfsffgfwd3fefecfcgdfgrqwdfsdfd91', 'http://localhost:5000/BQy1kq3DQ'),
(26, 'http://localhost/test901dfdfgfwedfsffgfdfwd3fefecfcgdfgrqwdfsdfd91', 'http://localhost:5000/76-cUepWu'),
(27, 'http://localhost/test901dfdfgfwfgrqwdfsdfd91', 'http://localhost:5000/-FaU-xPLz'),
(28, 'http://localhost/dsfrqwdfsdfd91', 'http://localhost:5000/AOSVeOFZg'),
(29, 'http://localhost/dsfdsdfsdfrqwdfsdfd91', 'http://localhost:5000/W1IgGvpf3'),
(30, 'http://localhost/dsfdsdfsdfrqwdfdsdfd91', 'http://localhost:5000/48dH0lxXt'),
(31, 'http://localhost/dsfdsdfsdfrqwdfdsddfgdfgfd91', 'http://localhost:5000/ajPmOcLDD'),
(32, 'http://localhost/dsfdsdfsfdsddfgdfgfd91', 'http://localhost:5000/dertItAqC'),
(33, 'http://localhost/dfsdfsdfsdfdsfdsdfsfdsddfgdfgfd91', 'http://localhost:5000/6M4JzXSAb'),
(34, 'http://localhost/testing111', 'http://localhost:5000/Rxt0Wg6MN'),
(35, 'http://localhost/testisdfsdfng111', 'http://localhost:5000/5HFs80R8_'),
(36, 'http://localhost/testisdfsdfng1rgrgrg11', 'http://localhost:5000/Y5_qthDDv'),
(37, 'http://localhost/testisdfsdfsdfrgrg11', 'http://localhost:5000/gGyPle0LU'),
(38, 'http://localhost/tjackrg11', 'http://localhost:5000/aS0KOpece'),
(39, 'http://localhost/tjasdfsdfsf2352342341', 'http://localhost:5000/TATnidXcw'),
(41, 'http://localhost/tja322211152342341', 'http://localhost:5000/oAonrgti9'),
(42, 'http://localhost/tja32555552341', 'http://localhost:5000/sUxSRx5aP'),
(43, 'http://localhost/tja35555331552341', 'http://localhost:5000/3o2YT-nxw'),
(44, 'http://localhost/tja3555testest1', 'http://localhost:5000/SzXtnaoEY'),
(45, 'http://localhost/tja35sddd3d32d33d', 'http://localhost:5000/e5TtT-KVK'),
(46, 'http://localhost/tja3novi2d33d', 'http://localhost:5000/89pKpzLQs'),
(47, 'http://localhost/tja35g5ll00d33d', 'http://localhost:5000/Gu0tU1lmN'),
(48, 'http://localhost/tja35g5ll0tetete0d33d', 'http://localhost:5000/_c6R-0wiU'),
(49, 'http://localhost/tja356tete0d33d', 'http://localhost:5000/1a2bsnlCk'),
(50, 'http://localhost/tja356tete0dhhhhzz33d', 'http://localhost:5000/gXQlLTogQ'),
(51, 'http://localhost/tja356dfefhhhhzz33d', 'http://localhost:5000/W-JFlIxxO'),
(52, 'http://localhost/tja356d2222z33d', 'http://localhost:5000/WEhLo5fXN'),
(53, 'http://localhost/tja356d2222z33d33333', 'http://localhost:5000/8dDW7NaLW'),
(54, 'http://localhost/tja35333336d2222z33d33333', 'http://localhost:5000/FVbuNKRBS'),
(55, 'http://localhost/tja35333336d2222z33555hd33333', 'http://localhost:5000/I9TkBNl7D'),
(56, 'http://localhost/tja35333336d2222z33555h4444d33333', 'http://localhost:5000/mkJxEgqsE'),
(57, 'http://localhost/tja35333336d2222z33555h4444d3bbb3333', 'http://localhost:5000/oAUSiMwaV'),
(58, 'http://localhost/tja35333336d2222z33554445h4444d3bbb3333', 'http://localhost:5000/G9hCuWLbz'),
(59, 'http://localhost/tja35333336d2222z33554445h444444444d3bbb3333', 'http://localhost:5000/gTVg79eDN'),
(60, 'http://localhost/tja35333336d2222z33554445h444444asdasd444d3bbb3333', 'http://localhost:5000/_yMmEIopb'),
(62, 'http://localhost/tja3tedsfwe333', 'http://localhost:5005/kOmA2S-a2'),
(63, 'http://localhost/tja3tedrgergergsfwe333', 'http://localhost:5005/kmR7oXroq'),
(64, 'http://localhost/newTestingRLimit', 'http://localhost:5005/oWwzH5XKx'),
(65, 'http://localhost/newtestenewtest', 'http://localhost:5005/fqAC-S20V');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pass`) VALUES
(2, 'admin', '$2b$10$ocL6m5v4zdOKKXmCPY.D0ObF3o23cwP67SBgiZe7M9qeifhADZIBu'),
(3, 'keanu', '$2b$10$vCvmzQARJGMZdbQ1SIH7HuwHGFXfhPvl6REN2OAhFeo7HdtuosY7m');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `botcalls`
--
ALTER TABLE `botcalls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `errors`
--
ALTER TABLE `errors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `url`
--
ALTER TABLE `url`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `botcalls`
--
ALTER TABLE `botcalls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `errors`
--
ALTER TABLE `errors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `url`
--
ALTER TABLE `url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
