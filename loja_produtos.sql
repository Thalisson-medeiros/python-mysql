CREATE DATABASE  IF NOT EXISTS `loja` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `loja`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: loja
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `valor` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'LÁPIS GRAFITE Nº 2',0.35),(2,'PACOTE COM CEM FOLHAS A4',5.50),(3,'RÉGUA TRANSPARENTE DE 30CM',0.95),(4,'CANETE HIDROCOR COM 12 UNIDADES',4.95),(5,'LÁPIS DE COR COM 12 UNIDADES',3.50),(6,'CANETA AZUL',0.80),(7,'CANETE PRETA',0.80),(8,'CANETA VERMELHA',0.80),(9,'APONTADOR',0.30),(10,'CADERNO PARA DEZ MATÉRIAS(CAPA DURA, 200 FOLHAS)',13.95),(11,'FICHÁRIO (ESTILO ADOLESCENTE)',39.95),(12,'CADERNO PEQUENO 1/4 (96 FOLHAS E CAPA DURA)',4.55),(13,'TESOURA SEM PONTA',2.35),(14,'COLA EM BASTÃO DE 10G',1.10),(15,'MARCADOR DE TEXTO FLUORESCENTE',1.20),(16,'PASTA TRANSPARENTE FINA',2.05),(17,'PASTA TRANSPARENTE GROSSA DE 40 MM',3.95),(18,'PACOTE DE FOLHAS PARA FICHÁRIO (96 FOLHAS)',6.95),(19,'ENVELOPE PARDO A4',0.40),(20,'GIZ DE CERA COM 12 UNIDADES',3.95),(21,'MINIDICIONÁRIO DE PORTUGUÊS',5.95),(22,'MOCHILA BÁSICA',25.00),(23,'CAIXA DE MASSA DE MODELAR COM 12 CORES',3.95),(24,'BORRACHA',0.40),(25,'CELULAR SAMSUNG',2500.00),(26,'CARRO',50000.00),(27,'CARTEIRA',80.00),(28,'COLA',2.50),(29,'PORTA LÁPIS',1.30),(30,'TABLET',800.00),(31,'PC',5000.00);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-20 19:42:46