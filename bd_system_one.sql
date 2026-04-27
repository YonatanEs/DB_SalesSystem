-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_system_one
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'venenos'),(2,'abono'),(3,'calcina'),(4,'Interruptores');
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
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `nit` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'cliente 1','12345678','0000-0000','La Blanca, San Marcos','Activo'),(2,'Cliente 2','5462132155','4565-2355','La Blanca, San Marcos','Activo'),(3,'Cliente 3','546621155','3300 0002','La Blanca, San Marcos','Activo');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingreso_inventario`
--

DROP TABLE IF EXISTS `ingreso_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingreso_inventario` (
  `id_ingresoproducto` int NOT NULL AUTO_INCREMENT,
  `id_producto` int DEFAULT NULL,
  `fecha_ingreso` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `stock_actual` decimal(10,0) DEFAULT NULL,
  `stock_registro` decimal(10,0) DEFAULT NULL,
  `Precio_compra` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_ingresoproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso_inventario`
--

LOCK TABLES `ingreso_inventario` WRITE;
/*!40000 ALTER TABLE `ingreso_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingreso_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medidas`
--

DROP TABLE IF EXISTS `medidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medidas` (
  `id_medida` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `abreviatura` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_medida`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medidas`
--

LOCK TABLES `medidas` WRITE;
/*!40000 ALTER TABLE `medidas` DISABLE KEYS */;
INSERT INTO `medidas` VALUES (1,'libra','lb'),(2,'litro','lt'),(3,'kilos','kl'),(4,'Calorias','cal'),(5,'veintenas','VI'),(6,'Metros','MT'),(7,'Unidades','uds');
/*!40000 ALTER TABLE `medidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `precio_por_mayor` decimal(10,2) DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  `id_medida` int DEFAULT NULL,
  `id_proveedor` int DEFAULT NULL,
  `estado` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'65564651165','Veneno 51161',85.00,82.50,1,2,1,'Activo'),(2,'45561231125','crecefacil 1tll',100.00,96.82,2,2,2,'Activo'),(3,'123456','producto generico1',10.00,8.00,2,1,1,'Activo'),(4,'234567','producto generico2',20.00,18.00,1,1,2,'Activo'),(5,'522133514','producto generico 3',20.00,15.00,2,1,1,'Activo'),(6,'88554422','cancefril 500ml',1000.00,850.00,3,7,4,'Activo'),(7,'555221335','Interruptor de baquelita 15A aegle',35.00,33.00,4,7,1,'Activo'),(8,'555666215','Interruptor de baquelita 15A Eagle',35.00,32.00,4,7,1,'Activo');
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
  `nombre` varchar(250) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'celasa'),(2,'Masesa_proveedor'),(3,'automotriz'),(4,'Calcelsa_org');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  `telefono` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  `username` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  `permisos` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `estado` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrador','000000000','admin','admin','Administrador','Activo'),(2,'Emanuel Juarez','5982 3467','Ema','Ema','Empleado','Inactivo'),(3,'Santiago de garza','45645456','santi','12345','Empleado','Activo'),(4,'Yonatan Barrios','2211-5562','Yona05','100barsa','Administrador','Inactivo');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-26 21:42:13
