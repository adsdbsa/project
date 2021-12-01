-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2021 at 09:46 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart-farmer`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` varchar(6) NOT NULL,
  `description` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `quantity` int(12) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `email`, `title`, `price`, `description`, `category`, `image`, `quantity`, `total`) VALUES
(2, 'a@gmail.com', 'Mens Casual Premium Slim Fit T-Shirts', '22.3', 'Slim-fitting style contrast raglan long sleeve', 'fashion', 'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg', 1, 22.3);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mobile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `memid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(500) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `rating.rate` float NOT NULL,
  `rating.count` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `description`, `category`, `image`, `rating.rate`, `rating.count`) VALUES
(1, 'Backpack', 109.95, 'Your perfect pack for everyday use and walks in the forest. Stash your laptop', 'men\'s clothing', 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg', 3.9, 120),
(2, 'Mens Casual Premium Slim Fit T-Shirts', 22.3, 'Slim-fitting style contrast raglan long sleeve', 'men\'s clothing', 'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg', 4.1, 259),
(3, 'Mens Cotton Jacket', 55.99, 'great outerwear jackets for Spring Autumn Winter', 'men\'s clothing', 'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg', 4.7, 500),
(4, 'Mens Casual Slim Fit', 15.99, 'The color could be slightly different between on the screen and in practice.', 'men\'s clothing', 'https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg', 2.1, 430),
(5, 'Gold & Silver Dragon Station Chain Bracelet', 695, 'From our Legends Collection.', 'jewelery', 'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg', 4.6, 400),
(6, 'Solid Gold Petite Micropave', 168, 'Satisfaction Guaranteed. Return or exchange any order within 30 days.', 'jewelery', 'https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg', 3.9, 70),
(7, 'White Gold Plated Princess', 9.99, 'Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her.', 'jewelery', 'https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg', 3, 400),
(8, 'WD 2TB Elements Portable External Hard Drive - USB 3.0', 64, 'USB 3.0 and USB 2.0 Compatibility', 'electronics', 'https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg', 3.3, 203),
(9, 'SanDisk SSD PLUS 1TB Internal SSD', 109, 'Easy upgrade for faster boot up.', 'electronics', 'https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg', 2.9, 470),
(10, 'WD 4TB Gaming Drive Works', 114, 'Expand your PS4 gaming experience Play anywhere Fast and easy', 'electronics', 'https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg', 4.8, 400),
(11, 'Acer SB220Q bi 21.5 inches Full HD', 599, '21. 5 inches Full HD widescreen IPS display And Radeon free Sync technology.', 'electronics', 'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg', 2.9, 250),
(12, 'Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor', 999.99, '49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR.', 'electronics', 'https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg', 2.2, 140),
(13, 'BIYLACLESEN Women Snowboard Jacket Winter Coats', 56.99, 'Note:The Jackets is US standard size Please choose size as your usual wear Material: 100% Polyester', 'women\'s clothing', 'https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg', 2.6, 235),
(14, 'Lock and Love Women\'s Removable Hooded Faux Leather Moto Biker Jacket', 29.95, '100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER)', 'women\'s clothing', 'https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg', 2.9, 340),
(15, 'Rain Jacket Women Windbreaker Striped Climbing Raincoats', 39.99, 'Lightweight perfet for trip or casual wear Long sleeve with hooded adjustable drawstring waist design.', 'women\'s clothing', 'https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg', 3.8, 679),
(16, 'MBJ Women\'s Solid Short Sleeve Boat Neck V', 9.85, '95% RAYON 5% SPANDEX Made in USA or Imported  Do Not Bleach', 'women\'s clothing', 'https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg', 4.7, 130),
(17, 'Opna Women\'s Short Sleeve Moisture', 7.95, '100% Polyester Machine wash 100% cationic polyester.', 'women\'s clothing', 'https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg', 4.5, 146),
(18, 'DANVOUY Womens T Shirt Casual Cotton Short', 12.99, '95%Cotton 5%Spandex Features: Casual Short Sleeve Letter Print.', 'women\'s clothing', 'https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg', 3.6, 145);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`) VALUES
(52, '', '', ''),
(53, 'a', 'a', 'a@gmail.com'),
(54, 'ab', 'ab', 'ab@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
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
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `memid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
