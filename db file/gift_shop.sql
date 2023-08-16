-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2022 at 03:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gift_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'Chirag', 'chirag@123', 'chirag@mail.com', '', '2022-12-24 14:04:05'),
(2, 'Faeez', 'faeez@123', 'faeez@gmail.com', '', '2022-12-24 14:04:11'),
(3, 'Harsh', 'harsh@123', 'harsh@123', '', '2022-12-24 14:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `all_gifts`
--

CREATE TABLE `all_gifts` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `all_gifts`
--

INSERT INTO `all_gifts` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 7, 'Sonata', 'Brand Sonata Collection Sonata Others Dial Shape Round Function Analog Gender Men Product Watches Strap Metal Strap Colour Black Style Formal Dia', '1249.00', '63a19c2a267b5.jpg'),
(2, 7, ' Luxury Casual Wrist Watch ', 'Mens Black Slim Watches Men 30M Waterproof Luxury Casual Wrist Watch Stainless Steel Mesh Watch for Men', '9155.00', '63a19a8eaefb3.jpg'),
(3, 5, 'ROCKSTAR TEDDY BEAR:', 'Rockstar teddy bear, which comes with a funky hat and a guitar to add on to the look. Watch your little one play with the Rockstar teddy and record these priceless moments for life.', '1099.00', '63a19b0939f94.jpeg'),
(4, 1, 'Card', 'Wedding Anniversary scroll card with a very loving quote and a love couple showpiece of grey color', '980.00', '63a19b260d42e.jpg'),
(5, 1, 'Cup', 'Black color , inner color is white', '599.00', '63a19b579319d.jpg'),
(6, 2, 'COSMAC WATERPROOF MAKEUP', 'COSMAC WATERPROOF MAKEUP KIT COMBO KIT MINERALIZE FOUNDATION,SKIN BASE PRIMER,EYELINER,MASCARA,EYEBROW PENCIL,KAJAL,RED EDITION LIPSTICK', '2000.00', '63a19ca35243a.jpg'),
(7, 2, 'Makeup Gift Set', 'Makeup Kit for Women Full Kit, 27PCS Multi-Purpose Makeup Kit All-in-One Makeup Gift Set Makeup Essential Starter Kit, Compact and Lightweight Design for Girls, Women', '1500.00', '63a19cf6ac9c4.jpg'),
(8, 3, ' Card ', 'Handmade Anniversary Card | Anniversary Card for Parents', '250.00', '63a19db620e85.jpg'),
(9, 3, 'Album', 'House cart Album is perfect gift.', '1500.00', '63a19de2c58eb.jpg'),
(10, 6, 'Wallet', 'Wallet in grey color, brand : TF , original ladher', '780.00', '63a19ea06b96b.jpg'),
(11, 6, 'Belt', 'A rose gold metallic buckle adorns this skinny belt crafted in recycled leather Square metal buckle 30 mm wide Made in Canada', '1200.00', '63a19f633f474.jpg'),
(12, 4, 'Boys plastick truck toy', 'Product Specification Age	3-4 years Type	Electronic Toys With Battery	Yes Gender	Boys', '260.00', '63a6e187313cb.jpg'),
(13, 8, 'iClever BTH13', 'iClever BTH13 Bluetooth Headphones with Mic, Over The Ear Headphone Wireless Cat Ear Unicorn Headphone for Girls Birthday Gift Safe Volume Limited, 45H Playtime, Portable Headset for iPad, Purple', '2650.00', '63a706468009c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `feedback` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `feedback`, `message`) VALUES
(1, 'hello', 'chiragsparmar1910@gmail.com', 'Amazing', 'hi'),
(2, 'Faeez', 'memon@gmail.com', 'Amazing', 'Wow!');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'closed', 'he', '2022-12-22 03:09:46'),
(2, 2, 'in process', 'On the Way', '2022-12-24 11:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Men', '2022-12-20 10:57:25'),
(2, 'Women', '2022-12-20 10:57:40'),
(3, 'Kids', '2022-12-20 10:57:54'),
(4, 'Couple', '2022-12-20 10:58:07'),
(5, 'Friend', '2022-12-20 10:58:13'),
(6, 'Other', '2022-12-20 10:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`rs_id`, `c_id`, `title`, `c_hr`, `image`, `date`) VALUES
(1, 4, 'Valentine', '', '63a1956e52b56.jpg', '2022-12-20 10:58:54'),
(2, 2, 'Birthday-girl', '', '63a1963049a9d.jpg', '2022-12-20 11:02:08'),
(3, 4, 'Anniverssary', '', '63a19646bab93.jpg', '2022-12-20 11:02:30'),
(4, 3, 'Toy', '', '63a196b80b134.jpg', '2022-12-20 11:04:24'),
(5, 3, 'Teddy', '', '63a196e21eb02.jpg', '2022-12-20 11:05:06'),
(6, 5, 'assesories', '', '63a19737eb370.jpg', '2022-12-20 11:06:31'),
(7, 1, 'Birthday-boy', '', '63a1977bd5080.jpeg', '2022-12-20 11:07:39'),
(8, 6, 'Headphone', '', '63a706085bf6c.jpeg', '2022-12-24 14:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'chirag', 'chirag', 'parmar', 'chiragsparmar1910@gmail.com', '9173889990', 'chirag@123', 'surendranagar', 1, '2022-12-20 16:34:09'),
(2, 'Faeez', 'Faeez', 'Memon', 'memon@gmail.com', '9377759285', '123456', 'Ahmedabad', 1, '2022-12-24 11:51:04');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 1, 'Card', 1, '980.00', 'closed', '2022-12-22 03:09:46'),
(2, 2, 'Boys plastick truck toy', 5, '260.00', 'in process', '2022-12-24 11:56:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `all_gifts`
--
ALTER TABLE `all_gifts`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `all_gifts`
--
ALTER TABLE `all_gifts`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
