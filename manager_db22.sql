-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 27, 2023 lúc 05:32 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `manager_db22`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `birthday`, `phone`, `email`, `address`, `gender`, `avatar`) VALUES
(1, 'STUU', '2000-05-15', '0392', 'dastu@gmail.com', '180 Cao Lỗ', 0, 'uploads/customer/1686036687-ZneK.png'),
(3, 'Bình Nguyễn', '2000-05-09', '0395342134', 'binh@gmail.com', NULL, 1, 'uploads/customer/1652341979-noIn.png'),
(4, 'Kiều Võ', NULL, '0965365860', 'vothuykieu5860@gmail.com', '180 Cao Lỗ-q8', 2, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `department`
--

INSERT INTO `department` (`id`, `name`, `created_at`) VALUES
(1, 'Web Developmentt', '2023-06-08 08:23:13'),
(2, 'Application Dev', '2023-06-08 08:25:01'),
(3, 'IT support', '2023-06-08 08:26:30'),
(4, 'Tester', '2023-06-08 08:30:00'),
(5, 'HR', '2023-06-08 08:31:55'),
(12, 'Accounting', '2023-06-08 08:34:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `designation`
--

INSERT INTO `designation` (`id`, `name`, `department_id`, `is_deleted`, `created_at`) VALUES
(3, 'Flutter', 2, 0, '2023-05-08 00:16:55'),
(4, 'Laravel', 1, 0, '2023-05-12 14:52:28'),
(7, 'QA', 4, 0, '2023-06-08 12:02:24'),
(8, 'HR', 5, 0, '2023-06-08 12:03:11'),
(9, 'Account', 12, 0, '2023-06-08 12:03:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log_project`
--

CREATE TABLE `log_project` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `log_type` varchar(255) DEFAULT NULL,
  `log_type_id` int(11) DEFAULT NULL,
  `log_content` varchar(255) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `assign_member` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `log_project`
--

INSERT INTO `log_project` (`id`, `user_id`, `log_type`, `log_type_id`, `log_content`, `project_id`, `assign_member`, `created_at`) VALUES
(80, 1, NULL, 4, NULL, 2, '[\"8\"]', '2023-07-13 20:40:08'),
(81, 1, NULL, 1, 'abc', 2, NULL, '2023-07-13 20:40:24'),
(82, 1, NULL, 4, NULL, 2, '[\"14\"]', '2023-07-13 21:21:52'),
(83, 1, NULL, 1, 'công việc 1', 2, NULL, '2023-07-14 08:13:41'),
(84, 1, NULL, 4, NULL, 2, '[\"21\"]', '2023-07-14 08:14:23'),
(85, 1, NULL, 2, 'abc -> Xây dựng FE', 2, NULL, NULL),
(86, 1, NULL, 2, 'công việc 1 -> Xây dựng BE', 2, NULL, NULL),
(87, 1, NULL, 1, 'aaaaaa', 2, NULL, '2023-07-27 07:34:28'),
(88, 1, NULL, 4, NULL, 2, '[\"15\"]', '2023-07-27 07:42:49'),
(89, 1, NULL, 4, NULL, 2, '[\"1\"]', '2023-07-27 20:53:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log_task`
--

CREATE TABLE `log_task` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `log_type_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `assign_member` varchar(255) DEFAULT NULL,
  `log_content` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `log_task`
--

INSERT INTO `log_task` (`id`, `user_id`, `log_type_id`, `task_id`, `project_id`, `assign_member`, `log_content`, `created_at`) VALUES
(82, 1, 8, 29, 2, NULL, 'Đang chờ -> Lỗi', '2023-07-13 20:43:52'),
(83, 1, 8, 29, 2, NULL, 'Lỗi -> Hoàn thành', '2023-07-13 21:21:36'),
(84, 1, 6, 30, 2, '[\"14\"]', NULL, '2023-07-14 08:14:05'),
(85, 1, 6, 29, 2, '[\"8\"]', NULL, '2023-07-14 08:18:02'),
(86, 1, 6, 29, 2, '[\"21\"]', NULL, '2023-07-24 12:44:41'),
(87, 1, 8, 29, 2, NULL, 'Hoàn thành -> Lỗi', '2023-07-24 12:45:50'),
(88, 1, 8, 30, 2, NULL, 'Đang chờ -> Lỗi', '2023-07-24 12:46:13'),
(89, 1, 8, 29, 2, NULL, 'Lỗi -> Hoàn thành', '2023-07-24 17:59:03'),
(90, 1, 8, 30, 2, NULL, 'Lỗi -> Hoàn thành', '2023-07-27 17:39:31'),
(91, 1, 8, 30, 2, NULL, 'Hoàn thành -> Đang làm ', '2023-07-27 17:42:04'),
(92, 1, 6, 29, 2, '[\"1\"]', NULL, '2023-07-27 20:58:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log_type_group`
--

CREATE TABLE `log_type_group` (
  `id` int(11) NOT NULL,
  `content` varchar(100) NOT NULL,
  `type` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `log_type_group`
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
-- Cấu trúc bảng cho bảng `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `noti_content` varchar(255) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `noti_type` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `notification`
--

INSERT INTO `notification` (`id`, `user_id`, `noti_content`, `task_id`, `project_id`, `noti_type`, `created_at`, `is_read`) VALUES
(16, 7, 'thêm vào task', 13, 1, 2, '2023-05-10 14:46:09', 0),
(17, 8, 'thêm vào task', 14, 1, 2, '2023-05-10 15:20:08', 0),
(18, 8, 'thêm vào task', 15, 1, 2, '2023-05-22 13:31:15', 0),
(19, 8, 'xóa khỏi task', 15, 7, 2, '2023-05-22 13:32:19', 0),
(20, 8, 'thêm vào task', 13, 2, 2, '2023-06-07 15:33:56', 0),
(21, 8, 'xóa khỏi task', 13, 7, 2, '2023-06-07 15:34:08', 0),
(22, 5, 'thêm vào task', 18, 2, 2, '2023-06-08 09:34:17', 0),
(23, 5, 'xóa khỏi task', 18, 4, 2, '2023-06-08 09:34:34', 0),
(24, 7, 'xóa khỏi task', 13, 7, 2, '2023-06-08 12:24:56', 0),
(25, 1, 'thêm vào task', 19, 2, 2, '2023-06-08 12:38:03', 0),
(26, 8, 'thêm vào task', 19, 2, 2, '2023-06-08 12:38:03', 0),
(27, 7, 'thêm vào task', 19, 2, 2, '2023-06-08 16:07:50', 0),
(28, 7, 'thêm vào task', 21, 2, 2, '2023-06-08 16:10:48', 0),
(29, 8, 'thêm vào task', 13, 2, 2, '2023-06-08 16:13:38', 0),
(30, 8, 'thêm vào task', 22, 2, 2, '2023-06-08 16:15:30', 0),
(31, 8, 'thêm vào task', 19, 2, 2, '2023-06-28 17:22:04', 0),
(32, 8, 'thêm vào task', 20, 2, 2, '2023-07-09 18:26:23', 0),
(33, 8, 'thêm vào task', 28, 2, 2, '2023-07-13 00:03:24', 0),
(34, 8, 'thêm vào task', 21, 2, 2, '2023-07-13 10:34:39', 0),
(35, 14, 'thêm vào task', 30, 2, 2, '2023-07-14 08:14:05', 0),
(36, 8, 'thêm vào task', 29, 2, 2, '2023-07-14 08:18:02', 0),
(37, 21, 'thêm vào task', 29, 2, 2, '2023-07-24 12:44:41', 0),
(38, 1, 'thêm vào task', 29, 2, 2, '2023-07-27 20:58:23', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_page` tinyint(4) DEFAULT 0,
  `show_order` int(11) DEFAULT 0,
  `page_type` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`id`, `page_name`, `page_url`, `parent_id`, `is_page`, `show_order`, `page_type`) VALUES
(1, 'Thống kê', '/quan-tri/thong-ke-du-lieu', NULL, 1, 0, 0),
(2, 'Thông tin chung', '/quan-tri/cau-hinh-he-thong', NULL, 1, 0, 0),
(3, 'Nhân viên', '<null>', NULL, 0, 0, 0),
(4, 'Bộ phận\n', NULL, NULL, 0, 0, 0),
(5, 'Khách hàng', NULL, NULL, 0, 0, 0),
(8, 'Quyền', NULL, NULL, 0, 0, 0),
(9, 'Dự án', NULL, NULL, 0, 0, 0),
(10, 'Danh sách nhân viên', '/quan-tri/quan-ly-nhan-vien', 3, 0, 0, 0),
(11, 'Dự án', NULL, NULL, 0, 0, 1),
(12, 'Phòng ban', '/quan-tri/phong-ban', 4, 0, 0, 0),
(13, 'Vị trí', '/quan-tri/vai-tro', 4, 0, 0, 0),
(14, 'Danh sách dự án', '/quan-tri/du-an', 9, 0, 0, 0),
(15, 'Danh sách khách hàng', '/quan-tri/khach-hang', 5, 0, 0, 0),
(18, 'Danh sách quyền', '/quan-tri/phan-quyen', 8, 0, 0, 0),
(19, 'Danh sách dự án', '/du-an', 11, 0, 0, 1),
(20, 'Phân quyền', '/quan-tri/danh-sach-phan-quyen', 8, 0, 0, 0),
(23, 'Quản lý lương', '<null>', NULL, 0, 0, 0),
(24, 'Lương nhân viên', '/quan-tri/luong-nhan-vien', 23, 0, 0, 0),
(26, 'Lịch sử', '/quan-tri/lich-su-luong', 23, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project`
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
  `project_url` varchar(255) DEFAULT NULL,
  `categories_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `project`
--

INSERT INTO `project` (`id`, `project_name`, `technology`, `project_description`, `lead_id`, `date_start`, `date_end`, `link_source`, `link_document`, `project_image`, `project_status`, `total_expense`, `customer_id`, `priority`, `project_url`, `categories_id`) VALUES
(2, 'Website bán hàng', '[\"PHP\"]', 'Chi tiết', 1, '2023-06-08', '2023-07-18', NULL, NULL, 'uploads/project/nzbD1650821672.png', 0, NULL, 4, 2, 'website-ban-hang', NULL),
(4, 'Dự án xây dựng', '[\"Laravel\",\"ReactJS\"]', 'Chi tiết dự án', 1, '2023-05-12', '2023-06-22', NULL, NULL, 'uploads/project/Syjr1652342168.jpg', 0, 300000000, 3, 2, 'du-an-xay-dung', NULL),
(9, 'Website Cửa Hàng Di Động', '[\"PHP\"]', 'Xây dựng cửa website điện thoại', 1, '2023-06-08', '2023-06-30', NULL, NULL, 'uploads/project/nzbD1650821672.png', 0, 1000000000, 4, 2, 'website-cua-hang-di-dong', NULL),
(10, 'Website', '[\"t\\u00e9t\"]', '1111', 8, '2023-06-08', '2023-06-10', NULL, NULL, 'uploads/project/KofM1686233378.png', 0, 1111, 3, 0, 'website', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_implementer`
--

CREATE TABLE `project_implementer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `project_implementer`
--

INSERT INTO `project_implementer` (`id`, `user_id`, `project_id`) VALUES
(64, 8, 2),
(65, 14, 2),
(66, 15, 10),
(67, 21, 2),
(68, 15, 2),
(69, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `role_permission` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `role_name`, `role_permission`, `created_at`, `created_by`) VALUES
(2, 'Quản lý nhân viên', 'a:5:{i:0;s:2:\"10\";i:1;s:2:\"12\";i:2;s:2:\"13\";i:3;s:2:\"18\";i:4;s:2:\"20\";}', '2023-06-07 11:12:09', 1),
(3, 'Quản lý lương', 'a:2:{i:0;s:2:\"24\";i:1;s:2:\"26\";}', '2023-06-07 11:19:33', 1),
(4, 'Thống kê dữ liệu', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', '2023-06-07 12:12:42', 1),
(7, 'Quản lý khách hàng', 'a:1:{i:0;s:2:\"15\";}', '2023-06-30 09:06:29', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salary_history`
--

CREATE TABLE `salary_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `basic_salary` int(11) DEFAULT NULL,
  `total_off` int(11) DEFAULT NULL,
  `bonus` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `total_salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `salary_history`
--

INSERT INTO `salary_history` (`id`, `user_id`, `basic_salary`, `total_off`, `bonus`, `created_at`, `created_by`, `total_salary`) VALUES
(1, 1, 20000000, 0, 2000000, '2022-05-11 15:39:03', 1, 22000000),
(7, 8, 2, 1, 2, '2023-05-23 18:17:21', 1, 4),
(14, 1, 200000001, NULL, 20000, '2023-06-27 18:25:13', 1, 200020001),
(15, 1, 20000000, NULL, NULL, '2023-06-28 22:11:13', 1, 20000000),
(16, 1, 20000000, 12, 122222, '2023-06-28 22:22:08', 1, 9213131),
(17, 8, 2, 1, 123, '2023-06-28 22:23:06', 1, 125),
(19, 8, 1000000, NULL, NULL, '2023-07-27 20:44:55', 1, 1000000),
(20, 8, 1000000, NULL, NULL, '2023-07-27 20:45:03', 1, 1000000),
(21, 1, 20000000, 0, 123, '2023-07-27 21:09:38', 1, 20000123);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_config`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `system_config`
--

INSERT INTO `system_config` (`id`, `system_name`, `system_logo`, `system_info`, `system_address`, `system_phone`, `system_phone_technology`, `system_facebook`) VALUES
(1, 'MANAGER', 'uploads/logo/1689223824-mKa5b.jpg', 'MANAGER COMPANY', '180 Cao Lỗ phường 4 quận 8 TP.HCM', '0336849012', '0336849012', '23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `task_title` varchar(255) NOT NULL,
  `task_description` text DEFAULT NULL,
  `task_status_id` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `task`
--

INSERT INTO `task` (`id`, `task_title`, `task_description`, `task_status_id`, `created_at`, `project_id`) VALUES
(29, 'Xây dựng FE', '1', 4, '2023-07-13 20:40:24', 2),
(30, 'Xây dựng BE', '2', 2, '2023-07-14 08:13:41', 2),
(31, 'aaaaaa', '3', 1, '2023-07-27 07:34:28', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `task_assign`
--

CREATE TABLE `task_assign` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `task_assign`
--

INSERT INTO `task_assign` (`id`, `project_id`, `task_id`, `user_id`) VALUES
(30, 2, 30, 14),
(31, 2, 29, 8),
(32, 2, 29, 21),
(33, 2, 29, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `task_description`
--

CREATE TABLE `task_description` (
  `id` int(11) NOT NULL,
  `task_desc_content` text DEFAULT NULL,
  `task_desc_image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `task_description`
--

INSERT INTO `task_description` (`id`, `task_desc_content`, `task_desc_image`, `created_at`, `created_by`, `task_id`) VALUES
(28, 'trống nè', NULL, '2023-07-27 21:40:18', 1, 29);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `task_status_group`
--

CREATE TABLE `task_status_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `class_text_style` varchar(100) DEFAULT NULL,
  `class_bg_style` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `task_status_group`
--

INSERT INTO `task_status_group` (`id`, `name`, `class_text_style`, `class_bg_style`, `created_by`) VALUES
(1, 'Đang chờ', NULL, 'badge badge-primary ', NULL),
(2, 'Đang làm ', NULL, 'badge badge-info ', NULL),
(3, 'Lỗi', NULL, 'badge badge-danger ', NULL),
(4, 'Hoàn thành', NULL, 'badge badge-success ', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_code` char(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `user_type` tinyint(1) DEFAULT 2,
  `designation_id` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `user_code`, `user_name`, `password`, `avatar`, `email`, `phone`, `user_type`, `designation_id`, `salary`, `role_id`, `is_active`, `is_deleted`, `created_by`, `created_at`) VALUES
(1, 'NV-LELBCR9E', 'admin', '$2y$10$X1Barsfu48d48HSihdVkFOme2uQLcEl5X2L8kSQMYbhoyMmNOZDzu', 'uploads/avatar/169046521687dUD.png', 'vothuykieu@gmail.com', '0965365877', 1, 4, 20000000, NULL, 1, 0, NULL, '2023-06-01 01:38:47'),
(8, 'NV-16824326359V', 'kieu', '$2y$10$zzsH9efkiUUfafbSOu3LGezbWcjKTonywu3nmCzKJe1Dt/MpvWjra', 'uploads/avatar/1690466813jxMX6.webp', 'vothuykieu5860@gmail.com', '0965365864', 2, 7, 1000000, 4, 1, 0, 1, '2023-06-06 00:00:00'),
(14, 'NV-1687321567NK', 'thuyquyen', '$2y$10$pInE0Q4EKwxrU95y4YIT2eCASQ0g6GYT9m5kNHQ.PZp9MZRtfsTJy', NULL, 'thuyquyenn@gmail.com', '0965365862', 2, 9, NULL, 7, 1, 0, 1, '2023-06-21 11:26:07'),
(15, 'NV-1687864193WZ', 'vyy', '$2y$10$MPkGkkc4JDWnDqwz4EjeK.cDKLah80CaeylSx5Qgzo/exO.r/BnfO', NULL, 'vothuyvy@gmail.com', '0965365861', 2, 4, NULL, 3, 1, 0, 1, '2023-06-27 18:09:53'),
(16, 'NV-1687939264RO', 'vana', '$2y$10$uouuSMoRtrHpQZ.UoKMP.e7xVAADH.IO0mCY7F3Vps0X25rCYiqXy', NULL, 'vovana@gmail.com', '0965365866', 2, 4, 2234654, NULL, 1, 0, 1, '2023-06-28 15:01:04'),
(17, 'NV-1687941212NZ', 'tranan', '$2y$10$GDQ7OmXl6AHJ1YXmgotH2exPfLYyX6bnepiCBJEJ8qwhjJrNfEKiC', NULL, 'tranan@gmail.com', 'aaaaaaaaaa', 2, 9, 10000000, NULL, 1, 0, 1, '2023-06-28 15:33:32'),
(21, 'NV-1689214287AR', 'thanhan', '$2y$10$hjAEQK2P4zoFOj5r2kynWuPklTBI2xnjVG08yWYH6/O3jKrtciZ5m', NULL, 'thanhan@gmail.com', '0123445555', 2, 4, NULL, NULL, 1, 0, 1, '2023-07-13 09:11:27'),
(22, 'NV-1689214771R1', 'vanky', '$2y$10$VjAbbof9BZG1J3KrCSmZUeGM7x48rqCpPIhiiaj/4czxOfmd8X4ni', NULL, 'vanky@gmail.com', '0965365859', 2, 4, 3, 4, 1, 0, 1, '2023-07-13 09:19:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT 0,
  `identity_number` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_detail`
--

INSERT INTO `user_detail` (`id`, `user_id`, `fullname`, `birthday`, `address`, `gender`, `identity_number`) VALUES
(1, 1, 'Admin', '2000-03-22', '180 Cao Lỗ', 2, '3124506418'),
(8, 8, 'Võ Thuy Kiều', '2001-03-21', 'Cai Lậy-Tiền Giang', 2, '3124506416'),
(12, 14, 'Võ Thuy Quyên', '2003-06-21', 'Cai Lậy-Tiền Giang', 2, '3124506412'),
(13, 15, 'Võ Thuy Vy', '2001-06-12', NULL, 0, '111111111111'),
(14, 16, 'Võ Văn A', '2001-06-28', '180 Cao Lỗ-q8', 0, '123456789102'),
(15, 17, 'Trần An', '2000-06-07', 'Phú Nhuận', 2, '123456789106'),
(19, 21, 'Đặng Thành An', '2000-07-13', NULL, 0, '3124506411'),
(20, 22, 'Lê Văn Kỳ', '2000-07-11', NULL, 0, '5312450642');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_education`
--

CREATE TABLE `user_education` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `education_content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_education`
--

INSERT INTO `user_education` (`id`, `user_id`, `date_start`, `date_end`, `education_content`) VALUES
(3, 1, '2019-09-15', '2000-01-09', 'Kỹ sư ĐH Công Nghệ Sài Gòn'),
(5, 1, '2020-08-01', '2019-05-01', 'THPTPhanViethong'),
(7, 14, '2023-06-28', NULL, 'THPT Phan Viet Thongg'),
(8, 1, '2020-08-01', '2023-07-13', 'THPT PhanVie thong'),
(9, 8, '2019-07-13', NULL, 'ĐH Công Nghệ Sài Gòn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `work_experience`
--

CREATE TABLE `work_experience` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `workplace` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `work_experience`
--

INSERT INTO `work_experience` (`id`, `user_id`, `date_start`, `date_end`, `designation`, `workplace`) VALUES
(5, 1, '2023-06-28', '2023-06-27', 'ttt', 'manager company');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `department_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designation_id_uindex` (`id`),
  ADD KEY `designation_department_id_fk` (`department_id`);

--
-- Chỉ mục cho bảng `log_project`
--
ALTER TABLE `log_project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `log_project_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `log_task`
--
ALTER TABLE `log_task`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `log_task_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `log_type_group`
--
ALTER TABLE `log_type_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `log_type_group_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notification_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `project_implementer`
--
ALTER TABLE `project_implementer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_implementer_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `salary_history`
--
ALTER TABLE `salary_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `salary_history_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `system_config`
--
ALTER TABLE `system_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_config_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `task_assign`
--
ALTER TABLE `task_assign`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_assign_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `task_description`
--
ALTER TABLE `task_description`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_description_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `task_status_group`
--
ALTER TABLE `task_status_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_status_group_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_user_code_uindex` (`user_code`),
  ADD UNIQUE KEY `user_id_uindex` (`id`),
  ADD UNIQUE KEY `user_user_name_uindex` (`user_name`),
  ADD UNIQUE KEY `user_email_uindex` (`email`),
  ADD UNIQUE KEY `user_phone_uindex` (`phone`);

--
-- Chỉ mục cho bảng `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_detail_id_uindex` (`id`),
  ADD KEY `user_detail_user_id_fk` (`user_id`);

--
-- Chỉ mục cho bảng `user_education`
--
ALTER TABLE `user_education`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_education_id_uindex` (`id`),
  ADD KEY `user_education_user_id_fk` (`user_id`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_role_id_uindex` (`id`);

--
-- Chỉ mục cho bảng `work_experience`
--
ALTER TABLE `work_experience`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `work_experience_id_uindex` (`id`),
  ADD KEY `work_experience_user_id_fk` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `log_project`
--
ALTER TABLE `log_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `log_task`
--
ALTER TABLE `log_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `log_type_group`
--
ALTER TABLE `log_type_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `project_implementer`
--
ALTER TABLE `project_implementer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `salary_history`
--
ALTER TABLE `salary_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `system_config`
--
ALTER TABLE `system_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `task_assign`
--
ALTER TABLE `task_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `task_description`
--
ALTER TABLE `task_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `task_status_group`
--
ALTER TABLE `task_status_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `user_education`
--
ALTER TABLE `user_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `work_experience`
--
ALTER TABLE `work_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `designation`
--
ALTER TABLE `designation`
  ADD CONSTRAINT `designation_department_id_fk` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

--
-- Các ràng buộc cho bảng `user_detail`
--
ALTER TABLE `user_detail`
  ADD CONSTRAINT `user_detail_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `user_education`
--
ALTER TABLE `user_education`
  ADD CONSTRAINT `user_education_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `work_experience`
--
ALTER TABLE `work_experience`
  ADD CONSTRAINT `work_experience_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
