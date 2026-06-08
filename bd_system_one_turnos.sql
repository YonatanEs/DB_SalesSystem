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
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idCaja` int NOT NULL,
  `idUserMaster` int DEFAULT NULL,
  `idUserCierre` int DEFAULT NULL,
  `fechaApertura` datetime NOT NULL,
  `fechaCierre` datetime DEFAULT NULL,
  `saldoInicial` decimal(10,2) NOT NULL,
  `ingresos` decimal(10,2) DEFAULT '0.00',
  `salidas` decimal(10,2) DEFAULT '0.00',
  `ventas` decimal(10,2) DEFAULT '0.00',
  `ventaDepositos` decimal(10,2) DEFAULT '0.00',
  `cobroCredito` decimal(10,2) DEFAULT '0.00',
  `saldoFinal` decimal(10,2) DEFAULT '0.00',
  `saldoFaltante` decimal(10,2) DEFAULT '0.00',
  `saldoSobrante` decimal(10,2) DEFAULT '0.00',
  `arqueo` decimal(10,2) DEFAULT '0.00',
  `estado` varchar(45) DEFAULT 'Abierto',
  PRIMARY KEY (`id`),
  KEY `fk_usermaster_idx` (`idUserMaster`),
  KEY `fk_usercierre_idx` (`idUserCierre`),
  KEY `fk_caja_idx` (`idCaja`),
  CONSTRAINT `fk_caja` FOREIGN KEY (`idCaja`) REFERENCES `cajas` (`id`),
  CONSTRAINT `fk_usercierre` FOREIGN KEY (`idUserCierre`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_usermaster` FOREIGN KEY (`idUserMaster`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES (1,1,1,1,'2026-05-26 16:08:09','2026-05-27 14:40:59',100.00,0.00,0.00,0.00,0.00,0.00,100.00,0.00,0.00,100.00,'Cerrado'),(2,1,1,1,'2026-05-27 14:51:11','2026-05-27 14:57:03',1000.00,0.00,0.00,0.00,0.00,0.00,1000.00,200.00,0.00,800.00,'Cerrado'),(3,1,1,1,'2026-05-27 17:28:14','2026-05-28 12:16:00',100.00,240.00,300.00,0.00,0.00,0.00,40.00,0.00,200.00,240.00,'Cerrado'),(4,1,1,1,'2026-05-28 12:16:24','2026-05-28 13:42:16',50.00,10.00,10.00,0.00,0.00,0.00,50.00,0.00,0.00,50.00,'Cerrado'),(5,2,1,1,'2026-05-28 13:52:34','2026-05-28 14:00:38',1000.00,100.00,1000.00,0.00,0.00,0.00,100.00,0.00,0.00,100.00,'Cerrado'),(6,1,1,1,'2026-05-31 23:19:45','2026-06-02 22:58:15',1500.00,200.00,0.00,0.00,0.00,0.00,1700.00,0.00,0.00,1700.00,'Cerrado'),(7,1,1,2,'2026-06-02 23:10:54','2026-06-02 23:12:13',100.00,0.00,0.00,0.00,0.00,0.00,100.00,0.00,0.00,100.00,'Forzado'),(8,1,2,1,'2026-06-02 23:12:53','2026-06-02 23:14:51',100.00,0.00,0.00,0.00,0.00,0.00,100.00,0.00,0.00,100.00,'Forzado'),(9,2,1,1,'2026-06-02 23:13:34','2026-06-02 23:15:45',200.00,0.00,0.00,0.00,0.00,0.00,200.00,0.00,0.00,200.00,'Cerrado'),(10,1,1,2,'2026-06-02 23:28:51','2026-06-02 23:30:26',1000.00,0.00,0.00,0.00,0.00,0.00,1000.00,800.00,0.00,200.00,'Forzado'),(11,2,2,2,'2026-06-02 23:30:00','2026-06-02 23:31:04',800.00,0.00,0.00,0.00,0.00,0.00,800.00,0.00,0.00,800.00,'Cerrado');
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-07 22:01:59
