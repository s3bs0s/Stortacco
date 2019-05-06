-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pruebas
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos` (
  `idPermisos` int(11) NOT NULL,
  `Rol` varchar(15) NOT NULL,
  `detalles_ventas_insert` varchar(1) DEFAULT NULL,
  `detalles_ventas_select` varchar(1) DEFAULT NULL,
  `detalles_ventas_update` varchar(1) DEFAULT NULL,
  `detalles_ventas_delet` varchar(1) DEFAULT NULL,
  `informacion_usuarios_insert` varchar(1) DEFAULT NULL,
  `informacion_usuarios_select` varchar(1) DEFAULT NULL,
  `informacion_usuarios_update` varchar(1) DEFAULT NULL,
  `informacion_usuarios_delet` varchar(1) DEFAULT NULL,
  `productos_insert` varchar(1) DEFAULT NULL,
  `productos_select` varchar(1) DEFAULT NULL,
  `productos_update` varchar(1) DEFAULT NULL,
  `productos_delet` varchar(1) DEFAULT NULL,
  `proveedores_insert` varchar(1) DEFAULT NULL,
  `proveedores_select` varchar(1) DEFAULT NULL,
  `proveedores_update` varchar(1) DEFAULT NULL,
  `proveedores_delet` varchar(1) DEFAULT NULL,
  `reservas_insert` varchar(1) DEFAULT NULL,
  `reservas_select` varchar(1) DEFAULT NULL,
  `reservas_update` varchar(1) DEFAULT NULL,
  `reservas_delet` varchar(1) DEFAULT NULL,
  `usuarios_insert` varchar(1) DEFAULT NULL,
  `usuarios_select` varchar(1) DEFAULT NULL,
  `usuarios_update` varchar(1) DEFAULT NULL,
  `usuarios_delet` varchar(1) DEFAULT NULL,
  `ventas_insert` varchar(1) DEFAULT NULL,
  `ventas_select` varchar(1) DEFAULT NULL,
  `ventas_update` varchar(1) DEFAULT NULL,
  `ventas_delet` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idPermisos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Rol` varchar(15) NOT NULL,
  `Habilitado` varchar(1) NOT NULL,
  PRIMARY KEY (`idUsuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'restreposanti04@gmail.com','123','gerente','S'),(2,'jmadridl@unal.edu.co','123','administrador','S'),(3,'cuadrosc99@gmail.com','123','cliente','S'),(4,'sebastianaliasg@gmail.com','123','cliente','S'),(5,'josecarmelo@gmail.com','123','cliente','S'),(6,'stivenvalencia@gmail.com','123','cliente','S'),(7,'jhamth@gmail.com','123','cliente','S'),(8,'alejo@gmail.com','123','cliente','S'),(9,'juandavid@gmail.com','123','cliente','S'),(10,'valentina@gmail.com','123','cliente','S'),(11,'catalina@gmail.com','123','cliente','S'),(12,'bryan@gmail.com','123','cliente','S'),(13,'juanesteban@gmail.com','123','cliente','S'),(14,'edwin@gmail.com','123','cliente','S'),(15,'morsamoreno@gmail.com','123','cliente','S');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `informacion_usuarios`
--

DROP TABLE IF EXISTS `informacion_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informacion_usuarios` (
  `idInformacionUsuarios` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_Registro` date NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellidos` varchar(60) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Tarjeta_Identificacion` varchar(45) NOT NULL,
  `Numero_Identificacion` varchar(45) NOT NULL,
  `Direccion` varchar(40) NOT NULL,
  `Telefono` varchar(30) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `Habilitado` varchar(1) NOT NULL,
  PRIMARY KEY (`idInformacionUsuarios`),
  KEY `IdUsuario_idx` (`idUsuario`),
  CONSTRAINT `IdUsuario_informacionU` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacion_usuarios`
--

LOCK TABLES `informacion_usuarios` WRITE;
/*!40000 ALTER TABLE `informacion_usuarios` DISABLE KEYS */;
INSERT INTO `informacion_usuarios` VALUES (1,'2019-02-07','Santiago','Restrepo Velez','1999-01-01','CC','1036687446','Calle 45# 67SUR','3007486060',1,'S'),(2,'2019-02-07','Jonathan','Madrid Londoño','1970-01-01','CC','1037586268','Carrera 23# 56 - A56','3052909053',2,'S'),(3,'2019-02-07','Juan Jose','Restrepo Cuadros','1999-01-01','CC','1036687393','Calle 62 #12SUR - 23','3105914350',3,'S');
/*!40000 ALTER TABLE `informacion_usuarios` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservas` (
  `idReservas` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_Reserva` date NOT NULL,
  `Hora_Reserva` time NOT NULL,
  `Numero_Personas` varchar(45) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `Habilitado` varchar(1) NOT NULL,
  PRIMARY KEY (`idReservas`),
  KEY `IdUsuario_reservas_idx` (`idUsuario`),
  CONSTRAINT `idUsuario_reservas` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,'2019-03-04','11:30:00','5',2,'S'),(2,'2019-03-20','07:35:00','8',1,'S');
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `idProveedores` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Tipo_Identificacion` varchar(45) NOT NULL,
  `Numero_Identificacion` varchar(45) NOT NULL,
  `Nombre_Contacto` varchar(45) NOT NULL,
  `Habilitado` varchar(1) NOT NULL,
  PRIMARY KEY (`idProveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Pilsen','3224545','contacto@pilsen.co.com','Calle 34# 56 - 56','NIT','1-345678433','Gabriel Gomez','S'),(2,'Fabrica de Licores','2345242','contacto@fla.com','Calle 23# 76SUR 2','NIT','2345678543-1','Pedrito Perez','S'),(3,'Dislicores','3205792516','online@dislicores.com','Calle 70# 50SUR','NIT','123-45687','Alejo Zapata','S');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `idProductos` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(80) NOT NULL,
  `Descripcion_Producto` text NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Fecha_Ingreso` date NOT NULL,
  `Precio_Venta` float NOT NULL,
  `Precio_Compra` float NOT NULL,
  `idProveedor` int(11) NOT NULL,
  `Habilitado` varchar(1) NOT NULL,
  PRIMARY KEY (`idProductos`),
  KEY `idProveedor_productos_idx` (`idProveedor`),
  CONSTRAINT `idProveedor_productos` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Garrafa tapa roja','Aguardiente',67,'2019-03-06',150000,80000,2,'S'),(2,'Garrafa de Ron','Ron Medellin',40,'2019-03-06',160000,90000,2,'S'),(3,'Garrafa tapa azul','Aguardiente',60,'2019-03-06',155000,85000,2,'S'),(4,'Litro tapa roja','Aguardiente',42,'2019-03-06',85000,43000,2,'S'),(5,'Litro tapa azul','Aguardiente',45,'2019-03-06',90000,45000,2,'S'),(6,'Litro de Ron','Ron Medellin',50,'2019-03-06',95000,50000,2,'S'),(7,'Media tapa azul','Aguardiente',43,'2019-03-06',30000,18000,2,'S'),(8,'Media tapa roja','Aguardiente',44,'2019-03-06',28000,16000,2,'S'),(9,'Media de Ron','Ron Medellin',40,'2019-03-06',35000,20000,2,'S'),(10,'Old Parr','Whisky',45,'2019-03-06',80000,47000,3,'S'),(11,'Jack Daniels','Whisky',38,'2019-03-06',110000,60000,3,'S'),(12,'Red Label','Whisky',45,'2019-03-06',90000,47000,3,'S'),(13,'Absolut','Vodka',40,'2019-03-06',135000,70000,3,'S'),(14,'Smirnoff','Vodka',35,'2019-03-06',115000,60000,3,'S'),(15,'Jose Cuervo','Tequila',40,'2019-03-06',120000,65000,3,'S'),(16,'1800','Tequila',37,'2019-03-06',170000,90000,3,'S'),(17,'Don Julio','Tequila',35,'2019-03-06',200000,120000,3,'S'),(18,'Aguila','Cerveza',70,'2019-03-06',5000,2500,1,'S'),(19,'Aguila light','Cerveza',50,'2019-03-06',5500,3000,1,'S'),(20,'Pilsen','Cerveza',70,'2019-03-06',5000,2500,1,'S'),(21,'Club Colombia','Cerveza',60,'2019-03-06',5500,3000,1,'S'),(22,'Corona','Cerveza',45,'2019-03-06',9500,5000,1,'S'),(23,'Heineken','Cerveza',35,'2019-03-06',5500,3000,1,'S'),(24,'Poker','Cerveza',38,'2019-03-06',5500,3000,1,'S'),(25,'Redds','Cerveza',30,'2019-03-06',4500,2000,1,'S'),(26,'budweiser','Cerveza',20,'2019-03-06',7000,3500,1,'S'),(27,'3cordilleras','Cerveza',35,'2019-03-06',7000,3500,1,'S');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;





--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `idVentas` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_Registro` date NOT NULL,
  `Hora_Registro` time NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  PRIMARY KEY (`idVentas`),
  KEY `idCajero_idx` (`idUsuario`),
  CONSTRAINT `idUsuario_ventas` FOREIGN KEY (`idUsuario`) REFERENCES `informacion_usuarios` (`idInformacionUsuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_ventas`
--

DROP TABLE IF EXISTS `detalles_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_ventas` (
  `idDetallesVentas` int(11) NOT NULL AUTO_INCREMENT,
  `idVenta` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `Cantidad` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`idDetallesVentas`),
  KEY `idProducto_detallesV_idx` (`idProducto`),
  KEY `idVenta_detallesV_idx` (`idVenta`),
  CONSTRAINT `idProducto_detallesV` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProductos`),
  CONSTRAINT `idVenta_detallesV` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`idVentas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_ventas`
--

LOCK TABLES `detalles_ventas` WRITE;
/*!40000 ALTER TABLE `detalles_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalles_ventas` ENABLE KEYS */;
UNLOCK TABLES;


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-24 18:15:08
