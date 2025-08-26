-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2025 at 01:34 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petroleum`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `sn` varchar(50) NOT NULL DEFAULT '1',
  `branch_id` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `branch_status` varchar(50) NOT NULL,
  `location` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `sn`, `branch_id`, `branch_name`, `branch_status`, `location`, `description`, `reg_date`) VALUES
(1, '1', 'ado2891', 'adobranch', 'Active', 'Ado-Ekiti', 'first branch', '2025-07-07 16:36:49'),
(6, '1', 'upstilon592', 'ilawebranch', 'Active', 'ilawe', 'Upstilon Royal Global Petroleum ilawe', '2025-07-30 20:48:53'),
(7, '1', 'upstilon493', 'ibadanbranch', 'Active', 'ibadan', 'Upstilon Royal Global Petroleum Ibadan', '2025-07-30 20:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `id` int(11) NOT NULL,
  `director_id` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`id`, `director_id`, `username`, `password`, `email`, `number`, `reg_date`) VALUES
(1, 'dir1982', 'director', 'director', 'director@gmail.com', '', '2025-07-07 15:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `expenses_id` varchar(50) NOT NULL,
  `expenses_date` varchar(70) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `raw_amount` varchar(70) NOT NULL,
  `expenses_category` varchar(70) NOT NULL,
  `description` varchar(200) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `user_id`, `branch_id`, `expenses_id`, `expenses_date`, `payment_method`, `amount`, `raw_amount`, `expenses_category`, `description`, `reg_date`) VALUES
(6, 'supervisor425', 'ado2891', '20250802_191844812', '2025-08-02', 'Cash', '₦500,000', '500000', 'Staff Salary', 'testing', '2025-08-02 18:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_type`
--

CREATE TABLE `fuel_type` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `fuel` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meter_report`
--

CREATE TABLE `meter_report` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `report_id` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tank` varchar(50) NOT NULL,
  `fuel_type` varchar(50) NOT NULL,
  `opening_dipping` varchar(50) NOT NULL,
  `new_product_received` varchar(50) NOT NULL,
  `approved_new_product` varchar(50) NOT NULL,
  `total_stock` varchar(50) NOT NULL,
  `closing_dipping` varchar(50) NOT NULL,
  `initial_dipping` varchar(50) NOT NULL,
  `liter_sold` varchar(50) NOT NULL,
  `liter_sold_amount` varchar(50) NOT NULL,
  `expected_closing_dipping` varchar(50) NOT NULL,
  `variance_rate` varchar(50) NOT NULL,
  `expected_variance` varchar(50) NOT NULL,
  `variance` varchar(50) NOT NULL,
  `remain` varchar(50) NOT NULL,
  `tover` varchar(50) NOT NULL,
  `rtt` varchar(50) NOT NULL,
  `prices` varchar(50) NOT NULL,
  `total_opening_dipping` varchar(50) NOT NULL,
  `total_new_product_received` varchar(50) NOT NULL,
  `total_tank_stock` varchar(50) NOT NULL,
  `total_liter_sold` varchar(50) NOT NULL,
  `total_liter_sold_amount` varchar(50) NOT NULL,
  `total_expected_closing_dipping` varchar(50) NOT NULL,
  `total_closing_dipping` varchar(50) NOT NULL,
  `total_initial_dipping` varchar(50) NOT NULL,
  `total_expected_variance` varchar(50) NOT NULL,
  `total_variance` varchar(50) NOT NULL,
  `total_remain` varchar(50) NOT NULL,
  `total_over` varchar(50) NOT NULL,
  `total_rtt` varchar(50) NOT NULL,
  `report_date` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meter_report`
--

INSERT INTO `meter_report` (`id`, `branch_id`, `user_id`, `report_id`, `product_id`, `status`, `tank`, `fuel_type`, `opening_dipping`, `new_product_received`, `approved_new_product`, `total_stock`, `closing_dipping`, `initial_dipping`, `liter_sold`, `liter_sold_amount`, `expected_closing_dipping`, `variance_rate`, `expected_variance`, `variance`, `remain`, `tover`, `rtt`, `prices`, `total_opening_dipping`, `total_new_product_received`, `total_tank_stock`, `total_liter_sold`, `total_liter_sold_amount`, `total_expected_closing_dipping`, `total_closing_dipping`, `total_initial_dipping`, `total_expected_variance`, `total_variance`, `total_remain`, `total_over`, `total_rtt`, `report_date`, `reg_date`) VALUES
(192, 'ado2891', 'supervisor425', 'newproduct', 'Prdt715218', 'Approved', 'TANK1', '', '0', '', '30000', '', '', '', '', '', '30000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-08-02', '2025-08-02 18:01:24'),
(193, 'ado2891', 'supervisor425', 'Report_20250802', 'Prdt715218', 'Approved', 'TANK1', 'PMS', '0', '30000', '', '30,000.00', '28,291.32', '1,708.68', '1,658.68', '₦1,658,680.00', '28,341.32', '1', '85.43', '-50.00', '135.43', '0', '0', '1,000', '0.00', '30,000.00', '30,000.00', '1,658.68', '₦1,658,680.00', '28,341.32', '28,291.32', '1,708.68', '85.43', '-50.00', '135.43', '0.00', '0', '2025-08-02', '2025-08-02 18:07:29'),
(194, 'ado2891', 'supervisor425', 'Report_20250802', 'Prdt715218', 'Approved', 'TANK2', 'PMS', '0', '0', '', '0.00', '0', '0.00', '0.00', '₦0.00', '0.00', '1', '0.00', '0.00', '', '0', '0', '1,000', '0.00', '30,000.00', '30,000.00', '1,658.68', '₦1,658,680.00', '28,341.32', '28,291.32', '1,708.68', '85.43', '-50.00', '135.43', '0.00', '0', '2025-08-02', '2025-08-02 18:07:29'),
(195, 'ado2891', 'supervisor425', 'Report_20250802', 'Prdt715218', 'Approved', 'TANK3', 'PMS', '0', '0', '', '0.00', '0', '0.00', '0.00', '₦0.00', '0.00', '1', '0.00', '0.00', '', '0', '0', '1,000', '0.00', '30,000.00', '30,000.00', '1,658.68', '₦1,658,680.00', '28,341.32', '28,291.32', '1,708.68', '85.43', '-50.00', '135.43', '0.00', '0', '2025-08-02', '2025-08-02 18:07:29'),
(196, 'ado2891', 'supervisor425', 'newproduct', 'Prdt547953', 'Approved', 'TANK4', '', '0', '', '10000', '', '', '', '', '', '10000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-08-02', '2025-08-02 18:09:48'),
(197, 'ado2891', 'supervisor425', 'Report_20250802', 'Prdt547953', 'Approved', 'TANK4', 'AGO', '0', '10000', '', '10,000.00', '3,850', '6,150.00', '42.13', '₦47,606.90', '9,957.87', '1', '307.50', '-6,107.87', '6,415.37', '0', '0', '1,130', '0.00', '10,000.00', '10,000.00', '42.13', '₦47,606.90', '9,957.87', '3,850.00', '6,150.00', '307.50', '-6,107.87', '6,415.37', '0.00', '0', '2025-08-02', '2025-08-02 18:12:06'),
(198, 'ado2891', 'supervisor425', 'Report_20250820', 'Prdt547953', 'Approved', 'TANK1', 'PMS', '28,341.32', '0', '', '28,341.32', '27,230.32', '1,111.00', '1,110.00', '₦943,500.00', '27,231.32', '1', '55.55', '-1.00', '56.55', '0', '0', '850', '28,341.32', '0.00', '28,341.32', '1,110.00', '₦943,500.00', '27,231.32', '27,230.32', '1,111.00', '55.55', '-1.00', '56.55', '0.00', '0', '2025-08-20', '2025-08-20 10:42:29'),
(199, 'ado2891', 'supervisor425', 'Report_20250820', 'Prdt547953', 'Approved', 'TANK2', 'PMS', '0.00', '0', '', '0.00', '0', '0.00', '0.00', '₦0.00', '0.00', '1', '0.00', '0.00', '', '0', '0', '850', '28,341.32', '0.00', '28,341.32', '1,110.00', '₦943,500.00', '27,231.32', '27,230.32', '1,111.00', '55.55', '-1.00', '56.55', '0.00', '0', '2025-08-20', '2025-08-20 10:42:29'),
(200, 'ado2891', 'supervisor425', 'Report_20250820', 'Prdt547953', 'Approved', 'TANK3', 'PMS', '0.00', '0', '', '0.00', '0', '0.00', '0.00', '₦0.00', '0.00', '1', '0.00', '0.00', '', '0', '0', '850', '28,341.32', '0.00', '28,341.32', '1,110.00', '₦943,500.00', '27,231.32', '27,230.32', '1,111.00', '55.55', '-1.00', '56.55', '0.00', '0', '2025-08-20', '2025-08-20 10:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `pos`
--

CREATE TABLE `pos` (
  `id` int(11) NOT NULL,
  `sn` int(50) NOT NULL DEFAULT 1,
  `branch_id` varchar(50) NOT NULL,
  `pos_no` varchar(50) NOT NULL,
  `newpos_no` varchar(50) NOT NULL,
  `pos_status` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos`
--

INSERT INTO `pos` (`id`, `sn`, `branch_id`, `pos_no`, `newpos_no`, `pos_status`, `reg_date`) VALUES
(17, 1, 'ado2891', 'A', 'POSA', 'Active', '2025-08-02 17:33:06'),
(18, 1, 'ado2891', 'B', 'POSB', 'Active', '2025-08-02 17:33:09'),
(19, 1, 'ado2891', 'C', 'POSC', 'Active', '2025-08-02 17:33:13'),
(20, 1, 'ado2891', 'D', 'POSD', 'Active', '2025-08-02 17:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `sn` varchar(50) NOT NULL DEFAULT '1',
  `branch_id` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `product_tank_id` varchar(80) NOT NULL,
  `product_type` varchar(50) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `supervisor_id` varchar(50) NOT NULL,
  `record_date` varchar(50) NOT NULL,
  `received_date` varchar(50) NOT NULL,
  `approved_date` varchar(50) NOT NULL,
  `supplier` varchar(200) NOT NULL,
  `product_status` varchar(50) NOT NULL,
  `deststock` varchar(50) NOT NULL,
  `expected_liter` varchar(50) NOT NULL,
  `liter_received` varchar(50) NOT NULL,
  `shortage` varchar(50) NOT NULL,
  `bearshortage` varchar(50) NOT NULL,
  `dipping` varchar(50) NOT NULL,
  `receivedtank` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `paymentstatus` varchar(50) NOT NULL,
  `productpayment_id` varchar(80) NOT NULL,
  `remaining_payment` varchar(50) NOT NULL,
  `expected_dipping` varchar(50) NOT NULL,
  `texpectedremainingdipping` varchar(200) NOT NULL,
  `variance` varchar(50) NOT NULL,
  `variance_rate` varchar(50) NOT NULL,
  `expectedlitersold` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `sn`, `branch_id`, `product_id`, `product_tank_id`, `product_type`, `product_price`, `supervisor_id`, `record_date`, `received_date`, `approved_date`, `supplier`, `product_status`, `deststock`, `expected_liter`, `liter_received`, `shortage`, `bearshortage`, `dipping`, `receivedtank`, `amount`, `paymentstatus`, `productpayment_id`, `remaining_payment`, `expected_dipping`, `texpectedremainingdipping`, `variance`, `variance_rate`, `expectedlitersold`, `description`, `reg_date`) VALUES
(37, '1', 'ado2891', 'Prdt715218', 'Prdt715218tk9690', 'PMS', '920', 'supervisor425', '2025-08-02', '2025-08-02', '2025-08-02', 'fabunmi', 'Approved', '0', '30000', '30000', '0', '0', '30000', '1', '₦27,600,000', 'Pending', 'Prdt715218payment2123', '7600000', '30000', '0', '1500', '1', '31500', 'testing', '2025-08-02 17:57:45'),
(38, '1', 'upstilon592', 'Prdt715218', '', 'PMS', '', '', '2025-08-02', 'Pending', '', '', 'Not-Received', '', '15000', '', 'Pending', 'Pending', 'Pending', 'Pending', 'Pending', 'Pending', '', 'Pending', 'Pending', '', 'Pending', '1', 'Pending', 'testing', '2025-08-02 17:58:06'),
(39, '1', 'ado2891', 'Prdt547953', 'Prdt547953tk5806', 'AGO', '1000', 'supervisor425', '2025-08-02', '2025-08-02', '2025-08-02', 'fabunmi', 'Approved', '0', '10000', '10000', '0', '0', '10000', '1', '₦10,000,000', 'Pending', 'Prdt547953payment7104', '5000000', '10000', '0', '500', '1', '10500', 'testing', '2025-08-02 18:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `product_payment`
--

CREATE TABLE `product_payment` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `productpayment_id` varchar(50) NOT NULL,
  `paid_date` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `amountpaid` varchar(50) NOT NULL,
  `receipt_picture` varchar(200) NOT NULL,
  `receiptdescription` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_payment`
--

INSERT INTO `product_payment` (`id`, `branch_id`, `product_id`, `productpayment_id`, `paid_date`, `payment_method`, `amountpaid`, `receipt_picture`, `receiptdescription`, `reg_date`) VALUES
(16, 'ado2891', 'Prdt715218', 'Prdt715218payment2123', '2025-08-02', 'Transfer', '₦20,000,000', 'Prdt715218payment21232025-08-02.jpg', 'testing', '2025-08-02 18:03:09'),
(17, 'ado2891', 'Prdt547953', 'Prdt547953payment7104', '2025-08-02', 'Transfer', '₦5,000,000', 'Prdt547953payment71042025-08-02.jpg', 'testing', '2025-08-02 18:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `sales_status` varchar(50) NOT NULL,
  `start_sales` varchar(50) NOT NULL,
  `approved_date` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_sales_payment`
--

CREATE TABLE `product_sales_payment` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `report_id` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `cash_amount` varchar(50) NOT NULL,
  `transfer_amount` varchar(50) NOT NULL,
  `pos_amount` varchar(50) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `remaining_balance` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_sales_payment`
--

INSERT INTO `product_sales_payment` (`id`, `branch_id`, `user_id`, `report_id`, `payment_status`, `cash_amount`, `transfer_amount`, `pos_amount`, `payment_date`, `remaining_balance`, `reg_date`) VALUES
(4, 'ado2891', 'accountant408', 'Report_20250802', 'Approved', '400000', '605500', '500000', '2025-08-02 19:15:44', '₦200,786.9', '2025-08-02 18:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_sales_pos`
--

CREATE TABLE `product_sales_pos` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `report_id` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `pos_no` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_sales_pos`
--

INSERT INTO `product_sales_pos` (`id`, `branch_id`, `user_id`, `report_id`, `payment_status`, `pos_no`, `amount`, `reg_date`) VALUES
(13, 'ado2891', 'accountant408', 'Report_20250802', 'Approved', 'POSA', '20000', '2025-08-02 18:16:22'),
(14, 'ado2891', 'accountant408', 'Report_20250802', 'Approved', 'POSB', '100000', '2025-08-02 18:16:22'),
(15, 'ado2891', 'accountant408', 'Report_20250802', 'Approved', 'POSC', '300000', '2025-08-02 18:16:23'),
(16, 'ado2891', 'accountant408', 'Report_20250802', 'Approved', 'POSD', '80000', '2025-08-02 18:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_tank`
--

CREATE TABLE `product_tank` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `product_tank_id` varchar(80) NOT NULL,
  `sn` varchar(50) NOT NULL DEFAULT '1',
  `recorded_date` varchar(50) NOT NULL,
  `tank_no` varchar(50) NOT NULL,
  `deststock` varchar(50) NOT NULL,
  `variance` varchar(50) NOT NULL,
  `diping` varchar(50) NOT NULL,
  `total_stock` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_tank`
--

INSERT INTO `product_tank` (`id`, `branch_id`, `user_id`, `product_id`, `product_tank_id`, `sn`, `recorded_date`, `tank_no`, `deststock`, `variance`, `diping`, `total_stock`, `description`, `reg_date`) VALUES
(35, 'ado2891', 'supervisor425', 'Prdt715218', 'Prdt715218tk9690', '1', '2025-08-02', 'TANK1', '0', '1500', '30000', '30000', 'testing', '2025-08-02 18:01:24'),
(36, 'ado2891', 'supervisor425', 'Prdt547953', 'Prdt547953tk5806', '1', '2025-08-02', 'TANK4', '0', '500', '10000', '10000', 'testing', '2025-08-02 18:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_tank_pump`
--

CREATE TABLE `product_tank_pump` (
  `id` int(50) NOT NULL,
  `branch_id` varchar(100) NOT NULL,
  `product_tank_id` varchar(200) NOT NULL,
  `tank_no` varchar(50) NOT NULL,
  `pumpno` varchar(50) NOT NULL,
  `meter` varchar(50) NOT NULL,
  `pumpimg` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_tank_pump`
--

INSERT INTO `product_tank_pump` (`id`, `branch_id`, `product_tank_id`, `tank_no`, `pumpno`, `meter`, `pumpimg`, `description`, `reg_date`) VALUES
(65, 'ado2891', 'Prdt715218tk9690', 'TANK1', 'PMS1', '483032.94', '2025-08-02Prdt715218tk9690PMS1.jpg', 'TANK1-PMS1', '2025-08-02 18:01:24'),
(66, 'ado2891', 'Prdt715218tk9690', 'TANK1', 'PMS2', '793228.12', '2025-08-02Prdt715218tk9690PMS2.jpg', 'TANK1-PMS2', '2025-08-02 18:01:24'),
(67, 'ado2891', 'Prdt547953tk5806', 'TANK4', 'AGO5', '440440.12', '2025-08-02Prdt547953tk5806AGO5.jpg', 'TANK4-AGO5', '2025-08-02 18:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `pump`
--

CREATE TABLE `pump` (
  `id` int(11) NOT NULL,
  `sn` varchar(50) NOT NULL DEFAULT '1',
  `branch_id` varchar(50) NOT NULL,
  `pump_no` varchar(50) NOT NULL,
  `pump_status` varchar(50) NOT NULL,
  `fuel_type` varchar(50) NOT NULL,
  `tank` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pump`
--

INSERT INTO `pump` (`id`, `sn`, `branch_id`, `pump_no`, `pump_status`, `fuel_type`, `tank`, `reg_date`) VALUES
(2, '1', 'ado2891', 'PMS1', 'Active', 'PMS', 'TANK4', '2025-07-09 17:39:18'),
(3, '1', 'ado2891', 'PMS2', 'Active', 'PMS', 'TANK1', '2025-07-09 17:40:53'),
(4, '1', 'ado2891', 'PMS3', 'Active', 'PMS', 'TANK2', '2025-07-09 17:40:59'),
(5, '1', 'ado2891', 'PMS4', 'Active', 'PMS', 'TANK3', '2025-07-09 18:00:59'),
(9, '1', 'ado2891', 'AGO5', 'Active', 'AGO', 'TANK4', '2025-07-24 23:17:45'),
(13, '1', 'upstilon592', 'PMS1', 'Active', 'PMS', '', '2025-07-31 12:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `pumpdipping`
--

CREATE TABLE `pumpdipping` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `recorded_date` varchar(50) NOT NULL,
  `pump_picture` varchar(200) NOT NULL,
  `pumpno` varchar(50) NOT NULL,
  `variance` varchar(100) NOT NULL,
  `diping` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pump_meter_report`
--

CREATE TABLE `pump_meter_report` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `report_id` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `fuel_type` varchar(50) NOT NULL,
  `tank` varchar(50) NOT NULL,
  `pump` varchar(50) NOT NULL,
  `opening_meter` varchar(50) NOT NULL,
  `closing_meter` varchar(50) NOT NULL,
  `initial_liter_sold` varchar(50) NOT NULL,
  `initial_liter_sold_amount` varchar(50) NOT NULL,
  `meter_picture` varchar(100) NOT NULL,
  `total_opening_meter` varchar(50) NOT NULL,
  `total_closing_meter` varchar(50) NOT NULL,
  `total_initial_liter_sold` varchar(50) NOT NULL,
  `report_date` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pump_meter_report`
--

INSERT INTO `pump_meter_report` (`id`, `branch_id`, `user_id`, `report_id`, `product_id`, `status`, `fuel_type`, `tank`, `pump`, `opening_meter`, `closing_meter`, `initial_liter_sold`, `initial_liter_sold_amount`, `meter_picture`, `total_opening_meter`, `total_closing_meter`, `total_initial_liter_sold`, `report_date`, `reg_date`) VALUES
(441, 'ado2891', 'supervisor425', 'newproduct', 'Prdt715218', 'Approved', '', 'TANK1', 'PMS1', '0', '483032.94', '', '', '', '', '', '', '2025-08-02', '2025-08-02 18:01:24'),
(442, 'ado2891', 'supervisor425', 'newproduct', 'Prdt715218', 'Approved', '', 'TANK1', 'PMS2', '0', '793228.12', '', '', '', '', '', '', '2025-08-02', '2025-08-02 18:01:24'),
(443, 'ado2891', 'supervisor425', 'Report_20250802', 'Prdt715218', 'Approved', 'PMS', 'TANK1', 'PMS1', '483032.94', '484,503.99', '1,471.05', '₦1,471,050.00', 'TANK1_PMS1_Report_20250802.jpg', '1,276,261.06', '1,277,919.74', '1,658.68', '2025-08-02', '2025-08-02 18:07:29'),
(444, 'ado2891', 'supervisor425', 'Report_20250802', 'Prdt715218', 'Approved', 'PMS', 'TANK1', 'PMS2', '793228.12', '793,415.75', '187.63', '₦187,630.00', 'TANK1_PMS2_Report_20250802.jpg', '1,276,261.06', '1,277,919.74', '1,658.68', '2025-08-02', '2025-08-02 18:07:29'),
(445, 'ado2891', 'supervisor425', 'Report_20250802', 'Prdt715218', 'Approved', 'PMS', 'TANK2', 'PMS3', '0', '0', '0.00', '₦0.00', 'TANK2_PMS3_Report_20250802.jpg', '1,276,261.06', '1,277,919.74', '1,658.68', '2025-08-02', '2025-08-02 18:07:29'),
(446, 'ado2891', 'supervisor425', 'Report_20250802', 'Prdt715218', 'Approved', 'PMS', 'TANK2', 'PMS4', '0', '0', '0.00', '₦0.00', 'TANK2_PMS4_Report_20250802.jpg', '1,276,261.06', '1,277,919.74', '1,658.68', '2025-08-02', '2025-08-02 18:07:29'),
(447, 'ado2891', 'supervisor425', 'Report_20250802', 'Prdt715218', 'Approved', 'PMS', 'TANK3', 'PMS1', '0', '0', '0.00', '₦0.00', 'TANK3_PMS1_Report_20250802.jpg', '1,276,261.06', '1,277,919.74', '1,658.68', '2025-08-02', '2025-08-02 18:07:29'),
(448, 'ado2891', 'supervisor425', 'Report_20250802', 'Prdt715218', 'Approved', 'PMS', 'TANK3', 'PMS3', '0', '0', '0.00', '₦0.00', 'TANK3_PMS3_Report_20250802.jpg', '1,276,261.06', '1,277,919.74', '1,658.68', '2025-08-02', '2025-08-02 18:07:29'),
(449, 'ado2891', 'supervisor425', 'Report_20250802', 'Prdt715218', 'Approved', 'PMS', 'TANK3', 'PMS4', '0', '0', '0.00', '₦0.00', 'TANK3_PMS4_Report_20250802.jpg', '1,276,261.06', '1,277,919.74', '1,658.68', '2025-08-02', '2025-08-02 18:07:29'),
(450, 'ado2891', 'supervisor425', 'newproduct', 'Prdt547953', 'Approved', '', 'TANK4', 'AGO5', '0', '440440.12', '', '', '', '', '', '', '2025-08-02', '2025-08-02 18:09:48'),
(451, 'ado2891', 'supervisor425', 'Report_20250802', 'Prdt547953', 'Approved', 'AGO', 'TANK4', 'AGO5', '440440.12', '440,482.25', '42.13', '₦47,606.90', 'TANK4_AGO5_Report_20250802.jpg', '440,440.12', '440,482.25', '42.13', '2025-08-02', '2025-08-02 18:12:06'),
(452, 'ado2891', 'supervisor425', 'Report_20250820', 'Prdt547953', 'Approved', 'PMS', 'TANK1', 'PMS1', '483032.94', '483,042.94', '10.00', '₦8,500.00', 'TANK1_PMS1_Report_20250820.jpg', '1,276,261.06', '1,277,371.06', '1,110.00', '2025-08-20', '2025-08-20 10:42:29'),
(453, 'ado2891', 'supervisor425', 'Report_20250820', 'Prdt547953', 'Approved', 'PMS', 'TANK1', 'PMS2', '793228.12', '794,328.12', '1,100.00', '₦935,000.00', 'TANK1_PMS2_Report_20250820.jpg', '1,276,261.06', '1,277,371.06', '1,110.00', '2025-08-20', '2025-08-20 10:42:29'),
(454, 'ado2891', 'supervisor425', 'Report_20250820', 'Prdt547953', 'Approved', 'PMS', 'TANK2', 'PMS3', '0', '0', '0.00', '₦0.00', 'TANK2_PMS3_Report_20250820.jpg', '1,276,261.06', '1,277,371.06', '1,110.00', '2025-08-20', '2025-08-20 10:42:29'),
(455, 'ado2891', 'supervisor425', 'Report_20250820', 'Prdt547953', 'Approved', 'PMS', 'TANK2', 'PMS4', '0', '0', '0.00', '₦0.00', 'TANK2_PMS4_Report_20250820.jpg', '1,276,261.06', '1,277,371.06', '1,110.00', '2025-08-20', '2025-08-20 10:42:29'),
(456, 'ado2891', 'supervisor425', 'Report_20250820', 'Prdt547953', 'Approved', 'PMS', 'TANK3', 'PMS1', '0', '0', '0.00', '₦0.00', 'TANK3_PMS1_Report_20250820.jpg', '1,276,261.06', '1,277,371.06', '1,110.00', '2025-08-20', '2025-08-20 10:42:29'),
(457, 'ado2891', 'supervisor425', 'Report_20250820', 'Prdt547953', 'Approved', 'PMS', 'TANK3', 'PMS3', '0', '0', '0.00', '₦0.00', 'TANK3_PMS3_Report_20250820.jpg', '1,276,261.06', '1,277,371.06', '1,110.00', '2025-08-20', '2025-08-20 10:42:29'),
(458, 'ado2891', 'supervisor425', 'Report_20250820', 'Prdt547953', 'Approved', 'PMS', 'TANK3', 'PMS4', '0', '0', '0.00', '₦0.00', 'TANK3_PMS4_Report_20250820.jpg', '1,276,261.06', '1,277,371.06', '1,110.00', '2025-08-20', '2025-08-20 10:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `pump_tank_map`
--

CREATE TABLE `pump_tank_map` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `tank` varchar(50) NOT NULL,
  `pump` varchar(50) NOT NULL,
  `ptstatus` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pump_tank_map`
--

INSERT INTO `pump_tank_map` (`id`, `branch_id`, `tank`, `pump`, `ptstatus`, `reg_date`) VALUES
(1, 'ado2891', 'TANK1', 'PMS1', '', '2025-07-15 07:38:37'),
(2, 'ado2891', 'TANK1', 'PMS2', '', '2025-07-15 07:39:01'),
(3, 'ado2891', 'TANK2', 'PMS3', '', '2025-07-15 07:52:48'),
(4, 'ado2891', 'TANK2', 'PMS4', '', '2025-07-15 07:58:07'),
(5, 'ado2891', 'TANK3', 'PMS1', '', '2025-07-15 07:59:02'),
(6, 'ado2891', 'TANK3', 'PMS3', '', '2025-07-15 07:59:57'),
(9, 'ado2891', 'TANK3', 'PMS4', 'Active', '2025-07-29 11:25:04'),
(11, 'ado2891', 'TANK4', 'AGO5', 'Active', '2025-08-01 08:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `sales_id` varchar(50) NOT NULL,
  `pumpno` varchar(50) NOT NULL,
  `tankno` varchar(50) NOT NULL,
  `new_product_received` varchar(50) NOT NULL,
  `total_stock` varchar(50) NOT NULL,
  `tank` varchar(50) NOT NULL,
  `pump` varchar(50) NOT NULL,
  `opening_dipping` decimal(50,2) NOT NULL,
  `closing_dipping` decimal(50,2) NOT NULL,
  `opening_meter` decimal(50,2) NOT NULL,
  `closing_meter` decimal(50,2) NOT NULL,
  `initial_liter_sold` varchar(100) NOT NULL,
  `liter_sold` varchar(50) NOT NULL,
  `price_per_litre` varchar(50) NOT NULL,
  `expected_closing_dipping` varchar(50) NOT NULL,
  `initial_dipping` varchar(50) NOT NULL,
  `expected_variance` varchar(50) NOT NULL,
  `variance` varchar(50) NOT NULL,
  `remain` varchar(50) NOT NULL,
  `vover` varchar(50) NOT NULL,
  `rtt` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sumary_report`
--

CREATE TABLE `sumary_report` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `report_id` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `fuel_type` varchar(50) NOT NULL,
  `total_opening_dipping` varchar(50) NOT NULL,
  `total_new_product_received` varchar(50) NOT NULL,
  `total_tank_stock` varchar(50) NOT NULL,
  `total_liter_sold` varchar(50) NOT NULL,
  `total_liter_sold_amount` varchar(50) NOT NULL,
  `cash_amount` varchar(100) NOT NULL,
  `pos_amount` varchar(100) NOT NULL,
  `transfer_amount` varchar(100) NOT NULL,
  `remaining_balance` varchar(100) NOT NULL,
  `total_expected_closing_dipping` varchar(50) NOT NULL,
  `total_closing_dipping` varchar(50) NOT NULL,
  `total_initial_dipping` varchar(100) NOT NULL,
  `total_expected_variance` varchar(50) NOT NULL,
  `total_variance` varchar(50) NOT NULL,
  `total_remain` varchar(50) NOT NULL,
  `total_over` varchar(50) NOT NULL,
  `total_rtt` varchar(50) NOT NULL,
  `report_date` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sumary_report`
--

INSERT INTO `sumary_report` (`id`, `branch_id`, `user_id`, `report_id`, `product_id`, `status`, `payment_status`, `fuel_type`, `total_opening_dipping`, `total_new_product_received`, `total_tank_stock`, `total_liter_sold`, `total_liter_sold_amount`, `cash_amount`, `pos_amount`, `transfer_amount`, `remaining_balance`, `total_expected_closing_dipping`, `total_closing_dipping`, `total_initial_dipping`, `total_expected_variance`, `total_variance`, `total_remain`, `total_over`, `total_rtt`, `report_date`, `reg_date`) VALUES
(18, 'ado2891', 'supervisor425', 'Report_20250802', 'Prdt715218', 'Approved', 'Approved', 'PMS', '0.00', '30,000.00', '30,000.00', '1,658.68', '₦1,658,680.00', '', '', '', '', '28,341.32', '28,291.32', '1,708.68', '85.43', '-50.00', '135.43', '0.00', '0', '2025-08-02', '2025-08-02 18:07:29'),
(19, 'ado2891', 'supervisor425', 'Report_20250802', 'Prdt547953', 'Approved', 'Approved', 'AGO', '0.00', '10,000.00', '10,000.00', '42.13', '₦47,606.90', '', '', '', '', '9,957.87', '3,850.00', '6,150.00', '307.50', '-6,107.87', '6,415.37', '0.00', '0', '2025-08-02', '2025-08-02 18:12:06'),
(20, 'ado2891', 'supervisor425', 'Report_20250820', 'Prdt547953', 'Approved', '', 'PMS', '28,341.32', '0.00', '28,341.32', '1,110.00', '₦943,500.00', '', '', '', '', '27,231.32', '27,230.32', '1,111.00', '55.55', '-1.00', '56.55', '0.00', '0', '2025-08-20', '2025-08-20 10:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `tank`
--

CREATE TABLE `tank` (
  `id` int(11) NOT NULL,
  `sn` varchar(50) NOT NULL DEFAULT '1',
  `branch_id` varchar(200) NOT NULL,
  `tank_no` varchar(50) NOT NULL,
  `newtank_no` varchar(50) NOT NULL,
  `fuel_stored` varchar(50) NOT NULL,
  `tankstatus` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tank`
--

INSERT INTO `tank` (`id`, `sn`, `branch_id`, `tank_no`, `newtank_no`, `fuel_stored`, `tankstatus`, `reg_date`) VALUES
(1, '1', 'ado2891', '001', 'TANK1', 'PMS', 'Active', '2025-07-11 14:58:36'),
(2, '1', 'ado2891', '002', 'TANK2', 'PMS', 'Active', '2025-07-11 15:11:03'),
(3, '1', 'ado2891', '003', 'TANK3', 'PMS', 'Active', '2025-07-11 15:12:30'),
(4, '1', 'ado2891', '004', 'TANK4', 'AGO', 'Active', '2025-07-11 15:12:38'),
(15, '1', 'ado2891', '005', 'TANK5', 'PMS', 'Active', '2025-08-22 15:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `sn` varchar(50) DEFAULT '1',
  `user_type` varchar(50) NOT NULL,
  `user_status` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `branch_id`, `user_id`, `sn`, `user_type`, `user_status`, `username`, `password`, `email`, `number`, `reg_date`) VALUES
(1, 'ado2891', 'supervisor425', '1', 'supervisor', 'Active', 'supervisor', 'supervisor', 'supervisor@gmail.com', '091728191212', '2025-07-08 11:40:26'),
(2, 'ado2891', 'manager486', '1', 'manager', 'Not-Active', 'manager', 'manager', 'manager@gmail.com', '08162781726', '2025-07-08 11:41:57'),
(3, 'ado2891', 'accountant408', '1', 'accountant', 'Active', 'accountant', 'accountant', 'accountant@gmail.com', '091728191223', '2025-07-29 07:19:18'),
(6, 'upstilon592', 'supervisor72668', '1', 'supervisor', 'Active', 'victor', 'adesco12', 'victor@gmail.com', '09129204853', '2025-07-30 23:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `variance`
--

CREATE TABLE `variance` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `variance` varchar(50) NOT NULL,
  `previousupdatedate` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variance`
--

INSERT INTO `variance` (`id`, `branch_id`, `variance`, `previousupdatedate`, `reg_date`) VALUES
(1, 'ado2891', '1', '2025-07-09', '2025-07-07 22:14:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuel_type`
--
ALTER TABLE `fuel_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meter_report`
--
ALTER TABLE `meter_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_payment`
--
ALTER TABLE `product_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales_payment`
--
ALTER TABLE `product_sales_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales_pos`
--
ALTER TABLE `product_sales_pos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tank`
--
ALTER TABLE `product_tank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tank_pump`
--
ALTER TABLE `product_tank_pump`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pump`
--
ALTER TABLE `pump`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pumpdipping`
--
ALTER TABLE `pumpdipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pump_meter_report`
--
ALTER TABLE `pump_meter_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pump_tank_map`
--
ALTER TABLE `pump_tank_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sumary_report`
--
ALTER TABLE `sumary_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tank`
--
ALTER TABLE `tank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variance`
--
ALTER TABLE `variance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fuel_type`
--
ALTER TABLE `fuel_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meter_report`
--
ALTER TABLE `meter_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `product_payment`
--
ALTER TABLE `product_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_sales_payment`
--
ALTER TABLE `product_sales_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_sales_pos`
--
ALTER TABLE `product_sales_pos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_tank`
--
ALTER TABLE `product_tank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_tank_pump`
--
ALTER TABLE `product_tank_pump`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `pump`
--
ALTER TABLE `pump`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pumpdipping`
--
ALTER TABLE `pumpdipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pump_meter_report`
--
ALTER TABLE `pump_meter_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT for table `pump_tank_map`
--
ALTER TABLE `pump_tank_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sumary_report`
--
ALTER TABLE `sumary_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tank`
--
ALTER TABLE `tank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `variance`
--
ALTER TABLE `variance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
