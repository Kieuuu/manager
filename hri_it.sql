-- MySQL dump 10.13  Distrib 5.7.41, for osx10.17 (x86_64)
--
-- Host: localhost    Database: hri_it
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_code` char(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `admin_type` tinyint(1) DEFAULT '2',
  `designation_id` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `updated_at` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_admin_code_uindex` (`admin_code`),
  UNIQUE KEY `admin_id_uindex` (`id`),
  UNIQUE KEY `admin_user_name_uindex` (`user_name`),
  UNIQUE KEY `admin_email_uindex` (`email`),
  UNIQUE KEY `admin_phone_uindex` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'NV-LELBCR9E','admin','$2y$10$BaSuNbkAbqAcIpmEXss9ve/I5LYqAthYA/PWwE7hLaSQkqGaloKKm','uploads/avatar/1651252686YuTTI.png','admin@gmail.com','03953421233',1,4,20000000,NULL,1,0,NULL,NULL,'2022-04-16 01:38:47'),(2,'NV-1650128635vO','binhnt.it28','$2y$10$odra93wNz2URj9yaP2T3YODuCiy2nXjAN5STPgF3ifsUwY3fBtphe',NULL,'binhnt.it28@gmail.com',NULL,2,1,NULL,3,1,1,NULL,NULL,'2022-04-17 00:03:55'),(3,'NV-1650535367DR','binhnt','$2y$10$VfzUJY69LnrQtDkLkhWILOVSUEVMfD81vqtvkthJuz4qmubPaS/IW',NULL,'binhnt@gmail.com','0385342134',2,1,3000000,4,1,0,NULL,NULL,'2022-04-21 17:02:47'),(4,'NV-1650549834HT','vietanh7200','$2y$10$38K/ZD4OC2SBPsM8XF6cSuA5PTekCS.T5NKEqO53fVxuuDMAhhcg6',NULL,'vietanh7200@gmail.com','0389785322',2,1,NULL,1,1,0,NULL,3,'2022-04-21 21:03:55'),(5,'NV-1650550685E1','toan','$2y$10$YjoFtMDhup6fHos54L3LuexnojGSNZdT0RHEk2Y0M/JSlL.rsrK0e',NULL,'nvpt@gmail.com','0398783945',2,1,NULL,1,1,0,NULL,3,'2022-04-21 21:18:06'),(6,'NV-1650725074BP','user1','$2y$10$BaSuNbkAbqAcIpmEXss9ve/I5LYqAthYA/PWwE7hLaSQkqGaloKKm',NULL,'user1@gmail.com','0389785345',2,1,NULL,4,1,0,NULL,NULL,'2022-04-23 21:44:34'),(7,'NV-1652343444VU','thanhbinh','$2y$10$U9rmu8fTIdpMKnHwCoKZfebrHbWiqj/Op8h7WLdVG/Kx0mZ5pSSDG',NULL,'thanhbinh@abc.io',NULL,2,NULL,NULL,NULL,1,0,NULL,NULL,'2022-05-12 15:17:24');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_detail`
--

DROP TABLE IF EXISTS `admin_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT '0',
  `identity_number` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_detail_id_uindex` (`id`),
  KEY `admin_detail_admin_id_fk` (`admin_id`),
  CONSTRAINT `admin_detail_admin_id_fk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_detail`
--

LOCK TABLES `admin_detail` WRITE;
/*!40000 ALTER TABLE `admin_detail` DISABLE KEYS */;
INSERT INTO `admin_detail` VALUES (1,1,'Quản trị cấp cao',NULL,'33 Xô Viết Nghệ Tĩnh, Hải Châu , Đà Nẵng',2,'215528806'),(2,2,'Bình',NULL,NULL,1,NULL),(3,3,'Nguyễn Thanh Bình',NULL,NULL,0,NULL),(4,4,'Nguyễn Thị Việt Ánh',NULL,NULL,0,NULL),(5,5,'Nguyễn Văn Phước Toàn 1','2000-06-23',NULL,1,'2894394383'),(6,6,'User 1','2022-04-11',NULL,1,'2131321321321'),(7,7,'Thanh Bình',NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `admin_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_education`
--

DROP TABLE IF EXISTS `admin_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_education` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `education_content` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_education_id_uindex` (`id`),
  KEY `admin_education_admin_id_fk` (`admin_id`),
  CONSTRAINT `admin_education_admin_id_fk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_education`
--

LOCK TABLES `admin_education` WRITE;
/*!40000 ALTER TABLE `admin_education` DISABLE KEYS */;
INSERT INTO `admin_education` VALUES (1,2,'2018-04-26','2022-04-21','Đại học đông á'),(2,2,'2018-04-25','2022-04-21','Đại học Bách Khoa'),(3,1,'2018-09-10','2022-05-11','Cử nhân Công nghệ thông tin tại Đại học Đông Á');
/*!40000 ALTER TABLE `admin_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role`
--

DROP TABLE IF EXISTS `admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_role_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role`
--

LOCK TABLES `admin_role` WRITE;
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_info`
--

DROP TABLE IF EXISTS `bank_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_number` char(20) DEFAULT NULL,
  `bank_author` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bank_info_id_uindex` (`id`),
  KEY `bank_info_admin_id_fk` (`admin_id`),
  CONSTRAINT `bank_info_admin_id_fk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_info`
--

LOCK TABLES `bank_info` WRITE;
/*!40000 ALTER TABLE `bank_info` DISABLE KEYS */;
INSERT INTO `bank_info` VALUES (1,1,'vietcombank','0431000259296','Nguyen Thanh Binh'),(2,2,NULL,NULL,NULL),(3,3,NULL,NULL,NULL),(4,4,NULL,NULL,NULL),(5,5,NULL,NULL,NULL),(6,6,NULL,NULL,NULL),(7,7,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bank_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_project`
--

DROP TABLE IF EXISTS `categories_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories_name` varchar(255) NOT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_project`
--

LOCK TABLES `categories_project` WRITE;
/*!40000 ALTER TABLE `categories_project` DISABLE KEYS */;
INSERT INTO `categories_project` VALUES (1,'Danh mục test1','1dsadsa',NULL,NULL),(2,'Bình test','Bình test',NULL,NULL);
/*!40000 ALTER TABLE `categories_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Công ty bất động sản Đà Nẵng','2022-05-16','0395432134','danang@gmail.com','33 Xô Viết Nghệ Tĩnh, Đà Nẵng',0,NULL),(3,'Bình Nguyễn','2022-05-09','0395342134','binhnt.it28@gmail.com','Hải Châu , Đà Nẵng',1,'uploads/customer/1652341979-noIn.png');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `department_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Web Development1','2022-05-07 19:42:26'),(2,'Application Development','2022-05-07 19:42:26'),(3,'IT Management','2022-05-07 19:42:26'),(4,'Tester','2022-05-07 19:42:26'),(5,'HR','2022-05-07 19:42:26'),(8,'test','2022-05-07 22:52:46'),(9,'PM1','2022-05-12 14:51:53');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `department_id` int DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `designation_id_uindex` (`id`),
  KEY `designation_department_id_fk` (`department_id`),
  CONSTRAINT `designation_department_id_fk` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
INSERT INTO `designation` VALUES (2,'NodeJS Development1',1,0,NULL),(3,'Flutter dev',2,0,'2022-05-08 00:16:55'),(4,'Laravel development',1,0,'2022-05-12 14:52:28');
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_name` varchar(100) NOT NULL,
  `buy_date` datetime DEFAULT NULL,
  `device_price` int DEFAULT NULL,
  `device_status` tinyint(1) DEFAULT '0',
  `admin_id` int DEFAULT NULL,
  `device_group_id` int DEFAULT NULL,
  `device_image` text,
  `device_description` text,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (1,'Laptop','2022-08-10 17:07:24',10000000,1,5,3,NULL,NULL,1),(2,'Laptop Asus TUF Gaming FX506LH i5 10300H/8GB/512GB/4GB GTX1650/144Hz/Win11','2022-05-11 03:04:30',18990000,0,NULL,1,'a:2:{i:0;s:34:\"uploads/device/1652221286-SBM6.png\";i:1;s:34:\"uploads/device/1652221286-IlmK.jpg\";}','• Sở hữu chip Intel Core i5 Comet Lake 10300H và card GeForce GTX 1650 4 GB từ nhà NVIDIA xử lý hoàn hảo mọi nhu cầu từ văn phòng đến đồ họa nặng hay thậm chí hỗ trợ bạn chiến các tựa game hấp dẫn: CS:GO, Fifa Online 4, GTA V,...\r\n\r\n• Cùng RAM 8 GB và SSD 512 GB nâng cao tốc độ phản hồi, hạn chế tình trạng giật hay lag máy khi bạn mở nhiều ứng dụng cùng lúc hay chuyển đổi qua lại, tối ưu hiệu suất cho laptop.\r\n\r\n• Các chuyển động diễn ra trơn tru, nắm bắt mọi khoảnh khắc trong game, giảm độ trễ nhờ tần số quét màn hình 144 Hz.\r\n\r\n• Độ sáng 250 nits, chống chói Anti Glare và tấm nền IPS được trang bị trên màn hình 15.6 inch hạn chế hiện bóng gương khi cường độ ánh sáng cao, cho hiển thị rõ nét ở những chỗ điều kiện ánh sáng kém, góc nhìn được mở rộng, trải nghiệm hình ảnh sắc nét, chân thật.',1);
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_group`
--

DROP TABLE IF EXISTS `device_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_group_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_group`
--

LOCK TABLES `device_group` WRITE;
/*!40000 ALTER TABLE `device_group` DISABLE KEYS */;
INSERT INTO `device_group` VALUES (1,'Máy tính'),(2,'Máy in'),(3,'Máy photocopy'),(4,'Camera'),(5,'Máy chiếu');
/*!40000 ALTER TABLE `device_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_history`
--

DROP TABLE IF EXISTS `device_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `device_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_history_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_history`
--

LOCK TABLES `device_history` WRITE;
/*!40000 ALTER TABLE `device_history` DISABLE KEYS */;
INSERT INTO `device_history` VALUES (1,4,1,'2022-05-11 04:29:08',1,0),(2,4,1,'2022-05-11 04:34:31',1,1),(3,5,2,'2022-05-11 04:48:00',1,0),(4,3,1,'2022-05-11 16:04:33',1,0),(5,3,1,'2022-05-11 16:04:53',1,1),(6,5,1,'2022-05-12 14:53:20',1,0),(7,5,2,'2023-01-29 20:43:35',1,1);
/*!40000 ALTER TABLE `device_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `content` text,
  `status` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoices_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,1,'Thanh toán dự án nhà đất',1,'2022-05-12 05:38:00',0,1,5000000),(2,NULL,'Mua laptop asus A506',1,'2022-05-12 06:10:54',1,1,20000000),(3,NULL,'Thanh toán dự án',1,'2022-05-12 14:57:46',0,1,30000000);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_project`
--

DROP TABLE IF EXISTS `log_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `log_type` varchar(255) DEFAULT NULL,
  `log_type_id` int DEFAULT NULL,
  `log_content` varchar(255) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `assign_member` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `log_project_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_project`
--

LOCK TABLES `log_project` WRITE;
/*!40000 ALTER TABLE `log_project` DISABLE KEYS */;
INSERT INTO `log_project` VALUES (1,1,'thêm task A1 - Đăng kí - Đăng nhập',1,'A1 - Đăng kí - Đăng nhập',1,NULL,NULL),(2,1,NULL,2,'Quản lý banner -> Quản lý nhân viên',1,NULL,NULL),(3,1,NULL,4,NULL,1,'[\"6\"]','2022-04-23 22:09:32'),(4,1,NULL,4,NULL,1,'[\"6\"]','2022-04-23 22:10:21'),(5,1,NULL,4,NULL,1,'[\"6\"]','2022-04-23 22:45:54'),(6,1,NULL,5,NULL,1,'[\"6\"]','2022-04-23 22:50:06'),(7,1,NULL,4,NULL,1,'[\"5\",\"6\"]','2022-04-24 00:07:46'),(8,1,NULL,5,NULL,1,'[5]','2022-04-24 00:09:20'),(9,1,NULL,4,NULL,1,'[\"5\"]','2022-04-24 00:59:39'),(10,1,NULL,3,'Quản lý nhân viên',1,NULL,'2022-04-24 01:50:25'),(11,1,NULL,1,'Quản lý dự án',1,NULL,NULL),(12,1,NULL,1,'Quản lý tài khoản cá nhân',1,NULL,NULL),(13,1,NULL,4,NULL,1,'[\"1\"]','2022-04-25 00:22:22'),(14,6,NULL,1,'Đăng kí - đăng nhập',2,NULL,NULL),(15,6,NULL,1,'Quản lý danh mục',2,NULL,'2022-04-25 00:45:46'),(16,1,NULL,5,NULL,1,'[6]','2022-05-11 17:01:23'),(17,1,NULL,4,NULL,1,'[\"6\"]','2022-05-11 17:01:31'),(18,1,NULL,3,'Quản lý tài khoản cá nhân',1,NULL,'2022-05-12 05:26:35'),(19,4,NULL,1,'Phân tích yêu cầu',3,NULL,'2022-05-12 07:14:14'),(20,1,NULL,1,'Quản lý nhân viên1',1,NULL,'2022-05-12 14:58:45'),(21,1,NULL,5,NULL,1,'[6]','2022-05-12 14:58:56'),(22,1,NULL,4,NULL,1,'[\"6\"]','2022-05-12 14:59:03'),(23,1,NULL,4,NULL,1,'[\"7\"]','2022-05-12 15:21:59'),(24,1,NULL,5,NULL,1,'[4]','2022-05-12 15:23:07'),(25,1,NULL,1,'A1 - Đăng kí - Đăng nhập',5,NULL,'2022-06-11 14:14:06'),(26,1,NULL,4,NULL,5,'[\"6\"]','2022-06-11 14:14:18'),(27,1,NULL,1,'Quản lý dự án',5,NULL,'2022-06-11 14:14:34');
/*!40000 ALTER TABLE `log_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_task`
--

DROP TABLE IF EXISTS `log_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `log_type_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `assign_member` varchar(255) DEFAULT NULL,
  `log_content` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `log_task_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_task`
--

LOCK TABLES `log_task` WRITE;
/*!40000 ALTER TABLE `log_task` DISABLE KEYS */;
INSERT INTO `log_task` VALUES (1,1,6,2,NULL,'[\"6\"]',NULL,NULL),(2,1,6,2,NULL,'[\"3\"]',NULL,NULL),(3,1,8,2,1,NULL,'Hoàn thành -> Hoàn thành','2022-04-24 23:19:18'),(4,1,8,2,1,NULL,'Lỗi -> Đang kiểm tra','2022-04-24 23:19:58'),(5,1,8,2,1,NULL,'Đang kiểm tra -> Hoàn thành','2022-04-24 23:30:37'),(6,1,6,4,1,'[\"3\"]',NULL,'2022-04-24 23:51:26'),(7,1,7,2,1,'[\"3\"]',NULL,'2022-04-24 23:59:01'),(8,1,8,4,1,NULL,'Đang chờ -> Hoàn thành','2022-04-25 00:02:37'),(9,1,8,3,1,NULL,'Đang chờ -> Đang làm ','2022-04-25 00:07:19'),(10,1,8,3,1,NULL,'Đang làm  -> Hoàn thành','2022-04-25 00:14:35'),(11,1,6,2,1,'[\"3\"]',NULL,'2022-04-25 00:15:15'),(12,1,8,2,1,NULL,'Hoàn thành -> Đang kiểm tra','2022-04-25 00:15:27'),(13,1,6,5,1,'[\"1\"]',NULL,'2022-04-25 00:22:34'),(14,6,6,2,1,'[\"2\"]',NULL,'2022-04-25 00:24:39'),(15,1,8,2,1,NULL,'Đang kiểm tra -> Hoàn thành','2022-04-29 00:08:53'),(16,1,8,2,1,NULL,'Hoàn thành -> Đang làm ','2022-04-29 00:09:35'),(17,1,8,2,1,NULL,'Đang làm  -> Lỗi','2022-04-29 00:17:15'),(18,1,6,2,1,'[\"4\"]',NULL,'2022-04-29 00:17:25'),(19,1,6,2,1,'[\"5\"]',NULL,'2022-05-11 16:09:12'),(20,1,8,2,1,NULL,'Lỗi -> Chờ xác nhận','2022-05-11 16:09:35'),(21,4,6,8,1,'[\"3\"]',NULL,'2022-05-12 07:14:29'),(22,1,7,2,1,'[\"5\"]',NULL,'2022-05-12 14:59:30'),(23,1,6,2,1,'[\"6\"]',NULL,'2022-05-12 14:59:36'),(24,1,8,2,1,NULL,'Chờ xác nhận -> Hoàn thành','2022-05-12 14:59:55'),(25,7,8,2,1,NULL,'Hoàn thành -> Đang làm ','2022-05-12 15:24:07'),(26,1,6,10,1,'[\"3\"]',NULL,'2022-06-11 14:14:50'),(27,1,8,10,5,NULL,'Đang chờ -> Đang làm ','2022-06-11 14:15:15'),(28,1,8,10,5,NULL,'Đang làm  -> Hoàn thành','2022-06-11 14:15:23'),(29,1,6,11,1,'[\"3\"]',NULL,'2023-01-10 22:34:21');
/*!40000 ALTER TABLE `log_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_type_group`
--

DROP TABLE IF EXISTS `log_type_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_type_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(100) NOT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `log_type_group_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_type_group`
--

LOCK TABLES `log_type_group` WRITE;
/*!40000 ALTER TABLE `log_type_group` DISABLE KEYS */;
INSERT INTO `log_type_group` VALUES (1,'thêm task',1),(2,'sửa task',1),(3,'xóa task',1),(4,'thêm',1),(5,'xóa',1),(6,'thêm',2),(7,'xóa',2),(8,'đổi trạng thái',2);
/*!40000 ALTER TABLE `log_type_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,1,'test','2022-05-11 21:13:06'),(2,2,'test test','2022-05-11 22:13:06'),(3,1,'dfsadsadsa','2022-05-11 21:19:35'),(4,1,'dsadsa','2022-05-11 21:24:36'),(5,1,'dsa','2022-05-11 21:45:18'),(6,1,'123','2022-05-11 21:47:59'),(7,1,'ưewqe','2022-05-11 21:57:23'),(8,1,'dsadsa','2022-05-11 21:57:48'),(9,1,'dsad','2022-05-11 21:59:43'),(10,1,'dsadsa','2022-05-11 22:00:07'),(11,1,'dsadsad','2022-05-11 22:02:48'),(12,1,'dsadsa','2022-05-11 22:03:56'),(13,1,'dsadsa','2022-05-11 22:08:31'),(14,1,'123','2022-05-11 22:08:34'),(15,2,'đâs','2022-05-11 22:11:23'),(16,2,'dsad','2022-05-11 22:11:47'),(17,2,'dsadas','2022-05-11 22:13:44'),(18,2,'dsa','2022-05-11 22:14:26'),(19,2,'dsada','2022-05-11 22:14:46'),(20,2,'dsadsa','2022-05-11 22:14:49'),(21,2,'dsada','2022-05-11 22:15:06'),(22,2,'dsadas','2022-05-11 22:15:09'),(23,1,'dsad','2022-05-11 22:17:40'),(24,1,'dsadas','2022-05-11 22:20:34'),(25,1,'dsad','2022-05-11 22:20:54'),(26,2,'dsad','2022-05-11 22:27:29'),(27,2,'dsadsada','2022-05-11 22:29:01'),(28,1,'dsadsa','2022-05-11 22:30:04'),(29,1,'dsa','2022-05-11 22:34:23'),(30,1,'dsa','2022-05-11 22:35:57'),(31,1,'dsada','2022-05-11 22:36:37'),(32,1,'dsasadsa','2022-05-11 22:38:21'),(33,2,'dsadsa','2022-05-11 22:38:36'),(34,1,'dsadsa','2022-05-11 22:40:39'),(35,1,'dsadsa','2022-05-11 22:41:49'),(36,2,'dsadsadsadsa','2022-05-11 22:42:01'),(37,1,'dsadsa','2022-05-11 22:42:58'),(38,2,'dsadsadsad','2022-05-11 22:43:20'),(39,1,'dsada','2022-05-11 22:47:20'),(40,1,'dsadsa','2022-05-11 22:59:21'),(41,2,'dsada','2022-05-11 22:59:57'),(42,2,'dsadsa','2022-05-11 23:00:14'),(43,2,'dsadsadsadsadsad','2022-05-11 23:08:05'),(44,2,'dsadsa','2022-05-11 23:09:07'),(45,2,'dsad','2022-05-11 23:11:26'),(46,1,'dsadsadsa','2022-05-11 23:13:16'),(47,1,'dsadsa','2022-05-11 23:22:20'),(48,2,'dsadsa','2022-05-11 23:22:34'),(49,1,'dsadsa','2022-05-11 23:22:59'),(50,2,'dsadsa','2022-05-11 23:24:20'),(51,2,'dsada','2022-05-11 23:26:37'),(52,2,'sdsada','2022-05-11 23:36:55'),(53,2,'dssadadasdasdsad','2022-05-11 23:37:39'),(54,2,'sâdsadsa','2022-05-11 23:40:21'),(55,2,'dsadasd','2022-05-11 23:41:18'),(56,2,'dsadsad','2022-05-11 23:42:23'),(57,2,'dsadsad','2022-05-11 23:42:56'),(58,2,'dsadâd','2022-05-11 23:44:35'),(59,2,'dsadâd','2022-05-11 23:45:13'),(60,2,'dsadấd','2022-05-11 23:45:21'),(61,2,'dsadâdaad','2022-05-11 23:46:15'),(62,2,'dsadâdaadsad','2022-05-11 23:46:49'),(63,2,'dsadâdâd','2022-05-11 23:48:57'),(64,2,'dsadâdaad','2022-05-11 23:51:19'),(65,2,'dsadâd','2022-05-11 23:52:07'),(66,1,'123123','2022-05-12 03:30:44'),(67,1,'123123','2022-05-12 03:30:59'),(68,1,'123','2022-05-12 03:31:23'),(69,1,'test','2022-05-12 03:31:41'),(70,1,'1234','2022-05-12 03:32:22'),(71,1,'12345','2022-05-12 03:33:03'),(72,1,'123312','2022-05-12 03:33:53'),(73,1,'1232131','2022-05-12 03:34:31'),(74,1,'123','2022-05-12 03:34:58'),(75,1,'123231321','2022-05-12 03:35:19'),(76,1,'123321','2022-05-12 03:36:42'),(77,1,'123','2022-05-12 03:37:49'),(78,1,'1232133','2022-05-12 03:38:03'),(79,1,'12321321','2022-05-12 03:38:10'),(80,1,'123213','2022-05-12 03:38:32'),(81,1,'ok','2022-05-12 03:39:36'),(82,1,'dsa','2022-05-12 03:41:52'),(83,1,'dsadsadsa','2022-05-12 03:41:56'),(84,1,'OKE NHA','2022-05-12 03:42:39'),(85,1,'321321','2022-05-12 03:43:47'),(86,1,'321321','2022-05-12 03:45:27'),(87,1,'12321321','2022-05-12 03:47:01'),(88,1,'ólfjdskl','2022-05-12 03:47:12'),(89,1,'oiyouio','2022-05-12 03:47:22'),(90,2,'dsa','2022-05-12 03:50:36'),(91,2,'ừ','2022-05-12 03:51:05'),(92,2,'RỒi seo','2022-05-12 03:51:17'),(93,2,'À thế à','2022-05-12 03:51:26'),(94,1,'à cái gì','2022-05-12 03:51:32'),(95,2,'sahdlkjsaldsja','2022-05-12 03:51:38'),(96,1,'đấ','2022-05-12 03:55:00'),(97,1,'dsadsa','2022-05-12 03:55:06'),(98,1,'dsadsa','2022-05-12 03:55:32'),(99,2,'dsadsa','2022-05-12 03:55:35'),(100,2,'dsadsa','2022-05-12 03:55:39'),(101,2,'321321321','2022-05-12 03:57:00'),(102,1,'odksada','2022-05-12 03:59:02'),(103,4,'dsadsada','2022-05-12 04:08:02'),(104,4,'321321','2022-05-12 04:12:35'),(105,4,'111','2022-05-12 04:12:43'),(106,1,'31321','2022-05-12 04:17:49'),(107,1,'12321','2022-05-12 04:22:05'),(108,1,'321321','2022-05-12 04:24:58'),(109,4,'dsadsa','2022-05-12 04:26:18'),(110,1,'321321','2022-05-12 04:27:15'),(111,4,'dsadsa','2022-05-12 04:27:45'),(112,4,'dsadsadsada','2022-05-12 04:28:59'),(113,4,'1234','2022-05-12 04:29:10'),(114,1,'12321321','2022-05-12 04:29:30'),(115,1,'123321','2022-05-12 04:32:41'),(116,4,'321321','2022-05-12 04:33:14'),(117,1,'321321321','2022-05-12 04:34:52'),(118,1,'ABCDF','2022-05-12 04:35:02'),(119,1,'123','2022-05-12 13:17:46'),(120,4,'456','2022-05-12 13:17:58'),(121,1,'12312321','2022-05-12 13:18:01'),(122,1,'31321321321','2022-05-12 13:20:16'),(123,4,'3213213213','2022-05-12 13:20:19'),(124,6,'xin chào','2022-05-12 15:02:22'),(125,1,'oke','2022-06-11 14:19:20'),(126,1,'ok','2022-06-11 14:19:26'),(127,1,'dsada','2022-06-11 14:21:40'),(128,1,'dsads','2022-06-11 14:21:43'),(129,6,'123','2022-06-11 14:22:22'),(130,6,'456','2022-06-11 14:23:27'),(131,1,'abc','2022-06-11 14:23:37'),(132,6,'ewdwqdwq','2022-06-11 14:23:43'),(133,1,'fgdgd','2023-01-10 22:05:10'),(134,1,'fgdgfd','2023-01-10 22:05:10');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `noti_content` varchar(255) DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `noti_type` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `notification_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,6,'thêm vào task',2,1,2,'2022-04-24 22:48:50',0),(2,3,'thêm vào task',2,1,2,'2022-04-24 22:54:10',0),(3,3,'thêm vào task',4,1,2,'2022-04-24 23:51:26',0),(4,3,'xóa khỏi task',2,1,2,'2022-04-24 23:59:01',0),(5,3,'thêm vào task',2,1,2,'2022-04-25 00:15:15',0),(6,1,'thêm vào task',5,1,2,'2022-04-25 00:22:34',0),(7,2,'thêm vào task',2,1,2,'2022-04-25 00:24:39',0),(8,4,'thêm vào task',2,1,2,'2022-04-29 00:17:25',0),(9,5,'thêm vào task',2,1,2,'2022-05-11 16:09:12',0),(10,3,'thêm vào task',8,1,2,'2022-05-12 07:14:29',0),(11,5,'xóa khỏi task',2,1,2,'2022-05-12 14:59:29',0),(12,6,'thêm vào task',2,1,2,'2022-05-12 14:59:36',0),(13,3,'thêm vào task',10,1,2,'2022-06-11 14:14:50',0),(14,3,'thêm vào task',11,1,2,'2023-01-10 22:34:21',0);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_name` varchar(100) DEFAULT NULL,
  `page_icon` varchar(100) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_page` tinyint DEFAULT '0',
  `show_order` int DEFAULT '0',
  `page_type` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (1,'Thống kê dữ liệu','<i class=\"la la-dashboard\"></i>','/quan-tri/thong-ke-du-lieu',NULL,NULL,1,0,0),(2,'Cấu hình hệ thống','<i class=\"la la-cog\"></i>','/quan-tri/cau-hinh-he-thong',NULL,NULL,1,0,0),(3,'Quản lý nhân viên','<i class=\"la la-user\"></i>','<null>',NULL,NULL,0,0,0),(4,'Phòng ban - vai trò','<i class=\"la la-share-alt\"></i>',NULL,NULL,NULL,0,0,0),(5,'Quản lý khách hàng','<i class=\"la la-users\"></i>',NULL,NULL,NULL,0,0,0),(7,'Tài sản - thiết bị','<i class=\"la la-money\"></i>',NULL,NULL,NULL,0,0,0),(8,'Quản lý phân quyền','<i class=\"la la-key\"></i>',NULL,NULL,NULL,0,0,0),(9,'Quản lý dự án','<i class=\"la la-rocket\"></i>',NULL,NULL,NULL,0,0,0),(10,'Danh sách nhân viên',NULL,'/quan-tri/quan-ly-nhan-vien',3,NULL,0,0,0),(11,'Dự án','<i class=\"la la-rocket\"></i>',NULL,NULL,NULL,0,0,1),(12,'Danh sách phòng ban',NULL,'/quan-tri/phong-ban',4,NULL,0,0,0),(13,'Danh sách vai trò',NULL,'/quan-tri/vai-tro',4,NULL,0,0,0),(14,'Danh sách dự án',NULL,'/quan-tri/du-an',9,NULL,0,0,0),(15,'Danh sách khách hàng',NULL,'/quan-tri/khach-hang',5,NULL,0,0,0),(16,'Danh sách thiết bị',NULL,'/quan-tri/thiet-bi',7,NULL,0,0,0),(17,'Lịch sử',NULL,'/quan-tri/lich-su-thiet-bi',7,NULL,0,0,0),(18,'Danh sách quyền',NULL,'/quan-tri/phan-quyen',8,NULL,0,0,0),(19,'Danh sách dự án',NULL,'/du-an',11,NULL,0,0,1),(20,'Phân quyền',NULL,'/quan-tri/danh-sach-phan-quyen',8,NULL,0,0,0),(21,'Danh sách đã xóa',NULL,'/quan-tri/nhan-vien-da-xoa',3,NULL,0,0,0),(23,'Quản lý lương','<i class=\"la la-users\"></i>','<null>',NULL,NULL,0,0,0),(24,'Lương nhân viên',NULL,'/quan-tri/luong-nhan-vien',23,NULL,0,0,0),(25,'Hóa đơn','<i class=\"la la-ticket\"></i>',NULL,NULL,NULL,0,0,0),(26,'Lịch sử',NULL,'/quan-tri/lich-su-luong',23,NULL,0,0,0),(27,'Chat','<i class=\"la la-ticket\"></i>','/chat-room',NULL,NULL,1,0,1),(28,'Danh sách',NULL,'/quan-tri/hoa-don',25,NULL,0,0,0),(29,'Nhóm dự án',NULL,'/quan-tri/nhom-du-an',9,NULL,0,1,0);
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) NOT NULL,
  `technology` varchar(255) DEFAULT NULL,
  `project_description` text,
  `lead_id` int DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `link_source` varchar(255) DEFAULT NULL,
  `link_document` varchar(255) DEFAULT NULL,
  `project_image` varchar(255) DEFAULT NULL,
  `project_status` tinyint(1) DEFAULT '0',
  `total_expense` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `priority` tinyint(1) DEFAULT '1',
  `project_url` varchar(255) DEFAULT NULL,
  `categories_id` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Nhà đất express','[\"Laravel\",\"React\"]','Dự án nhà đất express',1,'2022-04-23','2023-06-14','http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db','http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db','uploads/project/GeUX1650637483.jpg',0,200000000,1,2,'nha-dat-express',0),(2,'Website bán hàng - TIKI','[\"Laravel\",\"PHP\",\"React\",\"Ajax\"]','Chi tiết',6,'2022-04-25','2022-06-30','http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db','http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db','uploads/project/nzbD1650821672.png',0,1000000000,1,2,'website-ban-hang-tiki',0),(3,'Ứng dụng học trực tuyến ILEANR','[\"fluuter\",\"nodejs\"]','OK',4,'2022-05-18','2022-05-28','http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db','http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db','uploads/project/6lW41652314380.jpg',0,20000000,1,1,'ung-dung-hoc-truc-tuyen-ileanr',0),(4,'Dự án xây dựng','[\"Laravel\",\"ReactJS\"]','Chi tiết dự án',6,'2022-05-12','2022-06-22','http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db','http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db','uploads/project/Syjr1652342168.jpg',0,300000000,3,2,'du-an-xay-dung',0),(5,'Website bán sách','[\"Laravel\",\"bootstrap\"]','CHi tiết dự án',1,'2022-06-11','2022-08-25','http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db','http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db','uploads/project/1fve1654931581.webp',0,200000000,3,2,'website-ban-sach',0),(6,'Tesst','[\"dsa\",\"dsav\",\"sadc\"]','dsa',1,'2023-01-31','2023-02-14','http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db','http://localhost/phpmyadmin/index.php?route=/database/export&db=hrm_db','uploads/project/sda91675182212.png',0,123213,1,1,'tesst',2);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_implementer`
--

DROP TABLE IF EXISTS `project_implementer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_implementer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_implementer_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_implementer`
--

LOCK TABLES `project_implementer` WRITE;
/*!40000 ALTER TABLE `project_implementer` DISABLE KEYS */;
INSERT INTO `project_implementer` VALUES (13,3,2),(14,4,2),(15,6,2),(17,3,3),(18,5,3),(19,3,4),(20,5,4),(23,3,5),(24,6,5),(28,1,6),(29,4,1);
/*!40000 ALTER TABLE `project_implementer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  `role_permission` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Cấu hình hệ thống','a:3:{i:0;s:2:\"10\";i:1;s:2:\"21\";i:2;s:1:\"2\";}','2022-05-10 11:09:46',1),(2,'Quản lý nhân viên','a:3:{i:0;s:2:\"10\";i:1;s:2:\"12\";i:2;s:2:\"13\";}','2022-05-10 11:12:09',1),(3,'Quản lý lương','a:2:{i:0;s:2:\"24\";i:1;s:2:\"26\";}','2022-05-11 16:05:25',1),(4,'Thống kê dữ liệu','a:1:{i:0;s:1:\"1\";}','2022-05-12 14:54:03',1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_history`
--

DROP TABLE IF EXISTS `salary_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `basic_salary` int DEFAULT NULL,
  `total_off` int DEFAULT NULL,
  `bonus` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `total_salary` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `salary_history_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_history`
--

LOCK TABLES `salary_history` WRITE;
/*!40000 ALTER TABLE `salary_history` DISABLE KEYS */;
INSERT INTO `salary_history` VALUES (1,1,20000000,0,2000000,'2022-05-11 15:39:03',1,22000000),(2,2,NULL,12,1000000,'2022-05-11 15:43:03',1,1000000),(3,3,3000000,20,500000,'2022-05-12 14:56:58',1,772727);
/*!40000 ALTER TABLE `salary_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_config`
--

DROP TABLE IF EXISTS `system_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `system_name` varchar(100) NOT NULL,
  `system_logo` varchar(255) DEFAULT NULL,
  `system_info` text,
  `system_address` varchar(100) DEFAULT NULL,
  `system_phone` char(15) DEFAULT NULL,
  `system_phone_technology` char(15) DEFAULT NULL,
  `system_facebook` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `system_config_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_config`
--

LOCK TABLES `system_config` WRITE;
/*!40000 ALTER TABLE `system_config` DISABLE KEYS */;
INSERT INTO `system_config` VALUES (1,'HRI-Company','uploads/logo/1652259692-ANxUT.png','3132','33 Xô Viết Nghệ Tĩnh , Hải Châu , Đà Nẵng','0395342134','0395342134','231321');
/*!40000 ALTER TABLE `system_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_title` varchar(255) NOT NULL,
  `task_description` text,
  `task_status_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (2,'Quản lý danh mục','Thực hiện chức năng đăng kí đăng nhập yêu cầu',2,NULL,1),(3,'A1 - Đăng kí - Đăng nhập','Thực hiện chức năng đăng kí đăng nhập yêu cầu',6,'2022-04-23 20:42:03',1),(4,'Quản lý dự án','Quản lý dự án ,như thêm sửa ,xóa ,....',6,'2022-04-24 01:50:50',1),(6,'Đăng kí - đăng nhập','Thực hiện đăng kí đăng nhập , sử dụng Auth và token để xác thực',1,'2022-04-25 00:44:25',2),(7,'Quản lý danh mục','Thực hiện thêm sửa xóa danh mục ,\r\nYêu cầu danh mục 3 cấp (có hình ảnh)',1,'2022-04-25 00:45:46',2),(8,'Phân tích yêu cầu','Phan tich cac yeu cau',1,'2022-05-12 07:14:14',3),(9,'Quản lý nhân viên1','quản lý',1,'2022-05-12 14:58:45',1),(10,'A1 - Đăng kí - Đăng nhập','Chi tiết',6,'2022-06-11 14:14:06',5),(11,'Quản lý dự án','chi tiết',1,'2022-06-11 14:14:34',5);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_assign`
--

DROP TABLE IF EXISTS `task_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_assign` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_assign_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_assign`
--

LOCK TABLES `task_assign` WRITE;
/*!40000 ALTER TABLE `task_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_description`
--

DROP TABLE IF EXISTS `task_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_description` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_desc_content` text,
  `task_desc_image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_description_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_description`
--

LOCK TABLES `task_description` WRITE;
/*!40000 ALTER TABLE `task_description` DISABLE KEYS */;
INSERT INTO `task_description` VALUES (1,'Các chức năng cơ bản chưa đạt yêu cầu',NULL,'2022-04-24 18:42:24',1,2),(2,'Giao diện như sau','uploads/task/1650801196-Xusik.PNG','2022-04-24 18:53:16',1,2),(3,NULL,'uploads/task/1650801597-C5nz9.jpg','2022-04-24 18:59:57',1,2),(4,'Cần kiểm tra lại','uploads/task/1650820555-9i4bO.png','2022-04-25 00:15:55',1,2),(5,'oke',NULL,'2022-04-25 00:27:05',6,2),(6,'test',NULL,'2022-05-11 16:09:26',1,2),(7,'Vâng',NULL,'2022-05-12 07:14:40',4,8),(8,'bình luận','uploads/task/1652342413-MRR0l.jpg','2022-05-12 15:00:13',1,2),(9,'Test bình luận','uploads/task/1654931708-9mVdG.PNG','2022-06-11 14:15:08',1,10);
/*!40000 ALTER TABLE `task_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_status_group`
--

DROP TABLE IF EXISTS `task_status_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_status_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `class_text_style` varchar(100) DEFAULT NULL,
  `class_bg_style` varchar(100) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_status_group_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_status_group`
--

LOCK TABLES `task_status_group` WRITE;
/*!40000 ALTER TABLE `task_status_group` DISABLE KEYS */;
INSERT INTO `task_status_group` VALUES (1,'Đang chờ',NULL,'badge badge-primary ',NULL),(2,'Đang làm ',NULL,'badge badge-info ',NULL),(3,'Chờ xác nhận',NULL,'badge badge-warning ',NULL),(4,'Đang kiểm tra',NULL,'badge badge-info ',NULL),(5,'Lỗi',NULL,'badge badge-danger ',NULL),(6,'Hoàn thành',NULL,'badge badge-success ',NULL);
/*!40000 ALTER TABLE `task_status_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_experience`
--

DROP TABLE IF EXISTS `work_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_experience` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `workplace` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `work_experience_id_uindex` (`id`),
  KEY `work_experience_admin_id_fk` (`admin_id`),
  CONSTRAINT `work_experience_admin_id_fk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_experience`
--

LOCK TABLES `work_experience` WRITE;
/*!40000 ALTER TABLE `work_experience` DISABLE KEYS */;
INSERT INTO `work_experience` VALUES (1,2,'2018-04-11',NULL,'Laravel Development','FPT Software'),(2,1,'2021-06-10','2022-05-02','Fresher Laravel Development','Izi software'),(4,1,'2022-04-06',NULL,'Junior Laravel','FPT software1');
/*!40000 ALTER TABLE `work_experience` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-07 21:12:26
