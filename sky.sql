create  database electronics;
use electronics;


-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `added_date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--
 INSERT INTO `admin` (`id`, `added_date`, `email`, `password`, `name`) VALUES
(1, '2020-05-16 00:46:08', 'skycoding@gmail.com', '123456', 'Shivam');



-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `mrp_price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `contact_date` datetime NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `name` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `added_date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `valid` bit(1) NOT NULL,
  `pin_code` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `amount` double NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_address_type` varchar(15) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_phone` varchar(10) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_num` int(11) NOT NULL,
  `pin_code` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL,
  `amount` double NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_status` varchar(25) NOT NULL,
  `mrp_price` double NOT NULL,
  `payment_mode` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `code` varchar(5) NOT NULL,
  `create_date` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `mrp_price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--


INSERT INTO `product` (`id`, `active`, `code`, `create_date`, `description`, `image`, `name`, `price`, `mrp_price`) VALUES
(1, b'1', 'P1', '2022-05-15 02:58:36', 'boAt Wave Lite Smartwatch with 1.69 Inches HD Display, Sleek Metal Body, HR & SpO2 Level Monitor, 140+ Watch Faces, Activity Tracker, Multiple Sports Modes, IP68 & 7 Days Battery Life(Active Black)', '/resources/w1.jpg', 'boAt Wave Lite Smartwatch ', 4590, 5009),
(2, b'1', 'P2', '2022-05-15 02:58:36', 'Noise Xtend Smartwatch with Alexa Built-in, 1.69” HD Display, Multiple Watch Faces, Stress Monitor, Heart & SpO2 Monitoring, 14 Sports Modes, Sleep Monitor, 5 ATM & 7 Days Battery(Sandy Cream)', '/resources/w2.jpg', 'Noise xTend smartwatch ', 2950, 3090),
(3, b'1', 'P3', '2022-05-15 02:58:36', 'Noise ColorFit Pulse Spo2 Smart Watch with 10 days battery life, 60+ Watch Faces, 1.4" Full Touch HD Display Smartwatch, 24*7 Heart Rate Monitor Smart Band, Sleep Monitoring Smart Watches for Men and Women & IP68 Waterproof (Jet Black)', '/resources/w3.jpg', 'Noise ColorFit Pulse ', 1850, 2390),
(4, b'1', 'P4', '2022-05-15 02:58:36', 'boAt Xtend Smartwatch with Alexa Built-in, 1.69” HD Display, Multiple Watch Faces, Stress Monitor, Heart & SpO2 Monitoring, 14 Sports Modes, Sleep Monitor, 5 ATM & 7 Days Battery(Pitch Black)', '/resources/w4.jpg', 'boAt Xtend Smartwatch ', 3850, 4290),
(5, b'1', 'P5', '2022-05-15 02:58:36', '8Gb Ram/512Gb Ssd 15 Inches (39.6 Cm) Fhd, Micro-Edge, Anti-Glare Display/Alexa Built-In/Windows 11 Home/Uhd Graphics/Dual Speakers/ Ms Office, 15S- Fq2627Tu, Jet Black', '/resources/hp1.jpg', 'Hp 15S, 11Th Gen Intel Core I3', 39850, 42990),
(6, b'1', 'P6', '2022-05-15 02:58:36', '15.6 Inches Fhd Anti-Glare Display Laptop (8Gb Ram/512Gb Ssd Micro-Edge/Iris Xe Graphics/Backlit Keyboard/Windows 11 Home/Alexa/Dual Speakers/Mso, 15S- Fq4021Tu, 1.69Kg)', '/resources/hp2.jpg', 'Hp 15S 11Th Gen Intel Core I5', 52850, 56990),
(7, b'1', 'P7', '2022-05-15 02:58:36', 'Blue,4GB RAM, 64GB Storage) 6000 mAh with 8nm Processor | True 48 MP Quad Camera | 90Hz Refresh Rate ', '/resources/sam1.jpg', ' Samsung Galaxy M12', 11850, 13990),
(8, b'1', 'P8', '2022-05-15 02:58:36', '8Gb Ram/256Gb Ssd 14 Inches Fhd,Micro-Edge,Anti-Glare,IPS Display/Uhd Graphics/ Windows 11 Home/ Ms Office/ Alexa Built-in/ 1.46Kg/ Natural Silver - 14S-Dy2506Tu', '/resources/hp3.jpg', ' Hp 14S 11Th Gen Intel Core I3', 39850, 42990),
(9, b'1', 'P9', '2022-05-15 02:58:36', 'Gray Shadow, 8GB RAM, 128GB Storage', '/resources/one1.jpg', 'OnePlus Nord 2T 5G ', 28850, 30990),
(10, b'1', 'P10', '2022-05-15 02:58:36', 'Gray Shadow, 6GB RAM, 128GB Storage', '/resources/v1.jpg', 'Vivo T1 5G ', 18850, 20990);



--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_c0r9atamxvbhjjvy5j8da1kam` (`email`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CART_CUST_FK` (`customer_id`),
  ADD KEY `CART_PROD_FK` (`product_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_dwk6cx0afu8bs9o4t536v1j5v` (`email`),
  ADD UNIQUE KEY `UK_o3uty20c6csmx5y4uk2tc5r4m` (`phone`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_o6e714ot0hclyvhlcte6vc4mr` (`order_num`),
  ADD UNIQUE KEY `UKo6e714ot0hclyvhlcte6vc4mr` (`order_num`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ORDER_DETAIL_ORD_FK` (`order_id`),
  ADD KEY `ORDER_DETAIL_PROD_FK` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_h3w5r1mx6d0e5c6um32dgyjej` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

