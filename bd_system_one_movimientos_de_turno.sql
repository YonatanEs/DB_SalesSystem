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
-- Table structure for table `movimientos_de_turno`
--

DROP TABLE IF EXISTS `movimientos_de_turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos_de_turno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idTurno` int DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `concepto` varchar(255) DEFAULT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos_de_turno`
--

LOCK TABLES `movimientos_de_turno` WRITE;
/*!40000 ALTER TABLE `movimientos_de_turno` DISABLE KEYS */;
INSERT INTO `movimientos_de_turno` VALUES (1,3,'2026-05-28 12:13:12','Ingreso','inyeccion de efectivo',20.00),(2,4,'2026-05-28 12:16:24','Saldo inicial','Saldo inicial de apertura',50.00),(3,4,'2026-05-28 12:48:59','Ingreso','efectivo',10.00),(4,4,'2026-05-28 12:50:56','Retiro','retiro de efectivo',10.00),(5,5,'2026-05-28 13:52:34','Saldo inicial','Saldo inicial de apertura',1000.00),(6,5,'2026-05-28 13:58:45','Ingreso','ingreso de efectivo',100.00),(7,5,'2026-05-28 13:59:18','Retiro','pago a proveedores',1000.00),(8,6,'2026-05-31 23:19:46','Saldo inicial','Saldo inicial de apertura',1500.00),(9,6,'2026-05-31 23:39:20','Ingreso',' inyeccion de efectivo',200.00),(10,7,'2026-06-02 23:10:54','Saldo inicial','Saldo inicial de apertura',100.00),(11,8,'2026-06-02 23:12:53','Saldo inicial','Saldo inicial de apertura',100.00),(12,9,'2026-06-02 23:13:34','Saldo inicial','Saldo inicial de apertura',200.00),(13,10,'2026-06-02 23:28:51','Saldo inicial','Saldo inicial de apertura',1000.00),(14,11,'2026-06-02 23:30:00','Saldo inicial','Saldo inicial de apertura',800.00);
/*!40000 ALTER TABLE `movimientos_de_turno` ENABLE KEYS */;
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
