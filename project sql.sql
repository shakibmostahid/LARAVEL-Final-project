-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 30, 2018 at 04:19 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `project-1`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `area` text COLLATE utf8_bin NOT NULL,
  `city` text COLLATE utf8_bin NOT NULL,
  `zip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `area`, `city`, `zip`) VALUES
(1, 'banani', 'banani', 1212),
(2, 'banani', 'banani', 1212),
(3, 'mirpur', 'dhaka', 1212),
(4, 'mohakhali', 'dhaka', 1212),
(5, 'banani', 'banani', 1212);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `username` varchar(20) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `name`, `password`, `created_at`, `updated_at`) VALUES
('admin', 'Electro', '123', '2018-08-28', '2018-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `type` text COLLATE utf8_bin NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(4, 'Computer', 'PC , Laptops , Tab', '2018-08-28', '2018-08-28'),
(5, 'Camera & accessories', 'ALL camera and accessories', '2018-08-28', '2018-08-28'),
(6, 'Smart Phones', 'All Smart Phones', '2018-08-28', '2018-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `image_name` text COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `sizes` text COLLATE utf8_bin NOT NULL,
  `colors` text COLLATE utf8_bin NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `tag` text COLLATE utf8_bin NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image_name`, `description`, `sizes`, `colors`, `price`, `discount`, `tag`, `category_id`, `created_at`, `updated_at`) VALUES
(9, 'MAC', '1.png', 'Apple macbook Pro.', '13.3,15', '#d6d6d6,#424242', 120000, 115000, 'New', 4, '2018-08-28', '2018-08-28'),
(10, 'MAC book @2015', '1.png', 'Older but still great macbook', '13.3,15', '#000000,#d6d6d6', 95000, 90000, 'regular', 4, '2018-08-28', '2018-08-28'),
(11, 'Microsoft Surface', '1.png', 'new micrsoft surface', '14', '#000000,#0096ff,#ebebeb', 110000, 108000, 'new', 4, '2018-08-28', '2018-08-28'),
(12, 'Asus regular', '1.png', 'regular user asus laptop', '15,17', '#000000,#011993,#ff2600', 78000, 76000, 'regular', 4, '2018-08-28', '2018-08-28'),
(13, 'Rekam Video Camera', '1.png', 'Video Camera', '50,180', '#000000,#a9a9a9', 35000, 34000, 'new', 5, '2018-08-28', '2018-08-28'),
(14, 'A4tech', '1.png', 'Regular headphone', '7', '#000000,#ff2600,#0433ff', 2000, 1850, 'new', 5, '2018-08-28', '2018-08-28'),
(15, 'Sony Studio Headphones', '1.png', 'Sony studio headphone', '7', '#000000,#c0c0c0', 40000, 38000, 'new', 5, '2018-08-28', '2018-08-28'),
(16, 'Samsung Galexy s8', '1.png', 'Android Phone', '18,16', '#d6d6d6,#000000,#0433ff', 48000, 46500, 'new', 6, '2018-08-28', '2018-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` text COLLATE utf8_bin NOT NULL,
  `order_status` text COLLATE utf8_bin NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `product_id`, `order_status`, `price`, `created_at`, `updated_at`) VALUES
(22, 1, '11:1:14:#000000', 'On Process', 108000, '2018-08-29', '2018-08-29'),
(23, 1, '10:1:13.3:#000000,11:1:14:#0096ff', 'Delivered', 198000, '2018-08-29', '2018-08-29'),
(24, 1, '14:1:7:#000000', 'Placed', 1850, '2018-08-29', '2018-08-29'),
(25, 1, '16:1:18:#d6d6d6', 'Placed', 46500, '2018-08-29', '2018-08-29'),
(26, 1, '13:1:50:#a9a9a9', 'Placed', 34000, '2018-08-29', '2018-08-29'),
(27, 1, '9:1:15:#d6d6d6', 'Placed', 115000, '2018-08-29', '2018-08-29'),
(28, 1, '9:1:13.3:#d6d6d6', 'Placed', 115000, '2018-08-29', '2018-08-29'),
(29, 1, '13:1:50:#000000', 'On Process', 34000, '2018-08-29', '2018-08-29'),
(30, 1, '13:1:50:#000000', 'Placed', 34000, '2018-08-29', '2018-08-29'),
(31, 1, '9:1:13.3:#d6d6d6', 'Placed', 115000, '2018-08-29', '2018-08-29'),
(32, 2, '9:1:13.3:#d6d6d6', 'Placed', 115000, '2018-08-29', '2018-08-29'),
(33, 2, '13:1:50:#000000', 'Placed', 34000, '2018-08-29', '2018-08-29'),
(34, 3, '9:1:15:#424242,14:1:7:#0433ff', 'Cancel', 116850, '2018-08-29', '2018-08-29'),
(35, 4, '9:1:15:#424242,11:1:14:#0096ff', 'On Process', 223000, '2018-08-29', '2018-08-29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` text COLLATE utf8_bin NOT NULL,
  `password` text COLLATE utf8_bin NOT NULL,
  `prev_password` text COLLATE utf8_bin,
  `address_id` int(11) NOT NULL,
  `phone` text COLLATE utf8_bin NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `prev_password`, `address_id`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'sheehab hossain pranto', 'demo@z.com', '12345', NULL, 2, '0000', '2018-08-29', '2018-08-29'),
(2, 'Arif Ayomi', 'a@gmail.com', '12345', NULL, 3, '01771777777', '2018-08-29', '2018-08-29'),
(3, 'Arif Shariar', 'b@dummy.com', '12345', NULL, 4, '0000', '2018-08-29', '2018-08-29'),
(4, 'dummy user', 'demo123@z.com', '12345', NULL, 5, '0000', '2018-08-29', '2018-08-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`(250));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
