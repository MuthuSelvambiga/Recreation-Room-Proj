-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: room_details
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `room_bookinginfo`
--

DROP TABLE IF EXISTS `room_bookinginfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_bookinginfo` (
  `BOOKING_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `FULL_NAME` varchar(45) DEFAULT NULL,
  `GENDER` varchar(45) DEFAULT NULL,
  `BOOKING_SLOT` varchar(45) DEFAULT NULL,
  `ROOM_ID` int DEFAULT NULL,
  `CHECK_IN_TIME` varchar(45) DEFAULT NULL,
  `CHECK_OUT_TIME` varchar(45) DEFAULT NULL,
  `ADD_MEMBERS` int DEFAULT NULL,
  PRIMARY KEY (`BOOKING_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=50039 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_bookinginfo`
--

LOCK TABLES `room_bookinginfo` WRITE;
/*!40000 ALTER TABLE `room_bookinginfo` DISABLE KEYS */;
INSERT INTO `room_bookinginfo` VALUES (50011,'SHANTHAKS','FEMALE','MORNING',2,'11.30','12.30',2),(50012,'SACHINGUPTA','MALE','AFTERNOON',3,'13.30','14.00',1),(50013,'KARUNAVIJAY','MALE','EVENING',1,'16.45','18.00',0),(50014,'JANAVIROY','FEMALE','EVENING',4,'16.00','17.00',2),(50015,'NEHASHARMA','FEMALE','MORNING',3,'12.45','13.15',2),(50016,'MALATHISEKAR','FEMALE','EVENING',2,'16.20','17.50',1),(50017,'SHYAMSUNDAR','MALE','EVENING',1,'15.45','16.50',2),(50018,'HARIJAIN','MALE','AFTERNOON',2,'13.00','14.15',1),(50019,'SARULATHAKRISHNAMURTHY','FEMALE','MORNING',2,'09.00','10.00',2),(50020,'RAMKUMAR','MALE','EVENING',4,'15.00','16.00',0),(50021,'KARTHIKEYAN','MALE','AFTERNOON',3,'14.15','15.00',0),(50022,'VANATHISRIRAM','FEMALE','EVENING',2,'18.00','19.00',1),(50025,'LAKSHMIDEVI','FEMALE','AFTERNOON',1,'13.00','14.00',2),(50026,'VASUNDRARAMDAS','FEMALE','MORNING',2,'10.00','11.00',1),(50027,'RAJAM','FEMALE','AFTERNOON',4,'12.00','12.30',1),(50028,'VIJAYABHARGAV','MALE','MORNING',3,'11.00','11.30',1),(50029,'SARULATHAKRISHNAMURTHY','FEMALE','MORNING',3,'10.00','11.00',1),(50030,'SHANTHAKS','FEMALE','MORNIING',3,'12.00','12.30',1),(50031,NULL,'Male','Morning',3,NULL,NULL,0),(50032,'MANISHAYADHAV','FEMALE','MORNING',4,'06.00','06.30',0),(50033,'MANISHAYADHAV','FEMALE','MORNING',1,'06.00','06.30',0),(50034,'MANISHAYADHAV','FEMALE','MORNING',1,'06.00','06.30',0),(50035,'MANISHAYADHAV','FEMALE','MORNING',4,'06:00','06:30',0),(50036,'KARUNAVIJAY','MALE','MORNING',4,'07:00','07:30',0),(50037,'KARUNAVIJAY','Male',NULL,NULL,NULL,NULL,NULL),(50038,NULL,NULL,'MORNING',1,'07.00','07.30',0);
/*!40000 ALTER TABLE `room_bookinginfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-17 19:03:48
