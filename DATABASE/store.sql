-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2020 at 09:09 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `summary`, `price`, `category_id`, `cover`, `created_date`, `modified_date`) VALUES
(10, 'The Makeup Manual', 'Lisa Potter Dixon', 'This book truly is amazing! It gives you general knowledge on all skin care and makeup application.  I posted to my Instagram and the lovely Lisa commented straight away too!  I would definitely recommend this book.', 4000, 11, 'beauty1.jpg', '2020-07-07 16:15:30', '2020-07-07 16:15:30'),
(11, 'Pretty Honest', 'Sali Hughes', 'The holy bible for girls. Every single female should own the book, I shall keep mine forever. Sali is honest, funny, down to earth & knows her stuff. ', 4500, 11, 'beauty2.jpg', '2020-07-07 16:17:20', '2020-07-07 16:17:20'),
(12, 'Bobbi Brown Makeup Manual', 'Bobbi Brown', 'Arrived quickly and full of lots of hints and tips for make up artists or aspiring make up artists etc. ', 3500, 11, 'beauty4.jpg', '2020-07-07 16:24:24', '2020-07-07 16:24:24'),
(13, 'Face', 'Pixiwoo', 'Beautiful photographs and full of helpful information need to use the app to get full benefits. Ideal present for somebody who loves their makeup. ', 4000, 11, 'beauty5.jpg', '2020-07-07 16:25:34', '2020-07-07 16:25:34'),
(14, 'Beauty Therapy', 'Lorraie Nordmann', 'Beautiful photographs and full of helpful information need to use the app to get full benefits. Ideal present for somebody who loves their makeup. ', 4500, 11, 'beauty6.jpg', '2020-07-07 16:26:43', '2020-07-07 16:26:43'),
(15, 'Born To Run', 'Chistopher McDougall', ' At the heart of Born to Run lies a mysterious tribe of Mexican Indians, the Tarahumara, who live quietly in canyons and are reputed to be the best distance runners in the world; ', 3500, 13, 'fit1.jpg', '2020-07-07 16:28:23', '2020-07-07 16:28:23'),
(16, 'North', 'Jenny Jurek', 'A tale of mind-boggling physical exertion, pressure and endurance, North reveals the extraordinary lengths to which we can push our bodies and our minds.', 4500, 13, 'fit5.jpg', '2020-07-07 16:34:58', '2020-07-07 16:34:58'),
(17, 'Algorithmic Trading', 'Kindle', 'Understand the fundamentals of algorithmic trading to apply algorithms to real market data and analyze the results of real-world trading strategies', 6000, 8, 'it2.jpg', '2020-07-07 16:40:12', '2020-07-07 16:40:12'),
(18, 'Docker Deep Dive', 'Steven Morries', 'If you want to learn the basics of Docker, this book is for you.  If you want to be a pro with Docker, this book is for you.', 6500, 8, 'it3.jpg', '2020-07-07 16:41:20', '2020-07-07 16:41:20'),
(19, 'DATABASE SYSTEM', 'Nigel Poulton', 'Gain a solid foundation in database design and implementation using the practical, easy-to understand approach in DATABASE SYSTEMS', 6000, 8, 'it4.jpg', '2020-07-07 16:42:38', '2020-07-08 13:28:47'),
(20, 'Yves Saint laurent', 'Yves Saint laurent', 'Yves Saint Laurent: Icons of Fashion Design & Photography is a gorgeous homage to the uncrowned king of haute couture. Originally published in 1988, the book traces the success of Saint Laurentâ€™s haute couture and ready-to-wear designs from 1962 to 1988 through the lens of the worldâ€™s leading fashion photographers, including Richard Avedon, Helmut Newton, William Klein, and more. Inside, 135 photographs document Saint Laurentâ€™s groundbreaking designs worn by the most beautiful women of the â€™60s, â€™70s, and â€™80s: Audrey Hepburn, Twiggy, Jean Shrimpton, Mounia, and Veruschka. Saint Laurent was equipped with an infallible instinct for reading the aesthetic signs of the times, and this enabled him to have a profound effect on fashion. With an introduction by Marguerite Duras, this classic volume documents Saint Laurentâ€™s ever-evolving artistry and the combined efforts of the worldâ€™s most talented fashion photographers, and is as beautiful and rewarding as one of Saint Laurentâ€™s creations.', 3000, 12, 'fashion1.jpg', '2020-07-18 10:01:04', '2020-07-18 10:01:04'),
(21, 'A Man & His Watch', 'Matt Hranck', 'â€œIâ€™ve paged through stacks of books on the history of watches. . . . But I hadnâ€™t come across a book that actually moved me until I picked up A Man and His Watch. The volume is filled with heartfelt stories.â€', 4500, 12, 'fashion2.jpg', '2020-07-18 10:03:39', '2020-07-18 10:03:39'),
(22, 'The Chiffon Trenches', 'Andre Leon Tally', 'Discover what truly happens behind the scenes in the world of high fashion in this detailed, storied memoir from style icon, bestselling author and former Vogue creative director AndrÃ© Leon Talley.', 3500, 12, 'fashion3.jpg', '2020-07-18 10:04:49', '2020-07-18 10:04:49'),
(23, 'á€—á€­á€¯á€œá€ºá€á€»á€¯á€•á€ºá€¡á€±á€¬á€„á€ºá€†á€”á€ºá€¸ á€¡á€á€¹á€‘á€¯á€•á€¹á€•á€á€¹á€á€­', 'á€žá€á€„á€ºá€€á€­á€¯á€šá€ºá€á€±á€¬á€ºá€™á€¾á€­á€¯á€„á€ºá€¸', 'á€™á€­á€™á€­á€á€­á€¯á€·á€”á€­á€¯á€„á€ºá€„á€¶á€á€½á€„á€º á€šá€á€„á€ºá€€á€›á€±á€¬áŠ á€šá€á€¯á€›á€±á€¬ á€—á€­á€¯á€œá€ºá€á€»á€¯á€•á€ºá€á€½á€± á€¡á€™á€»á€¬á€¸á€€á€¼á€®á€¸á€›á€¾á€­á€•á€«á€žá€±á€¬á€ºá€œá€Šá€ºá€¸ á€™á€¼á€”á€ºá€™á€¬á€•á€¼á€Šá€ºá€žá€°á€œá€°á€‘á€¯ á€¡á€™á€»á€¬á€¸á€…á€¯á á€›á€„á€ºá€‘á€²á€á€½á€„á€º á€—á€­á€¯á€œá€ºá€á€»á€¯á€•á€ºá€¡á€±á€¬á€„á€ºá€†á€”á€ºá€¸ á€á€…á€ºá€šá€±á€¬á€€á€ºá€žá€¬á€›á€¾á€­á€•á€«á€€á€¼á€±á€¬á€„á€ºá€¸áŠ á€‘á€­á€¯á€·á€€á€¼á€±á€¬á€„á€·á€º á€žá€±á€žá€±á€¬á€žá€° á€€á€¼á€¬á€›á€„á€ºá€™á€±á€·á€†á€­á€¯á€žá€Šá€·á€º á€…á€€á€¬á€¸á€›á€¾á€­á€žá€±á€¬á€ºá€œá€Šá€ºá€¸ á€—á€­á€¯á€œá€ºá€á€»á€¯á€•á€ºá€€á€½á€šá€ºá€œá€½á€”á€ºá€žá€½á€¬á€¸á€žá€Šá€ºá€™á€¾á€¬ á€”á€¾á€…á€ºá€•á€±á€«á€„á€ºá€¸ á‡á€ á€€á€»á€±á€¬á€º á€€á€¼á€¬á€žá€½á€¬á€¸á€žá€±á€¬á€ºá€œá€Šá€ºá€¸ á€šá€”á€±á€·á€‘á€­ á€™á€¼á€”á€ºá€™á€¬á€•á€¼á€Šá€ºá€žá€°á€™á€»á€¬á€¸á€€ á€á€…á€ºá€”á€±á€·á€™á€¾á€™á€±á€·á€™á€›á€žá€Šá€ºá€™á€¾á€¬ á€™á€­á€™á€­á€á€­á€¯á€· á€™á€¼á€”á€ºá€™á€¬á€”á€­á€¯á€„á€ºá€„á€¶ á€á€…á€ºá€”á€¶á€á€…á€ºá€œá€»á€¬á€¸á€€á€™á€¼á€­á€¯á€·á€™á€»á€¬á€¸á€á€½á€„á€º á€—á€­á€¯á€œá€ºá€á€»á€¯á€•á€ºá€›á€¯á€•á€ºá€‘á€¯á€™á€»á€¬á€¸ á€á€…á€ºá€á€¯á€•á€¼á€®á€¸á€á€…á€ºá€á€¯ á€•á€±á€«á€ºá€‘á€½á€€á€ºá€œá€¬á€”á€±á€á€¼á€„á€ºá€¸á€€ á€žá€€á€ºá€žá€±á€•á€¼á€”á€±á€•á€«á€€á€¼á€±á€¬á€„á€ºá€¸áŠ', 3500, 9, 'asHistory.jpg', '2020-07-18 10:13:41', '2020-07-18 10:13:41'),
(24, 'The Thorn Birds', 'jeffery Stanton', 'This sweeping multigenerational tale of life on a sheep station in the Outback often gets described as \"an Australian Gone With the Wind,\"  so if you love that classic, try this one on for size. The romance primarily focuses on an illicit affair between Maggie, a resident on the remote ranch, and a handsome priest.', 2000, 10, 'love4.jpg', '2020-08-18 13:56:01', '2020-08-18 13:56:01');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `remark`, `created_date`, `modified_date`) VALUES
(8, 'Information Technology	', 'This is information technology Books.', '2020-07-07 16:10:18', '2020-07-08 13:33:02'),
(9, 'History\r\n	', 'This is History Books.\r\n', '2020-07-07 16:10:43', '0000-00-00 00:00:00'),
(10, 'Love Story\r\n	', 'This is Love Story Books.\r\n', '2020-07-07 16:11:10', '0000-00-00 00:00:00'),
(11, 'Beauty\r\n	', 'This is about beauty books.', '2020-07-07 16:11:35', '0000-00-00 00:00:00'),
(12, 'Fashion\r\n	', 'This is the collection of Fashion Books.\r\n', '2020-07-07 16:11:59', '0000-00-00 00:00:00'),
(13, 'Fit & Diet\r\n	', 'This is about Fit & Diet Books.\r\n', '2020-07-07 16:12:27', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_date`, `modified_date`) VALUES
(14, 'Yatanar San', 'yatanar@gamil.com', '09790753070', 'Lathar , Yangon', 0, '2020-07-18 10:24:22', '2020-07-18 10:24:22'),
(15, 'pannn ei khaing', 'panneikhaing125@gmail.com', '09790753070', 'Yangon', 0, '2020-08-18 13:57:05', '2020-08-18 13:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `book_id`, `order_id`, `qty`) VALUES
(1, 10, 1, 1),
(2, 3, 1, 1),
(3, 6, 1, 1),
(4, 11, 3, 1),
(5, 11, 4, 1),
(6, 11, 5, 1),
(7, 10, 7, 1),
(8, 13, 9, 1),
(9, 10, 14, 1),
(10, 11, 14, 1),
(11, 12, 14, 1),
(12, 15, 15, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
