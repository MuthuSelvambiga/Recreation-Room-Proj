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
-- Table structure for table `room_availability`
--

DROP TABLE IF EXISTS `room_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_availability` (
  `RSI_NO` int NOT NULL AUTO_INCREMENT,
  `ROOM_ID` int NOT NULL,
  `ROOM_CURRENTCOUNT` int NOT NULL,
  `ROOM_ALLOWEDCOUNT` int NOT NULL,
  `ROOM_STATUS` varchar(45) NOT NULL DEFAULT 'OPEN',
  `ROOM_CUR_EXISTINGGENDER` varchar(45) DEFAULT NULL,
  `ROOM_CUR_ALLOWEDGENDER` varchar(45) DEFAULT NULL,
  `ROOM_TIMELOG` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`RSI_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_availability`
--

LOCK TABLES `room_availability` WRITE;
/*!40000 ALTER TABLE `room_availability` DISABLE KEYS */;
INSERT INTO `room_availability` VALUES (1,1,1,2,'CLOSED',NULL,'MALE','1000-01-01 00:00:00'),(2,4,3,0,'CLOSED',NULL,'FEMALE','2026-08-02 12:00:04'),(3,3,3,0,'CLOSED',NULL,'MALE','2022-02-09 12:03:00'),(4,2,2,1,'CLOSED',NULL,'MALE','2022-02-09 14:26:00'),(5,1,1,2,'CLOSED',NULL,'FEMALE','2022-02-09 14:55:09'),(6,3,2,1,'CLOSED',NULL,'MALE','2022-02-09 20:38:11'),(7,2,1,2,'CLOSED','FEMALE','','2022-02-09 20:38:55'),(8,4,2,1,'CLOSED','FEMALE','FEMALE','2022-02-10 09:04:52'),(9,2,2,1,'CLOSED','FEMALE','FEMALE','2022-02-10 09:08:28'),(10,3,1,2,'CLOSED','MALE','MALE','2022-02-10 12:37:52'),(11,1,2,1,'CLOSED','FEMALE','FEMALE','2022-02-17 16:37:52'),(12,4,1,2,'OPEN','MALE','MALE','2022-02-17 16:38:23');
/*!40000 ALTER TABLE `room_availability` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-17 19:03:51
