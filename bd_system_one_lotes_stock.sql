-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_system_one
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `lotes_stock`
--

DROP TABLE IF EXISTS `lotes_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lotes_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `fecha_entrada` datetime NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `stock_inicial` decimal(10,3) NOT NULL,
  `stock_actual` decimal(10,3) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lotes_stock`
--

LOCK TABLES `lotes_stock` WRITE;
/*!40000 ALTER TABLE `lotes_stock` DISABLE KEYS */;
INSERT INTO `lotes_stock` VALUES (1,1,'2026-05-18 00:00:00',5.12,10.000,0.000,'Agotado'),(2,9,'2026-05-18 00:00:00',4.50,100.000,100.000,'Activo'),(3,9,'2026-05-18 00:00:00',4.60,10.000,10.000,'Activo'),(4,5,'2026-05-18 00:00:00',10.00,1.000,0.000,'Agotado'),(5,8,'2026-05-18 00:00:00',15.00,1.000,1.000,'Activo'),(6,3,'2026-05-18 00:00:00',5.00,10.000,10.000,'Activo'),(7,1,'2026-05-18 00:00:00',5.00,200.000,0.000,'Agotado'),(8,1,'2026-05-19 00:00:00',80.00,100.000,100.000,'Activo');
/*!40000 ALTER TABLE `lotes_stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-07 22:02:00
