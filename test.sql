-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 02:46 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `bracelet`
--

CREATE TABLE `bracelet` (
  `b_prod_id` int(10) NOT NULL,
  `prod_name` varchar(20) DEFAULT NULL,
  `prod_color` varchar(20) DEFAULT NULL,
  `prod_weight` varchar(20) DEFAULT NULL,
  `b_cus_id` int(10) DEFAULT NULL,
  `b_cost` varchar(20) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bracelet`
--

INSERT INTO `bracelet` (`b_prod_id`, `prod_name`, `prod_color`, `prod_weight`, `b_cus_id`, `b_cost`, `images`) VALUES
(45801, 'diamond_cut', 'gold', '15.5g', 30169, '50000/-', 'prod_images\\brac_4.jpg'),
(56208, 'round_stoned', 'gold', '13.5g', 83456, '10000/-', 'prod_images\\brac_2.jpg'),
(78905, 'embro_cut', 'gold', '12.5g', 83456, '10000/-', 'prod_images\\brac_1.jpg'),
(85041, 'italian_style', 'gold', '10.5g', 30169, '10000/-', 'prod_images\\brac_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `chain`
--

CREATE TABLE `chain` (
  `c_prod_id` int(10) NOT NULL,
  `prod_name` varchar(20) DEFAULT NULL,
  `prod_color` varchar(20) DEFAULT NULL,
  `prod_weight` varchar(20) DEFAULT NULL,
  `c_cus_id` int(10) DEFAULT NULL,
  `c_cost` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chain`
--

INSERT INTO `chain` (`c_prod_id`, `prod_name`, `prod_color`, `prod_weight`, `c_cus_id`, `c_cost`) VALUES
(45787, 'rolled-design', 'gold', '14.5g', 83456, '25000/-');

-- --------------------------------------------------------

--
-- Table structure for table `costumer`
--

CREATE TABLE `costumer` (
  `cus_id` int(10) NOT NULL,
  `cus_ph` int(10) DEFAULT NULL,
  `cus_name` varchar(20) DEFAULT NULL,
  `cus_add` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `costumer`
--

INSERT INTO `costumer` (`cus_id`, `cus_ph`, `cus_name`, `cus_add`, `password`, `email`) VALUES
(30169, 2147483647, 'vasavi', '4063,Sunrise villa,3', 'aiml123', 'vasavirk@gmail.com'),
(35219, 2147483647, 'Ravikumar', 'sunrise villa', 'ravi123', 'ysrk.sunrise@gmail.com'),
(45920, 636685139, 'PRISHA VUTTI', 'BSK 2ND STAGE', 'vutti123', 'prisha1529@gmail.com'),
(61520, 64213156, 'P B SWAROOP', 'bsk', 'fgdt345', 'pbs.dsce2001@gmail.com'),
(75406, 2147483647, 'VARUNIHA M', 'BSK 3RD STAGE', 'varu123', 'varunihamanjunatha3@gmail.com'),
(83456, 2147483647, 'tejal', 'sunrise villa', 'tejal12', 'tejal@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `earstuds`
--

CREATE TABLE `earstuds` (
  `e_prod_id` int(10) NOT NULL,
  `prod_name` varchar(20) DEFAULT NULL,
  `prod_color` varchar(20) DEFAULT NULL,
  `prod_weight` varchar(20) DEFAULT NULL,
  `e_cus_id` int(10) DEFAULT NULL,
  `e_cost` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `earstuds`
--

INSERT INTO `earstuds` (`e_prod_id`, `prod_name`, `prod_color`, `prod_weight`, `e_cus_id`, `e_cost`) VALUES
(54435, 'navarathna', 'gold', '20g', 83456, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `o_prod_id` int(10) DEFAULT NULL,
  `o_cus_id` int(10) DEFAULT NULL,
  `date_orders` date DEFAULT NULL,
  `o_cost` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `o_prod_id`, `o_cus_id`, `date_orders`, `o_cost`) VALUES
(123, 87584, 83456, '0000-00-00', 24000);

-- --------------------------------------------------------

--
-- Table structure for table `ring`
--

CREATE TABLE `ring` (
  `r_prod_id` int(10) NOT NULL,
  `prod_name` varchar(20) DEFAULT NULL,
  `prod_color` varchar(20) DEFAULT NULL,
  `prod_weight` varchar(20) DEFAULT NULL,
  `r_cus_id` int(10) DEFAULT NULL,
  `r_cost` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ring`
--

INSERT INTO `ring` (`r_prod_id`, `prod_name`, `prod_color`, `prod_weight`, `r_cus_id`, `r_cost`) VALUES
(87584, 'couple-ring', 'gold', '10g', 83456, 24000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bracelet`
--
ALTER TABLE `bracelet`
  ADD PRIMARY KEY (`b_prod_id`),
  ADD KEY `b_cus_id` (`b_cus_id`);

--
-- Indexes for table `chain`
--
ALTER TABLE `chain`
  ADD PRIMARY KEY (`c_prod_id`),
  ADD KEY `c_cus_id` (`c_cus_id`);

--
-- Indexes for table `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `earstuds`
--
ALTER TABLE `earstuds`
  ADD PRIMARY KEY (`e_prod_id`),
  ADD KEY `e_cus_id` (`e_cus_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `o_cus_id` (`o_cus_id`);

--
-- Indexes for table `ring`
--
ALTER TABLE `ring`
  ADD PRIMARY KEY (`r_prod_id`),
  ADD KEY `r_cus_id` (`r_cus_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bracelet`
--
ALTER TABLE `bracelet`
  ADD CONSTRAINT `bracelet_ibfk_1` FOREIGN KEY (`b_cus_id`) REFERENCES `costumer` (`cus_id`) ON DELETE CASCADE;

--
-- Constraints for table `chain`
--
ALTER TABLE `chain`
  ADD CONSTRAINT `chain_ibfk_1` FOREIGN KEY (`c_cus_id`) REFERENCES `costumer` (`cus_id`) ON DELETE CASCADE;

--
-- Constraints for table `earstuds`
--
ALTER TABLE `earstuds`
  ADD CONSTRAINT `earstuds_ibfk_1` FOREIGN KEY (`e_cus_id`) REFERENCES `costumer` (`cus_id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`o_cus_id`) REFERENCES `costumer` (`cus_id`) ON DELETE CASCADE;

--
-- Constraints for table `ring`
--
ALTER TABLE `ring`
  ADD CONSTRAINT `ring_ibfk_1` FOREIGN KEY (`r_cus_id`) REFERENCES `costumer` (`cus_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
