
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `lattire`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_cart`
--

CREATE TABLE `customer_cart` (
  `id` int(11) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_details` varchar(255) NOT NULL,
  `product_price` BIGINT NOT NULL,
  `productpicdir` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_cart`
--

INSERT INTO `customer_cart` (`id`, `customer_email`, `product_id`, `product_category`, `product_name`, `product_details`, `product_price`, `productpicdir`) VALUES
(63, 'mosesolawale21@gmail.com', 8, 'Phones', 'Ximiao S09', '12G RAM, 120G internal storage, 5G network adapter. \n            ', 200, '../product_categories/Phones/Ximiao S09/pexels-mohi-syed-47261.jpg'),
(66, '', 4, 'Wears', 'Hood cardigan', 'Winter hood cardigan for male and female \n            ', 6, '../product_categories/Wears/Hood cardigan/mediamodifier-kJXGTOY1wLQ-unsplash.jpg'),
(67, 'mosesolawale21@gmail.com', 27, 'Office', 'Office Desk', 'Mini office desk for secretaries, office assistants e.t.c \n            ', 350, '../product_categories/Office accessories/Office Desk/pexels-lisa-1957478.jpg'),
(68, '', 22, 'Office', 'Office whiteboard', 'Mini office whiteboard for office, conference and classroom  \n            ', 150, '../product_categories/Office accessories/Office whiteboard/pexels-anna-shvets-3727511.jpg'),
(69, '', 22, 'Office', 'Office whiteboard', 'Mini office whiteboard for office, conference and classroom  \n            ', 150, '../product_categories/Office accessories/Office whiteboard/pexels-anna-shvets-3727511.jpg'),
(70, 'mosesolawale21@gmail.com', 11, 'Electronics', 'X-box 5 Game pad', '2 Analog controls, Wireless connectivity to console, Headset connectivity, Black color, touch sensor \n            ', 200, '../product_categories/Electronics/X-box 5 Game pad/pexels-fox-2106216.jpg'),
(71, '', 4, 'Wears', 'Hood cardigan', 'Winter hood cardigan for male and female \n            ', 6, '../product_categories/Wears/Hood cardigan/mediamodifier-kJXGTOY1wLQ-unsplash.jpg'),
(72, '', 4, 'Wears', 'Hood cardigan', 'Winter hood cardigan for male and female \n            ', 6, '../product_categories/Wears/Hood cardigan/mediamodifier-kJXGTOY1wLQ-unsplash.jpg'),
(73, '', 4, 'Wears', 'Hood cardigan', 'Winter hood cardigan for male and female \n            ', 6, '../product_categories/Wears/Hood cardigan/mediamodifier-kJXGTOY1wLQ-unsplash.jpg'),
(74, '', 4, 'Wears', 'Hood cardigan', 'Winter hood cardigan for male and female \n            ', 6, '../product_categories/Wears/Hood cardigan/mediamodifier-kJXGTOY1wLQ-unsplash.jpg'),
(75, '', 4, 'Wears', 'Hood cardigan', 'Winter hood cardigan for male and female \n            ', 6, '../product_categories/Wears/Hood cardigan/mediamodifier-kJXGTOY1wLQ-unsplash.jpg'),
(76, '', 4, 'Wears', 'Hood cardigan', 'Winter hood cardigan for male and female \n            ', 6, '../product_categories/Wears/Hood cardigan/mediamodifier-kJXGTOY1wLQ-unsplash.jpg'),
(77, '', 4, 'Wears', 'Hood cardigan', 'Winter hood cardigan for male and female \n            ', 6, '../product_categories/Wears/Hood cardigan/mediamodifier-kJXGTOY1wLQ-unsplash.jpg'),
(78, '', 4, 'Wears', 'Hood cardigan', 'Winter hood cardigan for male and female \n            ', 6, '../product_categories/Wears/Hood cardigan/mediamodifier-kJXGTOY1wLQ-unsplash.jpg'),
(79, '', 4, 'Wears', 'Hood cardigan', 'Winter hood cardigan for male and female \n            ', 6, '../product_categories/Wears/Hood cardigan/mediamodifier-kJXGTOY1wLQ-unsplash.jpg'),
(80, '', 4, 'Wears', 'Hood cardigan', 'Winter hood cardigan for male and female \n            ', 6, '../product_categories/Wears/Hood cardigan/mediamodifier-kJXGTOY1wLQ-unsplash.jpg'),
(81, '', 4, 'Wears', 'Hood cardigan', 'Winter hood cardigan for male and female \n            ', 6, '../product_categories/Wears/Hood cardigan/mediamodifier-kJXGTOY1wLQ-unsplash.jpg'),
(82, '', 4, 'Wears', 'Hood cardigan', 'Winter hood cardigan for male and female \n            ', 6, '../product_categories/Wears/Hood cardigan/mediamodifier-kJXGTOY1wLQ-unsplash.jpg'),
(83, '', 4, 'Wears', 'Hood cardigan', 'Winter hood cardigan for male and female \n            ', 6, '../product_categories/Wears/Hood cardigan/mediamodifier-kJXGTOY1wLQ-unsplash.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_cart`
--
ALTER TABLE `customer_cart`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_cart`
--
ALTER TABLE `customer_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

