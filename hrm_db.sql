-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2022 at 09:42 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_code` char(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `admin_type` tinyint(1) DEFAULT 2,
  `designation_id` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0,
  `is_deleted` tinyint(1) DEFAULT 0,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_code`, `user_name`, `password`, `avatar`, `email`, `phone`, `admin_type`, `designation_id`, `salary`, `role_id`, `is_active`, `is_deleted`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 'NV-LELBCR9E', 'admin', '$2y$10$BaSuNbkAbqAcIpmEXss9ve/I5LYqAthYA/PWwE7hLaSQkqGaloKKm', 'uploads/avatar/1651252686YuTTI.png', 'admin@gmail.com', '03953421233', 1, 4, 20000000, NULL, 1, 0, NULL, NULL, '2022-04-16 01:38:47'),
(2, 'NV-1650128635vO', 'binhnt.it28', '$2y$10$odra93wNz2URj9yaP2T3YODuCiy2nXjAN5STPgF3ifsUwY3fBtphe', NULL, 'binhnt.it28@gmail.com', NULL, 2, 1, NULL, 3, 1, 1, NULL, NULL, '2022-04-17 00:03:55'),
(3, 'NV-1650535367DR', 'binhnt', '$2y$10$VfzUJY69LnrQtDkLkhWILOVSUEVMfD81vqtvkthJuz4qmubPaS/IW', NULL, 'binhnt@gmail.com', '0385342134', 2, 1, 3000000, 4, 1, 0, NULL, NULL, '2022-04-21 17:02:47'),
(4, 'NV-1650549834HT', 'vietanh7200', '$2y$10$38K/ZD4OC2SBPsM8XF6cSuA5PTekCS.T5NKEqO53fVxuuDMAhhcg6', NULL, 'vietanh7200@gmail.com', '0389785322', 2, 1, NULL, 1, 1, 0, NULL, 3, '2022-04-21 21:03:55'),
(5, 'NV-1650550685E1', 'toan', '$2y$10$YjoFtMDhup6fHos54L3LuexnojGSNZdT0RHEk2Y0M/JSlL.rsrK0e', NULL, 'nvpt@gmail.com', '0398783945', 2, 1, NULL, 1, 1, 0, NULL, 3, '2022-04-21 21:18:06'),
(6, 'NV-1650725074BP', 'user1', '$2y$10$BaSuNbkAbqAcIpmEXss9ve/I5LYqAthYA/PWwE7hLaSQkqGaloKKm', NULL, 'user1@gmail.com', '0389785345', 2, 1, NULL, 4, 1, 0, NULL, NULL, '2022-04-23 21:44:34'),
(7, 'NV-1652343444VU', 'thanhbinh', '$2y$10$U9rmu8fTIdpMKnHwCoKZfebrHbWiqj/Op8h7WLdVG/Kx0mZ5pSSDG', NULL, 'thanhbinh@abc.io', NULL, 2, NULL, NULL, NULL, 1, 0, NULL, NULL, '2022-05-12 15:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `admin_detail`
--

CREATE TABLE `admin_detail` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT 0,
  `identity_number` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_detail`
--

INSERT INTO `admin_detail` (`id`, `admin_id`, `fullname`, `birthday`, `address`, `gender`, `identity_number`) VALUES
(1, 1, 'Quản trị cấp cao', NULL, '33 Xô Viết Nghệ Tĩnh, Hải Châu , Đà Nẵng', 2, '215528806'),
(2, 2, 'Bình', NULL, NULL, 1, NULL),
(3, 3, 'Nguyễn Thanh Bình', NULL, NULL, 0, NULL),
(4, 4, 'Nguyễn Thị Việt Ánh', NULL, NULL, 0, NULL),
(5, 5, 'Nguyễn Văn Phước Toàn 1', '2000-06-23', NULL, 1, '2894394383'),
(6, 6, 'User 1', '2022-04-11', NULL, 1, '2131321321321'),
(7, 7, 'Thanh Bình', NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_education`
--

CREATE TABLE `admin_education` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `education_content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_education`
--

INSERT INTO `admin_education` (`id`, `admin_id`, `date_start`, `date_end`, `education_content`) VALUES
(1, 2, '2018-04-26', '2022-04-21', 'Đại học đông á'),
(2, 2, '2018-04-25', '2022-04-21', 'Đại học Bách Khoa'),
(3, 1, '2018-09-10', '2022-05-11', 'Cử nhân Công nghệ thông tin tại Đại học Đông Á');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

CREATE TABLE `bank_info` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_number` char(20) DEFAULT NULL,
  `bank_author` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank_info`
--

INSERT INTO `bank_info` (`id`, `admin_id`, `bank_name`, `bank_number`, `bank_author`) VALUES
(1, 1, 'vietcombank', '0431000259296', 'Nguyen Thanh Binh'),
(2, 2, NULL, NULL, NULL),
(3, 3, NULL, NULL, NULL),
(4, 4, NULL, NULL, NULL),
(5, 5, NULL, NULL, NULL),
(6, 6, NULL, NULL, NULL),
(7, 7, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT 0,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `birthday`, `phone`, `email`, `address`, `gender`, `avatar`) VALUES
(1, 'Công ty bất động sản Đà Nẵng', '2022-05-16', '0395432134', 'danang@gmail.com', '33 Xô Viết Nghệ Tĩnh, Đà Nẵng', 0, NULL),
(3, 'Bình Nguyễn', '2022-05-09', '0395342134', 'binhnt.it28@gmail.com', 'Hải Châu , Đà Nẵng', 1, 'uploads/customer/1652341979-noIn.png');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `created_at`) VALUES
(1, 'Web Development1', '2022-05-07 19:42:26'),
(2, 'Application Development', '2022-05-07 19:42:26'),
(3, 'IT Management', '2022-05-07 19:42:26'),
(4, 'Tester', '2022-05-07 19:42:26'),
(5, 'HR', '2022-05-07 19:42:26'),
(8, 'test', '2022-05-07 22:52:46'),
(9, 'PM1', '2022-05-12 14:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `name`, `department_id`, `is_deleted`, `created_at`) VALUES
(2, 'NodeJS Development1', 1, 0, NULL),
(3, 'Flutter dev', 2, 0, '2022-05-08 00:16:55'),
(4, 'Laravel development', 1, 0, '2022-05-12 14:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `id` int(11) NOT NULL,
  `device_name` varchar(100) NOT NULL,
  `buy_date` datetime DEFAULT NULL,
  `device_price` int(11) DEFAULT NULL,
  `device_status` tinyint(1) DEFAULT 0,
  `admin_id` int(11) DEFAULT NULL,
  `device_group_id` int(11) DEFAULT NULL,
  `device_image` text DEFAULT NULL,
  `device_description` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`id`, `device_name`, `buy_date`, `device_price`, `device_status`, `admin_id`, `device_group_id`, `device_image`, `device_description`, `created_by`) VALUES
(1, 'Laptop', '2022-08-10 17:07:24', 10000000, 1, 5, 3, NULL, NULL, 1),
(2, 'Laptop Asus TUF Gaming FX506LH i5 10300H/8GB/512GB/4GB GTX1650/144Hz/Win11', '2022-05-11 03:04:30', 18990000, 1, 5, 1, 'a:2:{i:0;s:34:\"uploads/device/1652221286-SBM6.png\";i:1;s:34:\"uploads/device/1652221286-IlmK.jpg\";}', '• Sở hữu chip Intel Core i5 Comet Lake 10300H và card GeForce GTX 1650 4 GB từ nhà NVIDIA xử lý hoàn hảo mọi nhu cầu từ văn phòng đến đồ họa nặng hay thậm chí hỗ trợ bạn chiến các tựa game hấp dẫn: CS:GO, Fifa Online 4, GTA V,...\r\n\r\n• Cùng RAM 8 GB và SSD 512 GB nâng cao tốc độ phản hồi, hạn chế tình trạng giật hay lag máy khi bạn mở nhiều ứng dụng cùng lúc hay chuyển đổi qua lại, tối ưu hiệu suất cho laptop.\r\n\r\n• Các chuyển động diễn ra trơn tru, nắm bắt mọi khoảnh khắc trong game, giảm độ trễ nhờ tần số quét màn hình 144 Hz.\r\n\r\n• Độ sáng 250 nits, chống chói Anti Glare và tấm nền IPS được trang bị trên màn hình 15.6 inch hạn chế hiện bóng gương khi cường độ ánh sáng cao, cho hiển thị rõ nét ở những chỗ điều kiện ánh sáng kém, góc nhìn được mở rộng, trải nghiệm hình ảnh sắc nét, chân thật.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `device_group`
--

CREATE TABLE `device_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device_group`
--

INSERT INTO `device_group` (`id`, `name`) VALUES
(1, 'Máy tính'),
(2, 'Máy in'),
(3, 'Máy photocopy'),
(4, 'Camera'),
(5, 'Máy chiếu');

-- --------------------------------------------------------

--
-- Table structure for table `device_history`
--

CREATE TABLE `device_history` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `device_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device_history`
--

INSERT INTO `device_history` (`id`, `admin_id`, `device_id`, `created_at`, `created_by`, `type`) VALUES
(1, 4, 1, '2022-05-11 04:29:08', 1, 0),
(2, 4, 1, '2022-05-11 04:34:31', 1, 1),
(3, 5, 2, '2022-05-11 04:48:00', 1, 0),
(4, 3, 1, '2022-05-11 16:04:33', 1, 0),
(5, 3, 1, '2022-05-11 16:04:53', 1, 1),
(6, 5, 1, '2022-05-12 14:53:20', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `type` tinyint(1) DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `customer_id`, `content`, `status`, `created_at`, `type`, `created_by`, `total`) VALUES
(1, 1, 'Thanh toán dự án nhà đất', 1, '2022-05-12 05:38:00', 0, 1, 5000000),
(2, NULL, 'Mua laptop asus A506', 1, '2022-05-12 06:10:54', 1, 1, 20000000),
(3, NULL, 'Thanh toán dự án', 1, '2022-05-12 14:57:46', 0, 1, 30000000);

-- --------------------------------------------------------

--
-- Table structure for table `log_project`
--

CREATE TABLE `log_project` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `log_type` varchar(255) DEFAULT NULL,
  `log_type_id` int(11) DEFAULT NULL,
  `log_content` varchar(255) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `assign_member` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_project`
--

INSERT INTO `log_project` (`id`, `admin_id`, `log_type`, `log_type_id`, `log_content`, `project_id`, `assign_member`, `created_at`) VALUES
(1, 1, 'thêm task A1 - Đăng kí - Đăng nhập', 1, 'A1 - Đăng kí - Đăng nhập', 1, NULL, NULL),
(2, 1, NULL, 2, 'Quản lý banner -> Quản lý nhân viên', 1, NULL, NULL),
(3, 1, NULL, 4, NULL, 1, '[\"6\"]', '2022-04-23 22:09:32'),
(4, 1, NULL, 4, NULL, 1, '[\"6\"]', '2022-04-23 22:10:21'),
(5, 1, NULL, 4, NULL, 1, '[\"6\"]', '2022-04-23 22:45:54'),
(6, 1, NULL, 5, NULL, 1, '[\"6\"]', '2022-04-23 22:50:06'),
(7, 1, NULL, 4, NULL, 1, '[\"5\",\"6\"]', '2022-04-24 00:07:46'),
(8, 1, NULL, 5, NULL, 1, '[5]', '2022-04-24 00:09:20'),
(9, 1, NULL, 4, NULL, 1, '[\"5\"]', '2022-04-24 00:59:39'),
(10, 1, NULL, 3, 'Quản lý nhân viên', 1, NULL, '2022-04-24 01:50:25'),
(11, 1, NULL, 1, 'Quản lý dự án', 1, NULL, NULL),
(12, 1, NULL, 1, 'Quản lý tài khoản cá nhân', 1, NULL, NULL),
(13, 1, NULL, 4, NULL, 1, '[\"1\"]', '2022-04-25 00:22:22'),
(14, 6, NULL, 1, 'Đăng kí - đăng nhập', 2, NULL, NULL),
(15, 6, NULL, 1, 'Quản lý danh mục', 2, NULL, '2022-04-25 00:45:46'),
(16, 1, NULL, 5, NULL, 1, '[6]', '2022-05-11 17:01:23'),
(17, 1, NULL, 4, NULL, 1, '[\"6\"]', '2022-05-11 17:01:31'),
(18, 1, NULL, 3, 'Quản lý tài khoản cá nhân', 1, NULL, '2022-05-12 05:26:35'),
(19, 4, NULL, 1, 'Phân tích yêu cầu', 3, NULL, '2022-05-12 07:14:14'),
(20, 1, NULL, 1, 'Quản lý nhân viên1', 1, NULL, '2022-05-12 14:58:45'),
(21, 1, NULL, 5, NULL, 1, '[6]', '2022-05-12 14:58:56'),
(22, 1, NULL, 4, NULL, 1, '[\"6\"]', '2022-05-12 14:59:03'),
(23, 1, NULL, 4, NULL, 1, '[\"7\"]', '2022-05-12 15:21:59'),
(24, 1, NULL, 5, NULL, 1, '[4]', '2022-05-12 15:23:07'),
(25, 1, NULL, 1, 'A1 - Đăng kí - Đăng nhập', 5, NULL, '2022-06-11 14:14:06'),
(26, 1, NULL, 4, NULL, 5, '[\"6\"]', '2022-06-11 14:14:18'),
(27, 1, NULL, 1, 'Quản lý dự án', 5, NULL, '2022-06-11 14:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `log_task`
--

CREATE TABLE `log_task` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `log_type_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `assign_member` varchar(255) DEFAULT NULL,
  `log_content` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_task`
--

INSERT INTO `log_task` (`id`, `admin_id`, `log_type_id`, `task_id`, `project_id`, `assign_member`, `log_content`, `created_at`) VALUES
(1, 1, 6, 2, NULL, '[\"6\"]', NULL, NULL),
(2, 1, 6, 2, NULL, '[\"3\"]', NULL, NULL),
(3, 1, 8, 2, 1, NULL, 'Hoàn thành -> Hoàn thành', '2022-04-24 23:19:18'),
(4, 1, 8, 2, 1, NULL, 'Lỗi -> Đang kiểm tra', '2022-04-24 23:19:58'),
(5, 1, 8, 2, 1, NULL, 'Đang kiểm tra -> Hoàn thành', '2022-04-24 23:30:37'),
(6, 1, 6, 4, 1, '[\"3\"]', NULL, '2022-04-24 23:51:26'),
(7, 1, 7, 2, 1, '[\"3\"]', NULL, '2022-04-24 23:59:01'),
(8, 1, 8, 4, 1, NULL, 'Đang chờ -> Hoàn thành', '2022-04-25 00:02:37'),
(9, 1, 8, 3, 1, NULL, 'Đang chờ -> Đang làm ', '2022-04-25 00:07:19'),
(10, 1, 8, 3, 1, NULL, 'Đang làm  -> Hoàn thành', '2022-04-25 00:14:35'),
(11, 1, 6, 2, 1, '[\"3\"]', NULL, '2022-04-25 00:15:15'),
(12, 1, 8, 2, 1, NULL, 'Hoàn thành -> Đang kiểm tra', '2022-04-25 00:15:27'),
(13, 1, 6, 5, 1, '[\"1\"]', NULL, '2022-04-25 00:22:34'),
(14, 6, 6, 2, 1, '[\"2\"]', NULL, '2022-04-25 00:24:39'),
(15, 1, 8, 2, 1, NULL, 'Đang kiểm tra -> Hoàn thành', '2022-04-29 00:08:53'),
(16, 1, 8, 2, 1, NULL, 'Hoàn thành -> Đang làm ', '2022-04-29 00:09:35'),
(17, 1, 8, 2, 1, NULL, 'Đang làm  -> Lỗi', '2022-04-29 00:17:15'),
(18, 1, 6, 2, 1, '[\"4\"]', NULL, '2022-04-29 00:17:25'),
(19, 1, 6, 2, 1, '[\"5\"]', NULL, '2022-05-11 16:09:12'),
(20, 1, 8, 2, 1, NULL, 'Lỗi -> Chờ xác nhận', '2022-05-11 16:09:35'),
(21, 4, 6, 8, 1, '[\"3\"]', NULL, '2022-05-12 07:14:29'),
(22, 1, 7, 2, 1, '[\"5\"]', NULL, '2022-05-12 14:59:30'),
(23, 1, 6, 2, 1, '[\"6\"]', NULL, '2022-05-12 14:59:36'),
(24, 1, 8, 2, 1, NULL, 'Chờ xác nhận -> Hoàn thành', '2022-05-12 14:59:55'),
(25, 7, 8, 2, 1, NULL, 'Hoàn thành -> Đang làm ', '2022-05-12 15:24:07'),
(26, 1, 6, 10, 1, '[\"3\"]', NULL, '2022-06-11 14:14:50'),
(27, 1, 8, 10, 5, NULL, 'Đang chờ -> Đang làm ', '2022-06-11 14:15:15'),
(28, 1, 8, 10, 5, NULL, 'Đang làm  -> Hoàn thành', '2022-06-11 14:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `log_type_group`
--

CREATE TABLE `log_type_group` (
  `id` int(11) NOT NULL,
  `content` varchar(100) NOT NULL,
  `type` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_type_group`
--

INSERT INTO `log_type_group` (`id`, `content`, `type`) VALUES
(1, 'thêm task', 1),
(2, 'sửa task', 1),
(3, 'xóa task', 1),
(4, 'thêm', 1),
(5, 'xóa', 1),
(6, 'thêm', 2),
(7, 'xóa', 2),
(8, 'đổi trạng thái', 2);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `admin_id`, `content`, `created_at`) VALUES
(1, 1, 'test', '2022-05-11 21:13:06'),
(2, 2, 'test test', '2022-05-11 22:13:06'),
(3, 1, 'dfsadsadsa', '2022-05-11 21:19:35'),
(4, 1, 'dsadsa', '2022-05-11 21:24:36'),
(5, 1, 'dsa', '2022-05-11 21:45:18'),
(6, 1, '123', '2022-05-11 21:47:59'),
(7, 1, 'ưewqe', '2022-05-11 21:57:23'),
(8, 1, 'dsadsa', '2022-05-11 21:57:48'),
(9, 1, 'dsad', '2022-05-11 21:59:43'),
(10, 1, 'dsadsa', '2022-05-11 22:00:07'),
(11, 1, 'dsadsad', '2022-05-11 22:02:48'),
(12, 1, 'dsadsa', '2022-05-11 22:03:56'),
(13, 1, 'dsadsa', '2022-05-11 22:08:31'),
(14, 1, '123', '2022-05-11 22:08:34'),
(15, 2, 'đâs', '2022-05-11 22:11:23'),
(16, 2, 'dsad', '2022-05-11 22:11:47'),
(17, 2, 'dsadas', '2022-05-11 22:13:44'),
(18, 2, 'dsa', '2022-05-11 22:14:26'),
(19, 2, 'dsada', '2022-05-11 22:14:46'),
(20, 2, 'dsadsa', '2022-05-11 22:14:49'),
(21, 2, 'dsada', '2022-05-11 22:15:06'),
(22, 2, 'dsadas', '2022-05-11 22:15:09'),
(23, 1, 'dsad', '2022-05-11 22:17:40'),
(24, 1, 'dsadas', '2022-05-11 22:20:34'),
(25, 1, 'dsad', '2022-05-11 22:20:54'),
(26, 2, 'dsad', '2022-05-11 22:27:29'),
(27, 2, 'dsadsada', '2022-05-11 22:29:01'),
(28, 1, 'dsadsa', '2022-05-11 22:30:04'),
(29, 1, 'dsa', '2022-05-11 22:34:23'),
(30, 1, 'dsa', '2022-05-11 22:35:57'),
(31, 1, 'dsada', '2022-05-11 22:36:37'),
(32, 1, 'dsasadsa', '2022-05-11 22:38:21'),
(33, 2, 'dsadsa', '2022-05-11 22:38:36'),
(34, 1, 'dsadsa', '2022-05-11 22:40:39'),
(35, 1, 'dsadsa', '2022-05-11 22:41:49'),
(36, 2, 'dsadsadsadsa', '2022-05-11 22:42:01'),
(37, 1, 'dsadsa', '2022-05-11 22:42:58'),
(38, 2, 'dsadsadsad', '2022-05-11 22:43:20'),
(39, 1, 'dsada', '2022-05-11 22:47:20'),
(40, 1, 'dsadsa', '2022-05-11 22:59:21'),
(41, 2, 'dsada', '2022-05-11 22:59:57'),
(42, 2, 'dsadsa', '2022-05-11 23:00:14'),
(43, 2, 'dsadsadsadsadsad', '2022-05-11 23:08:05'),
(44, 2, 'dsadsa', '2022-05-11 23:09:07'),
(45, 2, 'dsad', '2022-05-11 23:11:26'),
(46, 1, 'dsadsadsa', '2022-05-11 23:13:16'),
(47, 1, 'dsadsa', '2022-05-11 23:22:20'),
(48, 2, 'dsadsa', '2022-05-11 23:22:34'),
(49, 1, 'dsadsa', '2022-05-11 23:22:59'),
(50, 2, 'dsadsa', '2022-05-11 23:24:20'),
(51, 2, 'dsada', '2022-05-11 23:26:37'),
(52, 2, 'sdsada', '2022-05-11 23:36:55'),
(53, 2, 'dssadadasdasdsad', '2022-05-11 23:37:39'),
(54, 2, 'sâdsadsa', '2022-05-11 23:40:21'),
(55, 2, 'dsadasd', '2022-05-11 23:41:18'),
(56, 2, 'dsadsad', '2022-05-11 23:42:23'),
(57, 2, 'dsadsad', '2022-05-11 23:42:56'),
(58, 2, 'dsadâd', '2022-05-11 23:44:35'),
(59, 2, 'dsadâd', '2022-05-11 23:45:13'),
(60, 2, 'dsadấd', '2022-05-11 23:45:21'),
(61, 2, 'dsadâdaad', '2022-05-11 23:46:15'),
(62, 2, 'dsadâdaadsad', '2022-05-11 23:46:49'),
(63, 2, 'dsadâdâd', '2022-05-11 23:48:57'),
(64, 2, 'dsadâdaad', '2022-05-11 23:51:19'),
(65, 2, 'dsadâd', '2022-05-11 23:52:07'),
(66, 1, '123123', '2022-05-12 03:30:44'),
(67, 1, '123123', '2022-05-12 03:30:59'),
(68, 1, '123', '2022-05-12 03:31:23'),
(69, 1, 'test', '2022-05-12 03:31:41'),
(70, 1, '1234', '2022-05-12 03:32:22'),
(71, 1, '12345', '2022-05-12 03:33:03'),
(72, 1, '123312', '2022-05-12 03:33:53'),
(73, 1, '1232131', '2022-05-12 03:34:31'),
(74, 1, '123', '2022-05-12 03:34:58'),
(75, 1, '123231321', '2022-05-12 03:35:19'),
(76, 1, '123321', '2022-05-12 03:36:42'),
(77, 1, '123', '2022-05-12 03:37:49'),
(78, 1, '1232133', '2022-05-12 03:38:03'),
(79, 1, '12321321', '2022-05-12 03:38:10'),
(80, 1, '123213', '2022-05-12 03:38:32'),
(81, 1, 'ok', '2022-05-12 03:39:36'),
(82, 1, 'dsa', '2022-05-12 03:41:52'),
(83, 1, 'dsadsadsa', '2022-05-12 03:41:56'),
(84, 1, 'OKE NHA', '2022-05-12 03:42:39'),
(85, 1, '321321', '2022-05-12 03:43:47'),
(86, 1, '321321', '2022-05-12 03:45:27'),
(87, 1, '12321321', '2022-05-12 03:47:01'),
(88, 1, 'ólfjdskl', '2022-05-12 03:47:12'),
(89, 1, 'oiyouio', '2022-05-12 03:47:22'),
(90, 2, 'dsa', '2022-05-12 03:50:36'),
(91, 2, 'ừ', '2022-05-12 03:51:05'),
(92, 2, 'RỒi seo', '2022-05-12 03:51:17'),
(93, 2, 'À thế à', '2022-05-12 03:51:26'),
(94, 1, 'à cái gì', '2022-05-12 03:51:32'),
(95, 2, 'sahdlkjsaldsja', '2022-05-12 03:51:38'),
(96, 1, 'đấ', '2022-05-12 03:55:00'),
(97, 1, 'dsadsa', '2022-05-12 03:55:06'),
(98, 1, 'dsadsa', '2022-05-12 03:55:32'),
(99, 2, 'dsadsa', '2022-05-12 03:55:35'),
(100, 2, 'dsadsa', '2022-05-12 03:55:39'),
(101, 2, '321321321', '2022-05-12 03:57:00'),
(102, 1, 'odksada', '2022-05-12 03:59:02'),
(103, 4, 'dsadsada', '2022-05-12 04:08:02'),
(104, 4, '321321', '2022-05-12 04:12:35'),
(105, 4, '111', '2022-05-12 04:12:43'),
(106, 1, '31321', '2022-05-12 04:17:49'),
(107, 1, '12321', '2022-05-12 04:22:05'),
(108, 1, '321321', '2022-05-12 04:24:58'),
(109, 4, 'dsadsa', '2022-05-12 04:26:18'),
(110, 1, '321321', '2022-05-12 04:27:15'),
(111, 4, 'dsadsa', '2022-05-12 04:27:45'),
(112, 4, 'dsadsadsada', '2022-05-12 04:28:59'),
(113, 4, '1234', '2022-05-12 04:29:10'),
(114, 1, '12321321', '2022-05-12 04:29:30'),
(115, 1, '123321', '2022-05-12 04:32:41'),
(116, 4, '321321', '2022-05-12 04:33:14'),
(117, 1, '321321321', '2022-05-12 04:34:52'),
(118, 1, 'ABCDF', '2022-05-12 04:35:02'),
(119, 1, '123', '2022-05-12 13:17:46'),
(120, 4, '456', '2022-05-12 13:17:58'),
(121, 1, '12312321', '2022-05-12 13:18:01'),
(122, 1, '31321321321', '2022-05-12 13:20:16'),
(123, 4, '3213213213', '2022-05-12 13:20:19'),
(124, 6, 'xin chào', '2022-05-12 15:02:22'),
(125, 1, 'oke', '2022-06-11 14:19:20'),
(126, 1, 'ok', '2022-06-11 14:19:26'),
(127, 1, 'dsada', '2022-06-11 14:21:40'),
(128, 1, 'dsads', '2022-06-11 14:21:43'),
(129, 6, '123', '2022-06-11 14:22:22'),
(130, 6, '456', '2022-06-11 14:23:27'),
(131, 1, 'abc', '2022-06-11 14:23:37'),
(132, 6, 'ewdwqdwq', '2022-06-11 14:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `noti_content` varchar(255) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `noti_type` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `admin_id`, `noti_content`, `task_id`, `project_id`, `noti_type`, `created_at`, `is_read`) VALUES
(1, 6, 'thêm vào task', 2, 1, 2, '2022-04-24 22:48:50', 0),
(2, 3, 'thêm vào task', 2, 1, 2, '2022-04-24 22:54:10', 0),
(3, 3, 'thêm vào task', 4, 1, 2, '2022-04-24 23:51:26', 0),
(4, 3, 'xóa khỏi task', 2, 1, 2, '2022-04-24 23:59:01', 0),
(5, 3, 'thêm vào task', 2, 1, 2, '2022-04-25 00:15:15', 0),
(6, 1, 'thêm vào task', 5, 1, 2, '2022-04-25 00:22:34', 0),
(7, 2, 'thêm vào task', 2, 1, 2, '2022-04-25 00:24:39', 0),
(8, 4, 'thêm vào task', 2, 1, 2, '2022-04-29 00:17:25', 0),
(9, 5, 'thêm vào task', 2, 1, 2, '2022-05-11 16:09:12', 0),
(10, 3, 'thêm vào task', 8, 1, 2, '2022-05-12 07:14:29', 0),
(11, 5, 'xóa khỏi task', 2, 1, 2, '2022-05-12 14:59:29', 0),
(12, 6, 'thêm vào task', 2, 1, 2, '2022-05-12 14:59:36', 0),
(13, 3, 'thêm vào task', 10, 1, 2, '2022-06-11 14:14:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `page_icon` varchar(100) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_page` tinyint(4) DEFAULT 0,
  `show_order` int(11) DEFAULT 0,
  `page_type` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `page_name`, `page_icon`, `page_url`, `parent_id`, `created_at`, `is_page`, `show_order`, `page_type`) VALUES
(1, 'Thống kê dữ liệu', '<i class=\"la la-dashboard\"></i>', '/quan-tri/thong-ke-du-lieu', NULL, NULL, 1, 0, 0),
(2, 'Cấu hình hệ thống', '<i class=\"la la-cog\"></i>', '/quan-tri/cau-hinh-he-thong', NULL, NULL, 1, 0, 0),
(3, 'Quản lý nhân viên', '<i class=\"la la-user\"></i>', '<null>', NULL, NULL, 0, 0, 0),
(4, 'Phòng ban - vai trò', '<i class=\"la la-share-alt\"></i>', NULL, NULL, NULL, 0, 0, 0),
(5, 'Quản lý khách hàng', '<i class=\"la la-users\"></i>', NULL, NULL, NULL, 0, 0, 0),
(7, 'Tài sản - thiết bị', '<i class=\"la la-money\"></i>', NULL, NULL, NULL, 0, 0, 0),
(8, 'Quản lý phân quyền', '<i class=\"la la-key\"></i>', NULL, NULL, NULL, 0, 0, 0),
(9, 'Quản lý dự án', '<i class=\"la la-rocket\"></i>', NULL, NULL, NULL, 0, 0, 0),
(10, 'Danh sách nhân viên', NULL, '/quan-tri/quan-ly-nhan-vien', 3, NULL, 0, 0, 0),
(11, 'Dự án', '<i class=\"la la-rocket\"></i>', NULL, NULL, NULL, 0, 0, 1),
(12, 'Danh sách phòng ban', NULL, '/quan-tri/phong-ban', 4, NULL, 0, 0, 0),
(13, 'Danh sách vai trò', NULL, '/quan-tri/vai-tro', 4, NULL, 0, 0, 0),
(14, 'Danh sách dự án', NULL, '/quan-tri/du-an', 9, NULL, 0, 0, 0),
(15, 'Danh sách khách hàng', NULL, '/quan-tri/khach-hang', 5, NULL, 0, 0, 0),
(16, 'Danh sách thiết bị', NULL, '/quan-tri/thiet-bi', 7, NULL, 0, 0, 0),
(17, 'Lịch sử', NULL, '/quan-tri/lich-su-thiet-bi', 7, NULL, 0, 0, 0),
(18, 'Danh sách quyền', NULL, '/quan-tri/phan-quyen', 8, NULL, 0, 0, 0),
(19, 'Danh sách dự án', NULL, '/du-an', 11, NULL, 0, 0, 1),
(20, 'Phân quyền', NULL, '/quan-tri/danh-sach-phan-quyen', 8, NULL, 0, 0, 0),
(21, 'Danh sách đã xóa', NULL, '/quan-tri/nhan-vien-da-xoa', 3, NULL, 0, 0, 0),
(23, 'Quản lý lương', '<i class=\"la la-users\"></i>', '<null>', NULL, NULL, 0, 0, 0),
(24, 'Lương nhân viên', NULL, '/quan-tri/luong-nhan-vien', 23, NULL, 0, 0, 0),
(25, 'Hóa đơn', '<i class=\"la la-ticket\"></i>', NULL, NULL, NULL, 0, 0, 0),
(26, 'Lịch sử', NULL, '/quan-tri/lich-su-luong', 23, NULL, 0, 0, 0),
(27, 'Chat', '<i class=\"la la-ticket\"></i>', '/chat-room', NULL, NULL, 1, 0, 1),
(28, 'Danh sách', NULL, '/quan-tri/hoa-don', 25, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `technology` varchar(255) DEFAULT NULL,
  `project_description` text DEFAULT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `link_source` varchar(255) DEFAULT NULL,
  `link_document` varchar(255) DEFAULT NULL,
  `project_image` varchar(255) DEFAULT NULL,
  `project_status` tinyint(1) DEFAULT 0,
  `total_expense` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `priority` tinyint(1) DEFAULT 1,
  `project_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `project_name`, `technology`, `project_description`, `lead_id`, `date_start`, `date_end`, `link_source`, `link_document`, `project_image`, `project_status`, `total_expense`, `customer_id`, `priority`, `project_url`) VALUES
(1, 'Nhà đất express', '[\"Laravel\",\"React\"]', 'Dự án nhà đất express', 1, '2022-04-23', '2022-06-24', 'http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db', 'http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db', 'uploads/project/GeUX1650637483.jpg', 0, 200000000, 1, 2, 'nha-dat-express'),
(2, 'Website bán hàng - TIKI', '[\"Laravel\",\"PHP\",\"React\",\"Ajax\"]', 'Chi tiết', 6, '2022-04-25', '2022-06-30', 'http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db', 'http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db', 'uploads/project/nzbD1650821672.png', 0, 1000000000, 1, 2, 'website-ban-hang-tiki'),
(3, 'Ứng dụng học trực tuyến ILEANR', '[\"fluuter\",\"nodejs\"]', 'OK', 4, '2022-05-18', '2022-05-28', 'http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db', 'http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db', 'uploads/project/6lW41652314380.jpg', 0, 20000000, 1, 1, 'ung-dung-hoc-truc-tuyen-ileanr'),
(4, 'Dự án xây dựng', '[\"Laravel\",\"ReactJS\"]', 'Chi tiết dự án', 6, '2022-05-12', '2022-06-22', 'http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db', 'http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db', 'uploads/project/Syjr1652342168.jpg', 0, 300000000, 3, 2, 'du-an-xay-dung'),
(5, 'Website bán sách', '[\"Laravel\",\"bootstrap\"]', 'CHi tiết dự án', 1, '2022-06-11', '2022-08-25', 'http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db', 'http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db', 'uploads/project/1fve1654931581.webp', 0, 200000000, 3, 2, 'website-ban-sach');

-- --------------------------------------------------------

--
-- Table structure for table `project_implementer`
--

CREATE TABLE `project_implementer` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_implementer`
--

INSERT INTO `project_implementer` (`id`, `admin_id`, `project_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(11, 5, 1),
(12, 1, 1),
(13, 3, 2),
(14, 4, 2),
(15, 6, 2),
(17, 3, 3),
(18, 5, 3),
(19, 3, 4),
(20, 5, 4),
(21, 6, 1),
(22, 7, 1),
(23, 3, 5),
(24, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `role_permission` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_name`, `role_permission`, `created_at`, `created_by`) VALUES
(1, 'Cấu hình hệ thống', 'a:3:{i:0;s:2:\"10\";i:1;s:2:\"21\";i:2;s:1:\"2\";}', '2022-05-10 11:09:46', 1),
(2, 'Quản lý nhân viên', 'a:3:{i:0;s:2:\"10\";i:1;s:2:\"12\";i:2;s:2:\"13\";}', '2022-05-10 11:12:09', 1),
(3, 'Quản lý lương', 'a:2:{i:0;s:2:\"24\";i:1;s:2:\"26\";}', '2022-05-11 16:05:25', 1),
(4, 'Thống kê dữ liệu', 'a:1:{i:0;s:1:\"1\";}', '2022-05-12 14:54:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_history`
--

CREATE TABLE `salary_history` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `basic_salary` int(11) DEFAULT NULL,
  `total_off` int(11) DEFAULT NULL,
  `bonus` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `total_salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary_history`
--

INSERT INTO `salary_history` (`id`, `admin_id`, `basic_salary`, `total_off`, `bonus`, `created_at`, `created_by`, `total_salary`) VALUES
(1, 1, 20000000, 0, 2000000, '2022-05-11 15:39:03', 1, 22000000),
(2, 2, NULL, 12, 1000000, '2022-05-11 15:43:03', 1, 1000000),
(3, 3, 3000000, 20, 500000, '2022-05-12 14:56:58', 1, 772727);

-- --------------------------------------------------------

--
-- Table structure for table `system_config`
--

CREATE TABLE `system_config` (
  `id` int(11) NOT NULL,
  `system_name` varchar(100) NOT NULL,
  `system_logo` varchar(255) DEFAULT NULL,
  `system_info` text DEFAULT NULL,
  `system_address` varchar(100) DEFAULT NULL,
  `system_phone` char(15) DEFAULT NULL,
  `system_phone_technology` char(15) DEFAULT NULL,
  `system_facebook` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_config`
--

INSERT INTO `system_config` (`id`, `system_name`, `system_logo`, `system_info`, `system_address`, `system_phone`, `system_phone_technology`, `system_facebook`) VALUES
(1, 'HRI-Company', 'uploads/logo/1652259692-ANxUT.png', '3132', '33 Xô Viết Nghệ Tĩnh , Hải Châu , Đà Nẵng', '0395342134', '0395342134', '231321');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `task_title` varchar(255) NOT NULL,
  `task_description` text DEFAULT NULL,
  `task_status_id` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `task_title`, `task_description`, `task_status_id`, `created_at`, `project_id`) VALUES
(2, 'Quản lý danh mục', 'Thực hiện chức năng đăng kí đăng nhập yêu cầu', 2, NULL, 1),
(3, 'A1 - Đăng kí - Đăng nhập', 'Thực hiện chức năng đăng kí đăng nhập yêu cầu', 6, '2022-04-23 20:42:03', 1),
(4, 'Quản lý dự án', 'Quản lý dự án ,như thêm sửa ,xóa ,....', 6, '2022-04-24 01:50:50', 1),
(6, 'Đăng kí - đăng nhập', 'Thực hiện đăng kí đăng nhập , sử dụng Auth và token để xác thực', 1, '2022-04-25 00:44:25', 2),
(7, 'Quản lý danh mục', 'Thực hiện thêm sửa xóa danh mục ,\r\nYêu cầu danh mục 3 cấp (có hình ảnh)', 1, '2022-04-25 00:45:46', 2),
(8, 'Phân tích yêu cầu', 'Phan tich cac yeu cau', 1, '2022-05-12 07:14:14', 3),
(9, 'Quản lý nhân viên1', 'quản lý', 1, '2022-05-12 14:58:45', 1),
(10, 'A1 - Đăng kí - Đăng nhập', 'Chi tiết', 6, '2022-06-11 14:14:06', 5),
(11, 'Quản lý dự án', 'chi tiết', 1, '2022-06-11 14:14:34', 5);

-- --------------------------------------------------------

--
-- Table structure for table `task_assign`
--

CREATE TABLE `task_assign` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_assign`
--

INSERT INTO `task_assign` (`id`, `project_id`, `task_id`, `admin_id`) VALUES
(4, 1, 4, 3),
(5, 1, 2, 3),
(7, 1, 2, 2),
(10, 1, 8, 3),
(11, 1, 2, 6),
(12, 1, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `task_description`
--

CREATE TABLE `task_description` (
  `id` int(11) NOT NULL,
  `task_desc_content` text DEFAULT NULL,
  `task_desc_image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_description`
--

INSERT INTO `task_description` (`id`, `task_desc_content`, `task_desc_image`, `created_at`, `created_by`, `task_id`) VALUES
(1, 'Các chức năng cơ bản chưa đạt yêu cầu', NULL, '2022-04-24 18:42:24', 1, 2),
(2, 'Giao diện như sau', 'uploads/task/1650801196-Xusik.PNG', '2022-04-24 18:53:16', 1, 2),
(3, NULL, 'uploads/task/1650801597-C5nz9.jpg', '2022-04-24 18:59:57', 1, 2),
(4, 'Cần kiểm tra lại', 'uploads/task/1650820555-9i4bO.png', '2022-04-25 00:15:55', 1, 2),
(5, 'oke', NULL, '2022-04-25 00:27:05', 6, 2),
(6, 'test', NULL, '2022-05-11 16:09:26', 1, 2),
(7, 'Vâng', NULL, '2022-05-12 07:14:40', 4, 8),
(8, 'bình luận', 'uploads/task/1652342413-MRR0l.jpg', '2022-05-12 15:00:13', 1, 2),
(9, 'Test bình luận', 'uploads/task/1654931708-9mVdG.PNG', '2022-06-11 14:15:08', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `task_status_group`
--

CREATE TABLE `task_status_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `class_text_style` varchar(100) DEFAULT NULL,
  `class_bg_style` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_status_group`
--

INSERT INTO `task_status_group` (`id`, `name`, `class_text_style`, `class_bg_style`, `created_by`) VALUES
(1, 'Đang chờ', NULL, 'badge badge-primary ', NULL),
(2, 'Đang làm ', NULL, 'badge badge-info ', NULL),
(3, 'Chờ xác nhận', NULL, 'badge badge-warning ', NULL),
(4, 'Đang kiểm tra', NULL, 'badge badge-info ', NULL),
(5, 'Lỗi', NULL, 'badge badge-danger ', NULL),
(6, 'Hoàn thành', NULL, 'badge badge-success ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work_experience`
--

CREATE TABLE `work_experience` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `workplace` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work_experience`
--

INSERT INTO `work_experience` (`id`, `admin_id`, `date_start`, `date_end`, `designation`, `workplace`) VALUES
(1, 2, '2018-04-11', NULL, 'Laravel Development', 'FPT Software'),
(2, 1, '2021-06-10', '2022-05-02', 'Fresher Laravel Development', 'Izi software'),
(4, 1, '2022-04-06', NULL, 'Junior Laravel', 'FPT software1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_admin_code_uindex` (`admin_code`),
  ADD UNIQUE KEY `admin_id_uindex` (`id`),
  ADD UNIQUE KEY `admin_user_name_uindex` (`user_name`),
  ADD UNIQUE KEY `admin_email_uindex` (`email`),
  ADD UNIQUE KEY `admin_phone_uindex` (`phone`);

--
-- Indexes for table `admin_detail`
--
ALTER TABLE `admin_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_detail_id_uindex` (`id`),
  ADD KEY `admin_detail_admin_id_fk` (`admin_id`);

--
-- Indexes for table `admin_education`
--
ALTER TABLE `admin_education`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_education_id_uindex` (`id`),
  ADD KEY `admin_education_admin_id_fk` (`admin_id`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_role_id_uindex` (`id`);

--
-- Indexes for table `bank_info`
--
ALTER TABLE `bank_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bank_info_id_uindex` (`id`),
  ADD KEY `bank_info_admin_id_fk` (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id_uindex` (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `department_id_uindex` (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designation_id_uindex` (`id`),
  ADD KEY `designation_department_id_fk` (`department_id`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `device_id_uindex` (`id`);

--
-- Indexes for table `device_group`
--
ALTER TABLE `device_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `device_group_id_uindex` (`id`);

--
-- Indexes for table `device_history`
--
ALTER TABLE `device_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `device_history_id_uindex` (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_id_uindex` (`id`);

--
-- Indexes for table `log_project`
--
ALTER TABLE `log_project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `log_project_id_uindex` (`id`);

--
-- Indexes for table `log_task`
--
ALTER TABLE `log_task`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `log_task_id_uindex` (`id`);

--
-- Indexes for table `log_type_group`
--
ALTER TABLE `log_type_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `log_type_group_id_uindex` (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `message_id_uindex` (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notification_id_uindex` (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_id_uindex` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_id_uindex` (`id`);

--
-- Indexes for table `project_implementer`
--
ALTER TABLE `project_implementer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_implementer_id_uindex` (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_id_uindex` (`id`);

--
-- Indexes for table `salary_history`
--
ALTER TABLE `salary_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `salary_history_id_uindex` (`id`);

--
-- Indexes for table `system_config`
--
ALTER TABLE `system_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_config_id_uindex` (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_id_uindex` (`id`);

--
-- Indexes for table `task_assign`
--
ALTER TABLE `task_assign`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_assign_id_uindex` (`id`);

--
-- Indexes for table `task_description`
--
ALTER TABLE `task_description`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_description_id_uindex` (`id`);

--
-- Indexes for table `task_status_group`
--
ALTER TABLE `task_status_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_status_group_id_uindex` (`id`);

--
-- Indexes for table `work_experience`
--
ALTER TABLE `work_experience`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `work_experience_id_uindex` (`id`),
  ADD KEY `work_experience_admin_id_fk` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_detail`
--
ALTER TABLE `admin_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_education`
--
ALTER TABLE `admin_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_info`
--
ALTER TABLE `bank_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `device_group`
--
ALTER TABLE `device_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `device_history`
--
ALTER TABLE `device_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `log_project`
--
ALTER TABLE `log_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `log_task`
--
ALTER TABLE `log_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `log_type_group`
--
ALTER TABLE `log_type_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_implementer`
--
ALTER TABLE `project_implementer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salary_history`
--
ALTER TABLE `salary_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_config`
--
ALTER TABLE `system_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `task_assign`
--
ALTER TABLE `task_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `task_description`
--
ALTER TABLE `task_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `task_status_group`
--
ALTER TABLE `task_status_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `work_experience`
--
ALTER TABLE `work_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_detail`
--
ALTER TABLE `admin_detail`
  ADD CONSTRAINT `admin_detail_admin_id_fk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `admin_education`
--
ALTER TABLE `admin_education`
  ADD CONSTRAINT `admin_education_admin_id_fk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `bank_info`
--
ALTER TABLE `bank_info`
  ADD CONSTRAINT `bank_info_admin_id_fk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `designation`
--
ALTER TABLE `designation`
  ADD CONSTRAINT `designation_department_id_fk` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

--
-- Constraints for table `work_experience`
--
ALTER TABLE `work_experience`
  ADD CONSTRAINT `work_experience_admin_id_fk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
