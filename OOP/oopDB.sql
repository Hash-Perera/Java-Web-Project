CREATE DATABASE  IF NOT EXISTS `oop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `oop`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: oop
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `event_supplier`
--

DROP TABLE IF EXISTS `event_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_supplier` (
  `EID` int NOT NULL,
  `SID` int NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`EID`,`SID`),
  KEY `fk9_idx` (`SID`),
  CONSTRAINT `fk8` FOREIGN KEY (`EID`) REFERENCES `events` (`EID`),
  CONSTRAINT `fk9` FOREIGN KEY (`SID`) REFERENCES `supplier` (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_supplier`
--

LOCK TABLES `event_supplier` WRITE;
/*!40000 ALTER TABLE `event_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `EID` int NOT NULL AUTO_INCREMENT,
  `UID` int NOT NULL,
  `VID` int NOT NULL,
  `Date` date NOT NULL,
  `Budget` double NOT NULL,
  `NoOfGuests` int NOT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Status` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  PRIMARY KEY (`EID`),
  KEY `fk1_idx` (`VID`),
  KEY `fk2_idx` (`UID`),
  CONSTRAINT `fk4` FOREIGN KEY (`UID`) REFERENCES `users` (`UID`),
  CONSTRAINT `fk5` FOREIGN KEY (`VID`) REFERENCES `venue` (`VID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers` (
  `OfferID` int NOT NULL AUTO_INCREMENT,
  `SID` int NOT NULL,
  `OfferName` varchar(45) NOT NULL,
  `Rate` double NOT NULL,
  `Description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`OfferID`),
  KEY `fk11_idx` (`SID`),
  CONSTRAINT `fk11` FOREIGN KEY (`SID`) REFERENCES `supplier` (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PID` int NOT NULL AUTO_INCREMENT,
  `EID` int NOT NULL,
  `Amount` double NOT NULL,
  PRIMARY KEY (`PID`),
  KEY `fk7_idx` (`EID`),
  CONSTRAINT `fk7` FOREIGN KEY (`EID`) REFERENCES `events` (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `SID` int NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`SID`),
  CONSTRAINT `fk3` FOREIGN KEY (`SID`) REFERENCES `users` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_payment`
--

DROP TABLE IF EXISTS `supplier_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_payment` (
  `SPID` int NOT NULL AUTO_INCREMENT,
  `SID` int NOT NULL,
  `Amount` double NOT NULL,
  PRIMARY KEY (`SPID`),
  KEY `fk10_idx` (`SID`),
  CONSTRAINT `fk10` FOREIGN KEY (`SID`) REFERENCES `supplier` (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_payment`
--

LOCK TABLES `supplier_payment` WRITE;
/*!40000 ALTER TABLE `supplier_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_contact`
--

DROP TABLE IF EXISTS `user_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_contact` (
  `UID` int NOT NULL,
  `ContactNo` char(10) NOT NULL,
  PRIMARY KEY (`UID`,`ContactNo`),
  CONSTRAINT `fk1` FOREIGN KEY (`UID`) REFERENCES `users` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_contact`
--

LOCK TABLES `user_contact` WRITE;
/*!40000 ALTER TABLE `user_contact` DISABLE KEYS */;
INSERT INTO `user_contact` VALUES (3,'0784546856');
/*!40000 ALTER TABLE `user_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `NIC` char(12) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(500) NOT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Thanuka ','Minik','thanukaMinik@gmail.com','20054864845','supplier','supplier@123','supplier@123',NULL),(3,'Shenal','de Silva','shenaldesilva@gmail.com','200235200139','customer','custom@123','custom@123',NULL),(7,'Akith','Wijebohonda','akithbole@gmail.com','19552545632','customer','akith@123','akith@123',NULL),(15,'Michelle','Fernando','michelle@gmail.com','20034512345','customer','michelle@123','michelle@123',NULL),(16,'Shenal','de Silva','shenaldesilva17@gmail.com','200235200139','customer','shenal@4224','shenal@4224',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue` (
  `VID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `MaxNoOfGuests` varchar(45) NOT NULL,
  `Cost` double NOT NULL,
  PRIMARY KEY (`VID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue_type`
--

DROP TABLE IF EXISTS `venue_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue_type` (
  `VID` int NOT NULL,
  `Type` varchar(45) NOT NULL,
  PRIMARY KEY (`VID`,`Type`),
  CONSTRAINT `fk6` FOREIGN KEY (`VID`) REFERENCES `venue` (`VID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue_type`
--

LOCK TABLES `venue_type` WRITE;
/*!40000 ALTER TABLE `venue_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `venue_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-27  9:40:53
