CREATE DATABASE  IF NOT EXISTS `factory` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `factory`;
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
-- Table structure for table `Part_Tool`
--

DROP TABLE IF EXISTS `Part_Tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Part_Tool` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Part` int unsigned NOT NULL,
  `ID_Tool` int unsigned NOT NULL,
  `Operations` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_part_tool_parts` (`ID_Part`),
  KEY `fk_part_tool_tools` (`ID_Tool`),
  CONSTRAINT `fk_part_tool_parts` FOREIGN KEY (`ID_Part`) REFERENCES `Parts` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_part_tool_tools` FOREIGN KEY (`ID_Tool`) REFERENCES `Tools` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Part_Tool`
--

LOCK TABLES `Part_Tool` WRITE;
/*!40000 ALTER TABLE `Part_Tool` DISABLE KEYS */;
INSERT INTO `Part_Tool` VALUES (7,3,2,'Tube rough forming'),(8,3,1,'Pockets milling'),(9,4,2,'Rough turning'),(10,4,2,'Tube rough facing');
/*!40000 ALTER TABLE `Part_Tool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parts`
--

DROP TABLE IF EXISTS `Parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Parts` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nr` varchar(20) NOT NULL DEFAULT '0',
  `Name` varchar(20) NOT NULL DEFAULT 'NoName',
  `Dir` varchar(255) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Drawing` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `G_Code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parts`
--

LOCK TABLES `Parts` WRITE;
/*!40000 ALTER TABLE `Parts` DISABLE KEYS */;
INSERT INTO `Parts` VALUES (3,'N00Q12','Test2','/parts/N00Q12','/parts/N00Q12/p.cad','/parts/N00Q12/p.pdf','/parts/N00Q12/p.jpeg','/parts/N00Q12/p.nc'),(4,'B33U4','Test1','/parts/B33U4','/parts/B33U4/k.cad','/parts/B33U4/k.pgf','/parts/B33U4/k.jpeg','/parts/B33U4/k.nc');
/*!40000 ALTER TABLE `Parts` ENABLE KEYS */;
UNLOCK TABLES;

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
  `Diameter_mm` decimal(6,3) DEFAULT NULL,
  `Angle` decimal(4,2) DEFAULT '0.00',
  `Storage_Machine_ID` varchar(10) DEFAULT NULL,
  `Slot` int DEFAULT NULL,
  `Dir` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
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

-- Dump completed on 2026-05-20 19:29:09
