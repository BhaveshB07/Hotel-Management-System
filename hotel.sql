-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `bill_id` bigint NOT NULL AUTO_INCREMENT,
  `book_id` bigint DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `gst` int DEFAULT NULL,
  `st` int DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,1,770500.00,'2020-12-25',0,0),(2,2,500.00,'2020-12-25',0,0),(3,3,1600.00,'2020-12-25',0,0),(4,4,63000.00,'2020-12-25',0,0),(5,5,10500.00,'2020-12-25',0,0),(6,6,8000.00,'2020-12-25',0,0),(7,7,10500.00,'2020-12-25',23,5),(8,8,11500.00,'2020-12-25',23,5),(9,10,-3400.00,'2020-12-29',23,5),(10,11,35025.00,'2022-02-12',23,8);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `book_id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint DEFAULT NULL,
  `cust_id` bigint DEFAULT NULL,
  `doo` date DEFAULT NULL,
  `dol` date DEFAULT NULL,
  `advance` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,1,1,'2020-02-20','2020-12-25',2000.00),(2,2,1,'2020-12-23','2020-12-25',4500.00),(3,4,1,'2020-12-23','2020-12-25',3400.00),(4,1,1,'2020-11-29','2020-12-25',2000.00),(5,1,1,'2020-12-20','2020-12-25',2000.00),(6,1,1,'2020-12-20','2020-12-25',4500.00),(7,1,1,'2020-12-19','2020-12-25',4500.00),(8,1,1,'2020-12-20','2020-12-25',4500.00),(9,1,1,'2020-12-20',NULL,2500.00),(10,2,2,'2020-12-29','2020-12-29',3400.00),(11,4,3,'2022-02-01','2022-02-12',1000.00);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` char(50) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `email` char(80) DEFAULT NULL,
  `id_proof` char(20) DEFAULT NULL,
  `id_proof_no` char(25) DEFAULT NULL,
  `males` int DEFAULT NULL,
  `females` int DEFAULT NULL,
  `children` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'rakesh kumar','Paschim Vihar','98718168101','RAKESH@GMAIL.COM','AADHAR CARD','4544-5656-5656',1,1,2),(3,'bhavesh','ROHINI SECTOR-5','9898989898','BHAVESH@GAMIL.COM','AADHAR','2345-2345-2345',1,0,0);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_no` int DEFAULT NULL,
  `room_type` char(20) DEFAULT NULL,
  `room_rent` float(10,2) DEFAULT NULL,
  `room_bed` char(20) DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,1,'AC',2500.00,'Single Bed','occupied'),(2,2,'AC',2500.00,'Single Bed','free'),(3,3,'AC',2500.00,'Single Bed','free'),(4,4,'AC',2500.00,'Single Bed','free'),(6,5,'AC',3500.00,'Double Bed','free'),(7,6,'AC',3500.00,'Double Bed','free'),(8,7,'AC',3500.00,'Double Bed','free'),(9,8,'Delux',4500.00,'Double Bed','free'),(10,9,'Delux',4500.00,'Double Bed','free'),(11,10,'Delux',4500.00,'Double Bed','free'),(12,10,'Super Delux',5500.00,'Double Bed','free'),(13,11,'Super Delux',5500.00,'Double Bed','free'),(14,11,'Queen Delight',6500.00,'Double Bed','free'),(15,12,'Queen Delight',6500.00,'Double Bed','free'),(16,13,'King Special',7500.00,'Double Bed','free'),(17,14,'King Special',7500.00,'Double Bed','free'),(18,15,'Super Rich Special',9500.00,'Double Bed','free'),(19,16,'Super Rich Special',8500.00,'Single Bed','free'),(20,17,'Delux',4000.00,'Single Bed','free'),(21,18,'Super Delux',4500.00,'Single Bed','free'),(22,19,'Super Delux',4500.00,'Single Bed','free'),(23,20,'AC',2650.00,'SINGLE','free'),(24,23,'Non-AC',NULL,NULL,NULL),(25,24,'Non-AC',NULL,NULL,NULL),(26,25,' AC',3500.00,'SINGLE','free');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `field_name` char(30) DEFAULT NULL,
  `value` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'hotel_name','Crowne Plaza'),(2,'address','Rohini Sector-10, Delhi 110085'),(3,'phone','011-4353534,4654545,456567556'),(4,'email','info@crowneplaza.com'),(5,'gst','23'),(6,'st','8');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp` (
  `book_id` bigint NOT NULL DEFAULT '0',
  `doo` date DEFAULT NULL,
  `dol` date DEFAULT NULL,
  `advance` float(10,2) DEFAULT NULL,
  `name` char(50) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `email` char(80) DEFAULT NULL,
  `room_no` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` VALUES (1,'2020-02-20','2020-12-25',2000.00,'rakesh kumar','Paschim Vihar','98718168101','RAKESH@GMAIL.COM',1),(2,'2020-12-23','2020-12-25',4500.00,'rakesh kumar','Paschim Vihar','98718168101','RAKESH@GMAIL.COM',2),(3,'2020-12-23','2020-12-25',3400.00,'rakesh kumar','Paschim Vihar','98718168101','RAKESH@GMAIL.COM',4),(4,'2020-11-29','2020-12-25',2000.00,'rakesh kumar','Paschim Vihar','98718168101','RAKESH@GMAIL.COM',1),(5,'2020-12-20','2020-12-25',2000.00,'rakesh kumar','Paschim Vihar','98718168101','RAKESH@GMAIL.COM',1),(6,'2020-12-20','2020-12-25',4500.00,'rakesh kumar','Paschim Vihar','98718168101','RAKESH@GMAIL.COM',1),(7,'2020-12-19','2020-12-25',4500.00,'rakesh kumar','Paschim Vihar','98718168101','RAKESH@GMAIL.COM',1),(8,'2020-12-20','2020-12-25',4500.00,'rakesh kumar','Paschim Vihar','98718168101','RAKESH@GMAIL.COM',1);
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-02 10:35:06
