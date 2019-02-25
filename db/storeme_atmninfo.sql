-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: storeme
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
  `atmplacement` char(1) DEFAULT NULL,
  `site` varchar(45) DEFAULT NULL,
  `sku` varchar(45) DEFAULT NULL,
  `consignee` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `date_shipped` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `waybill_no` varchar(45) DEFAULT NULL,
  `activtiy` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `received_by` varchar(45) DEFAULT NULL,
  `idatm` int(11) DEFAULT NULL,
  PRIMARY KEY (`idatminfo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atmninfo`
--

LOCK TABLES `atmninfo` WRITE;
/*!40000 ALTER TABLE `atmninfo` DISABLE KEYS */;
INSERT INTO `atmninfo` VALUES (1,'1','Metri Manila','12-BPI-AA12','Bruce','01/01/2018','01/02/2018','12:00:00','12345','Stored','Clear',NULL,1),(2,'2','Metro Manila','34-BDO-BB34','Bruce','01/01/2018','01/02/2018','12:00:00','12562','Stored','Clear',NULL,2),(3,'3','Metro Manila','09-BPI-CC45','Bruce','01/01/2018','01/02/2018','12:00:00','52342','Pending','Clear',NULL,3),(4,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2019-02-25 12:24:04
