-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: storeme
-- ------------------------------------------------------
-- Server version	5.7.25-log

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
-- Table structure for table `atmninfo`
--

DROP TABLE IF EXISTS `atmninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atmninfo` (
  `idatminfo` int(11) NOT NULL AUTO_INCREMENT,
  `atmplacement` char(10) DEFAULT NULL,
  `site` varchar(45) DEFAULT NULL,
  `sku` varchar(45) DEFAULT NULL,
  `consignee` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `date_shipped` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `waybill_no` varchar(45) DEFAULT NULL,
  `activity` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `received_by` varchar(45) DEFAULT NULL,
  `time_received` varchar(45) DEFAULT NULL,
  `idatm` int(11) DEFAULT NULL,
  `vendorCheckVerified` int(4) DEFAULT '0',
  `deliveryCheckVerified` int(4) DEFAULT '0',
  `warehouseCheckVerified` int(4) DEFAULT '0',
  `lastEdited` varchar(45) DEFAULT NULL,
  `vendorVerified` varchar(45) DEFAULT NULL,
  `deliveryVerified` varchar(45) DEFAULT NULL,
  `warehouseVerified` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idatminfo`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atmninfo`
--

LOCK TABLES `atmninfo` WRITE;
/*!40000 ALTER TABLE `atmninfo` DISABLE KEYS */;
INSERT INTO `atmninfo` VALUES (47,'A','asf','34-BPI-1231','sad','2019-11-17',NULL,'01:00 PM','2121','fas','Scheduled',NULL,NULL,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'A','da','34-BPI-1231','Edward Rainier Curugan','2021-03-01',NULL,'01:00 PM','1','da','Scheduled',NULL,NULL,49,NULL,NULL,NULL,'pncorpuz',NULL,NULL,NULL),(54,'C','fasfad','34-BPI-1231','wedw','2024-02-12',NULL,'12:01 PM','56','sad','Scheduled',NULL,NULL,54,1,0,1,NULL,NULL,NULL,NULL),(55,'E','Manila','34-BPI-1231','ahhhh','2030-12-27',NULL,'11:00 AM','7','hehehe','Scheduled',NULL,NULL,55,1,1,1,'pncorpuz','pncorpuz','pncorpuz','pncorpuz'),(56,'E','wsw','34-BPI-1231','e','9999-01-01',NULL,'01:00 PM','1','w','Waiting',NULL,NULL,56,0,0,0,'pncorpuz',NULL,NULL,NULL);
/*!40000 ALTER TABLE `atmninfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-22 21:44:19
