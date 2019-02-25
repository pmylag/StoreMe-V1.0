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
-- Table structure for table `atm`
--

DROP TABLE IF EXISTS `atm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atm` (
  `idatm` int(11) NOT NULL AUTO_INCREMENT,
  `cassete1` int(11) DEFAULT NULL,
  `checker` varchar(45) DEFAULT NULL,
  `bolt_screw_set_qty` int(11) DEFAULT NULL,
  `bolt_screw_set_rmk` varchar(45) DEFAULT NULL,
  `cash_casst_key_qty` int(11) DEFAULT NULL,
  `cash_casst_key_rmk` varchar(45) DEFAULT NULL,
  `clad_qty` int(11) DEFAULT NULL,
  `clad_rmk` varchar(45) DEFAULT NULL,
  `collar_qty` int(11) DEFAULT NULL,
  `collar_rmk` varchar(45) DEFAULT NULL,
  `decale_qty` int(11) DEFAULT NULL,
  `decale_rmk` varchar(45) DEFAULT NULL,
  `fsc_wndw_frame_qty` int(11) DEFAULT NULL,
  `fsc_wndw_frame_remk` varchar(45) DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  `driver` varchar(45) DEFAULT NULL,
  `warehouse_asst` varchar(45) DEFAULT NULL,
  `consignee` varchar(45) DEFAULT NULL,
  `plateno` varchar(45) DEFAULT NULL,
  `cassete2` int(1) DEFAULT NULL,
  `cassete3` int(1) DEFAULT NULL,
  `cassete4` int(1) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idatm`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atm`
--

LOCK TABLES `atm` WRITE;
/*!40000 ALTER TABLE `atm` DISABLE KEYS */;
INSERT INTO `atm` VALUES (1,1,'John',5,'-',2,'-',5,'-',10,'Missing one',5,'fading color',1,'-','BPI','Steve','Natasha','Bruce','ABC123',1,0,0,2,NULL),(2,1,'John',2,'screw #1 faulty',2,'-',5,'-',11,'-',5,'-',1,'-','BDO','Tony','Pepper','Bruce','DEF123',1,1,1,3,NULL),(3,1,'Kevin',4,'-',2,'-',5,'-',11,'-',5,'-',1,'-','BPI','Steve','Natasha','Bruce','ABC123',1,0,1,1,NULL);
/*!40000 ALTER TABLE `atm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-25 21:33:46
