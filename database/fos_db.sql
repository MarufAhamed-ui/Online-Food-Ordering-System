-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2025 at 07:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_customer`
--

CREATE TABLE `food_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_customer`
--

INSERT INTO `food_customer` (`id`, `name`, `email`, `password`, `phone`, `address`) VALUES
(1, 'Mark Cooper', 'mcooper@mail.com', '202cb962ac59075b964b07152d234b70', '1234567890', 'A - 1111 Street road, Newyork USA.'),
(2, 'Samantha Miller', 'sam23@mail.com', '45bff2a14658fc9b21c6e5e9bf75186b', '0913245879', 'My Sample Address'),
(3, 'Clairy Blake', 'cblake@mail.com', '4744ddea876b11dcb1d169fadf494418', '09654789123', 'Sample Address 101');

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `images` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`id`, `name`, `price`, `description`, `images`, `status`) VALUES
(1, 'Chicken Kacchi Biryani', 210, 'Chicken Kacchi Biryani - A fragrant dum-cooked biryani made by layering raw marinated chicken with half-cooked basmati rice, slow-cooked with saffron and aromatic spices for tender meat.', './images/Hyderabadi Kacchi.jpg', 'ENABLE'),
(2, 'Chicken BBQ', 140, 'Chicken BBQ is a smoky, tender, and juicy chicken dish cooked over a grill with special spices and sauces.', './images/bbq.jpg', 'ENABLE'),
(3, 'Beef Rezala', 650, 'Juicy beef cooked in a creamy yogurt sauce with ghee and aromatic spices - a mild yet flavorful Mughlai delicacy.', './images/beef.jpg', 'ENABLE'),
(4, 'Lamb Nihari', 550, 'Lamb Nihari - Slow-cooked lamb in a rich, spicy gravy, served with naan or paratha.', './images/nehari.jpg', 'ENABLE'),
(5, 'Fries', 150, 'Maecenas eleifend sit amet magna et consequat. Nunc a erat non arcu efficitur semper ut et mauris. Aenean sed faucibus purus. Duis hendrerit diam at leo imperdiet, vel placerat dolor porta.', './images/fries.jfif', 'ENABLE'),
(6, 'Nachos', 150, 'Nam sagittis fringilla leo, eget eleifend orci vestibulum sed. Proin a sem eu tortor hendrerit sollicitudin. Vivamus tempus ullamcorper nibh vitae viverra.', './images/nachos.jpg', 'ENABLE'),
(7, 'Pizza', 650, 'Sed sit amet neque fringilla, eleifend libero gravida, tempus nisl.', './images/pizza.jfif', 'ENABLE'),
(8, 'Fried Chicken', 250, 'Cras vitae commodo sem. Nam viverra augue lacus, ut tempus nulla congue accumsan. Ut mattis ipsum ligula, non dignissim ex scelerisque eu.', './images/fried-chicken.png', 'ENABLE'),
(9, 'Grilled Chicken', 135, 'Nulla tincidunt varius accumsan. Vivamus ac nunc nibh. Ut maximus nisi sed consectetur dictum.', './images/grilled-chicken.jpg', 'ENABLE'),
(10, 'Burger', 350, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris dignissim at dolor in posuere. Sed eleifend ipsum in sem placerat, sed semper felis tincidunt.', './images/burger.jfif', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `food_orders`
--

CREATE TABLE `food_orders` (
  `id` int(30) NOT NULL,
  `item_id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `order_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `food_orders`
--

INSERT INTO `food_orders` (`id`, `item_id`, `name`, `price`, `quantity`, `order_date`, `order_id`) VALUES
(1, 3, 'Nachos', 150, 1, '2025-08-20', '944886993025460519'),
(2, 2, 'Fries', 150, 1, '2025-08-20', '944886993025460519');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_customer`
--
ALTER TABLE `food_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food_customer`
--
ALTER TABLE `food_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `food_orders`
--
ALTER TABLE `food_orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD CONSTRAINT `item_id_fk` FOREIGN KEY (`item_id`) REFERENCES `food_items` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
