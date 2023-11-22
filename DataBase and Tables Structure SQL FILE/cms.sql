-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2023 at 08:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `aname` varchar(30) NOT NULL,
  `aheadline` varchar(12) NOT NULL,
  `abio` varchar(500) NOT NULL,
  `aimage` varchar(60) NOT NULL DEFAULT 'avatar.png',
  `addedby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `datetime`, `username`, `password`, `aname`, `aheadline`, `abio`, `aimage`, `addedby`) VALUES
(3, 'November-22-2023 21:01:22', 'snaik', '1234', 'Shravani Naik', 'Lorem ipsum ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'avatar.png', 'progyaroy'),
(4, 'November-22-2023 21:02:22', 'progyaroy', '1234', 'Progya Roy', 'Engineer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'avatar.png', 'snaik'),
(5, 'November-23-2023 00:19:45', 'John', '1234', 'John Stewart', '', '', 'avatar.png', 'progyaroy');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `datetime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `author`, `datetime`) VALUES
(2, 'Sports', 'progyaroy', 'November-20-2023 22:22:05'),
(3, 'News', 'progyaroy', 'November-20-2023 22:22:13'),
(4, 'Arts', 'progyaroy', 'November-20-2023 22:22:19'),
(5, 'Technology', 'progyaroy', 'November-22-2023 22:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `title` varchar(300) NOT NULL,
  `category` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `post` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `datetime`, `title`, `category`, `author`, `image`, `post`) VALUES
(1, 'November-22-2023 22:40:16', 'The History of laptops ', 'Technology', 'progyaroy', '650222_0738_12.jpg', '                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet nisl purus in mollis nunc sed. Pellentesque massa placerat duis ultricies lacus sed turpis tincidunt id. Turpis nunc eget lorem dolor sed. Proin sed libero enim sed faucibus. Quis viverra nibh cras pulvinar. Ut ornare lectus sit amet est placerat in egestas erat. Fringilla urna porttitor rhoncus dolor purus non. Quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. Leo in vitae turpis massa sed elementum tempus egestas. Aliquet eget sit amet tellus cras. Faucibus nisl tincidunt eget nullam. Risus in hendrerit gravida rutrum quisque non tellus orci ac. Vel pharetra vel turpis nunc eget lorem dolor sed. Elementum curabitur vitae nunc sed velit dignissim sodales ut.              '),
(2, 'November-22-2023 23:47:11', 'Germany, France, and Italy reach consensus on AI Act with mandatory self-regulation', 'News', 'snaik', 'ai.jpg', 'The European Commission, the European Parliament, and the EU Council are negotiating in a ‘trilogue‘ how the bloc should position itself on this topic. As governments around the world strive to capitalize on the economic benefits of AI, the UK sponsored its first AI safety summit in November. This week, the German government is organizing a digital summit in Jena, Thuringia, bringing together officials from politics, industry, and research.\r\n\r\nBelow is the verbatim version of the accord:\r\nAn innovation-friendly approach based on European values for the AI Act—Joint Non-paper by IT, FR and DE\r\n\r\nWe acknowledge the need for comprehensive regulation of AI systems and, from the beginning, welcomed the Commission proposal for an AI Act in this regard. The AI Act will provide EU citizens with protection and confidence in the AI products distributed on the single market.\r\nThis new regulation will complement the comprehensive legal toolbox already applicable in the EU, for instance on data pri'),
(3, 'November-23-2023 00:16:10', 'India’s World Cup spirit remains undimmed!', 'Sports', 'progyaroy', 'CWC.jfif', 'As an Indian cricket fan, I had been through the roller coaster of emotions that the Men in Blue had taken me on over the years. I had celebrated their triumphs, reveled in their victories, and sympathized with their defeats. But nothing could have prepared me for the emotional turmoil that I was about to experience today.\r\n\r\nFrom the very first ball, the tension was palpable. The stakes were high, the pressure immense. Every dot ball, every missed opportunity, felt like a dagger to the heart. The Indian batsmen struggled to find their rhythm, while the Australian bowlers kept them under constant pressure.\r\n\r\nAs the wickets fell one by one, the hopes of a nation began to fade. The once vibrant stadium grew quieter, the chants of support replaced by a hushed silence. The dream of lifting the coveted World Cup trophy seemed to slip further and further away.\r\n\r\nDespite the mounting deficit, the Indian fans refused to give up. They cheered every run, every boundary, every moment of defianc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
