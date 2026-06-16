-- MySQL dump 10.13  Distrib 9.4.0, for Linux (x86_64)
--
-- Host: localhost    Database: railway
-- ------------------------------------------------------
-- Server version       9.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Present',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_date` (`user_id`,`date`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (4,5,'Fatima Basharat','2026-05-16','01:03 AM','Present','2026-05-16 20:03:34'),(7,9,'abubakar','2026-05-17','01:53 PM','Present','2026-05-17 08:53:04'),(8,10,'abubakar1','2026-05-17','07:28 PM','Present','2026-05-17 14:28:34'),(9,11,'Chaudhary','2026-05-17','07:32 PM','Present','2026-05-17 14:32:28'),(10,12,'fiza raza','2026-05-17','08:22 pm','Present','2026-05-17 15:22:57'),(11,14,'Iman Akram','2026-05-18','11:09 PM','Present','2026-05-17 18:10:24'),(12,9,'abubakar','2026-05-18','02:28 PM','Present','2026-05-18 09:28:40'),(13,9,'abubakar','2026-05-30','11:13 pm','Present','2026-05-30 18:13:10'),(14,11,'Chaudhary','2026-05-30','11:29 pm','Present','2026-05-30 18:29:37'),(15,9,'abubakar','2026-05-31','11:09 pm','Present','2026-05-31 18:09:19'),(17,21,'Iman Akram','2026-06-01','09:19 AM','Present','2026-06-01 04:20:07'),(18,9,'abubakar','2026-06-02','08:16 pm','Present','2026-06-02 15:16:00'),(19,9,'abubakar','2026-06-03','10:14 am','Present','2026-06-03 05:14:25'),(21,10,'abubakar1','2026-06-03','11:24 am','Present','2026-06-03 06:24:05'),(22,11,'Chaudhary','2026-06-03','11:29 am','Present','2026-06-03 06:29:35'),(23,24,'Daniyal Ahsan','2026-06-05','10:24 am','Present','2026-06-05 05:24:33'),(24,11,'Chaudhary','2026-06-16','09:09 pm','Present','2026-06-16 16:08:58');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicines`
--

DROP TABLE IF EXISTS `medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `qty` int NOT NULL DEFAULT '0',
  `expiry` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines`
--

LOCK TABLES `medicines` WRITE;
/*!40000 ALTER TABLE `medicines` DISABLE KEYS */;
INSERT INTO `medicines` VALUES (1,'Panadol 500mg','Analgesic','GSK',35.00,400,'2026-12-31','2026-05-16 15:50:57','2026-06-02 15:16:37'),(2,'Augmentin 625mg','Antibiotic','GSK',180.00,5,'2025-08-15','2026-05-16 15:50:57','2026-06-16 16:09:25'),(3,'Gaviscon Liquid','Antacid','Reckitt',250.00,44,'2026-06-30','2026-05-16 15:50:57','2026-06-05 05:26:06'),(4,'Vitamin C 1000mg','Vitamin','ICI',120.00,2,'2025-05-20','2026-05-16 15:50:57','2026-05-18 10:28:22'),(5,'Metformin 850mg','Other','Sanofi',95.00,80,'2027-01-15','2026-05-16 15:50:57','2026-05-17 14:38:48'),(6,'Panadol Cf','Antibiotic','AS',204.00,150,'2029-05-17','2026-05-16 19:54:23','2026-05-16 19:55:30'),(7,'nims','Analgesic','AS',120.00,99,'2026-11-15','2026-06-03 05:43:52','2026-06-05 05:26:06');
/*!40000 ALTER TABLE `medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` varchar(20) NOT NULL,
  `customer` varchar(150) DEFAULT 'Walk-in Patient',
  `items` json NOT NULL,
  `subtotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sale_date` date NOT NULL,
  `sale_time` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('INV-028728','Walk-in Patient','[{\"id\": \"5\", \"qty\": 120, \"name\": \"Metformin 850mg\", \"price\": 95, \"total\": 11400}]',11400.00,2280.00,9120.00,'2026-05-17','7:38:48 PM','2026-05-17 14:38:48'),('INV-031993','hoor','[{\"id\": \"1\", \"qty\": 2, \"name\": \"Panadol 500mg\", \"price\": 35, \"total\": 70}]',70.00,0.00,70.00,'2026-05-17','20:33:12','2026-05-17 15:33:13'),('INV-100102','Walk-in Patient','[{\"id\": \"4\", \"qty\": 1, \"name\": \"Vitamin C 1000mg\", \"price\": 120, \"total\": 120}]',120.00,0.00,120.00,'2026-05-18','3:28:22 PM','2026-05-18 10:28:22'),('INV-413397','Walk-in Patient','[{\"id\": \"1\", \"qty\": 98, \"name\": \"Panadol 500mg\", \"price\": 35, \"total\": 3430}]',3430.00,0.00,3430.00,'2026-06-02','8:16:43 pm','2026-06-02 15:16:37'),('INV-465495','fiza','[{\"id\": \"7\", \"qty\": 20, \"name\": \"nims\", \"price\": 120, \"total\": 2400}]',2400.00,240.00,2160.00,'2026-06-03','10:45:01 am','2026-06-03 05:44:55'),('INV-626165','Walk-in Patient','[{\"id\": \"2\", \"qty\": 5, \"name\": \"Augmentin 625mg\", \"price\": 180, \"total\": 900}]',900.00,0.00,900.00,'2026-06-16','9:09:28 pm','2026-06-16 16:09:25'),('INV-637166','Faizan','[{\"id\": \"2\", \"qty\": 1, \"name\": \"Augmentin 625mg\", \"price\": 180, \"total\": 180}, {\"id\": \"3\", \"qty\": 1, \"name\": \"Gaviscon Liquid\", \"price\": 250, \"total\": 250}, {\"id\": \"7\", \"qty\": 1, \"name\": \"nims\", \"price\": 120, \"total\": 120}]',550.00,55.00,495.00,'2026-06-05','10:26:05','2026-06-05 05:26:06'),('INV-961330','Ali','[{\"id\": \"6\", \"qty\": 100, \"name\": \"Panadol Cf\", \"price\": 204, \"total\": 20400}]',20400.00,2448.00,17952.00,'2026-05-16','12:55:29 AM','2026-05-16 19:55:30');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `key_name` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`key_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('currency','Rs.'),('pharmacy_name','AS Pharmacy'),('theme','light');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `phone` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `joined` date DEFAULT (curdate()),
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'Fatima Basharat','fatimabasharat158@gmail.com','Pakistan@19','staff','03366733051','2026-03-19','2026-05-16','2026-05-16 20:03:22'),(9,'abubakar','abubakarbasharat29@gmail.com','abubakar123','staff','+923066066704','2026-05-17','2026-05-17','2026-05-17 08:44:07'),(10,'abubakar1','basharatabubakar405@gmail.com','abubakar987','staff','03059601459','2026-05-17','2026-05-17','2026-05-17 14:26:47'),(11,'Chaudhary','sellercoin600@gmail.com','seller600','admin','',NULL,'2026-05-17','2026-05-17 14:31:25'),(12,'fiza raza','fizaraza627@gmail.com','cocomo','staff','+923137759025','2005-11-24','2026-05-17','2026-05-17 15:20:47'),(14,'Iman Akram','emaanakram149@gmail.com','Abcdef','staff','+923086664651','2006-07-14','2026-05-17','2026-05-17 18:08:20'),(15,'faria','emanakram149@gmail.com','absdfgh','staff','+923086664651','2007-11-11','2026-05-18','2026-05-18 04:32:54'),(19,'Hamza','hamza1@gmail.com','hamza1','staff','+923336770051','2026-05-31','2026-05-31','2026-05-31 18:51:28'),(20,'Iman Akram','imanakram049@gmail.com','Abcdef','staff','+923086664651','2008-03-31','2026-06-01','2026-06-01 04:09:40'),(21,'Iman Akram','imanrajput499@gmail.com','Abcdef','staff','+923086664651','2008-03-31','2026-06-01','2026-06-01 04:18:55'),(22,'Usama','usama@gmail.com','usama12','staff','03059701234','2026-06-02','2026-06-02','2026-06-02 15:32:43'),(23,'Hamza','hamza12@gmail.com','hamza123','staff','+923336770051','2026-06-03','2026-06-03','2026-06-03 06:08:56'),(24,'Daniyal Ahsan','aliyanahsan74@gmail.com','mSDRf4uJrCAK8Lg','staff','03482251674','2026-06-05','2026-06-05','2026-06-05 05:23:38');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-16 16:22:49