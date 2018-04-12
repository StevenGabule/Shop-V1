-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2016 at 12:10 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE IF NOT EXISTS `ads` (
  `ad_ID` int(11) NOT NULL,
  `ad_name` varchar(200) NOT NULL,
  `ad_description` varchar(255) NOT NULL,
  `ad_image` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`ad_ID`, `ad_name`, `ad_description`, `ad_image`, `status`, `created_date`) VALUES
(10, 'A new AD', 'What you can think', 'product9.jpg', 'Active', '2015-12-14 01:27:52'),
(12, 'my new laptop', 'A cool description', 'product.jpg', 'Active', '2015-12-28 10:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `brandID` int(11) NOT NULL,
  `brand_name` varchar(200) NOT NULL,
  `brand_image` varchar(255) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brandID`, `brand_name`, `brand_image`, `status`) VALUES
(1, 'Dell', 'dell.png', 'Active'),
(2, 'Hp', 'dell.png', 'Active'),
(4, 'Panasonic', 'dell.png', 'Active'),
(5, 'Nokia', 'dell.png', 'Active'),
(6, 'Qmobile', 'dell.png', 'Active'),
(7, 'Huawai', 'dell.png', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cartID` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `session_id` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `created_date`, `session_id`) VALUES
(59, '2016-01-19 00:00:00', 'fc068v6ubdfdbacq30a34ra8u7'),
(60, '2016-01-22 00:00:00', 'j8hvp9g3qc7pte5p0tra2h6ph1'),
(61, '2016-01-22 00:00:00', 'ot0bbcgkfq7rm6gn5v1g6pbu71'),
(62, '2016-01-22 00:00:00', '7slkflk0qp305p21ofiprort20'),
(63, '2016-01-23 00:00:00', '2mhskjfeatbmbrlkt0s2gg6ek0'),
(64, '2016-01-23 00:00:00', '3aml2k250gloi0s0kmcc477bn6');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE IF NOT EXISTS `cart_item` (
  `itemID` int(11) NOT NULL,
  `cartID` int(11) NOT NULL,
  `product_ID` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` float NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`itemID`, `cartID`, `product_ID`, `price`, `quantity`, `discount`) VALUES
(143, 59, 21, 111, 2, 0),
(144, 59, 22, 234, 2, 0),
(145, 59, 23, 234, 2, 0),
(158, 60, 21, 111, 2, 0),
(159, 60, 22, 234, 2, 0),
(160, 60, 23, 234, 2, 0),
(161, 60, 24, 111, 1, 0),
(162, 60, 26, 222, 1, 0),
(163, 63, 21, 111, 1, 0),
(164, 63, 22, 234, 2, 0),
(165, 63, 23, 234, 1, 0),
(166, 63, 24, 111, 1, 0),
(167, 63, 29, 300, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `categoryID` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `status` text NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `category_name`, `status`, `created_date`) VALUES
(10, 'LED', 'Active', '2015-12-03 06:41:18'),
(26, 'Laptop', 'Active', '2015-12-01 07:33:39'),
(28, 'Mobile', 'Active', '2015-12-01 07:33:52'),
(29, 'Monitor', 'Active', '2015-12-01 07:33:55'),
(32, 'Appliances', 'Active', '2015-12-01 07:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `chatID` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `reciever` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatID`, `sender`, `reciever`, `created_date`) VALUES
(8, 16, 20, '2016-01-22 06:03:46'),
(9, 16, 19, '2016-01-22 06:08:14'),
(10, 16, 18, '2016-01-22 06:08:28'),
(11, 16, 17, '2016-01-22 06:08:31'),
(12, 21, 17, '2016-01-23 03:00:46'),
(13, 17, 18, '2016-01-23 03:02:31'),
(14, 17, 19, '2016-01-23 03:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `commentID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `userID`, `productID`, `comment`, `created_date`) VALUES
(3, 17, 42, 'A very Good product', '2016-01-10 08:46:16'),
(4, 17, 42, 'i have use it ', '2016-01-10 08:46:39'),
(5, 17, 42, 'its too good', '2016-01-10 08:46:48'),
(6, 17, 42, 'good very good good very good good very good good very good good very good good very good good very good\n', '2016-01-10 08:48:57'),
(7, 17, 21, ' I like this product very much', '2016-01-10 14:42:35'),
(18, 16, 21, ' This product is awesome', '2016-01-10 14:46:31'),
(19, 17, 22, 'I like this product very much', '2016-01-11 09:36:22'),
(20, 20, 21, 'i think its useful\n', '2016-01-13 16:42:23'),
(37, 17, 31, 'good', '2016-01-13 17:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `messageID` int(11) NOT NULL,
  `chatID` int(11) NOT NULL,
  `message` text NOT NULL,
  `userID` int(11) NOT NULL,
  `sent_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageID`, `chatID`, `message`, `userID`, `sent_date`) VALUES
(130, 0, 'hi', 16, '2016-01-22 06:05:17'),
(131, 8, 'hi', 16, '2016-01-22 06:07:21'),
(132, 8, 'hi', 16, '2016-01-22 06:07:42'),
(133, 8, 'hello', 16, '2016-01-22 06:07:45'),
(134, 0, 'hello', 16, '2016-01-22 06:08:17'),
(135, 8, 'hello', 16, '2016-01-22 06:09:34'),
(136, 8, 'hello', 16, '2016-01-22 06:09:42'),
(137, 9, 'hello', 16, '2016-01-22 06:09:53'),
(138, 11, 'hello', 16, '2016-01-22 06:10:44'),
(139, 11, 'hello', 16, '2016-01-22 06:12:36'),
(140, 11, 'hi', 16, '2016-01-22 06:12:39'),
(141, 12, 'Hi', 17, '2016-01-23 03:01:21'),
(142, 12, 'Hi', 17, '2016-01-23 03:01:24'),
(143, 12, 'Hi', 17, '2016-01-23 03:01:49'),
(144, 12, 'Hello', 21, '2016-01-23 03:01:59'),
(145, 12, 'Good', 21, '2016-01-23 03:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orderID` int(11) NOT NULL,
  `cartID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `ordered_date` datetime NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `cartID`, `userID`, `ordered_date`, `status`) VALUES
(1, 63, 21, '2016-01-23 11:06:02', 'Cleared');

-- --------------------------------------------------------

--
-- Table structure for table `pimages`
--

CREATE TABLE IF NOT EXISTS `pimages` (
  `image_id` int(11) NOT NULL,
  `product_ID` int(11) NOT NULL,
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) NOT NULL,
  `img3` varchar(200) NOT NULL,
  `img4` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_subtitle` varchar(255) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_title`, `post_subtitle`, `post_image`, `created_date`) VALUES
(33, 16, 'Saad1', 'Fox jumps over the lazy dog', 'photos.png', '2015-12-11 08:38:33'),
(34, 16, 'An example post', 'Fox jumps over the lazy dog', 'cover.jpg', '2015-12-11 09:10:33'),
(36, 18, 'My first post', 'A littile subtitle', 'cover1.jpg', '2015-12-17 11:30:01'),
(42, 23, 'Saad', 'saasa', 'A8RXKCBCA3R1ADACAN2J1G1CAKBHYF8CA6FV0SUCABE2GP3CAFPNCO5CANENCQSCAW6J9IJCAMY7MQ6CAV17BS4CA1WEEC4CAXL8536CA886JNXCAQ900K1CAGM6CFCCAHFFXJOCADTZZQYCAC2MI3OCA43R3MO.jpg', '2015-12-30 11:34:56'),
(43, 17, 'Saad First', 'Post to check', 'logo.gif', '2016-01-01 08:25:37'),
(44, 17, 'sasasa', 'sasass', '2.jpg', '2016-01-07 02:50:01'),
(47, 19, 'Abdullah First POST', 'Subtitle', '2.jpg', '2016-01-08 09:27:32'),
(48, 16, 'Hi a new Post', 'just kidding', '2.jpg', '2016-01-08 09:34:12'),
(50, 22, 'mat003', 'mat003', '2.jpg', '2016-01-22 01:48:38'),
(54, 0, '', '', '', '2016-01-23 11:47:33'),
(55, 0, '', '', '', '2016-01-23 11:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_ID` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_info` text NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_discount` varchar(50) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_brand` varchar(255) NOT NULL,
  `product_status` text NOT NULL,
  `created_date` datetime NOT NULL,
  `view_count` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_ID`, `product_name`, `product_info`, `product_price`, `product_image`, `product_discount`, `product_category`, `product_brand`, `product_status`, `created_date`, `view_count`) VALUES
(21, 'Dell Laptop', 'Optiplex 755', '111', 'product1.jpg', '7%', 'Laptop', 'Dell', 'Active', '2015-12-02 05:42:43', 80),
(22, 'Hp 3335', 'Hp best sellers', '234', 'product2.jpg', '17%', 'Laptop', 'Hp', 'Active', '2015-12-02 05:44:59', 61),
(23, 'Panasonic', 'Hp best sellers', '234', 'product3.jpg', '17%', 'Laptop', 'Panasonic', 'Active', '2015-12-02 05:45:15', 25),
(24, 'Dell Laptop', 'dell best sellers', '111', 'product4.jpg', '4%', 'Laptop', 'Nokia', 'Active', '2015-12-02 05:45:46', 32),
(26, 'Infinix', 'Best sellers', '222', 'product6.jpg', '0%', 'LED', 'Qmobile', 'Active', '2015-12-03 08:12:07', 125),
(27, 'Huawai', 'Hp best sellers', '222', 'product7.jpg', '17%', 'Monitor', 'Huawai', 'Active', '2015-12-02 05:49:41', 77),
(28, 'Qmobile', 'Qmobile', '222', 'product8.jpg', '17%', 'Laptop', 'Dell', 'Active', '2015-12-02 05:50:37', 35),
(29, 'Nokia', 'Optiplex 755', '300', 'product9.jpg', '18%', 'Mobile', 'Hp', 'Active', '2015-12-02 05:51:09', 57),
(30, 'Nikon', 'Zoom your life', '222', 'product5.jpg', '14%', 'Appliances', 'Panasonic', 'Active', '2015-12-02 05:51:44', 125),
(31, 'Q mobile 1234', 'Qmobile 1234', '122', 'product3.jpg', '1%', 'Mobile', 'Nokia', 'Active', '2015-12-04 05:11:09', 79),
(32, 'Sony', 'Sony xperia', '1222', 'product4.jpg', '19%', 'Mobile', 'Qmobile', 'Active', '2015-12-04 05:12:15', 46),
(33, 'Huawai', 'huawai', '111', 'product.jpg', '18%', 'Laptop', 'Huawai', 'Active', '2015-12-04 05:12:42', 34),
(36, 'Dell Laptop', 'Optiplex 755', '111', 'product1.jpg', '7%', 'Mobile', 'Dell', 'Active', '2015-12-02 05:42:43', 4),
(37, 'Huawai', 'Honor P7', '11', 'product3.jpg', '17%', 'Mobile', 'Huawai', 'Active', '2015-12-04 06:39:46', 17),
(38, 'Hp 450', 'A unique hp product that is something', '111', 'product5.jpg', '19%', 'Laptop', 'Hp', 'Active', '2015-12-11 07:00:48', 25),
(39, 'Infinix', 'A unique Infinix product that is something', '111', 'product.jpg', '3%', 'Laptop', 'Qmobile', 'Active', '2015-12-12 09:54:58', 2),
(40, 'laptop 1', 'laptop 1 info', '345', 'product8.jpg', '65%', 'Laptop', 'Hp', 'Active', '2015-12-16 06:05:24', 1),
(41, 'laptop 2', 'laptop 2 info', '345', 'product1.jpg', '19%', 'Laptop', 'Panasonic', 'Active', '2015-12-16 06:05:54', 0),
(42, 'Dell Laptop 1', 'Optiplex 755', '222', 'product5.jpg', '18%', 'Laptop', 'Dell', 'Active', '2015-12-16 06:06:20', 82),
(43, 'Dell Laptop 3', 'Optiplex 755 3', '111', 'product3.jpg', '18%', 'Mobile', 'Nokia', 'Active', '2015-12-16 06:06:50', 40);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `register_date` datetime NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `first_name`, `last_name`, `username`, `email`, `password`, `date_of_birth`, `profile_image`, `gender`, `education`, `country`, `city`, `about`, `register_date`, `status`) VALUES
(17, 'Saad', 'saad', 'saad', 'ssss@sss.com', '53f3140029fc56b7f9ac92c1d6253c718c69e11f', '1999-12-09', '2.jpg', 'male', 'BSCS', 'Pakistan', 'lahore', 'saad is a good boy why are you disturbing him', '1999-10-07 00:00:00', '0'),
(18, 'saad', 'saad', 'saadsaad', 'saadsaad@saad.com', '53f3140029fc56b7f9ac92c1d6253c718c69e11f', '2015-12-15', 'admin.png', 'Male', 'BSCS', 'Pakistan', 'lahore', 'Saad from lahore pakistan and a good friend', '0000-00-00 00:00:00', ''),
(19, 'saad', 'saad', 'Abdullah001', 'abdullah001@gmail.com', '289fe22b2da292492f23173c21f624181b57f481', '1999-10-19', 'admin.png', 'Male', 'BSCS', 'Pakistan', 'islamabad', 'Abdullah Tariq a Web Developer', '2016-01-08 00:00:00', ''),
(20, 'Tariq', 'Hameed', 'Tariqhameed', 'tariq@gmail.com', 'ad9637e58f638e4daff4e6db18682b9087635eef', '1973-02-12', '2.jpg', 'Male', 'BSCS', 'Pakistan', 'Islamabad', 'im a Employee At Ali Sirius', '2016-01-13 00:00:00', ''),
(21, 'mazhar', 'mehmood', 'mazhar', 'mazhar@gmail.com', 'f1fe55a97385cf3cab39b25c5b2d580eeda5d9ca', '1998-06-15', '2.jpg', 'Male', 'BSCS', 'Pakistan', 'Lahore', 'Im a Php Web developer', '2016-01-23 00:00:00', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`ad_ID`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `pimages`
--
ALTER TABLE `pimages`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `ad_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brandID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chatID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pimages`
--
ALTER TABLE `pimages`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
