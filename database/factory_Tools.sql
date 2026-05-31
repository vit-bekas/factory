-- MySQL dump 10.13  Distrib 8.0.24, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: factory
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `Tools`
--

DROP TABLE IF EXISTS `Tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tools` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Type` varchar(45) DEFAULT NULL,
  `Unique_Code` varchar(45) DEFAULT NULL,
  `Name` varchar(45) NOT NULL DEFAULT 'NoName',
  `Length_mm` decimal(7,3) DEFAULT '0.000',
  `Diametr_mm` decimal(6,3) DEFAULT '0.000',
  `Angle` decimal(4,2) DEFAULT '0.00',
  `Storage_Machine_ID` varchar(10) DEFAULT NULL,
  `Slot` int DEFAULT NULL,
  `Dir` varchar(45) DEFAULT NULL,
  `Photo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `Unique_Code_UNIQUE` (`Unique_Code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tools`
--

LOCK TABLES `Tools` WRITE;
/*!40000 ALTER TABLE `Tools` DISABLE KEYS */;
INSERT INTO `Tools` VALUES (1,'Mill','NMILL16M','Mill 16.0 mm',141.356,16.000,0.00,'M1',22,'/tools/mill16mm','/tools/mill16mm/a.jpeg'),(2,'Turning','RT55deg','Rough 55deg',200.000,0.000,55.00,'T1',1,'/tools/rough55','/tools/rough55/b.jpeg');
/*!40000 ALTER TABLE `Tools` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-17 12:51:48
