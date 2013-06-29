CREATE DATABASE  IF NOT EXISTS `matsearch` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `matsearch`;
-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: matsearch
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.2

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
-- Table structure for table `materiais`
--

DROP TABLE IF EXISTS `materiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiais` (
  `nome` varchar(50) NOT NULL,
  `nome_pt` varchar(45) DEFAULT NULL,
  `sigla` varchar(50) DEFAULT NULL,
  `numero_atomico` varchar(50) DEFAULT NULL,
  `densidade` double DEFAULT NULL,
  `resistencia_tracao` double DEFAULT NULL,
  `modulo_elasticidade` double DEFAULT NULL,
  `resistividade_eletrica` double DEFAULT NULL,
  `calor_especifico` double DEFAULT NULL,
  `condutividade_termica` double DEFAULT NULL,
  `ponto_fusao` double DEFAULT NULL,
  `coeficiente_reflexao` varchar(45) DEFAULT NULL,
  `cas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiais`
--

LOCK TABLES `materiais` WRITE;
/*!40000 ALTER TABLE `materiais` DISABLE KEYS */;
INSERT INTO `materiais` VALUES ('Barium','Bário','Ba','56',3.66,70,12.8,0.00005,0.285,18.4,725,' -','7440-39-3	'),('Beryllium','Berílio','Be','4',1.844,370,303,0.0000043,1.925,216,1273,'0.50','7440-41-7	'),('Calcium','Calcio','Ca','20',1.54,110,23.4,0.0000046,0.6315,126,837,'0.24','7740-70-2'),('Copper','Cobre','Cu','29',7.764,210,110,0.0000017,0.385,385,1083.2,'0.63','7440-50-8	'),('Gold','Ouro','Au','79',19.32,120,77.2,0.0000022,0.128,301,1064.43,'0.27','7440-57-5'),('Graphite - Carbon','Carbono','C','6',2.25,50,4.8,0.006,0.70768,24,3650,'0.13','7440-44-0'),('Iron','Ferro','Fe','26',7.87,540,200,0.0000089,0.44,76.2,1535,'0.65','7439-89-6'),('Lithium','Lítio','Li','3',0.53,15,5,0.0000084,2.99669,3.305,180.54,'1342','7439-93-2	'),('Magnesium','Magnésio','Mg','12',1.74,90,44,0.0000046,1.025,159,648.3,'0.74	','7439-95-4	'),('Manganese','Manganes','Mn','25',7.44,496,159,0.00000688,0.448,1.64,1244,'0.45','7439-96-5	'),('Mercury','Tungstênio','W','80',13.546,100,100,0.0000958,0.1037,8.5,-38.87,'0.712',NULL),('Nickel','Niquel','Ni','28',8.88,190,207,0.0000064,0.46,60.7,1455,'0.413','7440-02-0'),('Palladium','Paládio','Pd','46',12.02,320,105,0.00000993,0.195,71.2,1552,'0.628	','-'),('Platinum','Platina','Pt','78',21.46,145,171,0.0000106,0.134,69.1,1769,'0.70','-'),('Scandium','Escândio','Sc','21',3,255,36,0.0000509,0.54,6.3,1539,'0.15','7440-20-2'),('Silicon','Silicio','Si','14',2.3016,120,112.4,0.01,0.794,124,1412,'0.45','7440-21-3'),('Silver','Prata','Ag','47',10.491,140,76,0.00000155,0.234,419,961.93,'0.055','7440-22-4'),('Sodium','Sódio','Na','11',0.971,10,0.1,0.00000433,1.235,135,97.8,'0.46','7440-23-5	'),('Titanium','Titânio','Ti','22',4.5,220,60,0.0000554,0.528,17,1650,'0.15','7440-32-6	'),('Tugsten','Tugstenio','W','74',19.3,980,400,0.00000565,0.134,163.3,3370,'0.15','7440-33-7'),('Zinc','Zinco','Zn','30',7.1,137,96.5,0.000005916,0.3898,112.2,419.58,'0.05','7440-66-6');
/*!40000 ALTER TABLE `materiais` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-29  2:55:43
