-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2022 at 08:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_lists`
--

CREATE TABLE `account_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double NOT NULL DEFAULT 0,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_payment_settings`
--

CREATE TABLE `admin_payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_payment_settings`
--

INSERT INTO `admin_payment_settings` (`id`, `name`, `value`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'is_stripe_enabled', 'off', 1, NULL, NULL),
(2, 'is_paypal_enabled', 'on', 1, NULL, NULL),
(3, 'paypal_mode', 'sandbox', 1, NULL, NULL),
(4, 'paypal_client_id', 'sb-hugq21077956@business.example.com', 1, NULL, NULL),
(5, 'paypal_secret_key', 'access_token$sandbox$3fy86pdmrd8mrfvw$8ac66c03f64bf91a8c333c138869fc30', 1, NULL, NULL),
(6, 'is_paystack_enabled', 'off', 1, NULL, NULL),
(7, 'is_flutterwave_enabled', 'off', 1, NULL, NULL),
(8, 'is_razorpay_enabled', 'off', 1, NULL, NULL),
(9, 'is_mercado_enabled', 'off', 1, NULL, NULL),
(10, 'is_paytm_enabled', 'off', 1, NULL, NULL),
(11, 'is_mollie_enabled', 'off', 1, NULL, NULL),
(12, 'is_skrill_enabled', 'off', 1, NULL, NULL),
(13, 'is_coingate_enabled', 'off', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `allowances`
--

CREATE TABLE `allowances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `allowance_option` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allowance_options`
--

CREATE TABLE `allowance_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcement_employees`
--

CREATE TABLE `announcement_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appraisals`
--

CREATE TABLE `appraisals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL DEFAULT 0,
  `employee` int(11) NOT NULL DEFAULT 0,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appraisal_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_experience` int(11) NOT NULL DEFAULT 0,
  `marketing` int(11) NOT NULL DEFAULT 0,
  `administration` int(11) NOT NULL DEFAULT 0,
  `professionalism` int(11) NOT NULL DEFAULT 0,
  `integrity` int(11) NOT NULL DEFAULT 0,
  `attendance` int(11) NOT NULL DEFAULT 0,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `supported_date` date NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_employees`
--

CREATE TABLE `attendance_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_in` time NOT NULL,
  `clock_out` time NOT NULL,
  `late` time NOT NULL,
  `early_leaving` time NOT NULL,
  `overtime` time NOT NULL,
  `total_rest` time NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `award_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `gift` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `award_types`
--

CREATE TABLE `award_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Main', 2, '2022-01-13 12:02:16', '2022-01-13 12:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_policies`
--

CREATE TABLE `company_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `competencies`
--

CREATE TABLE `competencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complaint_from` int(11) NOT NULL,
  `complaint_against` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `limit` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_questions`
--

CREATE TABLE `custom_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deduction_options`
--

CREATE TABLE `deduction_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `branch_id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'ICT', 2, '2022-01-13 12:02:37', '2022-01-13 12:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `income_category_id` int(11) NOT NULL,
  `payer_id` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `referal_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `department_id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Database Manager', 2, '2022-01-13 12:03:04', '2022-01-13 12:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ducument_uploads`
--

CREATE TABLE `ducument_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `company_doj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_identifier_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_payer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_type` int(11) DEFAULT NULL,
  `salary` double DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `name`, `dob`, `gender`, `phone`, `address`, `email`, `password`, `employee_id`, `branch_id`, `department_id`, `designation_id`, `company_doj`, `documents`, `account_holder_name`, `account_number`, `bank_name`, `bank_identifier_code`, `branch_location`, `tax_payer_id`, `salary_type`, `salary`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 4, 'Ray', '2022-01-13', 'Male', '072000000', 'Lavington, Nairobi.', 'ray@example.com', '$2y$10$tJAoXYRrHoOmQV/HJQ5N0OOcRPvFWi1cLP7IivP14.2kNQyRNsrxe', '1', 1, 1, 1, '2022-01-13', NULL, 'Ray Ray', '34567', 'Abc', '23456', 'Nairobi', '456', NULL, 0, 1, 2, '2022-01-13 12:04:50', '2022-01-13 12:04:50'),
(2, 5, 'Jay Kay', '2022-01-15', 'Male', '0708834885', '00100', 'jay@example.com', '$2y$10$97mSNkA8REl9kxj.RyNLrepo2rn6JLCPSpOvcYofZGEEz2neS9LbC', '2', 1, 1, 1, '2022-01-15', NULL, 'Jay kay', '23456', 'Equity', '23456', 'Nairobi west', '4567', NULL, 0, 1, 2, '2022-01-15 08:16:03', '2022-01-15 08:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `employee_documents`
--

CREATE TABLE `employee_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `document_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_employees`
--

CREATE TABLE `event_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `payee_id` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `referal_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genrate_payslip_options`
--

CREATE TABLE `genrate_payslip_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goal_trackings`
--

CREATE TABLE `goal_trackings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `goal_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_achievement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `progress` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goal_types`
--

CREATE TABLE `goal_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `occasion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `income_types`
--

CREATE TABLE `income_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL DEFAULT 0,
  `department` int(11) NOT NULL DEFAULT 0,
  `designation` int(11) NOT NULL DEFAULT 0,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_experience` int(11) NOT NULL DEFAULT 0,
  `marketing` int(11) NOT NULL DEFAULT 0,
  `administration` int(11) NOT NULL DEFAULT 0,
  `professionalism` int(11) NOT NULL DEFAULT 0,
  `integrity` int(11) NOT NULL DEFAULT 0,
  `attendance` int(11) NOT NULL DEFAULT 0,
  `created_user` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interview_schedules`
--

CREATE TABLE `interview_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate` int(11) NOT NULL,
  `employee` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_response` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ip_restricts`
--

CREATE TABLE `ip_restricts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `skill` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_letter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0,
  `skill` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `is_archive` int(11) NOT NULL DEFAULT 0,
  `custom_question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_application_notes`
--

CREATE TABLE `job_application_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` int(11) NOT NULL DEFAULT 0,
  `note_created` int(11) NOT NULL DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_on_boards`
--

CREATE TABLE `job_on_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application` int(11) NOT NULL,
  `joining_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `convert_to_employee` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_stages`
--

CREATE TABLE `job_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_stages`
--

INSERT INTO `job_stages` (`id`, `title`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Applied', 0, 2, '2022-01-13 10:43:57', '2022-01-13 10:43:57'),
(2, 'Phone Screen', 0, 2, '2022-01-13 10:43:57', '2022-01-13 10:43:57'),
(3, 'Interview', 0, 2, '2022-01-13 10:43:58', '2022-01-13 10:43:58'),
(4, 'Hired', 0, 2, '2022-01-13 10:43:58', '2022-01-13 10:43:58'),
(5, 'Rejected', 0, 2, '2022-01-13 10:43:58', '2022-01-13 10:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `landing_page_sections`
--

CREATE TABLE `landing_page_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_order` int(11) NOT NULL DEFAULT 0,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_type` enum('section-1','section-2','section-3','section-4','section-5','section-6','section-7','section-8','section-9','section-10','section-plan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_demo_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_blade_file_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landing_page_sections`
--

INSERT INTO `landing_page_sections` (`id`, `section_name`, `section_order`, `content`, `section_type`, `default_content`, `section_demo_image`, `section_blade_file_name`, `created_at`, `updated_at`) VALUES
(1, 'section-1', 1, '{\"logo\":\"logo_1642082747448377597.png\",\"image\":\"top-banner.png\",\"button\":{\"text\":\"Login\"},\"menu\":[{\"menu\":\"Features\",\"href\":\"#\"},{\"menu\":\"Pricing\",\"href\":\"#\"}],\"text\":{\"text-1\":\"Smart HR\",\"text-2\":\"HRM and Payroll Tool\",\"text-3\":\"Among those HR IT tools are Time sheet, online employee directory, self-service portal, Payroll, shift schedule, business process automation, and much more..standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"text-4\":\"get started - its free\",\"text-5\":\"no creadit card reqired\"},\"custom_class_name\":null}', 'section-1', '{\"logo\":\"landing_logo.png\",\"image\":\"top-banner.png\",\"button\":{\"text\":\"Login\"},\"menu\":[{\"menu\":\"Features\",\"href\":\"#\"},{\"menu\":\"Pricing\",\"href\":\"#\"}],\"text\":{\"text-1\":\"HRMGo Saas\",\"text-2\":\"HRM and Payroll Tool\",\"text-3\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"text-4\":\"get started - its free\",\"text-5\":\"no creadit card reqired \"},\"custom_class_name\":\"\"}', 'top-header-section.png', 'custome-top-header-section', '2022-01-13 10:43:58', '2022-01-13 11:05:48'),
(2, 'section-2', 2, '', 'section-2', '{\"image\":\"cal-sec.png\",\"button\":{\"text\":\"try our system\",\"href\":\"#\"},\"text\":{\"text-1\":\"Features\",\"text-2\":\"Lorem Ipsum is simply dummy\",\"text-3\":\"text of the printing\",\"text-4\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting\"},\"image_array\":[{\"id\":1,\"image\":\"nexo.png\"},{\"id\":2,\"image\":\"edge.png\"},{\"id\":3,\"image\":\"atomic.png\"},{\"id\":4,\"image\":\"brd.png\"},{\"id\":5,\"image\":\"trust.png\"},{\"id\":6,\"image\":\"keep-key.png\"},{\"id\":7,\"image\":\"atomic.png\"},{\"id\":8,\"image\":\"edge.png\"}],\"custom_class_name\":\"\"}', 'logo-part-main-back-part.png', 'custome-logo-part-main-back-part', '2022-01-13 10:43:58', '2022-01-13 11:05:55'),
(3, 'section-3', 3, NULL, 'section-3', '{\"image\": \"sec-2.png\",\"button\": {\"text\": \"try our system\",\"href\": \"#\"},\"text\": {\"text-1\": \"Features\",\"text-2\": \"Lorem Ipsum is simply dummy\",\"text-3\": \"text of the printing\",\"text-4\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting\"},\"custom_class_name\":\"\"}', 'simple-sec-even.png', 'custome-simple-sec-even', '2022-01-13 10:43:58', '2022-01-13 10:43:58'),
(4, 'section-4', 4, NULL, 'section-4', '{\"image\": \"sec-3.png\",\"button\": {\"text\": \"try our system\",\"href\": \"#\"},\"text\": {\"text-1\": \"Features\",\"text-2\": \"Lorem Ipsum is simply dummy\",\"text-3\": \"text of the printing\",\"text-4\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting\"},\"custom_class_name\":\"\"}', 'simple-sec-odd.png', 'custome-simple-sec-odd', '2022-01-13 10:43:58', '2022-01-13 10:43:58'),
(5, 'section-5', 5, NULL, 'section-5', '{\"button\": {\"text\": \"TRY OUR SYSTEM\",\"href\": \"#\"},\"text\": {\"text-1\": \"See more features\",\"text-2\": \"All Features\",\"text-3\": \"in one place\",\"text-4\": \"Attractive Dashboard Customer & Vendor Login Multi Languages\",\"text-5\":\"Invoice, Billing & Transaction Multi User & Permission Paypal & Stripe for Invoice User Friendly Invoice Theme Make your own setting\",\"text-6\":\"Multi User & Permission Paypal & Stripe for Invoice User Friendly Invoice Theme Make your own setting\",\"text-7\":\"Multi User & Permission Paypal & Stripe for Invoice User Friendly Invoice Theme Make your own setting User Friendly Invoice Theme Make your own setting\",\"text-8\":\"Multi User & Permission Paypal & Stripe for Invoice\"},\"custom_class_name\":\"\"}', 'features-inner-part.png', 'custome-features-inner-part', '2022-01-13 10:43:58', '2022-01-13 10:43:58'),
(6, 'section-6', 6, '', 'section-6', '{\"system\":[{\"id\":1,\"name\":\"Dashboard\",\"data\":[{\"data_id\":1,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-1.png\"},{\"data_id\":2,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-2.png\"},{\"data_id\":3,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-3.png\"},{\"data_id\":4,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-1.png\"},{\"data_id\":5,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-2.png\"}]},{\"id\":2,\"name\":\"Functions\",\"data\":[{\"data_id\":1,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-1.png\"},{\"data_id\":2,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-2.png\"},{\"data_id\":3,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-3.png\"}]},{\"id\":3,\"name\":\"Reports\",\"data\":[{\"data_id\":1,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-1.png\"},{\"data_id\":2,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-2.png\"}]},{\"id\":4,\"name\":\"Tables\",\"data\":[{\"data_id\":1,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-1.png\"},{\"data_id\":2,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-2.png\"},{\"data_id\":3,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-3.png\"},{\"data_id\":4,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-1.png\"}]},{\"id\":5,\"name\":\"Settings\",\"data\":[{\"data_id\":1,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-1.png\"},{\"data_id\":2,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-2.png\"}]},{\"id\":6,\"name\":\"Contact\",\"data\":[{\"data_id\":1,\"text\":{\"text_1\":\"Dashboard\",\"text_2\":\"Main Page\"},\"button\":{\"text\":\"LIVE DEMO\",\"href\":\"#\"},\"image\":\"tab-1.png\"}]}],\"custom_class_name\":\"\"}', 'container-our-system-div.png', 'custome-container-our-system-div', '2022-01-13 10:43:58', '2022-01-13 11:06:02'),
(7, 'section-7', 7, NULL, 'section-7', '{\"testimonials\":[{\"id\":1,\"text\":{\"text_1\":\"We have been building AI projects for a long time and we decided it was time to build a platform that can streamline the broken process that we had to put up with. Here are some of the key things we wish we had when we were building projects before.\",\"text_2\":\"Lorem Ipsum\",\"text_3\":\"Founder and CEO at Rajodiya Infotech\"},\"image\":\"testimonials-img.png\"},{\"id\":2,\"text\":{\"text_1\":\"We have been building AI projects for a long time and we decided it was time to build a platform that can streamline the broken process that we had to put up with. Here are some of the key things we wish we had when we were building projects before.\",\"text_2\":\"Lorem Ipsum\",\"text_3\":\"Founder and CEO at Rajodiya Infotech\"},\"image\":\"testimonials-img.png\"},{\"id\":3,\"text\":{\"text_1\":\"We have been building AI projects for a long time and we decided it was time to build a platform that can streamline the broken process that we had to put up with. Here are some of the key things we wish we had when we were building projects before.\",\"text_2\":\"Lorem Ipsum\",\"text_3\":\"Founder and CEO at Rajodiya Infotech\"},\"image\":\"testimonials-img.png\"},{\"id\":4,\"text\":{\"text_1\":\"We have been building AI projects for a long time and we decided it was time to build a platform that can streamline the broken process that we had to put up with. Here are some of the key things we wish we had when we were building projects before.\",\"text_2\":\"Lorem Ipsum\",\"text_3\":\"Founder and CEO at Rajodiya Infotech\"},\"image\":\"testimonials-img.png\"},{\"id\":5,\"text\":{\"text_1\":\"We have been building AI projects for a long time and we decided it was time to build a platform that can streamline the broken process that we had to put up with. Here are some of the key things we wish we had when we were building projects before.\",\"text_2\":\"Lorem Ipsum\",\"text_3\":\"Founder and CEO at Rajodiya Infotech\"},\"image\":\"testimonials-img.png\"}],\"custom_class_name\":\"\"}', 'testimonials-section.png', 'custome-testimonials-section', '2022-01-13 10:43:58', '2022-01-13 10:43:58'),
(8, 'section-plan', 8, '', 'section-plan', 'plan', 'plan-section.png', 'plan-section', '2022-01-13 10:43:58', '2022-01-13 11:06:08'),
(9, 'section-8', 9, '{\"button\":{\"text\":\"Subscribe\"},\"text\":{\"text-1\":\"Try for free\",\"text-2\":\"Lorem Ipsum is simply dummy text\",\"text-3\":\"of the printing and typesetting industry\",\"text-4\":\"Type your email address and click the button\"},\"custom_class_name\":\"\"}', 'section-8', '{\"button\":{\"text\":\"Subscribe\"},\"text\":{\"text-1\":\"Try for free\",\"text-2\":\"Lorem Ipsum is simply dummy text\",\"text-3\":\"of the printing and typesetting industry\",\"text-4\":\"Type your email address and click the button\"},\"custom_class_name\":\"\"}', 'subscribe-part.png', 'custome-subscribe-part', '2022-01-13 10:43:58', '2022-01-13 10:43:58'),
(10, 'section-9', 10, '{\"menu\":[{\"menu\":\"Facebook\",\"href\":\"#\"},{\"menu\":\"LinkedIn\",\"href\":\"#\"},{\"menu\":\"Twitter\",\"href\":\"#\"},{\"menu\":\"Discord\",\"href\":\"#\"}],\"custom_class_name\":\"\"}', 'section-9', '{\"menu\":[{\"menu\":\"Facebook\",\"href\":\"#\"},{\"menu\":\"LinkedIn\",\"href\":\"#\"},{\"menu\":\"Twitter\",\"href\":\"#\"},{\"menu\":\"Discord\",\"href\":\"#\"}],\"custom_class_name\":\"\"}', 'social-links.png', 'custome-social-links', '2022-01-13 10:43:58', '2022-01-13 10:43:58'),
(11, 'section-10', 11, '{\"footer\":{\"logo\":{\"logo\":\"landing_logo.png\"},\"footer_menu\":[{\"id\":1,\"menu\":\"FIO Protocol\",\"data\":[{\"menu_name\":\"Feature\",\"menu_href\":\"#\"},{\"menu_name\":\"Download\",\"menu_href\":\"#\"},{\"menu_name\":\"Integration\",\"menu_href\":\"#\"},{\"menu_name\":\"Extras\",\"menu_href\":\"#\"}]},{\"id\":2,\"menu\":\"Learn\",\"data\":[{\"menu_name\":\"Feature\",\"menu_href\":\"#\"},{\"menu_name\":\"Download\",\"menu_href\":\"#\"},{\"menu_name\":\"Integration\",\"menu_href\":\"#\"},{\"menu_name\":\"Extras\",\"menu_href\":\"#\"}]},{\"id\":3,\"menu\":\"Foundation\",\"data\":[{\"menu_name\":\"About Us\",\"menu_href\":\"#\"},{\"menu_name\":\"Customers\",\"menu_href\":\"#\"},{\"menu_name\":\"Resources\",\"menu_href\":\"#\"},{\"menu_name\":\"Blog\",\"menu_href\":\"#\"}]}],\"contact_app\":[{\"menu\":\"Contact\",\"data\":[{\"id\":1,\"image\":\"app-store.png\",\"image_href\":\"#\"},{\"id\":2,\"image\":\"google-pay.png\",\"image_href\":\"#\"}]}],\"bottom_menu\":{\"text\":\"All rights reserved.\",\"data\":[{\"menu_name\":\"Privacy Policy\",\"menu_href\":\"#\"},{\"menu_name\":\"Github\",\"menu_href\":\"#\"},{\"menu_name\":\"Press Kit\",\"menu_href\":\"#\"},{\"menu_name\":\"Contact\",\"menu_href\":\"#\"}]}},\"custom_class_name\":\"\"}', 'section-10', '{\"footer\":{\"logo\":{\"logo\":\"landing_logo.png\"},\"footer_menu\":[{\"id\":1,\"menu\":\"FIO Protocol\",\"data\":[{\"menu_name\":\"Feature\",\"menu_href\":\"#\"},{\"menu_name\":\"Download\",\"menu_href\":\"#\"},{\"menu_name\":\"Integration\",\"menu_href\":\"#\"},{\"menu_name\":\"Extras\",\"menu_href\":\"#\"}]},{\"id\":2,\"menu\":\"Learn\",\"data\":[{\"menu_name\":\"Feature\",\"menu_href\":\"#\"},{\"menu_name\":\"Download\",\"menu_href\":\"#\"},{\"menu_name\":\"Integration\",\"menu_href\":\"#\"},{\"menu_name\":\"Extras\",\"menu_href\":\"#\"}]},{\"id\":3,\"menu\":\"Foundation\",\"data\":[{\"menu_name\":\"About Us\",\"menu_href\":\"#\"},{\"menu_name\":\"Customers\",\"menu_href\":\"#\"},{\"menu_name\":\"Resources\",\"menu_href\":\"#\"},{\"menu_name\":\"Blog\",\"menu_href\":\"#\"}]}],\"contact_app\":[{\"menu\":\"Contact\",\"data\":[{\"id\":1,\"image\":\"app-store.png\",\"image_href\":\"#\"},{\"id\":2,\"image\":\"google-pay.png\",\"image_href\":\"#\"}]}],\"bottom_menu\":{\"text\":\"All rights reserved.\",\"data\":[{\"menu_name\":\"Privacy Policy\",\"menu_href\":\"#\"},{\"menu_name\":\"Github\",\"menu_href\":\"#\"},{\"menu_name\":\"Press Kit\",\"menu_href\":\"#\"},{\"menu_name\":\"Contact\",\"menu_href\":\"#\"}]}},\"custom_class_name\":\"\"}', 'footer-section.png', 'custome-footer-section', '2022-01-13 10:43:58', '2022-01-13 10:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `applied_on` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_leave_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `employee_id`, `leave_type_id`, `applied_on`, `start_date`, `end_date`, `total_leave_days`, `leave_reason`, `remark`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-01-15', '2022-01-15', '2022-01-15', '0', 'test reason', 'Test remark', 'Pending', 2, '2022-01-15 08:14:07', '2022-01-15 08:14:07'),
(2, 2, 1, '2022-01-15', '2022-01-15', '2022-01-15', '0', 'Reason ipsum', 'Remark ipsum', 'Pending', 2, '2022-01-15 08:17:50', '2022-01-15 08:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `title`, `days`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Annual', 30, 2, '2022-01-15 08:12:24', '2022-01-15 08:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `loan_option` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_options`
--

CREATE TABLE `loan_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_employees`
--

CREATE TABLE `meeting_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_22_192348_create_messages_table', 1),
(5, '2019_09_28_102009_create_settings_table', 1),
(6, '2019_10_16_211433_create_favorites_table', 1),
(7, '2019_10_18_223259_add_avatar_to_users', 1),
(8, '2019_10_20_211056_add_messenger_color_to_users', 1),
(9, '2019_10_22_000539_add_dark_mode_to_users', 1),
(10, '2019_10_25_214038_add_active_status_to_users', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2019_12_26_101754_create_departments_table', 1),
(13, '2019_12_26_101814_create_designations_table', 1),
(14, '2019_12_26_105721_create_documents_table', 1),
(15, '2019_12_27_083751_create_branches_table', 1),
(16, '2019_12_27_090831_create_employees_table', 1),
(17, '2019_12_27_112922_create_employee_documents_table', 1),
(18, '2019_12_28_050508_create_awards_table', 1),
(19, '2019_12_28_050919_create_award_types_table', 1),
(20, '2019_12_31_060916_create_termination_types_table', 1),
(21, '2019_12_31_062259_create_terminations_table', 1),
(22, '2019_12_31_070521_create_resignations_table', 1),
(23, '2019_12_31_072252_create_travels_table', 1),
(24, '2019_12_31_090637_create_promotions_table', 1),
(25, '2019_12_31_092838_create_transfers_table', 1),
(26, '2019_12_31_100319_create_warnings_table', 1),
(27, '2019_12_31_103019_create_complaints_table', 1),
(28, '2020_01_02_090837_create_payslip_types_table', 1),
(29, '2020_01_02_093331_create_allowance_options_table', 1),
(30, '2020_01_02_102558_create_loan_options_table', 1),
(31, '2020_01_02_103822_create_deduction_options_table', 1),
(32, '2020_01_02_110828_create_genrate_payslip_options_table', 1),
(33, '2020_01_02_111807_create_set_salaries_table', 1),
(34, '2020_01_03_084302_create_allowances_table', 1),
(35, '2020_01_03_101735_create_commissions_table', 1),
(36, '2020_01_03_105019_create_loans_table', 1),
(37, '2020_01_03_105046_create_saturation_deductions_table', 1),
(38, '2020_01_03_105100_create_other_payments_table', 1),
(39, '2020_01_03_105111_create_overtimes_table', 1),
(40, '2020_01_04_072527_create_pay_slips_table', 1),
(41, '2020_01_06_045425_create_account_lists_table', 1),
(42, '2020_01_06_062213_create_payees_table', 1),
(43, '2020_01_06_070037_create_payers_table', 1),
(44, '2020_01_06_072939_create_income_types_table', 1),
(45, '2020_01_06_073055_create_expense_types_table', 1),
(46, '2020_01_06_085218_create_deposits_table', 1),
(47, '2020_01_06_090709_create_payment_types_table', 1),
(48, '2020_01_06_121442_create_expenses_table', 1),
(49, '2020_01_06_124036_create_transfer_balances_table', 1),
(50, '2020_01_13_084720_create_events_table', 1),
(51, '2020_01_16_041720_create_announcements_table', 1),
(52, '2020_01_16_090747_create_leave_types_table', 1),
(53, '2020_01_16_093256_create_leaves_table', 1),
(54, '2020_01_16_110357_create_meetings_table', 1),
(55, '2020_01_17_051906_create_tickets_table', 1),
(56, '2020_01_17_112647_create_ticket_replies_table', 1),
(57, '2020_01_23_101613_create_meeting_employees_table', 1),
(58, '2020_01_23_123844_create_event_employees_table', 1),
(59, '2020_01_24_062752_create_announcement_employees_table', 1),
(60, '2020_01_27_052503_create_attendance_employees_table', 1),
(61, '2020_02_17_035047_create_plans_table', 1),
(62, '2020_02_17_072503_create_orders_table', 1),
(63, '2020_02_28_051636_create_time_sheets_table', 1),
(64, '2020_03_12_095629_create_coupons_table', 1),
(65, '2020_03_12_120749_create_user_coupons_table', 1),
(66, '2020_04_21_115823_create_assets_table', 1),
(67, '2020_05_01_122144_create_ducument_uploads_table', 1),
(68, '2020_05_04_070452_create_indicators_table', 1),
(69, '2020_05_05_023742_create_appraisals_table', 1),
(70, '2020_05_05_061241_create_goal_types_table', 1),
(71, '2020_05_05_095926_create_goal_trackings_table', 1),
(72, '2020_05_07_093520_create_company_policies_table', 1),
(73, '2020_05_07_131311_create_training_types_table', 1),
(74, '2020_05_08_023838_create_trainers_table', 1),
(75, '2020_05_08_043039_create_trainings_table', 1),
(76, '2020_05_21_065337_create_permission_tables', 1),
(77, '2020_07_06_102454_add_payment_type_in_orders_table', 1),
(78, '2020_07_18_065859_create_messageses_table', 1),
(79, '2020_07_22_131715_change_amount_type_size', 1),
(80, '2020_10_07_034726_create_holidays_table', 1),
(81, '2021_02_19_085311_add_ticket_created__in_tickets', 1),
(82, '2021_03_13_093312_create_ip_restricts_table', 1),
(83, '2021_03_13_114832_create_job_categories_table', 1),
(84, '2021_03_13_123125_create_job_stages_table', 1),
(85, '2021_03_15_094707_create_jobs_table', 1),
(86, '2021_03_15_153745_create_job_applications_table', 1),
(87, '2021_03_16_115140_create_job_application_notes_table', 1),
(88, '2021_03_17_163107_create_custom_questions_table', 1),
(89, '2021_03_18_140630_create_interview_schedules_table', 1),
(90, '2021_03_22_122532_create_job_on_boards_table', 1),
(91, '2021_06_22_094220_create_landing_page_sections_table', 1),
(92, '2021_06_25_032625_admin_payment_setting', 1),
(93, '2021_08_20_084119_create_competencies_table', 1),
(94, '2021_08_21_044211_add_rating_in_competencies', 1),
(95, '2021_09_10_165514_create_plan_requests_table', 1),
(96, '2021_11_22_043537_create_performance__types_table', 1),
(97, '2021_12_24_061634_create_zoom_meetings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_month` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_year` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Manually',
  `receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_payments`
--

CREATE TABLE `other_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `overtimes`
--

CREATE TABLE `overtimes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_days` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payees`
--

CREATE TABLE `payees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payee_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payers`
--

CREATE TABLE `payers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payslip_types`
--

CREATE TABLE `payslip_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_slips`
--

CREATE TABLE `pay_slips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `net_payble` int(11) NOT NULL,
  `salary_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `allowance` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `saturation_deduction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_payment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `overtime` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance__types`
--

CREATE TABLE `performance__types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Manage User', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(2, 'Create User', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(3, 'Edit User', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(4, 'Delete User', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(5, 'Manage Role', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(6, 'Create Role', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(7, 'Delete Role', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(8, 'Edit Role', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(9, 'Manage Award', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(10, 'Create Award', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(11, 'Delete Award', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(12, 'Edit Award', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(13, 'Manage Transfer', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(14, 'Create Transfer', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(15, 'Delete Transfer', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(16, 'Edit Transfer', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(17, 'Manage Resignation', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(18, 'Create Resignation', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(19, 'Edit Resignation', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(20, 'Delete Resignation', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(21, 'Manage Travel', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(22, 'Create Travel', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(23, 'Edit Travel', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(24, 'Delete Travel', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(25, 'Manage Promotion', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(26, 'Create Promotion', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(27, 'Edit Promotion', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(28, 'Delete Promotion', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(29, 'Manage Complaint', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(30, 'Create Complaint', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(31, 'Edit Complaint', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(32, 'Delete Complaint', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(33, 'Manage Warning', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(34, 'Create Warning', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(35, 'Edit Warning', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(36, 'Delete Warning', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(37, 'Manage Termination', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(38, 'Create Termination', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(39, 'Edit Termination', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(40, 'Delete Termination', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(41, 'Manage Department', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(42, 'Create Department', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(43, 'Edit Department', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(44, 'Delete Department', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(45, 'Manage Designation', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(46, 'Create Designation', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(47, 'Edit Designation', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(48, 'Delete Designation', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(49, 'Manage Document Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(50, 'Create Document Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(51, 'Edit Document Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(52, 'Delete Document Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(53, 'Manage Branch', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(54, 'Create Branch', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(55, 'Edit Branch', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(56, 'Delete Branch', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(57, 'Manage Award Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(58, 'Create Award Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(59, 'Edit Award Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(60, 'Delete Award Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(61, 'Manage Termination Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(62, 'Create Termination Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(63, 'Edit Termination Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(64, 'Delete Termination Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(65, 'Manage Employee', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(66, 'Create Employee', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(67, 'Edit Employee', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(68, 'Delete Employee', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(69, 'Show Employee', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(70, 'Manage Payslip Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(71, 'Create Payslip Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(72, 'Edit Payslip Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(73, 'Delete Payslip Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(74, 'Manage Allowance Option', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(75, 'Create Allowance Option', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(76, 'Edit Allowance Option', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(77, 'Delete Allowance Option', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(78, 'Manage Loan Option', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(79, 'Create Loan Option', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(80, 'Edit Loan Option', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(81, 'Delete Loan Option', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(82, 'Manage Deduction Option', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(83, 'Create Deduction Option', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(84, 'Edit Deduction Option', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(85, 'Delete Deduction Option', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(86, 'Manage Set Salary', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(87, 'Create Set Salary', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(88, 'Edit Set Salary', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(89, 'Delete Set Salary', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(90, 'Manage Allowance', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(91, 'Create Allowance', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(92, 'Edit Allowance', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(93, 'Delete Allowance', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(94, 'Create Commission', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(95, 'Create Loan', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(96, 'Create Saturation Deduction', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(97, 'Create Other Payment', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(98, 'Create Overtime', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(99, 'Edit Commission', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(100, 'Delete Commission', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(101, 'Edit Loan', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(102, 'Delete Loan', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(103, 'Edit Saturation Deduction', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(104, 'Delete Saturation Deduction', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(105, 'Edit Other Payment', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(106, 'Delete Other Payment', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(107, 'Edit Overtime', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(108, 'Delete Overtime', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(109, 'Manage Pay Slip', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(110, 'Create Pay Slip', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(111, 'Edit Pay Slip', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(112, 'Delete Pay Slip', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(113, 'Manage Account List', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(114, 'Create Account List', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(115, 'Edit Account List', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(116, 'Delete Account List', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(117, 'View Balance Account List', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(118, 'Manage Payee', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(119, 'Create Payee', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(120, 'Edit Payee', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(121, 'Delete Payee', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(122, 'Manage Payer', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(123, 'Create Payer', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(124, 'Edit Payer', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(125, 'Delete Payer', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(126, 'Manage Expense Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(127, 'Create Expense Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(128, 'Edit Expense Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(129, 'Delete Expense Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(130, 'Manage Income Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(131, 'Edit Income Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(132, 'Delete Income Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(133, 'Create Income Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(134, 'Manage Payment Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(135, 'Create Payment Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(136, 'Edit Payment Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(137, 'Delete Payment Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(138, 'Manage Deposit', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(139, 'Create Deposit', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(140, 'Edit Deposit', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(141, 'Delete Deposit', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(142, 'Manage Expense', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(143, 'Create Expense', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(144, 'Edit Expense', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(145, 'Delete Expense', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(146, 'Manage Transfer Balance', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(147, 'Create Transfer Balance', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(148, 'Edit Transfer Balance', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(149, 'Delete Transfer Balance', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(150, 'Manage Event', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(151, 'Create Event', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(152, 'Edit Event', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(153, 'Delete Event', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(154, 'Manage Announcement', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(155, 'Create Announcement', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(156, 'Edit Announcement', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(157, 'Delete Announcement', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(158, 'Manage Leave Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(159, 'Create Leave Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(160, 'Edit Leave Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(161, 'Delete Leave Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(162, 'Manage Leave', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(163, 'Create Leave', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(164, 'Edit Leave', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(165, 'Delete Leave', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(166, 'Manage Meeting', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(167, 'Create Meeting', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(168, 'Edit Meeting', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(169, 'Delete Meeting', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(170, 'Manage Ticket', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(171, 'Create Ticket', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(172, 'Edit Ticket', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(173, 'Delete Ticket', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(174, 'Manage Attendance', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(175, 'Create Attendance', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(176, 'Edit Attendance', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(177, 'Delete Attendance', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(178, 'Manage Language', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(179, 'Create Language', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(180, 'Manage Plan', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(181, 'Create Plan', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(182, 'Edit Plan', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(183, 'Buy Plan', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(184, 'Manage System Settings', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(185, 'Manage Company Settings', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(186, 'Manage TimeSheet', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(187, 'Create TimeSheet', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(188, 'Edit TimeSheet', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(189, 'Delete TimeSheet', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(190, 'Manage Order', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(191, 'manage coupon', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(192, 'create coupon', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(193, 'edit coupon', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(194, 'delete coupon', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(195, 'Manage Assets', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(196, 'Create Assets', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(197, 'Edit Assets', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(198, 'Delete Assets', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(199, 'Manage Document', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(200, 'Create Document', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(201, 'Edit Document', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(202, 'Delete Document', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(203, 'Manage Employee Profile', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(204, 'Show Employee Profile', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(205, 'Manage Employee Last Login', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(206, 'Manage Indicator', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(207, 'Create Indicator', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(208, 'Edit Indicator', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(209, 'Delete Indicator', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(210, 'Show Indicator', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(211, 'Manage Appraisal', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(212, 'Create Appraisal', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(213, 'Edit Appraisal', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(214, 'Delete Appraisal', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(215, 'Show Appraisal', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(216, 'Manage Goal Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(217, 'Create Goal Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(218, 'Edit Goal Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(219, 'Delete Goal Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(220, 'Manage Goal Tracking', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(221, 'Create Goal Tracking', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(222, 'Edit Goal Tracking', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(223, 'Delete Goal Tracking', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(224, 'Manage Company Policy', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(225, 'Create Company Policy', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(226, 'Edit Company Policy', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(227, 'Delete Company Policy', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(228, 'Manage Trainer', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(229, 'Create Trainer', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(230, 'Edit Trainer', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(231, 'Delete Trainer', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(232, 'Show Trainer', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(233, 'Manage Training', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(234, 'Create Training', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(235, 'Edit Training', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(236, 'Delete Training', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(237, 'Show Training', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(238, 'Manage Training Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(239, 'Create Training Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(240, 'Edit Training Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(241, 'Delete Training Type', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(242, 'Manage Report', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(243, 'Manage Holiday', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(244, 'Create Holiday', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(245, 'Edit Holiday', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(246, 'Delete Holiday', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(247, 'Manage Job Category', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(248, 'Create Job Category', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(249, 'Edit Job Category', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(250, 'Delete Job Category', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(251, 'Manage Job Stage', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(252, 'Create Job Stage', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(253, 'Edit Job Stage', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(254, 'Delete Job Stage', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(255, 'Manage Job', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(256, 'Create Job', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(257, 'Edit Job', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(258, 'Delete Job', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(259, 'Show Job', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(260, 'Manage Job Application', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(261, 'Create Job Application', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(262, 'Edit Job Application', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(263, 'Delete Job Application', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(264, 'Show Job Application', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(265, 'Move Job Application', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(266, 'Add Job Application Note', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(267, 'Delete Job Application Note', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(268, 'Add Job Application Skill', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(269, 'Manage Job OnBoard', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(270, 'Manage Custom Question', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(271, 'Create Custom Question', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(272, 'Edit Custom Question', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(273, 'Delete Custom Question', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(274, 'Manage Interview Schedule', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(275, 'Create Interview Schedule', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(276, 'Edit Interview Schedule', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(277, 'Delete Interview Schedule', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(278, 'Manage Career', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(279, 'Manage Competencies', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(280, 'Create Competencies', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(281, 'Edit Competencies', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(282, 'Delete Competencies', 'web', '2022-01-13 10:43:36', '2022-01-13 10:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `duration` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_users` int(11) NOT NULL DEFAULT 0,
  `max_employees` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `duration`, `max_users`, `max_employees`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Gold', 0.00, 'unlimited', 500, 5000, NULL, 'free_plan.png', '2022-01-13 10:43:58', '2022-01-15 08:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `plan_requests`
--

CREATE TABLE `plan_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monthly',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `promotion_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotion_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resignations`
--

CREATE TABLE `resignations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `notice_date` date NOT NULL,
  `resignation_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', 0, '2022-01-13 10:43:36', '2022-01-13 10:43:36'),
(2, 'company', 'web', 1, '2022-01-13 10:43:38', '2022-01-13 10:43:38'),
(3, 'hr', 'web', 2, '2022-01-13 10:43:48', '2022-01-13 10:43:48'),
(4, 'employee', 'web', 2, '2022-01-13 10:43:56', '2022-01-13 10:43:56'),
(5, 'Project manager', 'web', 2, '2022-01-15 08:30:34', '2022-01-15 08:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(10, 2),
(10, 3),
(10, 5),
(11, 2),
(11, 3),
(11, 5),
(12, 2),
(12, 3),
(12, 5),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(14, 2),
(14, 3),
(15, 2),
(15, 3),
(16, 2),
(16, 3),
(17, 2),
(17, 3),
(17, 4),
(17, 5),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(19, 2),
(19, 3),
(19, 4),
(20, 2),
(20, 3),
(20, 4),
(21, 2),
(21, 3),
(21, 4),
(21, 5),
(22, 2),
(22, 3),
(22, 5),
(23, 2),
(23, 3),
(24, 2),
(24, 3),
(24, 5),
(25, 2),
(25, 3),
(25, 4),
(25, 5),
(26, 2),
(26, 3),
(26, 5),
(27, 2),
(27, 3),
(27, 5),
(28, 2),
(28, 3),
(28, 5),
(29, 2),
(29, 3),
(29, 4),
(29, 5),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(33, 2),
(33, 3),
(33, 4),
(33, 5),
(34, 2),
(34, 3),
(34, 4),
(34, 5),
(35, 2),
(35, 3),
(35, 4),
(35, 5),
(36, 2),
(36, 3),
(36, 4),
(36, 5),
(37, 2),
(37, 3),
(37, 4),
(37, 5),
(38, 2),
(38, 3),
(38, 5),
(39, 2),
(39, 3),
(39, 5),
(40, 2),
(40, 3),
(40, 5),
(41, 2),
(41, 3),
(41, 5),
(42, 2),
(42, 3),
(42, 5),
(43, 2),
(43, 3),
(43, 5),
(44, 2),
(44, 3),
(44, 5),
(45, 2),
(45, 3),
(45, 5),
(46, 2),
(46, 3),
(46, 5),
(47, 2),
(47, 3),
(47, 5),
(48, 2),
(48, 3),
(48, 5),
(49, 2),
(49, 3),
(49, 5),
(50, 2),
(50, 3),
(50, 5),
(51, 2),
(51, 3),
(51, 5),
(52, 2),
(52, 3),
(52, 5),
(53, 2),
(53, 3),
(53, 5),
(54, 2),
(54, 3),
(54, 5),
(55, 2),
(55, 3),
(55, 5),
(56, 2),
(56, 3),
(56, 5),
(57, 2),
(57, 3),
(57, 5),
(58, 2),
(58, 3),
(58, 5),
(59, 2),
(59, 3),
(59, 5),
(60, 2),
(60, 3),
(60, 5),
(61, 2),
(61, 3),
(61, 5),
(62, 2),
(62, 3),
(62, 5),
(63, 2),
(63, 3),
(63, 5),
(64, 2),
(64, 3),
(64, 5),
(65, 2),
(65, 3),
(65, 4),
(65, 5),
(66, 2),
(66, 3),
(66, 5),
(67, 2),
(67, 3),
(67, 4),
(67, 5),
(68, 2),
(68, 3),
(68, 5),
(69, 2),
(69, 3),
(69, 4),
(69, 5),
(70, 2),
(70, 3),
(70, 5),
(71, 2),
(71, 3),
(71, 5),
(72, 2),
(72, 3),
(72, 5),
(73, 2),
(73, 3),
(74, 2),
(74, 3),
(74, 5),
(75, 2),
(75, 3),
(75, 5),
(76, 2),
(76, 3),
(76, 5),
(77, 2),
(77, 3),
(78, 2),
(78, 3),
(78, 5),
(79, 2),
(79, 3),
(79, 5),
(80, 2),
(80, 3),
(80, 5),
(81, 2),
(81, 3),
(82, 2),
(82, 3),
(82, 5),
(83, 2),
(83, 3),
(83, 5),
(84, 2),
(84, 3),
(84, 5),
(85, 2),
(85, 3),
(86, 2),
(86, 3),
(86, 5),
(87, 2),
(87, 3),
(87, 5),
(88, 2),
(88, 3),
(88, 5),
(89, 2),
(89, 3),
(90, 2),
(90, 3),
(90, 4),
(90, 5),
(91, 2),
(91, 3),
(91, 5),
(92, 2),
(92, 3),
(92, 5),
(93, 2),
(93, 3),
(94, 2),
(94, 3),
(94, 5),
(95, 2),
(95, 3),
(95, 5),
(96, 2),
(96, 3),
(96, 5),
(97, 2),
(97, 3),
(97, 5),
(98, 2),
(98, 3),
(98, 5),
(99, 2),
(99, 3),
(99, 5),
(100, 2),
(100, 3),
(100, 5),
(101, 2),
(101, 3),
(101, 5),
(102, 2),
(102, 3),
(102, 5),
(103, 2),
(103, 3),
(103, 5),
(104, 2),
(104, 3),
(104, 5),
(105, 2),
(105, 3),
(105, 5),
(106, 2),
(106, 3),
(106, 5),
(107, 2),
(107, 3),
(107, 5),
(108, 2),
(108, 3),
(108, 5),
(109, 2),
(109, 3),
(110, 2),
(110, 3),
(111, 2),
(111, 3),
(112, 2),
(112, 3),
(113, 2),
(113, 5),
(114, 2),
(114, 5),
(115, 2),
(115, 5),
(116, 2),
(117, 2),
(118, 2),
(118, 5),
(119, 2),
(119, 5),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(125, 2),
(126, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(141, 2),
(142, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(149, 2),
(150, 2),
(150, 3),
(150, 4),
(151, 2),
(151, 3),
(152, 2),
(152, 3),
(153, 2),
(153, 3),
(154, 2),
(154, 3),
(154, 4),
(155, 2),
(155, 3),
(156, 2),
(156, 3),
(157, 2),
(157, 3),
(158, 2),
(158, 3),
(158, 5),
(159, 2),
(159, 3),
(159, 5),
(160, 2),
(160, 3),
(160, 5),
(161, 2),
(161, 3),
(161, 5),
(162, 2),
(162, 3),
(162, 4),
(162, 5),
(163, 2),
(163, 3),
(163, 4),
(163, 5),
(164, 2),
(164, 3),
(164, 4),
(164, 5),
(165, 2),
(165, 3),
(165, 4),
(165, 5),
(166, 2),
(166, 3),
(166, 4),
(166, 5),
(167, 2),
(167, 3),
(167, 5),
(168, 2),
(168, 3),
(168, 5),
(169, 2),
(169, 3),
(169, 5),
(170, 2),
(170, 3),
(170, 4),
(170, 5),
(171, 2),
(171, 3),
(171, 4),
(171, 5),
(172, 2),
(172, 3),
(172, 4),
(172, 5),
(173, 2),
(173, 3),
(173, 4),
(173, 5),
(174, 2),
(174, 3),
(174, 4),
(174, 5),
(175, 2),
(175, 3),
(175, 5),
(176, 2),
(176, 3),
(176, 5),
(177, 2),
(177, 3),
(177, 5),
(178, 1),
(178, 2),
(178, 3),
(178, 4),
(179, 1),
(180, 1),
(180, 2),
(180, 5),
(181, 1),
(181, 5),
(182, 1),
(182, 5),
(183, 2),
(183, 5),
(184, 1),
(185, 2),
(186, 2),
(186, 3),
(186, 4),
(186, 5),
(187, 2),
(187, 3),
(187, 4),
(187, 5),
(188, 2),
(188, 3),
(188, 4),
(188, 5),
(189, 2),
(189, 3),
(189, 4),
(189, 5),
(190, 1),
(190, 2),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 2),
(195, 3),
(195, 5),
(196, 2),
(196, 3),
(196, 5),
(197, 2),
(197, 3),
(197, 5),
(198, 2),
(198, 3),
(198, 5),
(199, 2),
(199, 3),
(199, 4),
(199, 5),
(200, 2),
(200, 5),
(201, 2),
(201, 5),
(202, 2),
(203, 2),
(203, 3),
(203, 5),
(204, 2),
(204, 3),
(204, 5),
(205, 2),
(205, 3),
(205, 5),
(206, 2),
(206, 3),
(206, 5),
(207, 2),
(207, 3),
(207, 5),
(208, 2),
(208, 3),
(208, 5),
(209, 2),
(209, 3),
(210, 2),
(210, 3),
(210, 5),
(211, 2),
(211, 3),
(211, 5),
(212, 2),
(212, 3),
(212, 5),
(213, 2),
(213, 3),
(213, 5),
(214, 2),
(214, 3),
(214, 5),
(215, 2),
(215, 3),
(215, 5),
(216, 2),
(216, 3),
(216, 5),
(217, 2),
(217, 3),
(218, 2),
(218, 3),
(219, 2),
(219, 3),
(220, 2),
(220, 3),
(220, 5),
(221, 2),
(221, 3),
(221, 5),
(222, 2),
(222, 3),
(222, 5),
(223, 2),
(223, 3),
(223, 5),
(224, 2),
(224, 3),
(224, 5),
(225, 2),
(225, 3),
(226, 2),
(226, 3),
(227, 2),
(227, 3),
(228, 2),
(228, 3),
(228, 5),
(229, 2),
(229, 3),
(229, 5),
(230, 2),
(230, 3),
(230, 5),
(231, 2),
(231, 3),
(231, 5),
(232, 2),
(232, 3),
(232, 5),
(233, 2),
(233, 3),
(233, 5),
(234, 2),
(234, 3),
(234, 5),
(235, 2),
(235, 3),
(236, 2),
(236, 3),
(236, 5),
(237, 2),
(237, 3),
(237, 5),
(238, 2),
(238, 3),
(238, 5),
(239, 2),
(239, 3),
(239, 5),
(240, 2),
(240, 3),
(240, 5),
(241, 2),
(241, 3),
(241, 5),
(242, 2),
(243, 2),
(243, 3),
(243, 4),
(243, 5),
(244, 2),
(244, 3),
(244, 5),
(245, 2),
(245, 3),
(245, 5),
(246, 2),
(246, 3),
(246, 5),
(247, 2),
(247, 3),
(247, 5),
(248, 2),
(248, 3),
(248, 5),
(249, 2),
(249, 3),
(249, 5),
(250, 2),
(250, 3),
(250, 5),
(251, 2),
(251, 3),
(251, 5),
(252, 2),
(252, 3),
(252, 5),
(253, 2),
(253, 3),
(253, 5),
(254, 2),
(254, 3),
(254, 5),
(255, 2),
(255, 3),
(255, 5),
(256, 2),
(256, 3),
(256, 5),
(257, 2),
(257, 3),
(257, 5),
(258, 2),
(258, 3),
(258, 5),
(259, 2),
(259, 3),
(259, 5),
(260, 2),
(260, 3),
(260, 5),
(261, 2),
(261, 3),
(261, 5),
(262, 2),
(262, 3),
(262, 5),
(263, 2),
(263, 3),
(263, 5),
(264, 2),
(264, 3),
(264, 5),
(265, 2),
(265, 3),
(265, 5),
(266, 2),
(266, 3),
(267, 2),
(267, 3),
(267, 5),
(268, 2),
(268, 3),
(268, 5),
(269, 2),
(269, 3),
(269, 5),
(270, 2),
(270, 3),
(270, 5),
(271, 2),
(271, 3),
(271, 5),
(272, 2),
(272, 3),
(272, 5),
(273, 2),
(273, 3),
(274, 2),
(274, 3),
(275, 2),
(275, 3),
(276, 2),
(276, 3),
(277, 2),
(277, 3),
(278, 2),
(278, 3),
(278, 4),
(279, 2),
(279, 5),
(280, 2),
(280, 5),
(281, 2),
(281, 5),
(282, 2),
(282, 5);

-- --------------------------------------------------------

--
-- Table structure for table `saturation_deductions`
--

CREATE TABLE `saturation_deductions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `deduction_option` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `set_salaries`
--

CREATE TABLE `set_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terminations`
--

CREATE TABLE `terminations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `notice_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `termination_types`
--

CREATE TABLE `termination_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_created` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_sheets`
--

CREATE TABLE `time_sheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `hours` double(8,2) NOT NULL DEFAULT 0.00,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_sheets`
--

INSERT INTO `time_sheets` (`id`, `employee_id`, `date`, `hours`, `remark`, `created_by`, `created_at`, `updated_at`, `project`, `activity`) VALUES
(3, 5, '2022-01-05', 6.00, 'test', 2, '2022-01-04 19:02:05', '2022-01-04 19:02:05', 'Bankapp', 'design'),
(4, 13, '2022-01-05', 2.00, 'Travel expenses', 2, '2022-01-05 03:06:49', '2022-01-05 07:02:56', 'Kurunga', 'Meeting'),
(5, 10, '2022-01-06', 3.00, 'Work in Progress', 2, '2022-01-05 21:04:08', '2022-01-05 21:04:08', 'USAID - 1010344-09', 'Inspection');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expertise` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `trainer_option` int(11) NOT NULL,
  `training_type` int(11) NOT NULL,
  `trainer` int(11) NOT NULL,
  `training_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `employee` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `performance` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

CREATE TABLE `training_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `transfer_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_balances`
--

CREATE TABLE `transfer_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `referal_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travels`
--

CREATE TABLE `travels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `purpose_of_visit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_visit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan` int(11) DEFAULT NULL,
  `plan_expire_date` date DEFAULT NULL,
  `requested_plan` int(11) NOT NULL DEFAULT 0,
  `last_login` timestamp NULL DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `messenger_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `active_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `avatar`, `lang`, `plan`, `plan_expire_date`, `requested_plan`, `last_login`, `is_active`, `created_by`, `remember_token`, `created_at`, `updated_at`, `messenger_color`, `dark_mode`, `active_status`) VALUES
(1, 'Super Admin', 'superadmin@example.com', NULL, '$2y$10$f4jHLa0qoImDgMvLW21AeeVI.3KbYKiJNsP5qUVSIeyFDpCuep3vG', 'super admin', '', 'en', NULL, NULL, 0, '2022-01-15 08:32:29', 1, '0', NULL, '2022-01-13 10:43:38', '2022-01-15 08:32:29', '#2180f3', 0, 0),
(2, 'company', 'company@example.com', NULL, '$2y$10$a.vNulAbciMIC5FotruTEOMQXL4Tpg60hMIZoL/XDMBWXDVx8Ulza', 'company', '', 'en', 1, NULL, 0, '2022-01-15 08:39:57', 1, '1', NULL, '2022-01-13 10:43:48', '2022-01-15 08:39:57', '#2180f3', 0, 0),
(3, 'hr', 'hr@example.com', NULL, '$2y$10$fqTEO3/XA1fJogbwpmtXTOUD8PpNmoSnK2gEy6V7vqZnNUEKRqQCW', 'hr', '', 'en', NULL, NULL, 0, '2022-01-15 08:57:27', 1, '2', NULL, '2022-01-13 10:43:56', '2022-01-15 08:57:27', '#2180f3', 0, 0),
(4, 'Ray', 'ray@example.com', NULL, '$2y$10$KpemibWxnqj3ioUqb2n/reiNdztVQ57f4pSbFuXMLeSkjj7bzTaRq', 'employee', NULL, 'en', NULL, NULL, 0, '2022-01-15 07:50:51', 1, '2', NULL, '2022-01-13 12:04:49', '2022-01-15 07:50:51', '#2180f3', 0, 0),
(5, 'Jay Kay', 'jay@example.com', NULL, '$2y$10$C3mYoo6DW/CyP8CxwLZDr.3Hj6U5eJ6wN./nJ51hIXgON/pXPtyMK', 'employee', NULL, 'en', NULL, NULL, 0, '2022-01-15 08:16:41', 1, '2', NULL, '2022-01-15 08:16:03', '2022-01-15 08:16:41', '#2180f3', 0, 0),
(6, 'Manager', 'manager@example.com', NULL, '$2y$10$kmrBhjiQ1tplRRPU448QT.PcHfUbdvKekF1PQ/Sz69b1d6lshCWQe', 'Project manager', NULL, '', NULL, NULL, 0, '2022-01-15 08:37:58', 1, '2', NULL, '2022-01-15 08:37:39', '2022-01-15 08:37:58', '#2180f3', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_coupons`
--

CREATE TABLE `user_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warnings`
--

CREATE TABLE `warnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warning_to` int(11) NOT NULL,
  `warning_by` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warning_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zoom_meetings`
--

CREATE TABLE `zoom_meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `duration` int(11) NOT NULL DEFAULT 0,
  `start_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'waiting',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_lists`
--
ALTER TABLE `account_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_payment_settings`
--
ALTER TABLE `admin_payment_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_payment_settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `allowances`
--
ALTER TABLE `allowances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allowance_options`
--
ALTER TABLE `allowance_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement_employees`
--
ALTER TABLE `announcement_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appraisals`
--
ALTER TABLE `appraisals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_employees`
--
ALTER TABLE `attendance_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `award_types`
--
ALTER TABLE `award_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_policies`
--
ALTER TABLE `company_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competencies`
--
ALTER TABLE `competencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_questions`
--
ALTER TABLE `custom_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction_options`
--
ALTER TABLE `deduction_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ducument_uploads`
--
ALTER TABLE `ducument_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_employees`
--
ALTER TABLE `event_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genrate_payslip_options`
--
ALTER TABLE `genrate_payslip_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_trackings`
--
ALTER TABLE `goal_trackings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_types`
--
ALTER TABLE `goal_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_types`
--
ALTER TABLE `income_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indicators`
--
ALTER TABLE `indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_restricts`
--
ALTER TABLE `ip_restricts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_application_notes`
--
ALTER TABLE `job_application_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_on_boards`
--
ALTER TABLE `job_on_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_stages`
--
ALTER TABLE `job_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_page_sections`
--
ALTER TABLE `landing_page_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_options`
--
ALTER TABLE `loan_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_employees`
--
ALTER TABLE `meeting_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_id_unique` (`order_id`);

--
-- Indexes for table `other_payments`
--
ALTER TABLE `other_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtimes`
--
ALTER TABLE `overtimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payees`
--
ALTER TABLE `payees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payers`
--
ALTER TABLE `payers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_types`
--
ALTER TABLE `payslip_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_slips`
--
ALTER TABLE `pay_slips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance__types`
--
ALTER TABLE `performance__types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_name_unique` (`name`);

--
-- Indexes for table `plan_requests`
--
ALTER TABLE `plan_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resignations`
--
ALTER TABLE `resignations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `saturation_deductions`
--
ALTER TABLE `saturation_deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `set_salaries`
--
ALTER TABLE `set_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terminations`
--
ALTER TABLE `terminations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termination_types`
--
ALTER TABLE `termination_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_sheets`
--
ALTER TABLE `time_sheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_balances`
--
ALTER TABLE `transfer_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_coupons`
--
ALTER TABLE `user_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warnings`
--
ALTER TABLE `warnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_lists`
--
ALTER TABLE `account_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_payment_settings`
--
ALTER TABLE `admin_payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `allowances`
--
ALTER TABLE `allowances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allowance_options`
--
ALTER TABLE `allowance_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement_employees`
--
ALTER TABLE `announcement_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appraisals`
--
ALTER TABLE `appraisals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_employees`
--
ALTER TABLE `attendance_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `award_types`
--
ALTER TABLE `award_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_policies`
--
ALTER TABLE `company_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `competencies`
--
ALTER TABLE `competencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_questions`
--
ALTER TABLE `custom_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deduction_options`
--
ALTER TABLE `deduction_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ducument_uploads`
--
ALTER TABLE `ducument_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_employees`
--
ALTER TABLE `event_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genrate_payslip_options`
--
ALTER TABLE `genrate_payslip_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal_trackings`
--
ALTER TABLE `goal_trackings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal_types`
--
ALTER TABLE `goal_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income_types`
--
ALTER TABLE `income_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_restricts`
--
ALTER TABLE `ip_restricts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_application_notes`
--
ALTER TABLE `job_application_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_on_boards`
--
ALTER TABLE `job_on_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_stages`
--
ALTER TABLE `job_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `landing_page_sections`
--
ALTER TABLE `landing_page_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_options`
--
ALTER TABLE `loan_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_employees`
--
ALTER TABLE `meeting_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `other_payments`
--
ALTER TABLE `other_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `overtimes`
--
ALTER TABLE `overtimes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payees`
--
ALTER TABLE `payees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payers`
--
ALTER TABLE `payers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payslip_types`
--
ALTER TABLE `payslip_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_slips`
--
ALTER TABLE `pay_slips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance__types`
--
ALTER TABLE `performance__types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plan_requests`
--
ALTER TABLE `plan_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resignations`
--
ALTER TABLE `resignations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `saturation_deductions`
--
ALTER TABLE `saturation_deductions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `set_salaries`
--
ALTER TABLE `set_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terminations`
--
ALTER TABLE `terminations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `termination_types`
--
ALTER TABLE `termination_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_sheets`
--
ALTER TABLE `time_sheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_balances`
--
ALTER TABLE `transfer_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travels`
--
ALTER TABLE `travels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_coupons`
--
ALTER TABLE `user_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warnings`
--
ALTER TABLE `warnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
