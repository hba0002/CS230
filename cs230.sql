-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 23, 2021 at 03:01 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(2, 'Twilight', 'Twilight', '../gallery/60482ca2c080a0.97088636.jpg', '2021-03-09 21:19:14', NULL),
(3, 'Supernatural', 'Supernatural', '../gallery/60482cf2372895.89194303.jpg', '2021-03-09 21:20:34', NULL),
(5, 'The Originals', 'The Originals', '../gallery/6048300245dd73.93828526.png', '2021-03-09 21:33:38', NULL),
(6, 'True Blood', 'True Blood', '../gallery/604830a4aae438.44947313.jpg', '2021-03-09 21:36:20', NULL),
(7, 'Teen Wolf', 'Teen Wolf', '../gallery/604831392c5253.33426683.jpg', '2021-03-09 21:38:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profs`
--

CREATE TABLE `profs` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `profpic` varchar(50) NOT NULL DEFAULT '../images/default.jpeg'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `profs`
--

INSERT INTO `profs` (`pid`, `fname`, `uname`, `profpic`) VALUES
(7, 'hannah', 'hba', '../images/default.jpeg'),
(8, '1', 'han', '../profs/6038624cebf4b2.95160662.png'),
(9, 'Edward', 'Eddyboy', '../profs/603864bf96db57.50481555.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(11) NOT NULL COMMENT 'id for each review',
  `itemid` int(11) NOT NULL COMMENT 'id for item being reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user reviewing item',
  `title` varchar(60) NOT NULL,
  `reviewtext` text NOT NULL,
  `revdate` datetime NOT NULL,
  `ratingnum` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'is there atleast 1 review'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`revid`, `itemid`, `uname`, `title`, `reviewtext`, `revdate`, `ratingnum`, `status`) VALUES
(1, 7, 'hba', 'good', 'good', '2021-03-18 23:11:42', 4, 1),
(2, 7, 'hba', 'bwefkbwe', 'efwefw', '2021-03-18 23:54:04', 3, 1),
(3, 7, 'hba', 'ffwef', 'fwef', '2021-03-18 23:54:08', 1, 1),
(4, 7, 'hba', 'wfwef', 'fwewef', '2021-03-18 23:54:13', 4, 1),
(5, 7, 'hba', 'weffw', 'fwfw', '2021-03-18 23:54:17', 5, 1),
(6, 7, 'hba', '', '', '2021-03-20 19:51:11', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COMMENT='User database for signup and signin';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `uname`, `password`, `email`) VALUES
(12, 'hannah', 'anderson', 'hba', '$2y$10$LnYIuUtJqauJWXQwsCxSJ.WbMRB1La.j6.0aPLW5v40J0y4H97Vt2', 'hba@123'),
(13, '1', '1', 'han', '$2y$10$/rNcwG2v6CboKAESD5YxuuwQUDm4KEv3yBhS8UvusuH41sCTqe3Ia', '12@1'),
(14, 'Edward', 'Cullen', 'Eddyboy', '$2y$10$wovebt9zOPihSYLKUK0mwOqobRfIuiAfW2pCpdXrKkTe3E2HeMkIS', 'twilightrocks@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `profs`
--
ALTER TABLE `profs`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `profs`
--
ALTER TABLE `profs`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for each review', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
