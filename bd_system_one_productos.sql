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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `precio_venta` decimal(10,2) DEFAULT NULL,
  `id_proveedor` int DEFAULT NULL,
  `id_medida` int DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  `estado` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categoria_idx` (`id_categoria`),
  KEY `id_medida_idx` (`id_medida`),
  KEY `id_proveedor_idx` (`id_proveedor`),
  CONSTRAINT `id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `id_medida` FOREIGN KEY (`id_medida`) REFERENCES `medidas` (`id_medida`),
  CONSTRAINT `id_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'65564651165','Veneno 51161',85.00,1,2,1,'Activo'),(2,'45561231125','crecefacil 1tll',100.00,2,2,2,'Activo'),(3,'123456','poritromisol 500ml',NULL,1,1,2,'Activo'),(4,'234567','producto generico2',20.00,2,1,1,'Activo'),(5,'522133514','Gentitromicina',NULL,1,1,2,'Activo'),(6,'88554422','cancefril 500ml',1000.00,4,7,3,'Activo'),(7,'555221335','Interruptor de baquelita 15A aegle',35.00,1,7,4,'Activo'),(8,'555666215','Interruptor de baquelita 15A Eagle',35.00,1,7,4,'Activo'),(9,'2266445612','Producto 1',5.00,3,1,3,'Activo'),(10,'1515664','Producto 2',10.00,2,3,4,'Activo'),(11,'1234565','123546',5.00,3,3,1,'Activo'),(12,'1312135456','producto 3',5.00,2,1,1,'Activo'),(13,'1354565123','producto 4',5.00,2,1,2,'Activo'),(14,'4445612313','producto 5',5.00,1,1,1,'Activo'),(15,'565565222','producto 6',5.00,2,1,2,'Activo'),(16,'12345645','producto 7',12.00,2,1,4,'Activo'),(17,'123556744','producto 8',5.00,5,2,3,'Activo'),(18,'12345655','producto 9',5.00,3,4,1,'Inactivo'),(19,'66545115','producto 10',5.00,3,2,3,'Activo'),(20,'355112445','producto 11',66.00,2,1,3,'Activo'),(21,'998445642','producto 12',5.00,1,2,2,'Activo'),(22,'545621123','producto 13',5.00,2,1,2,'Activo'),(23,'123544652','producto 14',5.00,2,2,1,'Activo'),(24,'15654565','producto 15',5.00,2,1,2,'Activo'),(25,'6544421','producto 16',5.00,1,2,1,'Activo'),(26,'2323565','producto 17',5.00,1,3,2,'Activo'),(27,'645646565','producto 18',5.00,3,1,5,'Activo'),(28,'156545464','producto 19',5.00,1,1,2,'Activo'),(29,'45611561','producto 20',5.00,1,1,1,'Activo'),(30,'465115615','producto 21',5.00,2,2,5,'Activo'),(31,'65511231','producto 22',5.00,3,2,4,'Activo'),(32,'5544564','producto 23',5.00,4,5,4,'Activo'),(33,'125654654','producto 24',5.00,6,4,5,'Activo'),(34,'56561511','producto 25',5.00,4,3,3,'Activo'),(35,'5646561','producto 26',5.00,2,1,3,'Activo'),(36,'565412311','producto 28',5.00,2,3,1,'Activo'),(37,'55454561','producto 29',5.00,2,2,2,'Activo'),(38,'45645646','producto 30',5.00,3,3,1,'Activo'),(39,'45544441','Tachuelas',10.00,3,7,4,'Activo'),(40,'4555665','Tachuelones',NULL,5,7,5,'Activo'),(41,'15444654','Clavos acerados de 2\"  Abc',NULL,1,1,2,'Activo');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-07 22:02:01
