-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: doan_nongsan
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `product_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `product_img` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id_idx` (`id`,`product_id`),
  KEY `cus_id_idx` (`customer_id`),
  CONSTRAINT `cus_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (144,8,7,'Hạt giống lá giang','caycon.jpg',1,12,12),(147,28,2,'Hạt Ngô','hatngo.jpg',6,65,390),(170,33,6,'Mật ong đa hoa Phương Di 300ml','aa.jpg',3,100,300),(171,30,6,'cà phê','caphe.jpg',1,125,125);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (5,'Hạt Giống'),(6,'Rau Củ Quả'),(9,'Trái Cây'),(10,'Thực Phẩm Đóng Gói'),(11,'Hạt Giống Hoa'),(12,'Hoa');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (2,'Phụng Trương','549/45',1203452812,'ttptruong23@gmail.com','123456'),(3,'Robot','532/1 Bình Trị Đông',932165930,'truongandrei89@gmail.com','phung2302'),(4,'ttp','11A/12',123456778,'aaaaa@gmail.com','123'),(5,'Analog','13B/12A',1203452812,'abc@gmai.com','abc'),(6,'PP','12',1231145343,'pp@gmail.com','pp'),(7,'Khiết Ny','Nguyễn Biểu',901428702,'minho_choi@gmail.com','123456');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhapkho`
--

DROP TABLE IF EXISTS `nhapkho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhapkho` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `DVT` varchar(45) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id_idx` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhapkho`
--

LOCK TABLES `nhapkho` WRITE;
/*!40000 ALTER TABLE `nhapkho` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhapkho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id_idx` (`order_id`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (171,4212709,28,1,65,'Chuyen Khoan','2023-12-30 17:50:35'),(172,4212709,27,1,65,'Chuyen Khoan','2023-12-30 17:50:35'),(173,4212710,27,1,65,'Chuyen Khoan','2023-12-30 17:50:35'),(174,4212710,17,1,17,'Chuyen Khoan','2023-12-30 17:50:35'),(175,4212711,11,1,52,'Chuyen Khoan','2023-12-30 17:50:35'),(176,4212711,28,1,65,'Chuyen Khoan','2023-12-30 17:50:35'),(179,4212713,26,1,65,'Tien Mat','2023-12-30 17:50:35'),(180,4212713,27,1,65,'Tien Mat','2023-12-30 17:50:35'),(189,4212717,28,1,65,'Chuyen Khoan','2024-01-02 08:34:11'),(190,4212718,28,3,65,'Tien Mat','2024-01-02 17:16:56'),(191,4212718,27,1,65,'Tien Mat','2024-01-02 17:16:56'),(192,4212719,28,6,65,'Tien Mat','2024-01-03 10:08:24'),(193,4212720,28,6,65,'Tien Mat','2024-01-03 10:09:51'),(194,4212721,28,6,65,'Chuyen Khoan','2024-01-03 12:32:13'),(206,4212728,2,1,15,'Chuyen Khoan','2024-01-04 07:33:58'),(207,4212728,30,1,125,'Chuyen Khoan','2024-01-04 07:33:58'),(208,4212729,30,4,125,'Chuyen Khoan','2024-01-04 07:34:21'),(209,4212729,24,1,25,'Chuyen Khoan','2024-01-04 07:34:21');
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT 'Đang Duyệt',
  `duyetdon` varchar(45) DEFAULT 'Chưa Thanh Toán',
  PRIMARY KEY (`id`),
  KEY `customer_id_idx` (`customer_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4212731 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4212709,2,'2023-12-29 11:29:32',NULL,'Đã Thanh Toán'),(4212710,2,'2023-12-29 11:31:51','Chưa Thanh Toán','Chưa Thanh Toán'),(4212711,2,'2023-12-29 11:32:16','Đã Duyệt','Chưa Thanh Toán'),(4212713,6,'2023-12-29 13:46:50','Đã Duyệt','Đã Thanh Toán'),(4212717,7,'2024-01-02 08:34:12','Đã Duyệt','Chưa Thanh Toán'),(4212718,2,'2024-01-02 17:16:56','Đã Duyệt','Chưa Thanh Toán'),(4212719,2,'2024-01-03 10:08:25','Đang Duyệt','Chưa Thanh Toán'),(4212720,2,'2024-01-03 10:09:52','Đang Duyệt','Chưa Thanh Toán'),(4212721,2,'2024-01-03 12:32:13','Đang Duyệt','Chưa Thanh Toán'),(4212728,6,'2024-01-04 07:33:58','Đang Duyệt','Chưa Thanh Toán'),(4212729,6,'2024-01-04 07:34:21','Đang Duyệt','Chưa Thanh Toán');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mota` longtext,
  `img` varchar(255) DEFAULT NULL,
  `categoryID` int DEFAULT NULL,
  `supplierID` int DEFAULT NULL,
  `oop` varchar(45) DEFAULT NULL,
  `DVT` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `stockquantity` int DEFAULT NULL,
  `create_add` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `categoryID_idx` (`categoryID`),
  KEY `supplierID_idx` (`supplierID`),
  CONSTRAINT `categoryID` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`id`),
  CONSTRAINT `supplierID` FOREIGN KEY (`supplierID`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Đậu Hà Lan','<p>sadasdd</p>','dauhalan.jpg',5,1,'abbbbbbbbbbb','kg','15.000',998,'2023-12-16 11:08:32'),(8,'Hạt giống lá giang','<h3><strong>HẠT GIỐNG LÁ GIANG (CÂY LÁ LỒM)</strong></h3><p>Lá giang là cây thảo mộc sống ở vùng nhiệt đới, cây thân leo và sống lâu năm. Thích ở nơi có ánh sáng mặt trời đầu đủ hoặc bóng râm một phần. Lá màu xanh nam, hoa màu hồng nhạt, trắng hoặc gần trắng,&nbsp; chiều cao cây từ 3.6 – 4.7m, khoảng cách trồng 1.2 – 1.8m/cây. Lá giang dùng nấu canh chua với cá, thịt bò. Trong 100gam lá giang có chứa 85,3g nước, 3,5g protein, 3,5g glucid, 0,6mg carotein, 26mg vitamin C. Rau lá giang có tác dụng giải nhiệt tốt, lá giang giã lấy nước uống để chữa ngộ độc sắn (mì)</p>','caycon.jpg',5,1,'xãsadad','kg','12.000',124,'2023-12-16 11:08:00'),(11,'Na Bà Đen – 500gr','','na.jpg',9,1,'Việt Nam','KG','52.000',120,'2023-12-23 06:15:15'),(17,'Hạt giống đậu Hà Lan lấy hạt','<p>Đặc điểm hạt giống đậu hà lan lấy hạt: Giống cho năng suất cao, thương phẩm rất tốt, có ưu điểm ngọt, giòn và luôn được bà con nông dân ưa chuộng. Năng suất trung bình 1000 – 1200kg/1000m2, năng suất cao có thể đạt 3000kg /1000m2. Vỏ quả căng mọng, màu xanh, hình thức đẹp, vị ngọt, giòn. Là loại cây trồng lý tưởng cho vụ thu đông và cho hiệu quả kinh tế cao.</p><p>Hạt giống đậu Hà Lan lấy hạt, có màu xanh, vị ngọt, giòn được người tiêu dùng ưa chuộng, giá thị trường của loại đậu Hà Lan lấy hạt này cao hơn các loại đâu khác. Hiện nay nó được trồng ở nhiều nơi trên đất nước ta.&nbsp;</p><p>Đặc điểm sinh trưởng của giống đậu Hà Lan lấy hạt: Giống ưa thời tiết lạnh, chịu lạnh và không chịu được nóng, nhiệt độ sinh trưởng thích hợp là từ 16 – 23 độ C. Ở Miền Bắc thường trồng từ cuối tháng 9 đến tháng 12, với các tỉnh miền núi có thể trồng trái vụ. Cây đậu Hà Lan có thân dài 1.8 – 2.5m, phân cành rất mạch, nhiều quả, mỗi nhánh có thể có từ 20 – 30 quả, quả to, hoa màu trắng, vỏ trơn, dài, mềm. Mỗi 100gam vỏ quả đậu hà lan có chứa 1.3gam protein và 30.8 miligam vitamin min.</p><p>– Tránh trồng liên tục đậu Hà lan lấy hạt với các loại cây họ đậu khác, tránh đất chua, nên chọn đất thịt pha cát để thuận lợi tưới tiêu, độ phì của đất vừa phải, độ ph từ 6 – 7.</p><p><strong>Làm đất và bón phân</strong></p><p>– Cần xới đất thật sâu 20 – 25 cm, bón 100kg vôi cho 1000m2, lên luống rộng 1.3 – 1.5m, cao 25 – 30cm, rãnh rộng 30cm. Dùng 1000kg/1000m2 phân hoai mục (phân gà, vịt đã xử lý) cộng với 8kg /1000m2 làm phân bón lót. Chú ý bón lót đều hai bên rãnh gieo hạt, để tránh hạt không tiếp xúc trực tiếp với phân.</p><p>– Sau khi bón lót, san phẳng luống, trồng từng hạt thành hàng, cây cách cây 4 – 5cm, gieo 2 – 3kg- 4kg/1000m2, sau gieo lấp đất che hạt khoảng 2cm. Lưu ý gieo hạt khô, không ngâm nước, rút sạch nước ránh sau gieo tránh để úng, thối hạt. Sau gieo tưới ẩm đều, có thể phủ rơm dạ để giữ ẩm cho đất và tránh mưa trôi hat.</p><p><strong>Quản lý sau gieo</strong></p><p>– Sau từ 5 – 7 ngày cây con mọc lên, kiểm tra và bổ sung cây con kịp thời. Lưu ý côn trùng gây hại giai đoạn này. Giữ đất luôn ẩm, tuy nhiên không để úng và ẩm quá mức. Ở giai đoạn cây con thì bón 1.5kg/1000m2 ure . Khi cây con cao 30cm bắt đầu làm cỏ, xới đất</p><p>Cắm cọc tre để giữ cây cho cây leo lên giàn.</p><p>– Khi cây con đạt độ cao 30cm thì bắt đầu cắm cọc tre để thu hút dây leo, cây tre dài khoảng 3m, cọc tre cắm cách nhau 30cm, mỗi 1000m2 cần dùng đến khoảng 4500 cọc tre.&nbsp;</p><p>Quản lý khi cây sang giai đoạn ra hoa và hình thành quả.</p><p>Hạt giống đậu hà Lan lấy hạt có thời gian sinh trưởng 120 ngày, khoảng 60 ngày nếu tính từ khi gieo đến khi ra hoa, 60 ngày từ khi ra hoa cho đến khi thu hoạch. Tại thời kỳ này bón 22kg phân hỗn hợp được bón trong thời kỳ ra hoa. Trong thời kỳ giai đoạn vỏ</p><p><strong>Thu hoạch:</strong></p><p>Khoảng 25 ngày sau khi hoa tàn, quả đậu hà lan phồng lên rõ ràng và quả được thu hoạch bằng cách dùng kéo cắt. Bảo quản nơi thoáng mát, thông gió và chế biến hoặc xử lý kịp thời.</p><p>Những vấn đề cần chú ý khi trồng đậu hà lan lấy hạt:</p><p>– Trồng đậu Hà Lan lấy hạt cần bón đủ phân lân, kali để thúc đẻ nhánh và tăng khả năng chống chịu sâu bệnh. Nếu bón không đủ phân sẽ làm giảm đẻ nhánh ở gốc thân chính, cây quá dài hoặc bón phân không đủ sẽ làm ảnh hưởng tới sự tăng trưởng của hạt và độ ngọt của hạt.&nbsp;</p><p>– Không ngâm hạt trước khi gieo, đất không quá ướt trong quá trình gieo, nếu không sẽ làm thối hạt, hạt không được tiếp xúc với phân kali, nếu không hạt sẽ nảy mầm kém, hoặc thối không thể nảy mầm.&nbsp;</p><p>– Không thể trồng hạt giống đậu hà lan lấy hạt liên tục trong một chân đất.</p>','dauhalan.jpg',5,1,'Việt Nam','gam','17.000',1000,'2023-12-17 13:52:12'),(24,'Hạt giống cỏ đổi màu','','codoimau.jpg',5,5,'Đức','gói - 100 hạt','25.000',246,'2023-12-23 09:25:42'),(25,'cà phê','','caphe.jpg',10,5,'Đắk Lắk','KG','110.000',122,'2023-12-23 09:26:31'),(26,'Xoài Cát Hòa Lộc – 1 kg','','XCHL.jpg',9,4,'Việt Nam','KG','65.000',11,'2023-12-23 09:27:05'),(27,'Cải ngọt 300gr','','caycon.jpg',6,1,'Việt Nam','KG','65.000',11,'2023-12-23 09:30:11'),(28,'Hạt Ngô','','hatngo.jpg',5,1,'Việt Nam','KG','65.000',0,'2023-12-23 09:30:45'),(30,'cà phê','<p>qqqqqqq</p>','caphe.jpg',10,4,'Việt Nam','Bao','125.000',90,'2023-12-29 08:56:45'),(32,'sấdsad','<p>ádasd</p>','caphe.jpg',6,1,'sad','sa','21435',0,'2024-01-04 07:33:33'),(33,'Mật ong đa hoa Phương Di 300ml','','aa.jpg',10,1,'Việt Nam','Thùng','100.000',8,'2024-01-04 06:49:26');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sp_name` varchar(45) DEFAULT NULL,
  `sp_email` varchar(45) DEFAULT NULL,
  `sp_phone` int DEFAULT NULL,
  `sp_add` varchar(45) DEFAULT NULL,
  `note` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Nông Sản Sạch','nongsansach@gmail.com',1203452812,'459/45','ádfyu'),(4,'Nhà Cung Cấp 1','a@gmail.com',4234,'a',''),(5,'Nhà Cung Cấp 2','ncc2@gmail.com',1202340122,'12A/9','');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tonkho`
--

DROP TABLE IF EXISTS `tonkho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tonkho` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nhapkho_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date_nhap` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `nhapkho_id_idx` (`nhapkho_id`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `nhapkho_id` FOREIGN KEY (`nhapkho_id`) REFERENCES `nhapkho` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tonkho`
--

LOCK TABLES `tonkho` WRITE;
/*!40000 ALTER TABLE `tonkho` DISABLE KEYS */;
/*!40000 ALTER TABLE `tonkho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuatkho`
--

DROP TABLE IF EXISTS `xuatkho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xuatkho` (
  `id` int NOT NULL,
  `tonkho_id` varchar(45) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `DVT` varchar(45) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id_idx` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuatkho`
--

LOCK TABLES `xuatkho` WRITE;
/*!40000 ALTER TABLE `xuatkho` DISABLE KEYS */;
/*!40000 ALTER TABLE `xuatkho` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-07 15:03:33
