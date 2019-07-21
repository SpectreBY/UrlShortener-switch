-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: urldb
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__migrationhistory`
--

DROP TABLE IF EXISTS `__migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ContextKey` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__migrationhistory`
--

LOCK TABLES `__migrationhistory` WRITE;
/*!40000 ALTER TABLE `__migrationhistory` DISABLE KEYS */;
INSERT INTO `__migrationhistory` VALUES ('201907161645354_InitialCreate','ShortUrlMVC.Models.UrlContext',_binary '�\0\0\0\0\0\0\�W\�n\�6�\�;<gM\'�lyY\')�\�q�rr���C�\"U�\n\�g롏��С�-\�?1\�E\�=��f�q��\�\���\�Dxo�\rWrB\�Gc\�U\�\�jB2�L�~���6J\�\�K�w\��\�R�	y�6��Ԅ��03Jx��Q��*�,R�b<����S@�X�\�Ϥ\�	\�?�\�T\�R�11SS\��$\�Q�G��IY�*m����LG�6�gI\0\"&�RYf1Ϋg�\�J��L,6)�^̄�2��F�ث�/\�UhcXA���*y\'\��e\�\r횟\�0��C�n�e�q�\���n\�<F��\��v5\�i1<�\�μ\�\�Y��7\�s\�M3a3\r	�\�՟��\�\��Y�?ANd&D;D϶(z\�*m7\�!.���G�\�hװ6k\�7����x�\�-\�к}`��\�A�f�\'f-h\�0 \�\�\�\��,���\�j, \�\�\��\�ʾN~%\�_CTI\� �%\�zC#�38\�b�?wt�4\�\�\�\�\�	X�4\�Gz̒%\�y�\�L\Z\�\�6�ޥ\r\�\�&�����\�2��V:Cj�\�v ñ�InJ�/ ��jib(\�̨u6mW\�\�h\�˪�Gw4=\�\�ߴ\�K�p�)xkH\n\Z��QG[{\�j`+蜢k��kc1ؒ���FIO��\n;�u�\�v���\�\�}߮��>\�jX�Ë%X\���hO�u2��@��*�%rW�\�g]��6D-<�\�	m�Fz<R�\�\�P-��X�e\�FT\�\����p\���\�̉n\�\�+׮J\�.\�Ny�e�^\\z�S��{㑫�\�&�K�\��(�:/\�h̘\�1[\�R�\�ma[�\��g�\�D\�\�e\�/ܱzp\�s\�uv\0�?�A\�\��2\�O\�\�M�6�\�O\ZB^l�㏜\�9�8\��\�\�CvQxH\�Ra\�E���9y��;�O\�t�0|\�@��=B\�`Z\�\�\�XU\�\�\�U*�w��e�\�\�Z[�\�\�q\�\�\�\��\�\�\�E�r�\�4�\�\�@�[��O��Ϸ�\��y�\��G\\\�\�.K\��[\�ET\�}7�H; \\ʔ5�Q\�z�p�M���\�@%}7��taI*\�\�e�\�\��\�p�|�7U?\�\rr�!�i�o8[i����wީ���\�_\��\�\0\0','6.2.0-61023');
/*!40000 ALTER TABLE `__migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listofurls`
--

DROP TABLE IF EXISTS `listofurls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listofurls` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `LongUrl` longtext,
  `ShortUrl` longtext,
  `DateOfAdd` datetime NOT NULL,
  `NumberOfTransitions` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listofurls`
--

LOCK TABLES `listofurls` WRITE;
/*!40000 ALTER TABLE `listofurls` DISABLE KEYS */;
INSERT INTO `listofurls` VALUES (48,'https://google.com/1','nagQFp','2019-07-20 00:04:18',0),(50,'https://google.com/123','fZZ1p9','2019-07-20 00:04:21',1),(52,'https://google.com/12345','9AHtiI','2019-07-20 00:04:22',0),(54,'https://google.com/1234567','SNGR4X','2019-07-20 00:04:25',0),(56,'https://google.com/1234567234567234567','45OGKq','2019-07-20 00:04:29',0),(60,'https://google.com/1234567234567234567232345674567234567234567','K6HeMA','2019-07-20 00:04:34',0),(62,'https://google.com/1234567234567234567232345674567234567232345674567234567','BwFXKx','2019-07-20 00:04:36',0),(63,'https://google.com/1234567234567234567232345674567234567232345674567234567234567','14E8pa','2019-07-20 00:04:37',0),(70,'https://google.com/1j','hLhMqE','2019-07-20 16:29:47',1),(71,'https://vk.com/','2it9zv','2019-07-20 16:32:40',1),(74,'http://vk.com/','XUrxu3','2019-07-20 16:39:11',4),(76,'https://google.com/1jj1','F0PZTC','2019-07-20 16:58:06',1),(77,'https://metanit.com/sharp/tutorial/3.9.php','3E1C1M','2019-07-20 17:07:09',1),(78,'https://ibank.asb.by/wps/portal/ibank/Home/login/','sks99s','2019-07-21 12:27:53',2),(81,'https://ibank.asb.by/','As79LC','2019-07-21 12:37:54',1),(82,'https://google.com/asdasd','6R5wgn','2019-07-21 12:46:17',8),(84,'onliner.com','8D0GH9','2019-07-21 13:00:14',1),(88,'http://ibank.asb.by/','j6NcGC','2019-07-21 13:11:19',0),(90,'http://www.vk.com/','O9YFIe','2019-07-21 13:19:26',0);
/*!40000 ALTER TABLE `listofurls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-21 14:20:37
