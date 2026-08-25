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
-- Table structure for table `abonos`
--

DROP TABLE IF EXISTS `abonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abonos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idCredito` int NOT NULL,
  `idCliente` int DEFAULT NULL,
  `idVenta` int DEFAULT NULL,
  `fechaAbono` datetime DEFAULT NULL,
  `montoAbonado` decimal(10,2) DEFAULT NULL,
  `saldoAnterior` decimal(10,2) DEFAULT NULL,
  `nuevoSaldo` decimal(10,2) DEFAULT NULL,
  `formaPago` varchar(255) DEFAULT NULL,
  `estadoCredito` varchar(255) DEFAULT NULL,
  `idVendedor` int DEFAULT NULL,
  `noDeposito` varchar(255) DEFAULT NULL,
  `urlDeposito` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_credito_idx` (`idCredito`),
  KEY `fk_cliente_idx` (`idCliente`),
  KEY `fk_usuario_idx` (`idVendedor`),
  KEY `fk_venta_idx` (`idVenta`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`id`),
  CONSTRAINT `fk_credito` FOREIGN KEY (`idCredito`) REFERENCES `creditos` (`id`),
  CONSTRAINT `fk_recibo` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`id`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`idVendedor`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abonos`
--

LOCK TABLES `abonos` WRITE;
/*!40000 ALTER TABLE `abonos` DISABLE KEYS */;
INSERT INTO `abonos` VALUES (1,3,NULL,NULL,'2026-08-16 22:36:06',50.00,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL),(2,3,NULL,NULL,'2026-08-18 09:32:43',20.00,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL),(3,3,NULL,NULL,'2026-08-18 09:33:01',8.60,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL),(4,2,NULL,NULL,'2026-08-18 09:50:36',20.00,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL),(5,2,NULL,NULL,'2026-08-18 09:54:09',20.00,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL),(6,2,NULL,NULL,'2026-08-18 09:58:28',10.00,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL),(7,2,NULL,NULL,'2026-08-18 10:48:15',10.00,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL),(8,4,NULL,NULL,'2026-08-18 10:57:24',25.00,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL),(9,4,NULL,NULL,'2026-08-18 11:02:19',20.00,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL),(10,4,NULL,NULL,'2026-08-18 11:10:44',10.00,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL),(11,4,NULL,NULL,'2026-08-18 11:54:56',20.00,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL),(12,4,NULL,NULL,'2026-08-18 12:04:23',50.00,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL),(13,1,NULL,NULL,'2026-08-18 12:19:05',10.00,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL),(14,1,NULL,NULL,'2026-08-18 12:19:18',5.00,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL),(15,5,NULL,NULL,'2026-08-18 12:49:53',20.00,NULL,NULL,'Deposito',NULL,NULL,'555446621','1787078993448_comprobante-22553556.jpg'),(16,5,NULL,NULL,'2026-08-18 12:50:22',10.00,NULL,NULL,'Deposito',NULL,NULL,'5544561231','1787079021820_comprobante-22553556.jpg'),(17,6,NULL,NULL,'2026-08-18 13:01:23',100.00,NULL,NULL,'Deposito',NULL,NULL,'46554122','1787079682895_comprobante-22553556.jpg'),(18,6,NULL,NULL,'2026-08-18 23:01:12',100.00,300.00,200.00,'Efectivo','PENDIENTE',NULL,NULL,NULL),(19,6,NULL,NULL,'2026-08-19 11:29:48',50.00,200.00,150.00,'Efectivo','PENDIENTE',1,NULL,NULL),(20,6,NULL,NULL,'2026-08-19 11:31:59',50.00,150.00,100.00,'Efectivo','PENDIENTE',1,NULL,NULL),(21,6,NULL,NULL,'2026-08-19 11:34:02',50.00,100.00,50.00,'Efectivo','PENDIENTE',1,NULL,NULL),(22,6,NULL,NULL,'2026-08-19 11:35:55',20.00,50.00,30.00,'Efectivo','PENDIENTE',1,NULL,NULL),(23,6,NULL,NULL,'2026-08-19 12:05:57',30.00,30.00,0.00,'Efectivo','PAGADO',1,NULL,NULL),(24,7,1,41,'2026-08-19 22:14:03',20.00,30.00,10.00,'Efectivo','PENDIENTE',1,NULL,NULL),(25,7,1,41,'2026-08-19 22:22:56',10.00,10.00,0.00,'Efectivo','PAGADO',1,NULL,NULL),(26,8,3,42,'2026-08-19 22:40:28',30.00,30.00,0.00,'Efectivo','PAGADO',1,NULL,NULL),(27,9,3,43,'2026-08-19 23:34:53',10.00,10.00,0.00,'Efectivo','PAGADO',1,NULL,NULL),(28,10,1,44,'2026-08-20 13:33:45',15.00,65.00,50.00,'Deposito','PENDIENTE',1,'12233554','1787254425326_comprobante-22553556.jpg'),(29,10,1,44,'2026-08-20 13:34:16',20.00,50.00,30.00,'Deposito','PENDIENTE',1,'55456251','1787254455817_comprobante-22553556.jpg'),(30,10,1,44,'2026-08-20 14:31:12',30.00,30.00,0.00,'Deposito','PAGADO',1,'655455151','1787257871890_comprobante-22553556.jpg'),(31,11,1,45,'2026-08-20 14:54:30',20.00,40.00,20.00,'Deposito','PENDIENTE',1,'6512312','1787259270130_comprobante-22553556.jpg');
/*!40000 ALTER TABLE `abonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cajas`
--

DROP TABLE IF EXISTS `cajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cajas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajas`
--

LOCK TABLES `cajas` WRITE;
/*!40000 ALTER TABLE `cajas` DISABLE KEYS */;
INSERT INTO `cajas` VALUES (1,'Caja no.1 ','Activo'),(2,' Caja no.2','Activo');
/*!40000 ALTER TABLE `cajas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'venenos'),(2,'abono'),(3,'calcina'),(4,'Interruptore'),(5,'Tomacorrientes'),(6,'Accesorios p/perros');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nit` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `telefono` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `estado` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Ernesto Ruperto Perez','12345678','0000-0000','La Blanca, San Marcos','Activo'),(2,'Cliente 2','87654321','4565-2355','La Blanca, San Marcos','Activo'),(3,'Cliente 3','546621155','3300 0002','La Blanca, San Marcos','Activo');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditos`
--

DROP TABLE IF EXISTS `creditos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creditos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idVenta` int DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `fechaEmision` date DEFAULT NULL,
  `plazoPago` date DEFAULT NULL,
  `montoTotal` decimal(10,2) DEFAULT NULL,
  `saldoPendiente` decimal(10,2) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ventas_idx` (`idVenta`),
  KEY `fk_clientes_idx` (`idCliente`),
  CONSTRAINT `fk_clientes` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`id`),
  CONSTRAINT `fk_ventas` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditos`
--

LOCK TABLES `creditos` WRITE;
/*!40000 ALTER TABLE `creditos` DISABLE KEYS */;
INSERT INTO `creditos` VALUES (1,33,2,'2026-08-13','2026-08-13',15.00,0.00,'PAGADO'),(2,34,3,'2026-08-13','2026-08-15',60.00,0.00,'PAGADO'),(3,35,2,'2026-08-13','2026-08-13',78.60,0.00,'PAGADO'),(4,38,1,'2026-08-18','2026-08-29',125.00,0.00,'PAGADO'),(5,39,1,'2026-08-18','2026-08-22',30.00,0.00,'PAGADO'),(6,40,1,'2026-08-18','2026-08-22',400.00,0.00,'PAGADO'),(7,41,1,'2026-08-19','2026-08-22',30.00,0.00,'PAGADO'),(8,42,3,'2026-08-19','2026-08-22',30.00,0.00,'PAGADO'),(9,43,3,'2026-08-19','2026-08-22',10.00,0.00,'PAGADO'),(10,44,1,'2026-08-20','2026-08-26',65.00,0.00,'PAGADO'),(11,45,1,'2026-08-20','2026-08-25',40.00,20.00,'PENDIENTE'),(12,47,1,'2026-08-23','2026-08-23',25.00,25.00,'VENCIDO');
/*!40000 ALTER TABLE `creditos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_empresa`
--

DROP TABLE IF EXISTS `datos_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_empresa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `nit` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_empresa`
--

LOCK TABLES `datos_empresa` WRITE;
/*!40000 ALTER TABLE `datos_empresa` DISABLE KEYS */;
INSERT INTO `datos_empresa` VALUES (1,'Ferretería popular de la Bendicion','5446545','56456465','La Blanca San Marcos','Lo mejor en empresas','1787613039729_logoempresa.jpg');
/*!40000 ALTER TABLE `datos_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallesdevolucion`
--

DROP TABLE IF EXISTS `detallesdevolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallesdevolucion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idDevolucion` int DEFAULT NULL,
  `idProducto` int DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `cantidadDevuelta` decimal(10,2) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `subtotalDevuelto` decimal(10,2) DEFAULT NULL,
  `precioFinal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_devoluciones_dd_idx` (`idDevolucion`),
  KEY `fk_ producto_dd_idx` (`idProducto`),
  CONSTRAINT `fk_ producto_dd` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`id`),
  CONSTRAINT `fk_devoluciones_dd` FOREIGN KEY (`idDevolucion`) REFERENCES `devoluciones` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallesdevolucion`
--

LOCK TABLES `detallesdevolucion` WRITE;
/*!40000 ALTER TABLE `detallesdevolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallesdevolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallesventa`
--

DROP TABLE IF EXISTS `detallesventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallesventa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idVenta` int DEFAULT NULL,
  `idProducto` int DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` decimal(10,2) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `descuentos` decimal(10,2) DEFAULT NULL,
  `precioFinal` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_venta_idx` (`idVenta`),
  KEY `fk_producto_idx` (`idProducto`),
  CONSTRAINT `fk_producto` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fk_venta` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallesventa`
--

LOCK TABLES `detallesventa` WRITE;
/*!40000 ALTER TABLE `detallesventa` DISABLE KEYS */;
INSERT INTO `detallesventa` VALUES (1,3,9,'2266445612','Producto 1',2.00,5.00,0.00,5.00,10.00),(2,4,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(3,4,10,'1515664','Producto 2',1.00,10.00,0.00,10.00,10.00),(4,4,12,'1312135456','producto 3',1.00,5.00,0.00,5.00,5.00),(5,5,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(6,6,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(7,7,1,'65564651165','Veneno 51161',10.00,85.00,0.00,85.00,850.00),(8,8,1,'65564651165','Veneno 51161',1.00,85.00,0.00,85.00,85.00),(9,9,21,'998445642','producto 12',1.00,5.00,0.00,5.00,5.00),(10,10,20,'355112445','producto 11',1.00,66.00,0.00,66.00,66.00),(11,11,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(12,12,1,'65564651165','Veneno 51161',1.00,85.00,4.00,81.00,81.00),(13,13,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(14,13,10,'1515664','Producto 2',1.00,10.00,0.00,10.00,10.00),(15,13,12,'1312135456','producto 3',1.00,5.00,0.00,5.00,5.00),(16,13,13,'1354565123','producto 4',1.00,5.00,0.00,5.00,5.00),(17,13,14,'4445612313','producto 5',1.00,5.00,0.00,5.00,5.00),(18,13,15,'565565222','producto 6',1.00,5.00,0.00,5.00,5.00),(19,13,16,'12345645','producto 7',1.00,12.00,0.00,12.00,12.00),(20,13,17,'123556744','producto 8',1.00,5.00,0.00,5.00,5.00),(21,13,19,'66545115','producto 10',1.00,5.00,0.00,5.00,5.00),(22,13,20,'355112445','producto 11',1.00,66.00,0.00,66.00,66.00),(23,13,21,'998445642','producto 12',1.00,5.00,0.00,5.00,5.00),(24,13,23,'123544652','producto 14',1.00,5.00,0.00,5.00,5.00),(25,13,24,'15654565','producto 15',1.00,5.00,0.00,5.00,5.00),(26,13,25,'6544421','producto 16',1.00,5.00,0.00,5.00,5.00),(27,13,26,'2323565','producto 17',1.00,5.00,0.00,5.00,5.00),(28,13,27,'645646565','producto 18',1.00,5.00,0.00,5.00,5.00),(29,13,28,'156545464','producto 19',1.00,5.00,0.00,5.00,5.00),(30,13,29,'45611561','producto 20',1.00,5.00,0.00,5.00,5.00),(31,13,30,'465115615','producto 21',1.00,5.00,0.00,5.00,5.00),(32,13,31,'65511231','producto 22',1.00,5.00,0.00,5.00,5.00),(33,13,32,'5544564','producto 23',1.00,5.00,0.00,5.00,5.00),(34,13,33,'125654654','producto 24',1.00,5.00,0.00,5.00,5.00),(35,13,34,'56561511','producto 25',1.00,5.00,0.00,5.00,5.00),(36,13,35,'5646561','producto 26',1.00,5.00,0.00,5.00,5.00),(37,13,36,'565412311','producto 28',1.00,5.00,0.00,5.00,5.00),(38,13,37,'55454561','producto 29',1.00,5.00,0.00,5.00,5.00),(39,13,38,'45645646','producto 30',2.00,5.00,0.90,4.10,8.20),(40,13,43,'15654565654','producto 31',1.00,10.00,0.00,10.00,10.00),(41,13,1,'65564651165','Veneno 51161',1.00,85.00,0.00,85.00,85.00),(42,14,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(43,14,10,'1515664','Producto 2',1.00,10.00,0.00,10.00,10.00),(44,14,12,'1312135456','producto 3',1.00,5.00,0.00,5.00,5.00),(45,14,13,'1354565123','producto 4',1.00,5.00,0.00,5.00,5.00),(46,14,14,'4445612313','producto 5',1.00,5.00,0.00,5.00,5.00),(47,14,15,'565565222','producto 6',1.00,5.00,0.00,5.00,5.00),(48,15,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(49,16,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(50,17,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(51,18,1,'65564651165','Veneno 51161',1.00,85.00,0.00,85.00,85.00),(52,19,10,'1515664','Producto 2',1.00,10.00,0.00,10.00,10.00),(53,20,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(54,20,10,'1515664','Producto 2',1.00,10.00,0.00,10.00,10.00),(55,20,12,'1312135456','producto 3',1.00,5.00,0.00,5.00,5.00),(56,20,13,'1354565123','producto 4',1.00,5.00,0.00,5.00,5.00),(57,20,14,'4445612313','producto 5',6.00,5.00,0.00,5.00,30.00),(58,20,16,'12345645','producto 7',1.00,12.00,0.00,12.00,12.00),(59,20,17,'123556744','producto 8',1.00,5.00,0.00,5.00,5.00),(60,20,19,'66545115','producto 10',1.00,5.00,0.00,5.00,5.00),(61,20,20,'355112445','producto 11',1.00,66.00,0.00,66.00,66.00),(62,20,21,'998445642','producto 12',1.00,5.00,0.00,5.00,5.00),(63,20,22,'545621123','producto 13',1.00,5.00,0.00,5.00,5.00),(64,20,23,'123544652','producto 14',1.00,5.00,0.00,5.00,5.00),(65,20,24,'15654565','producto 15',1.00,5.00,0.00,5.00,5.00),(66,20,25,'6544421','producto 16',1.00,5.00,0.00,5.00,5.00),(67,20,26,'2323565','producto 17',1.00,5.00,0.00,5.00,5.00),(68,20,27,'645646565','producto 18',1.00,5.00,0.00,5.00,5.00),(69,20,28,'156545464','producto 19',1.00,5.00,0.00,5.00,5.00),(70,20,29,'45611561','producto 20',1.00,5.00,0.00,5.00,5.00),(71,20,30,'465115615','producto 21',1.00,5.00,0.00,5.00,5.00),(72,20,31,'65511231','producto 22',1.00,5.00,0.00,5.00,5.00),(73,20,32,'5544564','producto 23',1.00,5.00,0.00,5.00,5.00),(74,20,33,'125654654','producto 24',1.00,5.00,0.00,5.00,5.00),(75,20,34,'56561511','producto 25',1.00,5.00,0.00,5.00,5.00),(76,20,35,'5646561','producto 26',1.00,5.00,0.00,5.00,5.00),(77,20,36,'565412311','producto 28',2.00,5.00,0.00,5.00,10.00),(78,20,37,'55454561','producto 29',1.00,5.00,0.00,5.00,5.00),(79,20,38,'45645646','producto 30',1.00,5.00,0.00,5.00,5.00),(80,20,43,'15654565654','producto 31',1.00,10.00,0.00,10.00,10.00),(81,20,1,'65564651165','Veneno 51161',1.00,85.00,0.00,85.00,85.00),(82,21,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(83,21,10,'1515664','Producto 2',1.00,10.00,0.00,10.00,10.00),(84,21,12,'1312135456','producto 3',1.00,5.00,0.00,5.00,5.00),(85,21,14,'4445612313','producto 5',1.00,5.00,0.00,5.00,5.00),(86,21,15,'565565222','producto 6',1.00,5.00,0.00,5.00,5.00),(87,21,16,'12345645','producto 7',1.00,12.00,0.00,12.00,12.00),(88,21,17,'123556744','producto 8',1.00,5.00,0.00,5.00,5.00),(89,21,19,'66545115','producto 10',1.00,5.00,0.00,5.00,5.00),(90,21,20,'355112445','producto 11',1.00,66.00,0.00,66.00,66.00),(91,21,21,'998445642','producto 12',1.00,5.00,0.00,5.00,5.00),(92,21,22,'545621123','producto 13',1.00,5.00,0.00,5.00,5.00),(93,21,23,'123544652','producto 14',1.00,5.00,0.00,5.00,5.00),(94,21,24,'15654565','producto 15',1.00,5.00,0.00,5.00,5.00),(95,21,25,'6544421','producto 16',1.00,5.00,0.00,5.00,5.00),(96,21,26,'2323565','producto 17',1.00,5.00,0.00,5.00,5.00),(97,21,27,'645646565','producto 18',1.00,5.00,0.00,5.00,5.00),(98,21,28,'156545464','producto 19',1.00,5.00,0.00,5.00,5.00),(99,21,29,'45611561','producto 20',1.00,5.00,0.00,5.00,5.00),(100,21,30,'465115615','producto 21',1.00,5.00,0.00,5.00,5.00),(101,21,31,'65511231','producto 22',4.00,5.00,0.00,5.00,20.00),(102,21,32,'5544564','producto 23',1.00,5.00,0.00,5.00,5.00),(103,21,33,'125654654','producto 24',1.00,5.00,0.00,5.00,5.00),(104,21,34,'56561511','producto 25',1.00,5.00,0.00,5.00,5.00),(105,21,35,'5646561','producto 26',1.00,5.00,0.00,5.00,5.00),(106,21,36,'565412311','producto 28',1.00,5.00,0.00,5.00,5.00),(107,21,37,'55454561','producto 29',1.00,5.00,0.00,5.00,5.00),(108,21,38,'45645646','producto 30',1.00,5.00,0.00,5.00,5.00),(109,21,43,'15654565654','producto 31',1.00,10.00,0.00,10.00,10.00),(110,21,4,'234567','producto generico2',1.00,20.00,0.00,20.00,20.00),(111,21,2,'45561231125','crecefacil 1tll',1.00,100.00,0.00,100.00,100.00),(112,22,9,'2266445612','Producto 1',15.00,5.00,0.40,4.60,69.00),(113,23,9,'2266445612','Producto 1',2.00,5.00,0.00,5.00,10.00),(114,24,9,'2266445612','Producto 1',3.00,5.00,0.00,5.00,15.00),(115,25,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(116,26,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(117,27,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(118,28,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(119,29,10,'1515664','Producto 2',1.00,10.00,0.00,10.00,10.00),(120,30,19,'66545115','producto 10',17.00,5.00,0.00,5.00,85.00),(121,31,19,'66545115','producto 10',2.00,5.00,0.00,5.00,10.00),(122,32,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(123,33,9,'2266445612','Producto 1',1.00,5.00,0.00,5.00,5.00),(124,33,14,'4445612313','producto 5',2.00,5.00,0.00,5.00,10.00),(125,34,9,'2266445612','Producto 1',12.00,5.00,0.00,5.00,60.00),(126,35,9,'2266445612','Producto 1',2.00,5.00,0.20,4.80,9.60),(127,35,34,'56561511','producto 25',2.00,5.00,0.50,4.50,9.00),(128,35,19,'66545115','producto 10',12.00,5.00,0.00,5.00,60.00),(129,38,24,'15654565','producto 15',25.00,5.00,0.00,5.00,125.00),(130,39,10,'1515664','Producto 2',3.00,10.00,0.00,10.00,30.00),(131,40,2,'45561231125','crecefacil 1tll',4.00,100.00,0.00,100.00,400.00),(132,41,9,'2266445612','Producto 1',2.00,5.00,0.00,5.00,10.00),(133,41,14,'4445612313','producto 5',4.00,5.00,0.00,5.00,20.00),(134,42,19,'66545115','producto 10',6.00,5.00,0.00,5.00,30.00),(135,43,19,'66545115','producto 10',2.00,5.00,0.00,5.00,10.00),(136,44,9,'2266445612','Producto 1',5.00,5.00,0.00,5.00,25.00),(137,44,19,'66545115','producto 10',8.00,5.00,0.00,5.00,40.00),(138,45,22,'545621123','producto 13',8.00,5.00,0.00,5.00,40.00),(139,46,9,'2266445612','Producto 1',5.00,5.00,0.00,5.00,25.00),(140,47,9,'2266445612','Producto 1',5.00,5.00,0.00,5.00,25.00);
/*!40000 ALTER TABLE `detallesventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devoluciones`
--

DROP TABLE IF EXISTS `devoluciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devoluciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idVenta` int DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `idVendedor` int DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_venta_devoluciones_idx` (`idVenta`),
  KEY `fk_usuario_devoluciones_idx` (`idVendedor`),
  CONSTRAINT `fk_usuario_devoluciones` FOREIGN KEY (`idVendedor`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_venta_devoluciones` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devoluciones`
--

LOCK TABLES `devoluciones` WRITE;
/*!40000 ALTER TABLE `devoluciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `devoluciones` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lotes_stock`
--

LOCK TABLES `lotes_stock` WRITE;
/*!40000 ALTER TABLE `lotes_stock` DISABLE KEYS */;
INSERT INTO `lotes_stock` VALUES (1,1,'2026-05-18 00:00:00',5.12,10.000,0.000,'Agotado'),(2,9,'2026-05-18 00:00:00',4.50,100.000,30.000,'Activo'),(3,9,'2026-05-18 00:00:00',4.60,10.000,10.000,'Activo'),(4,5,'2026-05-18 00:00:00',10.00,1.000,0.000,'Agotado'),(5,8,'2026-05-18 00:00:00',15.00,1.000,1.000,'Activo'),(6,3,'2026-05-18 00:00:00',5.00,10.000,10.000,'Activo'),(7,1,'2026-05-18 00:00:00',5.00,200.000,0.000,'Agotado'),(8,1,'2026-05-19 00:00:00',80.00,100.000,85.000,'Activo'),(9,10,'2026-06-09 00:00:00',8.00,100.000,90.000,'Activo'),(10,12,'2026-06-09 00:00:00',4.00,50.000,45.000,'Activo'),(11,13,'2026-06-09 00:00:00',4.00,50.000,47.000,'Activo'),(12,14,'2026-06-09 00:00:00',4.00,100.000,85.000,'Activo'),(13,15,'2026-06-09 00:00:00',4.00,100.000,97.000,'Activo'),(14,16,'2026-06-09 00:00:00',10.00,100.000,97.000,'Activo'),(15,17,'2026-06-09 00:00:00',4.00,100.000,97.000,'Activo'),(16,18,'2026-06-09 00:00:00',5.00,100.000,100.000,'Activo'),(17,19,'2026-06-09 00:00:00',4.00,100.000,50.000,'Activo'),(18,20,'2026-06-09 00:00:00',50.00,100.000,96.000,'Activo'),(19,21,'2026-06-09 00:00:00',4.00,100.000,96.000,'Activo'),(20,22,'2026-06-09 00:00:00',4.00,450.000,440.000,'Activo'),(21,23,'2026-06-09 00:00:00',4.00,100.000,97.000,'Activo'),(22,24,'2026-06-09 00:00:00',4.00,100.000,72.000,'Activo'),(23,25,'2026-06-09 00:00:00',4.00,100.000,97.000,'Activo'),(24,26,'2026-06-09 00:00:00',4.00,100.000,97.000,'Activo'),(25,27,'2026-06-09 00:00:00',4.00,100.000,97.000,'Activo'),(26,28,'2026-06-09 00:00:00',4.00,100.000,97.000,'Activo'),(27,29,'2026-06-09 00:00:00',4.00,100.000,97.000,'Activo'),(28,30,'2026-06-09 00:00:00',4.00,100.000,97.000,'Activo'),(29,31,'2026-06-09 00:00:00',4.00,100.000,94.000,'Activo'),(30,32,'2026-06-09 00:00:00',4.00,100.000,97.000,'Activo'),(31,33,'2026-06-09 00:00:00',4.00,1000.000,997.000,'Activo'),(32,34,'2026-06-09 00:00:00',4.00,100.000,95.000,'Activo'),(33,35,'2026-06-09 00:00:00',4.00,100.000,97.000,'Activo'),(34,36,'2026-06-09 00:00:00',4.00,1100.000,1096.000,'Activo'),(35,37,'2026-06-09 00:00:00',4.00,100.000,97.000,'Activo'),(36,38,'2026-06-09 00:00:00',4.00,100.000,96.000,'Activo'),(37,43,'2026-06-09 00:00:00',8.00,100.000,97.000,'Activo'),(38,2,'2026-06-30 07:18:03',20.00,5.000,0.000,'Agotado'),(39,4,'2026-06-30 07:19:45',11.22,10.000,9.000,'Activo'),(40,5,'2026-06-30 07:23:07',10.00,10.000,10.000,'Activo'),(41,6,'2026-06-30 07:23:39',10.00,10.000,10.000,'Activo'),(42,7,'2026-06-30 07:24:02',25.00,20.000,20.000,'Activo'),(43,39,'2026-06-30 07:24:34',8.00,10.000,10.000,'Activo'),(44,40,'2026-06-30 07:25:21',0.80,20.000,20.000,'Activo'),(45,42,'2026-06-30 07:27:34',25.00,50.000,50.000,'Activo');
/*!40000 ALTER TABLE `lotes_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medidas`
--

DROP TABLE IF EXISTS `medidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medidas` (
  `id_medida` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `abreviatura` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_medida`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medidas`
--

LOCK TABLES `medidas` WRITE;
/*!40000 ALTER TABLE `medidas` DISABLE KEYS */;
INSERT INTO `medidas` VALUES (1,'libra','lb'),(2,'litro','lt'),(3,'kilos','kl'),(4,'Calorias','cal'),(5,'veintenas','VI'),(6,'Metros','MT'),(7,'Unidades','uds'),(8,'Toneladas','t'),(9,'docenas','doc'),(10,'mililitros','mL');
/*!40000 ALTER TABLE `medidas` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`id`),
  KEY `fk_turno_idx` (`idTurno`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos_de_turno`
--

LOCK TABLES `movimientos_de_turno` WRITE;
/*!40000 ALTER TABLE `movimientos_de_turno` DISABLE KEYS */;
INSERT INTO `movimientos_de_turno` VALUES (1,3,'2026-05-28 12:13:12','Ingreso','inyeccion de efectivo',20.00),(2,4,'2026-05-28 12:16:24','Saldo inicial','Saldo inicial de apertura',50.00),(3,4,'2026-05-28 12:48:59','Ingreso','efectivo',10.00),(4,4,'2026-05-28 12:50:56','Retiro','retiro de efectivo',10.00),(5,5,'2026-05-28 13:52:34','Saldo inicial','Saldo inicial de apertura',1000.00),(6,5,'2026-05-28 13:58:45','Ingreso','ingreso de efectivo',100.00),(7,5,'2026-05-28 13:59:18','Retiro','pago a proveedores',1000.00),(8,6,'2026-05-31 23:19:46','Saldo inicial','Saldo inicial de apertura',1500.00),(9,6,'2026-05-31 23:39:20','Ingreso',' inyeccion de efectivo',200.00),(10,7,'2026-06-02 23:10:54','Saldo inicial','Saldo inicial de apertura',100.00),(11,8,'2026-06-02 23:12:53','Saldo inicial','Saldo inicial de apertura',100.00),(12,9,'2026-06-02 23:13:34','Saldo inicial','Saldo inicial de apertura',200.00),(13,10,'2026-06-02 23:28:51','Saldo inicial','Saldo inicial de apertura',1000.00),(14,11,'2026-06-02 23:30:00','Saldo inicial','Saldo inicial de apertura',800.00),(15,12,'2026-06-07 23:44:20','Saldo inicial','Saldo inicial de apertura',1200.00),(16,13,'2026-06-08 16:07:17','Saldo inicial','Saldo inicial de apertura',1500.00),(17,14,'2026-06-08 18:28:29','Saldo inicial','Saldo inicial de apertura',1200.00),(18,14,'2026-06-13 22:54:18','Venta al contado','Venta al contado - Recibo No. 3',10.00),(19,14,'2026-06-14 09:04:04','Venta al contado','Venta al contado - Recibo No. 4',20.00),(20,14,'2026-06-14 09:11:32','Venta al contado','Venta al contado - Recibo No. 5',5.00),(21,14,'2026-06-14 09:22:13','Venta al contado','Venta al contado - Recibo No. 6',5.00),(22,14,'2026-06-14 09:30:47','Venta al contado','Venta al contado - Recibo No. 7',850.00),(23,14,'2026-06-14 09:38:30','Venta al contado','Venta al contado - Recibo No. 8',85.00),(24,14,'2026-06-14 09:47:05','Venta al contado','Venta al contado - Recibo No. 9',5.00),(25,14,'2026-06-14 09:49:38','Venta al contado','Venta al contado - Recibo No. 10',66.00),(26,14,'2026-06-14 09:58:02','Venta al contado','Venta al contado - Recibo No. 11',5.00),(27,14,'2026-06-14 10:05:24','Venta al contado','Venta al contado - Recibo No. 12',81.00),(28,14,'2026-06-14 10:37:41','Venta al contado','Venta al contado - Recibo No. 13',306.20),(29,14,'2026-06-14 10:43:14','Venta al contado','Venta al contado - Recibo No. 14',35.00),(30,14,'2026-06-14 11:04:23','Venta al contado','Venta al contado - Recibo No. 15',5.00),(31,14,'2026-06-14 11:17:29','Venta al contado','Venta al contado - Recibo No. 16',5.00),(32,14,'2026-06-14 12:09:05','Venta al contado','Venta al contado - Recibo No. 17',5.00),(33,14,'2026-06-14 12:19:16','Venta al contado','Venta al contado - Recibo No. 18',85.00),(34,14,'2026-06-14 13:09:54','Venta al contado','Venta al contado - Recibo No. 19',10.00),(35,14,'2026-06-14 13:14:47','Venta al contado','Venta al contado - Recibo No. 20',333.00),(36,14,'2026-06-30 07:32:24','Venta al contado','Venta al contado - Recibo No. 21',353.00),(37,14,'2026-08-07 18:02:14','Venta al contado','Venta al contado - Recibo No. 22',69.00),(38,14,'2026-08-07 23:41:34','Retiro','para un mandado',38.20),(39,14,'2026-08-09 11:43:21','Venta al contado','Venta al contado - Recibo No. 23',10.00),(40,14,'2026-08-09 11:43:55','Venta al contado','Venta al contado - Recibo No. 24',15.00),(41,14,'2026-08-11 17:23:39','Venta al contado','Venta al contado - Recibo No. 25',5.00),(42,14,'2026-08-12 00:03:59','Venta por deposito','Venta con Deposito - Recibo No. 26',5.00),(43,14,'2026-08-12 07:49:38','Venta por deposito','Venta con Deposito - Recibo No. 27',5.00),(44,14,'2026-08-12 08:46:03','Venta por deposito','Venta con Deposito - Recibo No. 28',5.00),(45,14,'2026-08-12 08:53:05','Venta por deposito','Venta con Deposito - Recibo No. 29',10.00),(46,14,'2026-08-12 13:44:43','Venta por deposito','Venta con Deposito - Recibo No. 30',85.00),(47,14,'2026-08-12 13:47:27','Venta por deposito','Venta con Deposito - Recibo No. 31',10.00),(48,14,'2026-08-13 10:21:50','Venta al contado','Venta al contado - Recibo No. 32',5.00),(49,14,'2026-08-13 10:26:39','Venta a credito','Venta a credito - Recibo No. 33',15.00),(50,14,'2026-08-13 16:08:33','Venta a credito','Venta a credito - Recibo No. 34',60.00),(51,14,'2026-08-13 16:41:34','Venta a credito','Venta a credito - Recibo No. 35',78.60),(52,14,'2026-08-16 22:36:06','Cobro de credito en efectivo','Abono No.1 (Efectivo) - Recibo No.35',50.00),(53,14,'2026-08-18 09:32:43','Cobro de credito en efectivo','Abono No.2 (Efectivo) - Recibo No.35',20.00),(54,14,'2026-08-18 09:33:01','Cobro de credito en efectivo','Abono No.3 (Efectivo) - Recibo No.35',8.60),(55,14,'2026-08-18 09:50:36','Cobro de credito en efectivo','Abono No.4 (Efectivo) - Recibo No.34',20.00),(56,14,'2026-08-18 09:54:09','Cobro de credito en efectivo','Abono No.5 (Efectivo) - Recibo No.34',20.00),(57,14,'2026-08-18 09:58:28','Cobro de credito en efectivo','Abono No.6 (Efectivo) - Recibo No.34',10.00),(58,14,'2026-08-18 10:48:15','Cobro de credito en efectivo','Abono No.7 (Efectivo) - Recibo No.34',10.00),(59,14,'2026-08-18 10:53:45','Venta a credito','Venta a credito - Recibo No. 38',125.00),(60,14,'2026-08-18 10:57:25','Cobro de credito en efectivo','Abono No.8 (Efectivo) - Recibo No.38',25.00),(61,14,'2026-08-18 11:02:19','Cobro de credito en efectivo','Abono No.9 (Efectivo) - Recibo No.38',20.00),(62,14,'2026-08-18 11:10:44','Cobro de credito en efectivo','Abono No.10 (Efectivo) - Recibo No.38',10.00),(63,14,'2026-08-18 11:54:56','Cobro de credito en efectivo','Abono No.11 (Efectivo) - Recibo No.38',20.00),(64,14,'2026-08-18 12:04:24','Cobro de credito en efectivo','Abono No.12 (Efectivo) - Recibo No.38',50.00),(65,14,'2026-08-18 12:19:06','Cobro de credito en efectivo','Abono No.13 (Efectivo) - Recibo No.33',10.00),(66,14,'2026-08-18 12:19:19','Cobro de credito en efectivo','Abono No.14 (Efectivo) - Recibo No.33',5.00),(67,14,'2026-08-18 12:33:29','Venta a credito','Venta a credito - Recibo No. 39',30.00),(68,14,'2026-08-18 12:49:54','Cobro de credito con deposito','Abono No.15 (Depósito) - Crédito de Recibo No.39',20.00),(69,14,'2026-08-18 12:50:22','Cobro de credito con deposito','Abono No.16 (Depósito) - Crédito de Recibo No.39',10.00),(70,14,'2026-08-18 13:00:42','Venta a credito','Venta a credito - Recibo No. 40',400.00),(71,14,'2026-08-18 13:01:23','Cobro de credito con deposito','Abono No.17 (Depósito) - Crédito de Recibo No.40',100.00),(72,14,'2026-08-18 23:01:12','Cobro de credito en efectivo','Abono No.18 (Efectivo) - Recibo No.40',100.00),(73,14,'2026-08-19 11:29:49','Cobro de credito en efectivo','Abono No.19 (Efectivo) - Recibo No.40',50.00),(74,14,'2026-08-19 11:31:59','Cobro de credito en efectivo','Abono No.20 (Efectivo) - Recibo No.40',50.00),(75,14,'2026-08-19 11:34:02','Cobro de credito en efectivo','Abono No.21 (Efectivo) - Recibo No.40',50.00),(76,14,'2026-08-19 11:35:55','Cobro de credito en efectivo','Abono No.22 (Efectivo) - Recibo No.40',20.00),(77,14,'2026-08-19 12:05:57','Cobro de credito en efectivo','Abono No.23 (Efectivo) - Recibo No.40',30.00),(78,14,'2026-08-19 22:13:15','Venta a credito','Venta a credito - Recibo No. 41',30.00),(79,14,'2026-08-19 22:14:03','Cobro de credito en efectivo','Abono No.24 (Efectivo) - Recibo No.41',20.00),(80,14,'2026-08-19 22:22:56','Cobro de credito en efectivo','Abono No.25 (Efectivo) - Recibo No.41',10.00),(81,14,'2026-08-19 22:39:58','Venta a credito','Venta a credito - Recibo No. 42',30.00),(82,14,'2026-08-19 22:40:29','Cobro de credito en efectivo','Abono No.26 (Efectivo) - Recibo No.42',30.00),(83,14,'2026-08-19 23:34:35','Venta a credito','Venta a credito - Recibo No. 43',10.00),(84,14,'2026-08-19 23:34:53','Cobro de credito en efectivo','Abono No.27 (Efectivo) - Recibo No.43',10.00),(85,14,'2026-08-20 13:32:57','Venta a credito','Venta a credito - Recibo No. 44',65.00),(86,14,'2026-08-20 13:33:46','Cobro de credito con deposito','Abono No.28 (Depósito) - Crédito de Recibo No.44',15.00),(87,14,'2026-08-20 13:34:16','Cobro de credito con deposito','Abono No.29 (Depósito) - Crédito de Recibo No.44',20.00),(88,14,'2026-08-20 14:31:12','Cobro de credito con deposito','Abono No.30 (Depósito) - Crédito de Recibo No.44',30.00),(89,14,'2026-08-20 14:54:02','Venta a credito','Venta a credito - Recibo No. 45',40.00),(90,14,'2026-08-20 14:54:30','Cobro de credito con deposito','Abono No.31 (Depósito) - Crédito de Recibo No.45',20.00),(91,14,'2026-08-23 12:49:10','Venta al contado','Venta al contado - Recibo No. 46',25.00),(92,14,'2026-08-23 23:39:47','Venta a credito','Venta a credito - Recibo No. 47',25.00);
/*!40000 ALTER TABLE `movimientos_de_turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos_stock`
--

DROP TABLE IF EXISTS `movimientos_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `id_lote` int NOT NULL,
  `tipo_movimiento` enum('INGRESO','EGRESO') NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `concepto` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos_stock`
--

LOCK TABLES `movimientos_stock` WRITE;
/*!40000 ALTER TABLE `movimientos_stock` DISABLE KEYS */;
INSERT INTO `movimientos_stock` VALUES (1,3,6,'INGRESO',10.00,5.00,'Compra a proveedor','2026-05-18 00:00:00'),(2,1,7,'INGRESO',200.00,5.00,'Compra a proveedor','2026-05-18 00:00:00'),(3,1,1,'EGRESO',1.00,5.12,'Producto dañado/ Roto','2026-05-19 00:00:00'),(4,1,1,'EGRESO',1.00,5.12,'Producto dañado/ Roto','2026-05-19 00:00:00'),(5,5,4,'EGRESO',1.00,10.00,'Producto dañado/ Roto','2026-05-19 00:00:00'),(6,1,1,'EGRESO',8.00,5.12,'Producto vencido / Caducado','2026-05-19 00:00:00'),(7,1,7,'EGRESO',200.00,5.00,'Ajuste por faltante - productos extraviados','2026-05-19 00:00:00'),(8,1,8,'INGRESO',100.00,80.00,'Compra a proveedor','2026-05-19 00:00:00'),(9,10,9,'INGRESO',100.00,8.00,'Compra a proveedor','2026-06-09 00:00:00'),(10,12,10,'INGRESO',50.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(11,13,11,'INGRESO',50.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(12,14,12,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(13,15,13,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(14,16,14,'INGRESO',100.00,10.00,'Compra a proveedor','2026-06-09 00:00:00'),(15,17,15,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(16,18,16,'INGRESO',100.00,5.00,'Compra a proveedor','2026-06-09 00:00:00'),(17,19,17,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(18,20,18,'INGRESO',100.00,50.00,'Compra a proveedor','2026-06-09 00:00:00'),(19,21,19,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(20,22,20,'INGRESO',450.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(21,23,21,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(22,24,22,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(23,25,23,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(24,26,24,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(25,27,25,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(26,28,26,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(27,29,27,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(28,30,28,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(29,31,29,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(30,32,30,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(31,33,31,'INGRESO',1000.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(32,34,32,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(33,35,33,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(34,36,34,'INGRESO',1100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(35,37,35,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(36,38,36,'INGRESO',100.00,4.00,'Compra a proveedor','2026-06-09 00:00:00'),(37,43,37,'INGRESO',100.00,8.00,'Compra a proveedor','2026-06-09 00:00:00'),(38,9,2,'EGRESO',2.00,4.50,'Venta al contado - Recibo No. 3','2026-06-13 22:54:18'),(39,9,2,'EGRESO',1.00,4.50,'Venta al contado - Recibo No. 4','2026-06-14 09:04:03'),(40,10,9,'EGRESO',1.00,8.00,'Venta al contado - Recibo No. 4','2026-06-14 09:04:04'),(41,12,10,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 4','2026-06-14 09:04:04'),(42,9,2,'EGRESO',1.00,4.50,'Venta al contado - Recibo No. 5','2026-06-14 09:11:32'),(43,9,2,'EGRESO',1.00,4.50,'Venta al contado - Recibo No. 6','2026-06-14 09:22:13'),(44,1,8,'EGRESO',10.00,80.00,'Venta al contado - Recibo No. 7','2026-06-14 09:30:46'),(45,1,8,'EGRESO',1.00,80.00,'Venta al contado - Recibo No. 8','2026-06-14 09:38:30'),(46,21,19,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 9','2026-06-14 09:47:05'),(47,20,18,'EGRESO',1.00,50.00,'Venta al contado - Recibo No. 10','2026-06-14 09:49:38'),(48,9,2,'EGRESO',1.00,4.50,'Venta al contado - Recibo No. 11','2026-06-14 09:58:02'),(49,1,8,'EGRESO',1.00,80.00,'Venta al contado - Recibo No. 12','2026-06-14 10:05:24'),(50,9,2,'EGRESO',1.00,4.50,'Venta al contado - Recibo No. 13','2026-06-14 10:37:34'),(51,10,9,'EGRESO',1.00,8.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:35'),(52,12,10,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:35'),(53,13,11,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:35'),(54,14,12,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:36'),(55,15,13,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:36'),(56,16,14,'EGRESO',1.00,10.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:36'),(57,17,15,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:36'),(58,19,17,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:37'),(59,20,18,'EGRESO',1.00,50.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:37'),(60,21,19,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:37'),(61,23,21,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:37'),(62,24,22,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:37'),(63,25,23,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:38'),(64,26,24,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:38'),(65,27,25,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:38'),(66,28,26,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:38'),(67,29,27,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:38'),(68,30,28,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:39'),(69,31,29,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:39'),(70,32,30,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:39'),(71,33,31,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:39'),(72,34,32,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:39'),(73,35,33,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:40'),(74,36,34,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:40'),(75,37,35,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:40'),(76,38,36,'EGRESO',2.00,4.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:40'),(77,43,37,'EGRESO',1.00,8.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:40'),(78,1,8,'EGRESO',1.00,80.00,'Venta al contado - Recibo No. 13','2026-06-14 10:37:40'),(79,9,2,'EGRESO',1.00,4.50,'Venta al contado - Recibo No. 14','2026-06-14 10:43:12'),(80,10,9,'EGRESO',1.00,8.00,'Venta al contado - Recibo No. 14','2026-06-14 10:43:13'),(81,12,10,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 14','2026-06-14 10:43:13'),(82,13,11,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 14','2026-06-14 10:43:13'),(83,14,12,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 14','2026-06-14 10:43:13'),(84,15,13,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 14','2026-06-14 10:43:14'),(85,9,2,'EGRESO',1.00,4.50,'Venta al contado - Recibo No. 15','2026-06-14 11:04:22'),(86,9,2,'EGRESO',1.00,4.50,'Venta al contado - Recibo No. 16','2026-06-14 11:17:28'),(87,9,2,'EGRESO',1.00,4.50,'Venta al contado - Recibo No. 17','2026-06-14 12:09:04'),(88,1,8,'EGRESO',1.00,80.00,'Venta al contado - Recibo No. 18','2026-06-14 12:19:15'),(89,10,9,'EGRESO',1.00,8.00,'Venta al contado - Recibo No. 19','2026-06-14 13:09:54'),(90,9,2,'EGRESO',1.00,4.50,'Venta al contado - Recibo No. 20','2026-06-14 13:14:41'),(91,10,9,'EGRESO',1.00,8.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:41'),(92,12,10,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:41'),(93,13,11,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:42'),(94,14,12,'EGRESO',6.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:42'),(95,16,14,'EGRESO',1.00,10.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:42'),(96,17,15,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:42'),(97,19,17,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:43'),(98,20,18,'EGRESO',1.00,50.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:43'),(99,21,19,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:43'),(100,22,20,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:43'),(101,23,21,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:43'),(102,24,22,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:43'),(103,25,23,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:44'),(104,26,24,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:44'),(105,27,25,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:44'),(106,28,26,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:44'),(107,29,27,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:44'),(108,30,28,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:45'),(109,31,29,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:45'),(110,32,30,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:45'),(111,33,31,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:45'),(112,34,32,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:45'),(113,35,33,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:45'),(114,36,34,'EGRESO',2.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:46'),(115,37,35,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:46'),(116,38,36,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:46'),(117,43,37,'EGRESO',1.00,8.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:46'),(118,1,8,'EGRESO',1.00,80.00,'Venta al contado - Recibo No. 20','2026-06-14 13:14:46'),(119,2,38,'INGRESO',5.00,20.00,'Compra a proveedor','2026-06-30 07:18:03'),(120,4,39,'INGRESO',10.00,11.22,'Compra a proveedor','2026-06-30 07:19:45'),(121,5,40,'INGRESO',10.00,10.00,'Compra a proveedor','2026-06-30 07:23:07'),(122,6,41,'INGRESO',10.00,10.00,'Compra a proveedor','2026-06-30 07:23:39'),(123,7,42,'INGRESO',20.00,25.00,'Compra a proveedor','2026-06-30 07:24:02'),(124,39,43,'INGRESO',10.00,8.00,'Compra a proveedor','2026-06-30 07:24:34'),(125,40,44,'INGRESO',20.00,0.80,'Compra a proveedor','2026-06-30 07:25:21'),(126,42,45,'INGRESO',50.00,25.00,'Compra a proveedor','2026-06-30 07:27:34'),(127,9,2,'EGRESO',1.00,4.50,'Venta al contado - Recibo No. 21','2026-06-30 07:32:19'),(128,10,9,'EGRESO',1.00,8.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:19'),(129,12,10,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:19'),(130,14,12,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:19'),(131,15,13,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:20'),(132,16,14,'EGRESO',1.00,10.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:20'),(133,17,15,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:20'),(134,19,17,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:20'),(135,20,18,'EGRESO',1.00,50.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:20'),(136,21,19,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:21'),(137,22,20,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:21'),(138,23,21,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:21'),(139,24,22,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:21'),(140,25,23,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:21'),(141,26,24,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:22'),(142,27,25,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:22'),(143,28,26,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:22'),(144,29,27,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:22'),(145,30,28,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:22'),(146,31,29,'EGRESO',4.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:22'),(147,32,30,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:23'),(148,33,31,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:23'),(149,34,32,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:23'),(150,35,33,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:23'),(151,36,34,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:23'),(152,37,35,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:23'),(153,38,36,'EGRESO',1.00,4.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:23'),(154,43,37,'EGRESO',1.00,8.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:23'),(155,4,39,'EGRESO',1.00,11.22,'Venta al contado - Recibo No. 21','2026-06-30 07:32:24'),(156,2,38,'EGRESO',1.00,20.00,'Venta al contado - Recibo No. 21','2026-06-30 07:32:24'),(157,9,2,'EGRESO',15.00,4.50,'Venta al contado - Recibo No. 22','2026-08-07 18:02:14'),(158,9,2,'EGRESO',2.00,4.50,'Venta al contado - Recibo No. 23','2026-08-09 11:43:21'),(159,9,2,'EGRESO',3.00,4.50,'Venta al contado - Recibo No. 24','2026-08-09 11:43:55'),(160,9,2,'EGRESO',1.00,4.50,'Venta al contado - Recibo No. 25','2026-08-11 17:23:39'),(161,9,2,'EGRESO',1.00,4.50,'Venta con Deposito - Recibo No. 26','2026-08-12 00:03:58'),(162,9,2,'EGRESO',1.00,4.50,'Venta con Deposito - Recibo No. 27','2026-08-12 07:49:38'),(163,9,2,'EGRESO',1.00,4.50,'Venta con Deposito - Recibo No. 28','2026-08-12 08:46:02'),(164,10,9,'EGRESO',1.00,8.00,'Venta con Deposito - Recibo No. 29','2026-08-12 08:53:04'),(165,19,17,'EGRESO',17.00,4.00,'Venta con Deposito - Recibo No. 30','2026-08-12 13:44:42'),(166,19,17,'EGRESO',2.00,4.00,'Venta con Deposito - Recibo No. 31','2026-08-12 13:47:26'),(167,9,2,'EGRESO',1.00,4.50,'Venta al contado - Recibo No. 32','2026-08-13 10:21:49'),(168,9,2,'EGRESO',1.00,4.50,'Venta a credito - Recibo No. 33','2026-08-13 10:26:38'),(169,14,12,'EGRESO',2.00,4.00,'Venta a credito - Recibo No. 33','2026-08-13 10:26:39'),(170,9,2,'EGRESO',12.00,4.50,'Venta a credito - Recibo No. 34','2026-08-13 16:08:32'),(171,9,2,'EGRESO',2.00,4.50,'Venta a credito - Recibo No. 35','2026-08-13 16:41:33'),(172,34,32,'EGRESO',2.00,4.00,'Venta a credito - Recibo No. 35','2026-08-13 16:41:33'),(173,19,17,'EGRESO',12.00,4.00,'Venta a credito - Recibo No. 35','2026-08-13 16:41:33'),(174,24,22,'EGRESO',25.00,4.00,'Venta a credito - Recibo No. 38','2026-08-18 10:53:45'),(175,10,9,'EGRESO',3.00,8.00,'Venta a credito - Recibo No. 39','2026-08-18 12:33:29'),(176,2,38,'EGRESO',4.00,20.00,'Venta a credito - Recibo No. 40','2026-08-18 13:00:42'),(177,9,2,'EGRESO',2.00,4.50,'Venta a credito - Recibo No. 41','2026-08-19 22:13:15'),(178,14,12,'EGRESO',4.00,4.00,'Venta a credito - Recibo No. 41','2026-08-19 22:13:15'),(179,19,17,'EGRESO',6.00,4.00,'Venta a credito - Recibo No. 42','2026-08-19 22:39:58'),(180,19,17,'EGRESO',2.00,4.00,'Venta a credito - Recibo No. 43','2026-08-19 23:34:35'),(181,9,2,'EGRESO',5.00,4.50,'Venta a credito - Recibo No. 44','2026-08-20 13:32:57'),(182,19,17,'EGRESO',8.00,4.00,'Venta a credito - Recibo No. 44','2026-08-20 13:32:57'),(183,22,20,'EGRESO',8.00,4.00,'Venta a credito - Recibo No. 45','2026-08-20 14:54:01'),(184,9,2,'EGRESO',5.00,4.50,'Venta al contado - Recibo No. 46','2026-08-23 12:49:10'),(185,9,2,'EGRESO',5.00,4.50,'Venta a credito - Recibo No. 47','2026-08-23 23:39:47');
/*!40000 ALTER TABLE `movimientos_stock` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'65564651165','Veneno 51161',85.00,1,2,1,'Activo'),(2,'45561231125','crecefacil 1tll',100.00,2,2,2,'Activo'),(3,'123456','poritromisol 500ml',8.00,1,1,2,'Activo'),(4,'234567','producto generico2',20.00,2,1,1,'Activo'),(5,'522133514','Gentitromicina',20.00,1,1,2,'Activo'),(6,'88554422','cancefril 500ml',1000.00,4,7,3,'Activo'),(7,'555221335','Interruptor de baquelita 15A aegle',35.00,1,7,4,'Activo'),(8,'555666215','Interruptor de baquelita 15A Eagle',35.00,1,7,4,'Activo'),(9,'2266445612','Producto 1',5.00,3,1,3,'Activo'),(10,'1515664','Producto 2',10.00,2,3,4,'Activo'),(11,'1234565','123546',5.00,3,3,1,'Activo'),(12,'1312135456','producto 3',5.00,2,1,1,'Activo'),(13,'1354565123','producto 4',5.00,2,1,2,'Activo'),(14,'4445612313','producto 5',5.00,1,1,1,'Activo'),(15,'565565222','producto 6',5.00,2,1,2,'Activo'),(16,'12345645','producto 7',12.00,2,1,4,'Activo'),(17,'123556744','producto 8',5.00,5,2,3,'Activo'),(18,'12345655','producto 9',5.00,3,4,1,'Inactivo'),(19,'66545115','producto 10',5.00,3,2,3,'Activo'),(20,'355112445','producto 11',66.00,2,1,3,'Activo'),(21,'998445642','producto 12',5.00,1,2,2,'Activo'),(22,'545621123','producto 13',5.00,2,1,2,'Activo'),(23,'123544652','producto 14',5.00,2,2,1,'Activo'),(24,'15654565','producto 15',5.00,2,1,2,'Activo'),(25,'6544421','producto 16',5.00,1,2,1,'Activo'),(26,'2323565','producto 17',5.00,1,3,2,'Activo'),(27,'645646565','producto 18',5.00,3,1,5,'Activo'),(28,'156545464','producto 19',5.00,1,1,2,'Activo'),(29,'45611561','producto 20',5.00,1,1,1,'Activo'),(30,'465115615','producto 21',5.00,2,2,5,'Activo'),(31,'65511231','producto 22',5.00,3,2,4,'Activo'),(32,'5544564','producto 23',5.00,4,5,4,'Activo'),(33,'125654654','producto 24',5.00,6,4,5,'Activo'),(34,'56561511','producto 25',5.00,4,3,3,'Activo'),(35,'5646561','producto 26',5.00,2,1,3,'Activo'),(36,'565412311','producto 28',5.00,2,3,1,'Activo'),(37,'55454561','producto 29',5.00,2,2,2,'Activo'),(38,'45645646','producto 30',5.00,3,3,1,'Activo'),(39,'45544441','Tachuelas',10.00,3,7,4,'Activo'),(40,'4555665','Tachuelones',1.00,5,7,5,'Activo'),(41,'15444654','Clavos acerados de 2\"  Abc',5.00,1,1,2,'Activo'),(42,'455662','Collares para perros XL fiero',35.00,7,7,6,'Activo'),(43,'15654565654','producto 31',10.00,2,1,4,'Activo');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'celasa coatepeque'),(2,'Masesa_proveedor'),(3,'automotriz  dll'),(4,'Calcelsa_org'),(5,'Argos__'),(6,'ctripo'),(7,'Fiero');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

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
  `ventaCredito` decimal(10,2) DEFAULT '0.00',
  `cobroCreditoEfectivo` decimal(10,2) DEFAULT '0.00',
  `cobroCreditoDeposito` decimal(10,2) DEFAULT '0.00',
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES (1,1,1,1,'2026-05-26 16:08:09','2026-05-27 14:40:59',100.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,100.00,0.00,0.00,100.00,'Cerrado'),(2,1,1,1,'2026-05-27 14:51:11','2026-05-27 14:57:03',1000.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,1000.00,200.00,0.00,800.00,'Cerrado'),(3,1,1,1,'2026-05-27 17:28:14','2026-05-28 12:16:00',100.00,240.00,300.00,0.00,0.00,0.00,0.00,0.00,40.00,0.00,200.00,240.00,'Cerrado'),(4,1,1,1,'2026-05-28 12:16:24','2026-05-28 13:42:16',50.00,10.00,10.00,0.00,0.00,0.00,0.00,0.00,50.00,0.00,0.00,50.00,'Cerrado'),(5,2,1,1,'2026-05-28 13:52:34','2026-05-28 14:00:38',1000.00,100.00,1000.00,0.00,0.00,0.00,0.00,0.00,100.00,0.00,0.00,100.00,'Cerrado'),(6,1,1,1,'2026-05-31 23:19:45','2026-06-02 22:58:15',1500.00,200.00,0.00,0.00,0.00,0.00,0.00,0.00,1700.00,0.00,0.00,1700.00,'Cerrado'),(7,1,1,2,'2026-06-02 23:10:54','2026-06-02 23:12:13',100.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,100.00,0.00,0.00,100.00,'Forzado'),(8,1,2,1,'2026-06-02 23:12:53','2026-06-02 23:14:51',100.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,100.00,0.00,0.00,100.00,'Forzado'),(9,2,1,1,'2026-06-02 23:13:34','2026-06-02 23:15:45',200.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,200.00,0.00,0.00,200.00,'Cerrado'),(10,1,1,2,'2026-06-02 23:28:51','2026-06-02 23:30:26',1000.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,1000.00,800.00,0.00,200.00,'Forzado'),(11,2,2,2,'2026-06-02 23:30:00','2026-06-02 23:31:04',800.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,800.00,0.00,0.00,800.00,'Cerrado'),(12,2,1,1,'2026-06-07 23:44:19','2026-06-08 15:39:41',1200.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,1200.00,0.00,0.00,1200.00,'Cerrado'),(13,1,1,1,'2026-06-08 16:07:16','2026-06-08 18:26:00',1500.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,1500.00,0.00,0.00,1500.00,'Cerrado'),(14,1,1,NULL,'2026-06-08 18:28:28',NULL,1200.00,0.00,38.20,2398.20,2393.20,2423.20,0.00,0.00,3560.00,0.00,0.00,0.00,'Abierto');
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_turnos`
--

DROP TABLE IF EXISTS `user_turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_turnos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idTurno` int NOT NULL,
  `idUsuario` int NOT NULL,
  `fechaUnion` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_turnos`
--

LOCK TABLES `user_turnos` WRITE;
/*!40000 ALTER TABLE `user_turnos` DISABLE KEYS */;
INSERT INTO `user_turnos` VALUES (1,1,2,'2026-05-26 22:55:02');
/*!40000 ALTER TABLE `user_turnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `telefono` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `username` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `permisos` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `estado` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrador','000000000','admin','admin','Administrador','Activo'),(2,'Emanuel Juarez','5982 3467','Ema','Ema','Administrador','Activo'),(3,'Santiago de garza','45645456','santi','12345','Empleado','Activo'),(4,'Yonatan Barrios','2211-5562','Yona05','100barsa','Administrador','Inactivo');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idTurno` int DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `nombreCliente` varchar(255) DEFAULT NULL,
  `nitCliente` varchar(255) DEFAULT NULL,
  `idVendedor` int NOT NULL,
  `metodoPago` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `noDeposito` varchar(250) DEFAULT NULL,
  `urlComprobante` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_idx` (`idVendedor`),
  KEY `fk_turno_idx` (`idTurno`),
  CONSTRAINT `fk_turno` FOREIGN KEY (`idTurno`) REFERENCES `turnos` (`id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`idVendedor`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,NULL,'2026-06-13 22:52:44',10.00,'Yonatan Vargas','cf',1,'Contado','Activa',NULL,NULL),(2,NULL,'2026-06-13 22:53:10',10.00,'Yonatan Vargas','cf',1,'Contado','Activa',NULL,NULL),(3,NULL,'2026-06-13 22:54:17',10.00,'Yonatan Vargas','cf',1,'Contado','Activa',NULL,NULL),(4,NULL,'2026-06-14 09:04:03',20.00,'Yonatan Vargas','CF',1,'Contado','Activa',NULL,NULL),(5,NULL,'2026-06-14 09:11:31',5.00,'Yoni Pérez','CF',1,'Contado','Activa',NULL,NULL),(6,NULL,'2026-06-14 09:22:13',5.00,'Yonatan Bodegas','CF',1,'Contado','Activa',NULL,NULL),(7,NULL,'2026-06-14 09:30:46',850.00,'Cliente 2','5462132155',1,'Contado','Activa',NULL,NULL),(8,NULL,'2026-06-14 09:38:29',85.00,'Cliente 2','5462132155',1,'Contado','Activa',NULL,NULL),(9,NULL,'2026-06-14 09:47:04',5.00,'consumidor final','cf',1,'Contado','Activa',NULL,NULL),(10,NULL,'2026-06-14 09:49:37',66.00,'consumidor final','cf',1,'Contado','Activa',NULL,NULL),(11,NULL,'2026-06-14 09:58:02',5.00,'Cliente 2','5462132155',1,'Contado','Activa',NULL,NULL),(12,NULL,'2026-06-14 10:05:23',81.00,'Cliente 2','5462132155',1,'Contado','Activa',NULL,NULL),(13,NULL,'2026-06-14 10:37:34',306.20,'Yonatan Vargas','cf',1,'Contado','Activa',NULL,NULL),(14,NULL,'2026-06-14 10:43:12',35.00,'consumidor final','CF',1,'Contado','Activa',NULL,NULL),(15,NULL,'2026-06-14 11:04:22',5.00,'consumidor final','cf',1,'Contado','Activa',NULL,NULL),(16,14,'2026-06-14 11:17:28',5.00,'Cliente 2','5462132155',1,'Contado','Activa',NULL,NULL),(17,14,'2026-06-14 12:09:04',5.00,'Cliente 3','546621155',1,'Contado','Activa',NULL,NULL),(18,14,'2026-06-14 12:19:15',85.00,'Cliente 2','5462132155',1,'Contado','Activa',NULL,NULL),(19,14,'2026-06-14 13:09:53',10.00,'consumidor final','cf',1,'Contado','Activa',NULL,NULL),(20,14,'2026-06-14 13:14:41',333.00,'Cliente 2','5462132155',1,'Contado','Activa',NULL,NULL),(21,14,'2026-06-30 07:32:18',353.00,'Cliente 2','CF',1,'Contado','Activa',NULL,NULL),(22,14,'2026-08-07 18:02:13',69.00,'Ernesto rupertino cifuentes','12345678',1,'Contado','Activa',NULL,NULL),(23,14,'2026-08-09 11:43:20',10.00,'Cliente 3','546621155',1,'Crédito','Activa',NULL,NULL),(24,14,'2026-08-09 11:43:55',15.00,'Cliente 3','546621155',1,'Depósito','Activa',NULL,NULL),(25,14,'2026-08-11 17:23:37',5.00,'Cliente 2','87654321',1,'Deposito','Activa',NULL,NULL),(26,14,'2026-08-12 00:03:58',5.00,'Cliente 2','87654321',1,'Deposito','Activa','22553556','1786514638048_comprobante-22553556.jpg'),(27,14,'2026-08-12 07:49:38',5.00,'Cliente 2','87654321',1,'Deposito','Activa','22553556','1786542578099_comprobante-22553556.jpg'),(28,14,'2026-08-12 08:46:02',5.00,'Cliente 2','87654321',1,'Deposito','Activa','35556645556','1786545961765_comprobante-22553556.jpg'),(29,14,'2026-08-12 08:53:04',10.00,'Ernesto rupertino cifuentes','12345678',1,'Deposito','Activa','5688448','1786546384263_comprobante-22553556.jpg'),(30,14,'2026-08-12 13:44:41',85.00,'Cliente 3','546621155',1,'Deposito','Activa','587402','1786563881329_comprobante-6566655.avif'),(31,14,'2026-08-12 13:47:26',10.00,'Cliente 2','87654321',1,'Deposito','Activa','555222','1786564046285_comprobante-555222.jpg'),(32,14,'2026-08-13 10:21:49',5.00,'Cliente 2','87654321',1,'Credito','Activa',NULL,NULL),(33,14,'2026-08-13 10:26:38',15.00,'Cliente 2','87654321',1,'Credito','Activa',NULL,NULL),(34,14,'2026-08-13 16:08:31',60.00,'Cliente 3','546621155',1,'Credito','Activa',NULL,NULL),(35,14,'2026-08-13 16:41:33',78.60,'Cliente 2','87654321',1,'Credito','Activa',NULL,NULL),(36,14,'2026-08-13 21:47:26',5.00,'Cliente 2','87654321',1,'Credito','Activa',NULL,NULL),(37,14,'2026-08-13 21:47:33',5.00,'Cliente 2','87654321',1,'Credito','Activa',NULL,NULL),(38,14,'2026-08-18 10:53:44',125.00,'Ernesto rupertino cifuentes','12345678',1,'Credito','Activa',NULL,NULL),(39,14,'2026-08-18 12:33:28',30.00,'Ernesto rupertino cifuentes','12345678',1,'Credito','Activa',NULL,NULL),(40,14,'2026-08-18 13:00:41',400.00,'Ernesto rupertino cifuentes','12345678',1,'Credito','Activa',NULL,NULL),(41,14,'2026-08-19 22:13:14',30.00,'Ernesto rupertino cifuentes','12345678',1,'Credito','Activa',NULL,NULL),(42,14,'2026-08-19 22:39:58',30.00,'Cliente 3','546621155',1,'Credito','Activa',NULL,NULL),(43,14,'2026-08-19 23:34:35',10.00,'Cliente 3','546621155',1,'Credito','Activa',NULL,NULL),(44,14,'2026-08-20 13:32:56',65.00,'Ernesto rupertino cifuentes','12345678',1,'Credito','Activa',NULL,NULL),(45,14,'2026-08-20 14:54:01',40.00,'Ernesto rupertino cifuentes','12345678',1,'Credito','Activa',NULL,NULL),(46,14,'2026-08-23 12:49:10',25.00,'Ernesto rupertino cifuentes','12345678',1,'Contado','Activa',NULL,NULL),(47,14,'2026-08-23 23:39:46',25.00,'Ernesto Ruperto Perez','12345678',1,'Credito','Activa',NULL,NULL);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-24 22:20:13
