-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlybanhang
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `MaKH` varchar(10) NOT NULL,
  `TenKH` varchar(40) NOT NULL DEFAULT '',
  `DiaChi` varchar(60) NOT NULL DEFAULT '',
  `DienThoai` varchar(11) NOT NULL DEFAULT '',
  `MaTP` char(2) NOT NULL,
  PRIMARY KEY (`MaKH`),
  UNIQUE KEY `TenKH` (`TenKH`),
  KEY `MaTP` (`MaTP`),
  CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`MaTP`) REFERENCES `tinhtp` (`MaTP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES ('CODACO','Cơ Khí Dân Dụng','388 Hòa Hảo P5','1757828','TP'),('COTEC','Công Nghệ Mới','319 Nguyễn Trãi P7','7657657','CT'),('DHP','Đại Hưng Phát','343 Nhật Tảo P16','6546565','NT'),('GIAY32','Giày 32','105A Ngô Quyền P11','6565468','CT'),('RUBIMAX','Công Nghiệp Cao Su','220 Lê Văn Sỹ','2987912','NT'),('SAMACO','SXKD Dịch Vụ Tổng Hợp','56 Nguyễn Biểu P2','1987987','CT'),('SAMECO','Cơ khí Sài Gòn','156 Lê Đại Hành P7','2397997','HN'),('TRACODI','Đầu tư phát triển GTVT','Hàm Nghị Q1','0976766','HP'),('VITICO','Hóa Nhựa Vĩnh Tiến','35 Tô Hiến Thành P14','3987980','TP'),('VTP','Vạn Hưng Phát','119 Bạch Vân P17','3765768','HN');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-29 20:45:10
