-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2022 at 12:29 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikrimart`
--

-- --------------------------------------------------------

--
-- Table structure for table `banking`
--

CREATE TABLE `banking` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `upi_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banking`
--

INSERT INTO `banking` (`id`, `uid`, `user_id`, `account_name`, `account_number`, `ifsc`, `upi_id`, `created_at`, `modified_at`) VALUES
(1, 'BANKING_cb01131399966792407265c63520cd8e_1664544784', 'USERS_b55980f879630a4812842a45c0416ef4_1664518106', 'moloy pradhan', '7854798547005', 'B7857897458', NULL, '2022-09-30 17:49:05', '2022-09-30 19:03:04'),
(2, 'BANKING_d770d0624bd6e3965442757ca0eb2d59_1664608975', 'USERS_b36c17339242ae9033000ebafa9ce05e_1664599562', 'sayantan poddar', '7854798847005', 'B6857897458', NULL, '2022-10-01 12:47:55', '2022-10-01 12:52:55'),
(3, 'BANKING_362efbb88735f68cf4ce4ec6d9cd2a21_1664613112', 'USERS_c697f8bc8d222a416593e14e0b0a28fe_1664610365', 'arnab dutta', '7854798847004', 'B6857897455', 'arnabdutta12', '2022-10-01 14:01:52', '2022-10-01 14:01:52'),
(4, 'BANKING_fde95340d6f7cdc279c215aab11f59e4_1664617985', 'USERS_66501f94bc91ac8e353196fdec486ae9_1664615269', 'subhojit karmakar', '7854798547001', 'B6857897457', 'subhojitkarmakar04', '2022-10-01 15:23:05', '2022-10-01 15:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bussiness_type`
--

CREATE TABLE `bussiness_type` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bussiness_type`
--

INSERT INTO `bussiness_type` (`id`, `uid`, `name`, `modified_at`) VALUES
(1, 'BmRetailStore', 'Retail Store', '2022-10-01 11:35:50'),
(2, 'BmFruitsVegetable', 'Fruits & Vegetable', '2022-10-01 11:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `name` varchar(37) NOT NULL,
  `parentid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `url_ids` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `uid`, `name`, `parent_id`, `url`, `url_ids`, `created_at`, `modified_at`) VALUES
(1, 'c_78437845364', 'Appliances', NULL, 'Appliances', '', '2022-08-12 14:14:16', '2022-08-12 06:13:22'),
(2, 'c_78443547431', 'Baby', NULL, 'Baby', '', '2022-08-12 14:14:16', '2022-08-12 06:13:22'),
(3, 'c_43453447431', 'Activity & Play Time', 'c_78443547431', 'Baby/Activity & Play Time', '', '2022-08-12 14:39:56', '2022-08-12 06:33:14'),
(4, 'c_12332437431', 'Baby Care', 'c_78443547431', 'Baby/Baby Care', '', '2022-08-12 14:39:56', '2022-08-12 06:33:14'),
(5, 'c_43434344431', 'Baby Clothing', 'c_78443547431', 'Baby/Baby Clothing', '', '2022-08-12 14:39:56', '2022-08-12 06:33:14'),
(6, 'c_34377878431', 'Baby Safety', 'c_78443547431', 'Baby/Baby Safety', '', '2022-08-12 14:39:56', '2022-08-12 06:33:14'),
(7, 'c_45458794431', 'Baby Shoes', 'c_78443547431', 'Baby/Baby Shoes', '', '2022-08-12 14:39:56', '2022-08-12 06:33:14'),
(8, 'c_22222333331', 'Bedding, Furniture & Room Décor', 'c_78443547431', 'Baby/Bedding, Furniture & Room Décor', '', '2022-08-12 14:39:56', '2022-08-12 06:33:14'),
(9, 'c_23235768431', 'Car Seats & Accessories', 'c_78443547431', 'Baby/Car Seats & Accessories', '', '2022-08-12 14:39:56', '2022-08-12 06:33:14'),
(10, 'c_35786769431', 'Carriers & Accessories', 'c_78443547431', 'Baby/Carriers & Accessories', '', '2022-08-12 14:39:56', '2022-08-12 06:33:14'),
(11, 'c_12122111431', 'Diapering & Nappy Changing', 'c_78443547431', 'Baby/Diapering & Nappy Changing', '', '2022-08-12 14:39:56', '2022-08-12 06:33:14'),
(12, 'c_12125785431', 'Feeding', 'c_78443547431', 'Baby/Feeding', '', '2022-08-12 14:39:56', '2022-08-12 06:33:14'),
(14, 'c_74545737431', 'Maternity', 'c_78443547431', 'Baby/Maternity', '', '2022-08-12 14:39:56', '2022-08-12 06:33:14'),
(16, 'c_54335554331', 'Potty Training & Step Stools', 'c_78443547431', 'Baby/Potty Training & Step Stools', '', '2022-08-12 14:39:56', '2022-08-12 06:33:14'),
(17, 'c_32434676731', 'Strollers, Buggies & Prams', 'c_78443547431', 'Baby/Strollers, Buggies & Prams', '', '2022-08-12 14:39:56', '2022-08-12 06:33:14'),
(36, 'c_73234547431', 'Baby Laundry Detergents', 'c_12332437431', 'Baby/Baby Care/Baby Laundry Detergents', '', '2022-08-12 14:57:21', '2022-08-12 06:33:14'),
(37, 'c_34345443551', 'Bathing', 'c_12332437431', 'Baby/Baby Care/Bathing', '', '2022-08-12 14:57:21', '2022-08-12 06:33:14'),
(38, 'c_43543333431', 'Ear & Nose Care', 'c_34377878431', 'Baby/Baby Care/Ear & Nose Care', '', '2022-08-12 14:57:21', '2022-08-12 06:33:14'),
(39, 'c_34376778431', 'Gift Packs', 'c_12332437431', 'Baby/Baby Care/Gift Packs', '', '2022-08-12 14:57:21', '2022-08-12 06:33:14'),
(40, 'c_45458768765', 'Grooming Kits', 'c_12332437431', 'Baby/Baby Care/Grooming Kits', '', '2022-08-12 14:57:21', '2022-08-12 06:33:14'),
(41, 'c_22222337776', 'Hair Care', 'c_12332437431', 'Baby/Baby Care/Hair Care', '', '2022-08-12 14:57:21', '2022-08-12 06:33:14'),
(42, 'c_23235767891', 'Health Care', 'c_12332437431', 'Baby/Baby Care/Health Care', '', '2022-08-12 14:57:21', '2022-08-12 06:33:14'),
(43, 'c_35786798965', 'Nail Care', 'c_12332437431', 'Baby/Baby Care/Nail Care', '', '2022-08-12 14:57:21', '2022-08-12 06:33:14'),
(50, 'C_43752741623', 'Book', NULL, 'Book', 'C_43752741623', '2022-08-22 16:46:08', '2022-08-22 16:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `kyc_document` varchar(255) DEFAULT NULL,
  `kyc_image` varchar(255) DEFAULT NULL,
  `inside_image` varchar(255) DEFAULT NULL,
  `front_image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `uid`, `user_id`, `kyc_document`, `kyc_image`, `inside_image`, `front_image`, `created_at`, `modified_at`) VALUES
(1, 'DOCUMENT_5e4e5328fd269ad54d6fd58cfc28ed98_1664544766', 'USERS_b55980f879630a4812842a45c0416ef4_1664518106', 'aadhar', 'assets/uploads/bussiness_images/IMAGE_5d0431c8ca64224c83331c5c2ea652a7_1664544766.png', 'assets/uploads/bussiness_images/IMAGE_cfd45ade0caad033de6eebc5bc5a813f_1664544766.png', 'assets/uploads/bussiness_images/IMAGE_0cfb6710900700401dcbc36b7ea9f622_1664544766.png', '2022-09-30 19:02:46', '2022-09-30 19:02:46'),
(2, 'DOCUMENT_7b0c3a615f6ddc210be6943d7d1df6e0_1664608949', 'USERS_b36c17339242ae9033000ebafa9ce05e_1664599562', 'pan', 'assets/uploads/bussiness_images/IMAGE_d3ee5a8bb86447d9cea264479591a4f6_1664608949.png', NULL, NULL, '2022-10-01 12:52:29', '2022-10-01 12:52:29'),
(3, 'DOCUMENT_a204736252ce5100a7171965613606fd_1664612891', 'USERS_c697f8bc8d222a416593e14e0b0a28fe_1664610365', 'voter', 'assets/uploads/bussiness_images/IMAGE_9b5be60a01c674b1ae63bb0da936a88e_1664612891.png', 'assets/uploads/bussiness_images/IMAGE_bcfc78669c240c9cf275a48206998ad4_1664612891.png', 'assets/uploads/bussiness_images/IMAGE_fca76e360d1b1450f3ebaa110d80e938_1664612891.png', '2022-10-01 13:58:11', '2022-10-01 13:58:11'),
(4, 'DOCUMENT_8990e8b76b0868e96ccc2c9202438a82_1664617904', 'USERS_66501f94bc91ac8e353196fdec486ae9_1664615269', 'aadhar', 'assets/uploads/bussiness_images/IMAGE_a8d391993f4d82da2d576b6ee338b3c6_1664617904.png', NULL, NULL, '2022-10-01 15:21:44', '2022-10-01 15:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `otp_list`
--

CREATE TABLE `otp_list` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otp_list`
--

INSERT INTO `otp_list` (`id`, `user_id`, `token`, `otp`, `created_at`) VALUES
(40, 'USERS_b55980f879630a4812842a45c0416ef4_1664518106', 'TOKEN_98147e6a70f6bf3b65a597d5bdef3184_1664619983', '4477', '2022-10-01 15:56:23'),
(41, 'USERS_b36c17339242ae9033000ebafa9ce05e_1664599562', 'TOKEN_19b50374ae3002e8a6b0a0b84cb5d999_1664599562', '8355', '2022-10-01 10:16:02'),
(42, 'USERS_c697f8bc8d222a416593e14e0b0a28fe_1664610365', 'TOKEN_8df48a061ad69dd3c9d212bb74a0f039_1664610365', '5712', '2022-10-01 13:16:05'),
(43, 'USERS_66501f94bc91ac8e353196fdec486ae9_1664615269', 'TOKEN_bec18f04cf01133580ef8b5fb682d8b1_1664615269', '6074', '2022-10-01 14:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `generated_sku` varchar(255) NOT NULL,
  `vendor_id` varchar(255) NOT NULL,
  `brand_id` varchar(255) NOT NULL,
  `categorie_ids` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sale_price` varchar(255) NOT NULL,
  `sale_price_tax_type` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `discount_type` varchar(255) NOT NULL,
  `tax_rate_id` varchar(255) NOT NULL,
  `wholesale_price` varchar(255) NOT NULL,
  `wholesale_price_tax_type` varchar(255) NOT NULL,
  `wholesale_minimum_quantity` varchar(255) NOT NULL,
  `purchase_price` varchar(255) NOT NULL,
  `purchase_price_tax_type` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `colour` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `flavour` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) DEFAULT NULL COMMENT 'ACTIVE, DEACTIVE, DELETED\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `main_image` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_unit`
--

CREATE TABLE `product_unit` (
  `id` int(10) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_unit`
--

INSERT INTO `product_unit` (`id`, `uid`, `name`, `short_name`, `status`, `created_at`, `modified_at`) VALUES
(1, 'unit_bags', 'bags', 'bag', 'active', '2022-08-06 18:20:05', '2022-08-06 10:19:28'),
(2, 'unit_box', 'box', 'box', 'active', '2022-08-06 18:20:05', '2022-08-06 10:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `gid` varchar(255) DEFAULT NULL,
  `user_type_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'ACTIVE',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `gid`, `user_type_id`, `name`, `gender`, `dob`, `email`, `mobile`, `profile_image`, `otp`, `status`, `created_at`, `modified_at`) VALUES
(1, 'USERS_8756786358345846_5646454', NULL, 'user_vendor', 'satam kundu', 'male', '16/01/1996\r\n', 'satam@v-xplore.com', '6294090250', NULL, NULL, 'ACTIVE', '2022-08-10 18:38:25', '2022-08-10 18:38:25'),
(6, 'USERS_b55980f879630a4812842a45c0416ef4_1664518106', 'GROUP_f823d48d19fbc94bcb006e1edb5d7689_1664520484', 'user_vendor', 'moloy pradhan', '', '', 'mp@gmail.com', '8420478932', 'assets/uploads/profile_image/IMAGE_85bd9a0b88f056431a059f0e43e8d249_1664544784.png', NULL, 'DEACTIVE', '2022-09-30 11:38:26', '2022-09-30 19:03:04'),
(7, 'USERS_b36c17339242ae9033000ebafa9ce05e_1664599562', 'GROUP_2d6a8ffb9ac16abe60646bef9a89a9fd_1664599615', 'user_vendor', 'syntn pddr', '', '', 'sp@gmail.com', '7980265926', 'assets/uploads/profile_image/IMAGE_c48c372f08a3de63271ee493003478fa_1664608975.png', NULL, 'DEACTIVE', '2022-10-01 10:16:02', '2022-10-01 12:52:55'),
(8, 'USERS_c697f8bc8d222a416593e14e0b0a28fe_1664610365', 'GROUP_5fc370582c1b1c15e3d47de313b253ac_1664610538', 'user_vendor', 'arnab dutta', '', '', 'ad@gmail.com', '9136863319', 'assets/uploads/profile_image/IMAGE_67d9b51d2fbbb2dd7f7224076c568bb3_1664613112.png', NULL, 'DEACTIVE', '2022-10-01 13:16:05', '2022-10-01 14:01:52'),
(9, 'USERS_66501f94bc91ac8e353196fdec486ae9_1664615269', 'GROUP_b924fe1d0122f4e7877d50ef3b8f0906_1664615287', 'user_vendor', 'subhojit karmakar', '', '', 'sk@gmail.com', '8017464561', 'assets/uploads/profile_image/IMAGE_a94cee4ee7ccca481e7b839da4d206aa_1664617985.png', NULL, 'DEACTIVE', '2022-10-01 14:37:49', '2022-10-01 15:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `bussiness_type` varchar(255) NOT NULL,
  `bussiness_category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gst` varchar(255) NOT NULL,
  `building` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `uid`, `user_id`, `bussiness_type`, `bussiness_category`, `name`, `mobile`, `email`, `gst`, `building`, `address`, `created_at`, `modified_at`) VALUES
(1, 'VENDOR_7648734685487658346_63784657', 'USERS_8756786358345846_5646454', '', '', '', '', '', '', '', '', '2022-08-10 18:42:28', '2022-08-10 18:42:28'),
(6, 'VENDOR_ec7d1008b78df155e3433c4418883b16_1664518106', 'USERS_b55980f879630a4812842a45c0416ef4_1664518106', 'BmRetailStore', '[\"Kirana\",\"Medical\"]', 'Bussiness 1', '1111111111', 'bussiness@gmail.com', '987456', '', '', '2022-09-30 11:38:26', '2022-10-01 15:58:13'),
(7, 'VENDOR_c8fd78cd35a68111fe8815dbe54182cf_1664599562', 'USERS_b36c17339242ae9033000ebafa9ce05e_1664599562', 'BmFruitsVegetable', '', 'sayantan poddar', '2222222222', '', '', '140', 'belure', '2022-10-01 10:16:02', '2022-10-01 12:52:29'),
(8, 'VENDOR_cb13460815499bbadca61f0650f6c467_1664610365', 'USERS_c697f8bc8d222a416593e14e0b0a28fe_1664610365', 'BmRestaurant', '', '', '3333333333', 'restaurant@gmail.com', '987457', '', '', '2022-10-01 13:16:05', '2022-10-01 13:58:11'),
(9, 'VENDOR_3d30a0960e6ed19780f54ade8272167d_1664615269', 'USERS_66501f94bc91ac8e353196fdec486ae9_1664615269', 'BmService', '', '', '', '', '', '104', 'howrah', '2022-10-01 14:37:49', '2022-10-01 15:21:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banking`
--
ALTER TABLE `banking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bussiness_type`
--
ALTER TABLE `bussiness_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid_fk` (`parentid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_list`
--
ALTER TABLE `otp_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_unit`
--
ALTER TABLE `product_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banking`
--
ALTER TABLE `banking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bussiness_type`
--
ALTER TABLE `bussiness_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `otp_list`
--
ALTER TABLE `otp_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_unit`
--
ALTER TABLE `product_unit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categorie`
--
ALTER TABLE `categorie`
  ADD CONSTRAINT `categorie_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
