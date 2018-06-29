-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tweets
-- ------------------------------------------------------
-- Server version	5.5.5-10.2.14-MariaDB-10.2.14+maria~xenial-log

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
-- Table structure for table `br_state`
--

DROP TABLE IF EXISTS `br_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br_state` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uf` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double(16,10) NOT NULL,
  `longitude` double(16,10) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br_state`
--

LOCK TABLES `br_state` WRITE;
/*!40000 ALTER TABLE `br_state` DISABLE KEYS */;
INSERT INTO `br_state` VALUES (11,'Rondônia','RO',-8.7645970000,-63.9039430000),(12,'Acre','AC',-9.9724630000,-67.8127490000),(13,'Amazonas','AM',-3.1338420000,-60.0201650000),(14,'Roraima','RR',2.8217340000,-60.6720610000),(15,'Pará','PA',-1.4520050000,-48.5030720000),(16,'Amapá','AP',0.0390450000,-51.0500990000),(17,'Tocantins','TO',-10.1845670000,-48.3336540000),(21,'Maranhão','MA',-2.5320660000,-44.2999960000),(22,'Piauí','PI',-5.0926280000,-42.8101550000),(23,'Ceará','CE',-3.7305360000,-38.5217770000),(24,'Rio Grande do Norte','RN',-5.7864030000,-35.2079780000),(25,'Paraíba','PB',-7.1200340000,-34.8762110000),(26,'Pernambuco','PE',-8.0542780000,-34.8812560000),(27,'Alagoas','AL',-9.6671370000,-35.7379580000),(28,'Sergipe','SE',-10.9126470000,-37.0534510000),(29,'Bahia','BA',-12.9703820000,-38.5123820000),(31,'Minas Gerais','MG',-19.9183390000,-43.9401020000),(32,'Espírito Santo','ES',-20.3199330000,-40.3362960000),(33,'Rio de Janeiro','RJ',-22.9088920000,-43.1771380000),(35,'São Paulo','SP',-23.5504830000,-46.6331060000),(41,'Paraná','PR',-25.4331710000,-49.2714700000),(42,'Santa Catarina','SC',-27.5932370000,-48.5437360000),(43,'Rio Grande do Sul','RS',-30.0339140000,-51.2291540000),(50,'Mato Grosso do Sul','MS',-20.4617190000,-54.6122370000),(51,'Mato Grosso','MT',-15.5989170000,-56.0948940000),(52,'Goiás','GO',-16.6799200000,-49.2550320000),(53,'Distrito Federal','DF',-15.7998300000,-47.8637110000);
/*!40000 ALTER TABLE `br_state` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-07  2:17:19