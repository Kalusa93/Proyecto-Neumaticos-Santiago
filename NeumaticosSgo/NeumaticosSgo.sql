-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: NeumaticosSgo
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bateria`
--

DROP TABLE IF EXISTS `bateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bateria` (
  `idBateria` int NOT NULL,
  `amperajeBateria` int DEFAULT NULL,
  `voltajeBateria` int DEFAULT NULL,
  `tipoBateria` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idBateria`),
  CONSTRAINT `bateria_ibfk_1` FOREIGN KEY (`idBateria`) REFERENCES `producto` (`idProducto`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bateria`
--

LOCK TABLES `bateria` WRITE;
/*!40000 ALTER TABLE `bateria` DISABLE KEYS */;
INSERT INTO `bateria` VALUES (6,85,12,'Litio'),(7,85,12,'Litio'),(8,24,12,'Litio'),(9,75,12,'Litio'),(10,65,12,'Litio'),(11,65,12,'Litio'),(12,75,12,'Litio'),(13,90,12,'Litio'),(14,90,12,'Litio'),(15,110,12,'Litio'),(16,75,12,'Litio'),(17,75,12,'Litio'),(18,90,12,'Litio'),(19,45,12,'Litio'),(20,180,12,'Litio'),(21,180,12,'Litio'),(22,180,12,'Litio'),(23,220,12,'Litio'),(24,135,12,'Litio'),(25,45,12,'Litio'),(26,80,12,'Litio'),(27,70,12,'Litio'),(28,85,12,'Litio'),(29,90,12,'Litio'),(30,40,12,'Litio'),(31,65,12,'Litio'),(32,50,12,'Litio'),(33,65,12,'Litio'),(34,65,12,'Litio'),(35,50,12,'Litio');
/*!40000 ALTER TABLE `bateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filtro`
--

DROP TABLE IF EXISTS `filtro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filtro` (
  `idFiltro` int NOT NULL,
  `tipoFiltro` varchar(60) DEFAULT NULL,
  `vehiculoFiltro` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idFiltro`),
  CONSTRAINT `filtro_ibfk_1` FOREIGN KEY (`idFiltro`) REFERENCES `producto` (`idProducto`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filtro`
--

LOCK TABLES `filtro` WRITE;
/*!40000 ALTER TABLE `filtro` DISABLE KEYS */;
INSERT INTO `filtro` VALUES (5,'aire','SANDERO-SCENIC-LAGUNAII-CLIOII');
/*!40000 ALTER TABLE `filtro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lampara`
--

DROP TABLE IF EXISTS `lampara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lampara` (
  `idLampara` int NOT NULL,
  `voltajeLampara` int DEFAULT NULL,
  `wattsLampara` int DEFAULT NULL,
  `tipoLampara` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idLampara`),
  CONSTRAINT `lampara_ibfk_1` FOREIGN KEY (`idLampara`) REFERENCES `producto` (`idProducto`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lampara`
--

LOCK TABLES `lampara` WRITE;
/*!40000 ALTER TABLE `lampara` DISABLE KEYS */;
INSERT INTO `lampara` VALUES (4,12,21,'HALOGENA');
/*!40000 ALTER TABLE `lampara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `llanta`
--

DROP TABLE IF EXISTS `llanta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llanta` (
  `idLlanta` int NOT NULL,
  `rodadoLlanta` float DEFAULT NULL,
  `anchoLlanta` float DEFAULT NULL,
  `cantidadAgujeros` int DEFAULT NULL,
  `distribucionAgujeros` varchar(50) DEFAULT NULL,
  `materialLlanta` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idLlanta`),
  CONSTRAINT `llanta_ibfk_1` FOREIGN KEY (`idLlanta`) REFERENCES `producto` (`idProducto`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llanta`
--

LOCK TABLES `llanta` WRITE;
/*!40000 ALTER TABLE `llanta` DISABLE KEYS */;
INSERT INTO `llanta` VALUES (2,16,6,5,'NULL','NULL');
/*!40000 ALTER TABLE `llanta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lubricentro`
--

DROP TABLE IF EXISTS `lubricentro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lubricentro` (
  `idLubricentro` int NOT NULL,
  `descripcionLubricentro` varchar(250) DEFAULT NULL,
  `medidaLubricentro` varchar(50) DEFAULT NULL,
  `tipoLubricentro` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idLubricentro`),
  CONSTRAINT `lubricentro_ibfk_1` FOREIGN KEY (`idLubricentro`) REFERENCES `producto` (`idProducto`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lubricentro`
--

LOCK TABLES `lubricentro` WRITE;
/*!40000 ALTER TABLE `lubricentro` DISABLE KEYS */;
INSERT INTO `lubricentro` VALUES (3,'ACEITE TOTAL QUARTZ INEO 0W30','4L','SINTETICO');
/*!40000 ALTER TABLE `lubricentro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos` (
  `idMovimiento` int NOT NULL,
  `idProducto` int NOT NULL,
  `CUIT` int NOT NULL,
  `tipoMovimiento` varchar(10) DEFAULT NULL,
  `fechaMovimiento` date DEFAULT NULL,
  `horaMovimiento` time DEFAULT NULL,
  `cantidadMovimiento` int DEFAULT NULL,
  `precioMovimiento` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idMovimiento`),
  KEY `idProducto` (`idProducto`),
  KEY `CUIT` (`CUIT`),
  CONSTRAINT `movimientos_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE CASCADE,
  CONSTRAINT `movimientos_ibfk_2` FOREIGN KEY (`CUIT`) REFERENCES `proveedor` (`CUIT`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neumatico`
--

DROP TABLE IF EXISTS `neumatico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neumatico` (
  `idNeumatico` int NOT NULL,
  `rodadoNeumatico` float DEFAULT NULL,
  `perfilNeumatico` int DEFAULT NULL,
  `anchoNeumatico` float DEFAULT NULL,
  `indiceVelocidad` varchar(10) DEFAULT NULL,
  `indiceCarga` varchar(10) DEFAULT NULL,
  `tipoNeumatico` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idNeumatico`),
  CONSTRAINT `neumatico_ibfk_1` FOREIGN KEY (`idNeumatico`) REFERENCES `producto` (`idProducto`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neumatico`
--

LOCK TABLES `neumatico` WRITE;
/*!40000 ALTER TABLE `neumatico` DISABLE KEYS */;
INSERT INTO `neumatico` VALUES (1,22,80,295,'1','1','calle');
/*!40000 ALTER TABLE `neumatico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `nombreProducto` varchar(200) DEFAULT NULL,
  `precioCompra` decimal(10,2) DEFAULT NULL,
  `precioVenta` decimal(10,2) DEFAULT NULL,
  `marcaProducto` varchar(100) DEFAULT NULL,
  `descripcionProducto` varchar(100) DEFAULT NULL,
  `stockProducto` int DEFAULT NULL,
  `rubroProducto` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'ECWAY XBR1',1.00,2.50,'ECWAY','ECWAY XBR1 295/80 R22.5',4,'neumatico'),(2,'LLANTA SPRINTER',1.00,7.90,'SPRINTER','CHAPA ORIGINAL GRIS 5 AGUJEROS NUEVA',1,'llanta'),(3,'TOTAL QUARTZ INEO',1.00,1.40,'TOTAL','ACEITE TOTAL QUARTZ',14,'lubricentro'),(4,'LAMPARA HALOGENA VOSLA H7 V12 21W',1.00,4.00,'VOSLA','LAMPARA HALOGENA VOSLA H7 V12 21W',3,'lampara'),(5,'FILTRO DE AIRE BOSCH AB',1.00,1.50,'BOSCH','FILTRO D AIRE BOSCH AB RENAULT',10,'filtro'),(6,'Bateria MOURA M22RD',53177.00,66471.00,'MOURA','Bateria MOURA M22RD 12X85 HILUX 550 Toyota Hilux- Tucson, Santa Fe',0,'bateria'),(7,'Bateria MOURA M22RI',57974.00,72468.00,'MOURA','Bateria MOURA M22RI 12X85 HILUX (IZ) 550 Toyota Hilux',2,'bateria'),(8,'Bateria MOURA M23UI',58898.00,73623.00,'MOURA','Bateria MOURA M23UI TRACT. CESPED 150 12-24 Tractores Peque├▒os',0,'bateria'),(9,'Bateria MOURA M24KD',55371.00,69214.00,'MOURA','Bateria MOURA M24KD 12X75 530 12x75 (Est├índar)',5,'bateria'),(10,'Bateria MOURA M26AD',52806.00,66007.00,'MOURA','Bateria MOURA M26AD 12X65 ALTA 470 Di├®sel Livianos 307/8, Fox, Punto',0,'bateria'),(11,'Bateria MOURA M26AI',55508.00,69385.00,'MOURA','Bateria MOURA M26AI 12X65 ALTA (IZ) 470 Chery Tiggo (Original)',0,'bateria'),(12,'Bateria MOURA M28KD',54765.00,68456.00,'MOURA','Bateria MOURA M28KD 12X75 REF 580 Ranger 2013 >(original)',0,'bateria'),(13,'Bateria MOURA M28TD/ME90TD',59506.00,74382.00,'MOURA','Bateria MOURA M28TD/ME90TD 12X90 HILUX 720',1,'bateria'),(14,'Bateria MOURA M28TE/ME90TI',54588.00,68235.00,'MOURA','Bateria MOURA M28TE/ME90TI 12X90 HILUX (IZ) 720',1,'bateria'),(15,'Bateria MOURA M30HA/ME100HA',57183.00,71479.00,'MOURA','Bateria MOURA M30HA/ME100HA 12X110 750 Camiones Mercedes Benz- Iveco- P 504 d',0,'bateria'),(16,'Bateria MOURA M30LD',57514.00,71893.00,'MOURA','Bateria MOURA M30LD 12X75 ALTA 600 Ranger <2013, Amarok (Original)',0,'bateria'),(17,'Bateria MOURA M30LI',53802.00,67253.00,'MOURA','Bateria MOURA M30LI 12X75 ALTA (IZ) 600 Silverado Caja Alta',0,'bateria'),(18,'Bateria MOURA M30QD/ME95QD',53392.00,66740.00,'MOURA','Bateria MOURA M30QD/ME95QD 12X90 SPRINTER 750 Amarok, Sprinter- MB Autom├│viles- BMW',0,'bateria'),(19,'Bateria MOURA M40FD',52555.00,65694.00,'MOURA','Bateria MOURA M40FD 12X45 343 Cl├¡o- Fiesta, Palio- Fiorino, Punto 1,4',0,'bateria'),(20,'Bateria MOURA M42BD/ME150BD',59890.00,74862.00,'MOURA','Bateria MOURA M42BD/ME150BD 12X180 930 12-180 (Camiones)',2,'bateria'),(21,'Bateria MOURA M46BD/ME 180BD',58974.00,73718.00,'MOURA','Bateria MOURA M46BD/ME180BD 12X180 REF 12-180 Reforzada (Camiones)',1,'bateria'),(22,'Bateria MOURA M46BE/ME 180BI',56926.00,71157.00,'MOURA','Bateria MOURA M46BE/ME180BI 12X180 REF (IZ) 12-180 Volvo Scania (Camiones)',0,'bateria'),(23,'Bateria MOURA M58PD/ME220PD',56555.00,70694.00,'MOURA','Bateria MOURA M58PD/ME220PD 12X220 1150 12-2220 (├ômnibus) (Tractores)',0,'bateria'),(24,'Bateria MOURA ME135BD',53586.00,66982.00,'MOURA','Bateria MOURA ME135BD 12X135 850 12-150 (Camiones)',1,'bateria'),(25,'Bateria MOURA M18FD',56518.00,70647.00,'MOURA','Bateria MOURA M18FD 12X45 380 Cl├¡o- Fiesta, Palio- Fiorino, Punto 1,4',1,'bateria'),(26,'Bateria MOURA ME80CD',58678.00,73347.00,'MOURA','Bateria MOURA ME80CD 12X80 650',0,'bateria'),(27,'Bateria MOURA MF60AD',55988.00,69985.00,'MOURA','Bateria MOURA MF60AD L2 530',0,'bateria'),(28,'Bateria MOURA MF72LD',52530.00,65663.00,'MOURA','Bateria MOURA MF72LD L3 730',0,'bateria'),(29,'Bateria BOSCH',54315.00,67894.00,'ABC','BATERIA  BOSCH 12X90 AMP  VEHICULO LIVIANO',0,'bateria'),(30,'Bateria MOURA M18SD',59654.00,74568.00,'MOURA','Bateria MOURA M18SD 12X40 (H FIT) 260 Honda Fit (Borne Grueso)',0,'bateria'),(31,'Bateria MOURA M20GD',57688.00,72110.00,'MOURA','Bateria MOURA M20GD 12X65 350 12x65 (Est├índar)',3,'bateria'),(32,'Bateria MOURA M22ED',52954.00,66193.00,'MOURA','Bateria MOURA M22ED 12X50 390 Palio- Punto, Cobalt, Prisma.',0,'bateria'),(33,'Bateria MOURA M22GD',55060.00,68825.00,'MOURA','Bateria MOURA M22GD 12X65 REF 450 Focus, Gol,207, 208, Corsa (N)',2,'bateria'),(34,'Bateria MOURA M22GI',53126.00,66407.00,'MOURA','Bateria MOURA M22GI 12X65 REF (IZ) 450 Ne├│n/99- C4- Agile- Aveo- Daewoo',0,'bateria'),(35,'Bateria MOURA M22JD',57666.00,72083.00,'MOURA','Bateria MOURA M22JD 12X50 (H CIVIC) 375 Honda Civic (Borne Grueso)',0,'bateria');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`localhost`*/ /*!50003 TRIGGER `trCargaProducto` AFTER INSERT ON `producto` FOR EACH ROW BEGIN
    CASE
        WHEN NEW.rubroProducto = 'neumatico' THEN INSERT INTO neumatico (idNeumatico) VALUES (NEW.idProducto);
        WHEN NEW.rubroProducto = 'llanta' THEN INSERT INTO llanta (idLlanta) VALUES (NEW.idProducto);
        WHEN NEW.rubroProducto = 'lubricentro' THEN INSERT INTO lubricentro (idLubricentro) VALUES (NEW.idProducto);
        WHEN NEW.rubroProducto = 'bateria' THEN INSERT INTO bateria (idBateria) VALUES (NEW.idProducto);
        WHEN NEW.rubroProducto = 'lampara' THEN INSERT INTO lampara (idLampara) VALUES (NEW.idProducto);
        WHEN NEW.rubroProducto = 'filtro' THEN INSERT INTO filtro (idFiltro) VALUES (NEW.idProducto);
    END CASE;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `CUIT` int NOT NULL,
  `nombreProveedor` varchar(120) DEFAULT NULL,
  `apellidoProveedor` varchar(80) DEFAULT NULL,
  `direccionProveedor` varchar(120) DEFAULT NULL,
  `telefonoProveedor` varchar(20) DEFAULT NULL,
  `correoProveedor` varchar(60) DEFAULT NULL,
  `estadoProveedor` enum('A','B') NOT NULL DEFAULT 'A',
  PRIMARY KEY (`CUIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 17:18:13
