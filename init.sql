-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `admission`
--

DROP TABLE IF EXISTS `admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `sexe` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `pob` varchar(45) NOT NULL,
  `img` longblob,
  `date` varchar(45) NOT NULL,
  `statut` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission`
--

LOCK TABLES `admission` WRITE;
/*!40000 ALTER TABLE `admission` DISABLE KEYS */;
INSERT INTO `admission` VALUES (1,'Sanogo','Bakary','Masculin','2011-05-12','Bamako',NULL,'2025-2026','Passant'),(2,'Cisse','Binta','Masculin','2010-09-23','Bamako',NULL,'2025-2026','Passant'),(3,'Coulibaly','Fatim','Feminin','2012-10-22','Sikasso',NULL,'2025-2026','Passant'),(4,'Sanogo','Mohamed','Masculin','2015-02-25','Bamako',NULL,'2025-2026','Passant'),(5,'Coulibaly','Ibrahim','Masculin','2000-01-22','Bamako',NULL,'2025-2026','Passant');
/*!40000 ALTER TABLE `admission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affectation`
--

DROP TABLE IF EXISTS `affectation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `affectation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idP` int NOT NULL,
  `idC` int NOT NULL,
  `idM` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affectation`
--

LOCK TABLES `affectation` WRITE;
/*!40000 ALTER TABLE `affectation` DISABLE KEYS */;
INSERT INTO `affectation` VALUES (1,1,1,'Mathematique'),(2,2,1,'Biologie');
/*!40000 ALTER TABLE `affectation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classe`
--

DROP TABLE IF EXISTS `classe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacite` int NOT NULL,
  `niveau` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frais` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classe`
--

LOCK TABLES `classe` WRITE;
/*!40000 ALTER TABLE `classe` DISABLE KEYS */;
INSERT INTO `classe` VALUES (1,'7eme',1,'Second Cycle',5000),(2,'2eme',1,'Premier cycle',2500);
/*!40000 ALTER TABLE `classe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comp`
--

DROP TABLE IF EXISTS `comp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idE` int NOT NULL,
  `idC` int NOT NULL,
  `mat` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` double NOT NULL DEFAULT '0',
  `an` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idEx` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comp`
--

LOCK TABLES `comp` WRITE;
/*!40000 ALTER TABLE `comp` DISABLE KEYS */;
INSERT INTO `comp` VALUES (1,1,1,'Mathematique',15,'2025-2026',1),(2,2,1,'Mathematique',14,'2025-2026',1),(3,3,1,'Mathematique',10,'2025-2026',1),(4,4,1,'Mathematique',20,'2025-2026',1),(5,1,1,'Biologie',16,'2025-2026',1),(6,2,1,'Biologie',18,'2025-2026',1),(7,3,1,'Biologie',3,'2025-2026',1),(8,4,1,'Biologie',14,'2025-2026',1);
/*!40000 ALTER TABLE `comp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compte`
--

DROP TABLE IF EXISTS `compte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debut` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cap` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pays` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compte`
--

LOCK TABLES `compte` WRITE;
/*!40000 ALTER TABLE `compte` DISABLE KEYS */;
/*!40000 ALTER TABLE `compte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idC` int DEFAULT NULL,
  `idS` int DEFAULT NULL,
  `nom` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cours`
--

DROP TABLE IF EXISTS `cours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cours` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_cours` varchar(105) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classe_id` int NOT NULL,
  `mat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cours`
--

LOCK TABLES `cours` WRITE;
/*!40000 ALTER TABLE `cours` DISABLE KEYS */;
INSERT INTO `cours` VALUES (1,'Trigonometrie','termine',1,'Mathematique');
/*!40000 ALTER TABLE `cours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demandes`
--

DROP TABLE IF EXISTS `demandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demandes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idP` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demandes`
--

LOCK TABLES `demandes` WRITE;
/*!40000 ALTER TABLE `demandes` DISABLE KEYS */;
INSERT INTO `demandes` VALUES (1,'absence','Voyage chez mon pÃ¨re','20/10/2026','pdf_1791137415187.pdf','pending',1,'2026-10-04 18:10:15'),(2,'document','Demande de contrat','01/11/2026','pdf_1792593033696.pdf','pending',2,'2026-10-21 14:30:33');
/*!40000 ALTER TABLE `demandes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depense`
--

DROP TABLE IF EXISTS `depense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depense` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `montant` double NOT NULL,
  `date` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heure` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annee` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depense`
--

LOCK TABLES `depense` WRITE;
/*!40000 ALTER TABLE `depense` DISABLE KEYS */;
/*!40000 ALTER TABLE `depense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `describ`
--

DROP TABLE IF EXISTS `describ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `describ` (
  `idservice` int NOT NULL,
  `surface` varchar(45) NOT NULL,
  `chambre` int NOT NULL,
  `salon` int NOT NULL,
  `douche` int NOT NULL,
  `cuisine` int NOT NULL,
  `etage` int NOT NULL,
  `describ` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `describ`
--

LOCK TABLES `describ` WRITE;
/*!40000 ALTER TABLE `describ` DISABLE KEYS */;
/*!40000 ALTER TABLE `describ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emploi_du_temps`
--

DROP TABLE IF EXISTS `emploi_du_temps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emploi_du_temps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jour` int NOT NULL,
  `heure_debut` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heure_fin` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matiere` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idC` int NOT NULL,
  `an` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emploi_du_temps`
--

LOCK TABLES `emploi_du_temps` WRITE;
/*!40000 ALTER TABLE `emploi_du_temps` DISABLE KEYS */;
INSERT INTO `emploi_du_temps` VALUES (1,2,'08:00','10:00','Biologie',1,'2025-2026'),(2,5,'10:00','12:00','Biologie',1,'2025-2026');
/*!40000 ALTER TABLE `emploi_du_temps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfant`
--

DROP TABLE IF EXISTS `enfant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idP` int NOT NULL,
  `idC` int NOT NULL,
  `idE` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfant`
--

LOCK TABLES `enfant` WRITE;
/*!40000 ALTER TABLE `enfant` DISABLE KEYS */;
INSERT INTO `enfant` VALUES (1,1,17,4),(2,1,22,5);
/*!40000 ALTER TABLE `enfant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `periode` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classe` int NOT NULL,
  `matiere` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lib` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` int NOT NULL,
  `date` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `affiche` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annee` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES (13,'Periode 1',1,'Mathematique','Devoir',20,'11/10/2026','1','2025-2026'),(20,'Periode 1',1,'Biologie','ContrÃ´le de Biologie',20,'26/10/2026','1','2025-2026'),(21,'Periode 1',1,'Biologie','ContrÃ´le sur les cellules',20,'30/10/2026','1','2025-2026');
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examen`
--

DROP TABLE IF EXISTS `examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `periode` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `niveau` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lib` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annee` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen`
--

LOCK TABLES `examen` WRITE;
/*!40000 ALTER TABLE `examen` DISABLE KEYS */;
INSERT INTO `examen` VALUES (1,'Periode 1','Second Cycle','Composition 1','2025-2026'),(2,'Periode 1','Premier cycle','Composition 1','2025-2026');
/*!40000 ALTER TABLE `examen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `idservice` int NOT NULL,
  `data` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idE` int NOT NULL,
  `idC` int NOT NULL,
  `annee` varchar(45) NOT NULL,
  `statut` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscription`
--

LOCK TABLES `inscription` WRITE;
/*!40000 ALTER TABLE `inscription` DISABLE KEYS */;
INSERT INTO `inscription` VALUES (1,1,1,'2025-2026','Externe'),(2,2,1,'2025-2026','Externe'),(3,3,1,'2025-2026','Externe'),(4,4,1,'2025-2026','Externe'),(5,5,2,'2025-2026','Externe');
/*!40000 ALTER TABLE `inscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `idUsers` int NOT NULL AUTO_INCREMENT,
  `Login` varchar(45) NOT NULL,
  `Pass` varchar(45) NOT NULL,
  PRIMARY KEY (`idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mataffect`
--

DROP TABLE IF EXISTS `mataffect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mataffect` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coef` int NOT NULL,
  `ordre` int NOT NULL,
  `idC` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mataffect`
--

LOCK TABLES `mataffect` WRITE;
/*!40000 ALTER TABLE `mataffect` DISABLE KEYS */;
INSERT INTO `mataffect` VALUES (1,'Mathematique','Math',3,1,1),(2,'Recitattion','R',1,1,2),(3,'Ecriture','E',1,1,2),(4,'Chant','C',1,1,2),(5,'Lecture','L',1,1,2),(6,'Dessin','D',1,1,2),(7,'Conjugaison','C',1,1,2),(8,'Anglais','A',1,1,1),(9,'Biologie','B',1,1,1),(10,'Physique','P',1,1,1),(11,'Chimie','C',1,1,1),(12,'Geologie','G',1,1,1),(13,'ECM','E',1,1,1),(14,'Conduite','C',1,1,1),(15,'Dessin','D',1,1,1),(16,'Chant','C',1,1,1),(17,'Recitation','R',1,1,1),(18,'Musique','M',1,1,1),(19,'Sport','S',1,1,1),(20,'Comedie','C',1,1,1),(21,'Agriculture','A',1,1,1),(22,'Boxe','B',1,1,1),(23,'Sociologie','S',1,1,1),(24,'Informatique','I',1,1,1);
/*!40000 ALTER TABLE `mataffect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricule`
--

DROP TABLE IF EXISTS `matricule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idE` int NOT NULL,
  `matricule` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricule`
--

LOCK TABLES `matricule` WRITE;
/*!40000 ALTER TABLE `matricule` DISABLE KEYS */;
INSERT INTO `matricule` VALUES (1,1,'1234-MLI'),(2,2,'Bamako'),(3,3,'788945-MLI'),(4,4,'12345'),(5,5,'1233-MLi');
/*!40000 ALTER TABLE `matricule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lib` varchar(45) NOT NULL,
  `code` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'Mathematique','Math'),(2,'Recitattion','R'),(3,'Ecriture','E'),(4,'Chant','C'),(5,'Lecture','L'),(6,'Dessin','D'),(7,'Conjugaison','C'),(8,'Anglais','A'),(9,'Biologie','B'),(10,'Physique','P'),(11,'Chimie','C'),(12,'Geologie','G'),(13,'ECM','E'),(14,'Conduite','C'),(15,'Dessin','D'),(16,'Chant','C'),(17,'Recitation','R'),(18,'Musique','M'),(19,'Sport','S'),(20,'Comedie','C'),(21,'Agriculture','A'),(22,'Boxe','B'),(23,'Sociologie','S'),(24,'Informatique','I');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moy`
--

DROP TABLE IF EXISTS `moy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricule` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idC` int NOT NULL,
  `titre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` double NOT NULL,
  `an` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idE` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moy`
--

LOCK TABLES `moy` WRITE;
/*!40000 ALTER TABLE `moy` DISABLE KEYS */;
INSERT INTO `moy` VALUES (1,'1234-MLI','Sanogo','Bakary',2,'Periode 1',7,'2025-2026',1),(2,'12345','Sanogo','Mohamed',2,'Periode 1',6.166666666666667,'2025-2026',4),(3,'Bamako','Cisse','Binta',2,'Periode 1',5.5,'2025-2026',2),(4,'788945-MLI','Coulibaly','Fatim',2,'Periode 1',4.333333333333333,'2025-2026',3),(5,'1234-MLI','Sanogo','Bakary',1,'Periode 1',0,'2025-2026',1),(6,'Bamako','Cisse','Binta',1,'Periode 1',0,'2025-2026',2),(7,'788945-MLI','Coulibaly','Fatim',1,'Periode 1',0,'2025-2026',3),(8,'12345','Sanogo','Mohamed',1,'Periode 1',0,'2025-2026',4);
/*!40000 ALTER TABLE `moy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `niveau` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lib` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directeur` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `niveau`
--

LOCK TABLES `niveau` WRITE;
/*!40000 ALTER TABLE `niveau` DISABLE KEYS */;
INSERT INTO `niveau` VALUES (1,'Second Cycle','Ozo Sanogo'),(2,'Premier cycle','Ozo');
/*!40000 ALTER TABLE `niveau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idE` int NOT NULL,
  `prenom` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` double NOT NULL DEFAULT '0',
  `mat` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annee` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idC` int NOT NULL,
  `eval` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (1,1,'Bakary','Sanogo',18,'Mathematique','2025-2026',1,13),(2,2,'Binta','Cisse',11,'Mathematique','2025-2026',1,13),(3,3,'Fatim','Coulibaly',8,'Mathematique','2025-2026',1,13),(4,4,'Mohamed','Sanogo',18,'Mathematique','2025-2026',1,13),(5,1,'Bakary','Sanogo',5,'Biologie','2025-2026',1,20),(6,2,'Binta','Cisse',10,'Biologie','2025-2026',1,20),(7,3,'Fatim','Coulibaly',15,'Biologie','2025-2026',1,20),(8,4,'Mohamed','Sanogo',19,'Biologie','2025-2026',1,20),(9,1,'Bakary','Sanogo',13,'Biologie','2025-2026',1,21),(10,2,'Binta','Cisse',15,'Biologie','2025-2026',1,21),(11,3,'Fatim','Coulibaly',10,'Biologie','2025-2026',1,21),(12,4,'Mohamed','Sanogo',16,'Biologie','2025-2026',1,21);
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `sexe` varchar(45) NOT NULL,
  `number` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
INSERT INTO `parent` VALUES (1,'Sanogo','Ali','Masculin','76 58 49 56','mosefsanogo366@gmail.com');
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pauses`
--

DROP TABLE IF EXISTS `pauses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pauses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `service_id` bigint DEFAULT NULL,
  `sous_service_id` bigint DEFAULT NULL,
  `heure_debut` time DEFAULT NULL,
  `heure_fin` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pauses`
--

LOCK TABLES `pauses` WRITE;
/*!40000 ALTER TABLE `pauses` DISABLE KEYS */;
/*!40000 ALTER TABLE `pauses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idC` int NOT NULL,
  `idE` int NOT NULL,
  `type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mois` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heure` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `montant` double NOT NULL,
  `an` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periode`
--

DROP TABLE IF EXISTS `periode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `periode` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lib` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periode`
--

LOCK TABLES `periode` WRITE;
/*!40000 ALTER TABLE `periode` DISABLE KEYS */;
INSERT INTO `periode` VALUES (1,'Periode 1');
/*!40000 ALTER TABLE `periode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `prenom` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `sexe` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `dob` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `pob` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `img` longblob,
  `tel` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `matricule` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `grade` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel`
--

LOCK TABLES `personnel` WRITE;
/*!40000 ALTER TABLE `personnel` DISABLE KEYS */;
INSERT INTO `personnel` VALUES (1,'Perou','Ali','Masculin','1995-10-01','Koutiala',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\à\0\0\à\0\0\0}Ô¾•\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0\Ä\0\0\Ä•+\0\04{IDATx^\í\İ÷w[×¹\æñ—\è,*%ª\Ëj\îrMœ\ÜÜ¬53k\ÍóW\Ï\ä\ŞÇ–d\Û\êT§\Ø;‰^8û\Ù‡f\Ù*<À¾	Vû9\ïnghzfv\Û\0\0@W¥\Ú÷\0\0 ‹`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\Ğã¶··÷tĞ›†¦gfy…1\Ú’CCC\í·‚·\Ã[*¥\Ç¹w_¥/ôo_½\í\Şr·¿|w\0·ZÁg´Z-/\á\Ïô\ßI?Ã¿ ›` \ËvÂ¯|©T\Ê\ßô~\Ëf\Ë\êÕš+«\ÖjVs·Š{_÷µz=R}\İ\í¦ş?ø^\nç¡¡\àûd2i\Ëgs–\Ë\ç,Ÿn#\Ã÷~Ş²\é´ÿy\Òt\ßk\Û\İôswÿ^\0:\0:\ì_W\á\è0É¸\Ç[¶¹µe«k¶¹¹i\ÅR\Ùm\Õ\ê\nY÷5şóõ\ÏkJ¡\ènşş\r\èg¾|S%¬/Ï¤3>˜‡ó\Û7j\ãöÛıû}Hûğw?_¿qøu\îû¯-ˆš‚\Ë\İ\í®«FS®2-»p\İ\ØØ°\å\Õ5[ZZq\ïWü\ãi÷ñt»\"\Õ\ç\ï¾Yˆ»„Ÿ÷ò\ã\Îo}\àÓƒ€m4›\Öl4ı\ï© <2a\İı\Øè¨¯”\ë\ÆN÷µ>ÿ×¾/€·C\0	\Ã1\í*\\U¹z\İ\î\ìü‚-¯­[\Õ°*\Útú—.\çPÁüº¿ü\\ıº©[º\Ùlùÿ†}®B>69iG&Y6›õA\Üt\Ç\ï$\r\ìADºe³?37oóK¶\æÂ·Q¯û\à\n\Ç\\w‡]¯˜\Z‚İ¿Q\È\rW+x\ÆG&&\ì\äñc622l\ÕJug\ì¸\×ş[€~@\0oI#>t3.t]¸®¬®\ÚôÌœŞ… \Ö\ã\î\ã½¸ob÷\ï­V\àj2\Ø\èÈ¨=u\Â&\'XÎ`hr˜>—0\Ş¼ŒªYU»š¬ôôù{1;\ç«\ÄlV³‹\Ó;Ÿ—\ä \Ò_£=6<~ğ€?û8Œ\'\ÓE\r¼x\r…‰úf5aj¸·Õµu{ôô™-,­¸\n8\í+^…>M)wô·\ÑMp!Ÿ·³gNÛ™“\'\\7üI	Aü:øax¨\âU7\ë\âÊŠİ¹7e¥J\Ù\n¹œÿ\áòı½4cZğ9\Ä\ç\Ş;\í{ü²&‚ø70ğ\n\nU¶\Z\ã_\\²[¥R±¬^­\ÅÕ‹†8y5ı\í\Ô­u\Î\'·g\ßó3¿\Î1ğ\ØE¡Š7Ÿ\Ï\Ûòò²İº÷Ào¡M*·£¿¥ª\áz£igOŸ´.^ğ\ã\Æ\ng÷Aşx0\à„•™‚¶X*Ù·\ïú]ª4®IP\ìM\Ä\ZV+Œ5f¬\Çø\ÛbÀx\nu5\ë…p\ë\Ş=[XX¶\\î—µ»ˆ†ş\Î\ZÖº\èK}d‡\Æø½®Ã“`\ĞÀXjøuƒB¾`\Ó/f\ìöƒ–NgüP\èı\İÕ­¯İµ¾¼tÉš-U\Ç\rB‡\0\ÆÀQ\0hU.›³r¥b7~ºe%wŸw•!\Ğ=\Ú\î²Z¯Ú§|`§Oğ¡L5ŒAB\0c „\r¼\ÆzŸ<Ÿ¶Sü•\èn‡\Ø\ï¿ü\Ü=2D5ŒA\0c`¨±\×‘rõúM\Û*•,§\Ù\Íş\ÄI\Õp£Q·O?ş\ÈNôW¢\ZF\ÒÀH>×»–\ÜW½s‹¾\Ëyx¸@\Õ\Ûc¸\Õj\Í\Æ\Ç\Ú\ï?ÿ\Ìj.µ\Õ%!Œ¤\"€‘h;]\Îùœı|\ç¾\Í\Î\ÍY¡Ph½H]\Ğ:9úıW_XÁ=oõ:]\ÒH&‰å»œµO³k\Ìÿyùªk\Ôô>=w•Z\Í.}ø:q\ÌJ\å\n!Œ\Ä!€‘HjÀ\Õ\å¬kò^¹~Ó¿M—sÿ)—\Ëv\âøQ»ôñ\ÇVe\\	C\0#q\ÔHk«\é\ÙY»}o\Êwc\Òh÷/õ\\\ìõ]\Ò\á%y>‘”Hœ‘\áa»÷ğ‘İ¾ûÀ_>Æº¿\éJT%W	ÿõ\Û\ï|/†.’¡“, \ßÀH†vƒ¬\Ê÷\ÊõöüÅŒŸ\éŒd®¹œ²¿ü\í~\Ã¿u(!Œ>G\0£ÿ©!vU®®`ô\í•k¶¾¹\å\Ç|‘,\Ú6T\ÏñwW¯\Û\æVÑ²YBı\0Fÿs\á«\r5şqùªU*e_!™4œ\Ïe\íûk\×m}c\ÓwO\Â\èW0úV\Øğf3iû\ë·\ß[½V\Û\Ù\é\nÉ¥\Ö8ÿ\åk7lai\Ù÷v\Â\èG0ú’\ZÜ \Z\Ê\Ùß¿»b\Û\îŸ\Æ	18FGF\ì\Ç\ÛwlÑ…°\Öw\Â\è70ú’ß¼\ß\ËW­\å\Z\Ş4k|’.%yı§[¾;šF¿¡\ÕB_òc¾\ß_±F½N\å;À\Üy˜\r\Û\Õ\ë7l}}ƒ\Ù\Ñ\è+0úŠ\Z\×\áBÁ.ÿp\Ãj5\Â.„\İMû{ÿğ\ãOşºÎ¬F¿ €\Ñ7|ø\ì\æ­Û¶U*2\á\n;\Âù\0\ß]½\æ\ßf\ÛQôRô…¯6Ù¸7õ\Ğ_RP\ËO€\İ¼\Zšø\Û?/û‹p\0½\0F\ÏSø*p_\Ì\ÎÙ³\ç/|¯’r!¬q\á\ï®]÷›v\Ğ^F\0£§©Õ˜¶üù\î=ß¨¿\Å/w¼Üº\í\×\Â\èU0zšºuû\ç•ü\ä+\àMh6ô\Ì\â¢=}>\ÍnY\èY0zš¶\Ôõ|U\Õ(ˆ75œ/\Ø\İS¶Y,23\Z=‰\0FORc©Y­w\î?ô—¢S\n¼-\rYüpó\'N\àĞ“`ô…¯f±.¯®Ú³\é\Ìx\Æ;S\èjb\Ö\Õ7ı6ª`ô½\Å5A¥2d7~¾\Í5}±gª~766\íÉ³\çlW‰B\0£§¨i\Ô2£k?ş\ä÷w¦\ÛQPWô\İ¬V«²IzG\"z†*U(OOû‹\ê3\î‹(\åóš\Ğ÷£\årY\ß\ÓÄ\0FOPøª\Ú\İnm\Û\İûS®\nÎµ?D#5”²F£aSû³\èŠF\Ü`ô]Z\î\ÚO?Y¡Àf\èõ°<|òÌªµ\Z]ÑˆG bv=?ñ\Â_×•†¤+\'iV´9 N´tˆ\ïzv!|o\ê‘_ût’–%U*5Â—É°A\âC\0#Vjü‚\r7X*Í¬gt‡&b\İø\ÄÁ	 ±Q\ã§\î\æ­R\É_\éˆKÈ¡[ºZ\æv\ë\î=¿\ì*q €\Ùl\Æ~¼uÇ†‡‡Ûİ¡\îç¹…%\Û\Ø\Úò\'‚„0º\0F,\ÔØ©™_Z²¢«€5.t›–»İºs/XtŒX¨0“\ÉØ½{SL¼BlTùnlmqy•+&¡\ë`t¯~]c÷üÅŒ5Z-&Á Vª‚u\ÙB\r‡p,¢›`tš8­Á¼;õ\Ğ_8ˆ“B·V­\Ùüük\Ğ\ÑUm\è*U¿¾SŸpVôU¿?\ß{`yW\r\Ó\rn!€\ÑU\n\\ı{>ı‚eG\è:.¼3³sŒ£k`tM8ö;;?g\Í&c¿\è-9\íıø[T¢k`tWU\ïƒ\ÇO}—\ĞKt|\Ëe[ZZ¦\nFWÀ\è\n5fš\à2;¿\à/	Gõ‹^”\×•º\\!U0º€\0F\×h‚Ë£§tñ¡w\é$Q\Ãhw¬!fD£\Ã8\Â\Ğqaõ»±¹e\Åb‘]¯\ĞÓ²™¬?Q\Ìe2tC££`t…\Öû>zò\Ôr\ìz…—N§lnnÁ´`¡tŒS#\Öh6mqi™\Ğ²¹¬=yöœ\ÉX\è(ZCt”\Z/¿ôhnŞ½7DE¾ \Ùú\Ó3Z\Ì5ª\Ñ90:.\ë³Y¿ôˆZı@¡[®Tls³H\0£c`tT*5d[¥²•\Êeµj~h h)\Òó™?nhtŒ	»Ÿ_\Ì\Îú{\ÂıDó—üqLŒN €\ÑQ¹L¶=–Æ¾\Ï\è/\n\İf«eË««0:‚\0FÇ¨‚X\ßÜ´F“¯ĞŸ2\éŒß½nhtŒ»ŸUı\ærY÷~û@\Ñ†ù\ÅEKg\èÁAô`t„*^\íxµ´º\êîµ”£ı =7C¶¼²\Æ\ZvD#\nS®V­\\*\ÑıŒ¾¦\î\ç¹ùyß£C74¢D\0#ra÷óü\Â\"\İG\ßSå»¸¢‰XaEDƒ\0FGd2i[\\^¶Œ>§Ğ­V«şD‰\0F\ä\Ô`5›M+n\ÑıŒdP¼²ºniwO74¢B\0#r\n\İõMkn7	`$‚†Ræ—–,“É´ö\0F¤T\ÕÂš«h¬:‘\Üp\'•­\í\'•ˆŒ\Èi\Ö\è\ÒÊŠ_C	$2·\ÑlY©T!€‘ª…-\ÖM\"At)Mó;»Q¡…D¤´ù\Æf±\Ø~HMÀZ_[÷\ãÀL\ÄB`Dj\È5R««k~$~n\Ãú:Ad`D\ÆoÀ¡F\ÊU	\ì\Z„¤\Ñ\ĞJ±X²V‹\ÙıˆŒH\r\r¥¬X*µß¦‘B²¨\n\Ş\Ú*rl#0\"£F©µİ´J…™¢H¦t:e[[ßˆŒHUkuk4\é¢Còø!–t\Ú67Š¾fˆ{E\0#2\n\İR¹¤\íG€\äO*·\Ê\n`q\ìŒH¨\ZPU°¹\é\Z§4‡’I!\\.Wl»µM/öŒ–‘ñTŠ.€i˜`µzİš­Vû=\à\İÀˆŒ¸\\©¸{– !™Tõ¶\\ø\Ö]{E\0#2\n\İZ­¦·\\K<$Q­^£\Z{F\0#jŒ¶}e\Ğ\Ş\'‘P)­u/—	`\ìŒ\Èhl¬Õ¢\ëÉ¦¡–J©\ê\ïjÁ^Àˆ„ª‹m»TH2Ş•*›\Í`\ï`DFp\0I¦ŠWÁ[­7dÁÀˆ„\Z£€®øÕ¨\×}4°Aˆ„º\ë`dC®\nVo\ã¿\Ø+²Zƒª\0É¦\îg\Ån³Ù°\Öv‹q`\ì	­%\"¡\àUt\Ğ\r$[£\Ùò\Ëİ½ €¿‰ü\Å@ }±w0ö,˜\êX]r\íÇ€DsÇ¼ş{A\0#CC)k©[\0š¥+\"{A\0#2\\!ƒB\Ñ\Ûb4öˆ\0FdX–A\á‡Z¶pÁ\ŞÀˆŒ6(\0?\Õ\äp\Çq!\"Û–aM$„ô‡;öˆ\0F$üLh*`mÀ¡‰‡À^pa\Ïü\î@\Ûf\ét°K0(€±W0¢¡\nx(\İ~H6U¿œlb¯`DBK2rÙŒb \éÒ©!K¹3ÿ±0\"“q\Üb-0,\Üõ-\É\Ø\Ğ\Ø#‘\Ğ8p6\í*`\Z%$œ‹`Ë¤\Ó:\èÛ\0\ï†\0F$Td³Yº\äpC¶\İjY6\çuz{°G0\"“Î¨*h¿$Š^d\æt²\É4,\ìŒHR\ÆR~I\r’K\Ç÷p>\Ï\Å°g0\"“\Ídı…ù$\Óu¯‡‡Gü\Ì\Í}\0\Ş­%\"¡ª@;ai8|H\"ğÈ°«€9Æ±G0\"£b@cc@’\r\ri\Âa\0ÆÀˆL\Ğ5Wğk\éšC…==¹\'š\Ø;‘Qğcc@R\ås9\æ: Eˆ„*^ğ}û¬\Õl¶’E°zy\ÔÁC4öŠ\0Fd‚\Æi8&Ü±‘Qw’\É&\Ø;‘\Ò\ØX&•¦:@â¨—§\Ñh\Úş}.€\İñ\Íy&öŠ\0Fdº\Z+˜!Šdj´š¶ol¬}|“À\Ø‘\Òş¸j üÛ„0’\Æ\Ó:¾¹\ê¢@\0#2\ê¢kj\"Ö\Öl6ıû@R\è„rlt„\Â‘!€)U‡´F£\Ñ~H\Û\ãtl3\Ë\Ñ €©°J\ĞftA#IÔ»3~\ŞD‡\0F\ä¼ûw&ª\0É «\í\Û7\Ú~\Ø;‘ReP«\×\í\È\áCLTAb\èd2“\Í\Ø\èğ\'–ˆŒÈ©š÷]u@¿S\Ü\ê˜?°_g˜0\"C\0#rj öZ:¡±B\ß\Óh¯&^M`r!\"E\0#r\n\İT*mcc#z\ÇW@?kµš6~ğ Va¢B\0£#\ZÍ†=r\Ä\İ7Y6‰¾¦Ê‘‘\Ë\çóş„ˆ\nŒ\Èù\r9š-›œ˜ğK7€~¥¸U\Õ;qh\Ü\ß¿ˆŒPÕ/\ältd\Ø5\\4[\èO\ê½Ñ¬şG\'Yÿ‹\ÈÀ\èUÁGvaÜ¤\ç}I\'’\ét\ÚoÀÁ²:D\0FG¨RĞ…ù›´Z­®\Õ@\ßQ\è›<bõ:³Ÿ=£k¦\î\Ûg\Ùl\ÖW@¿\Ñ$\Âc““ÁdB\Î\"1U­\Õ\ì½S§Ø”}G\'™t\Æ\äA\0£c‚\ÙĞ®‚8z„\0F\ß\Ñ1{|RsZ0:‚\0FG©\á\ÒL\èÑ‘Q&± ¯h÷«S\'OX£Ş ûA\0£\ã4\å\Ìi×±ú„–Î\Û\È(_@\çÀ\è(\ß\r­™¤Gû·i\Ì\ĞšÍ†:qÜš®\n\æˆE§À\è8…\î\ĞP\Ú&¡\Z}¡\ŞhØ™“\'ı80\İ\Ï\è§¬Ş¨\Û\Åóg­Z­¶z“B÷\Ì\É\Öbò:Œ\0FW¨!.\ìÀvB\ïR\Üj®Â™S\'ı=\Õ/:‰\0FW¨!Sõ{\á½3V¯\×Û½eÛ\î\Ûgc£šµOõ‹\Î\"€\Ñ5ZOy\ä\Èa\Ëòt\í¡\'i\ã˜\ß?\ï\ï©~\Ñi0ºF™\Ûp\Õ\ïÅ³g­\æ\Z8 —hhd\ßØ˜Ü¿ŸDtŒ®QE\á—$Mahô]4\äâ¹³~4\Ç&º\0FW©aS¥qş¬Æ‚Ù˜½A\Çe>Ÿó\'‡,=B·À\è*5l~å©“\î\í \á\â¦!‘O>x\ß*\ÕJû ó`\ÄB\İ}¿\ÑjÌˆF\Ì\Ô#3<<l‡O¸\ê·Eõ‹®!€\Ñuj\àZ­¦?v\ÌòyfD#^Uw2x\é\ã}Lø¢›`\ÄB™«İ±>qU°–|\0qPõ;~`¿Ø¿Ï¿\rtŒX¨\ÒPw\ßÄ¡ƒ¶o\ßbQ.W\ì³O>òC\"Ô¾\è6±QoŸºÿ¾ú\ìS+W\Ø#\Zİ¥­&Ï9eù\\>8¤û]F\0#V\Zÿ\Íe²vöô)?;\Z\èw\Zyÿü9«\ÕûE<`\ÄJ\rŸfBpñ¼fBº!\Ørò‚¿ø\Ç\âB\0#vj\05+ú\Ò\ÇYµÊ„,t–º›÷Ù©\ãG¹\âbE\0#vj\0¦M™°‰‰q¿\Ğ)•JÕ¾ú\âRûdğE|`ô…°\Z\Ä//}jµjnAt„º?zÿ‚¥Sik¹cŒ\âq\"€\ÑSTı~ş\Ù\'~S Jº\È\ØÈˆ=s\Ú_“š®gÄ\0FOQ\0kCüC‡\ÑÈ¨GE—\Âü\êóO\Ùø=ƒ\0FO	º¢«ö\å§ûŠ…®hD¡â©O?ú\È2éŒŸ„Eõ‹^@\0£\ç(t¾üúK+W¸:\röF3°“Çúµ\æ„/zŒ£R\İÏ££#v\á\ì{Œã©\ÚM¥\Óöù§Ÿø“9\Â½„\0FO\nº¢kvñü9¿Wtƒñ`¼\rg|ó\å\ç¾òe0½†\0F\Ï\nB\Ø5 _}\é\Ô!ÆƒñVJ\åŠ}õù%\Ë\çrÁ¸oûq WÀ\èi\n]-ùo¾òlØ¦Á\Ğö¦\Ú_ü\È\Ä\ã¾\èY0zš\ZNU/š½úõgŸX¥\ÌU“ğ\Û4\éj\ßØ¨}ôşy?û™ğE¯\"€\ÑóÔ€ªŠ9ìª™>¸À\Ìhü*¬e³Yû\ã\×_¹ğ\å*G\èm0ú‚\ZRm p\æ\äI{\ï\ÔI6SÀ¿iµ´|­iÿù‡\ßùÊ—9\èu0ú†BX\r\ë\Ç¼o\ãX½\ÎõƒP\Ø\Ö\êUûó7¿óö\ĞûT¿\èu0úŠ\ZUuAÿş\Ë\Ïmÿ¾1B>lµd\íO\ß|civºB!€Ñ—T	ÿÎ…ğ\ØèˆŸtƒÁ¤ğ­¸²ÿøı\×V\È\çüzq\Âı‚\0F\ß\ÒYüıW–\Ëf}·#‹\ÂW½!øú+.ø1\Âı„\0F_\Ó\Å\Õÿü°\áB\ŞÏ”\Æ`ğ•oµjü\İW~\Ék}Ñ`ô9ÿ¹†ø÷_\Ûş1Æ„ó­\Õ\ìO\î9\ß7Jø¢À\èsjx·}wô¾ş\Òö\ïó» !™Z>|\ë~¶óğğ0á‹¾F\0#‚¸\\®\Ø7_\á/\è¯\îI$K«\Ùô·ÿñŸ°l.Ç˜/úŒ\äpmq¥T±O?ü\ĞŞ¿p\Î2’Aa›\Éf\ìşùO\îi.WIø¢\ßÀH\×(Wª¿[\ÖWŸ}j¥rÙ¢iK\ÉöÛŸÿğ¿0\ë|‘C\Ó3³´NH…n\ÖUL\Õjİ¾ûáš¥\\ƒN§\ÛE?–U\í\â¹÷\ìıó\ç\Ø‰C\0#±Ô€§S)Kg2v\å\ÚM\Û*nY.—k½LU®&X}y\é›8t\È\Ït§\êE\ÒÀH4…°\Z\îB¡`÷>¶GûÙ³4\æ½KK\É\Ô{¡5¾)w\Åd+$Œ  \Î\çs¶±±eWo\Üô\İ\ÑtI÷=Gš½~òø1ûü\ÓO¬T*\íœ@ID\0c`ø.iºªª~üù¶-­®Z!Ÿoq\Ò\ÎÛ­mûò³Omü\àºœ1`”.iW\r\Ï-,\ÚõŸnù\îi£ûÂª÷ğ¡C>|µ¼ˆ%F0\ÒN5<”²›·\\5¼¢j8G\Ã\ßEZR¤\Ù\éŸ~ü¡M9\ì÷õ¦\Ëƒ„\0\ÆÀ\Ë\çr¶¼ºf?º \Şvÿ²™lû#\è\Íp\Öv¡\'³O>¼hõU/ŒV\Ãw»ÿ\è±=~úŒn\éº›k662lŸ_ú\ÄF\İ}­V§\ê\ÅÀ\"€\'\\6\ã7üÿñ\Ö][Z^ö\ë†5i\ïN[U¼ºnó\Ç\\´c““~›\Ğ\Ö6;Za°ÀÀ.;Aì‚·X,Ú­»÷mckË‡Aüvô·\Ô\Z^50^8o§N÷›k\Ğ\İ`\à\n\\M\ÌZ^]·û\Ù\ÚÚº\ny‚ø5ô·\Óf\Z\ZOÿ\à\Â9;}\â„5[-¼\á	\0øUş…\ÑbM\Ô\Ú,nÙ{S¶¶¾nWkŒx\Ğ\Ãdw †“«ô·:{æ”;sÆ¯\çUø¼À¿#€7V\Ä\êŠ\Ör™\ÇÏ\Ù\ÌÜ¼{\rY6“\èp\Ñ&\Z\êj\Ş76fÏ¾g‡|µ«\Çô÷!vW#€7¤…­‚X\ß\ìü‚\ã\çş²‡ªü\Òaë³“>ú\Ï\×šşº©›Y©N?n\ï>ic££V­\Õv>N\Åü6xaÀø\î\é|ÎŠ[%{ú\â…\Í/.YµZó³©ÿ%Œû0Ü¯\ì7x;U?©\Êİ\Û\é\Ç\ì\Ø\ä÷˜«v›.Œ[„.ğ6``\Âp\r»¢\×77mvnÁ—–­V¯µ÷ŸÖ­÷\Ã\Øıjÿºªò\ÕÅ¬\äƒö\Ûñ£“v\äğ!Ë¤3şqu5Á¼=ˆH¬ºe2Á6—[[[¶¸¼bó.Œ\×76ücº\Ô^øy»ƒK_/»\ëÿS^:	\Ğ\Ï~¼·å»—5ü\ÈÄ„=2a\ãú	-#R(w\ëw’Œ\0:`wk¿\ãlV\Û[n\Û\êú†d-i*–Ê¾\ëV\É^¥iw ½n\á÷…!zùó_oHAª\Ê-WÅ¦]E;\\\È\Û\ØØ¨Mº\Ğ=th\Üw­7\\û+¹¯{ù\ç\Ø\è‚İ¬\åK\n[½ğ4^¼U,ú\êxcs\Ë_¨V«ùPl¹»¯\Ğÿù\ß~;o‡÷\í`\İ²ºóÁ©úùî±¡”ºÊ³~\Â\Ø\ØØˆ\í\Ûo÷\ï³\Âp!ø\Ü\ç)˜©r\Î#€.{9\ØvB9TÀ\Íf\ËOv\Òr\']1Hkkı­Vµj­¾«rUPª:u\İşút*\í¿‡Æ£µiˆ*o\Í\Ø\Î\æ2–\Ï\æ\\U›÷Õ¶~´¾\Şw\İ\Ğ.\Ğ0\Ğ\ÂP–\İÁ¬·ô\İù\ÊYµ\Ò}<Ü“KŸ\ã¿Cûû\èû…`\ìpoû\Ï{\Å\Ï\Ğ}0\ĞGş%P_ƒpz›\Ú}\ÄW\Åox\Ğ\Û` \ì®l\Ãn\â\ÈoÁ·w‚÷Ä‹.h ƒ^t»«Sÿ\ÖK\ëN\Û~Gğ\É\î¦\ïù¯~Ê®ŸõÒUüú_eW‡Á¼\Û\ë~_\0\Ñ!€w°;¨^ú¸\îÓš\Ù\ìşk|ı\'[76\Z;[8\ê\í¦»\ÕôX½iõF=¸˜\Ö\ßúµHÁ\Ò ı\Èm÷@Ë¿aş~\Û=\î\'gùŸ«oüılı\Ìğw\Ò\Ì\çL\Ê\İrË¦3–\Éf,—\ÉZ:“¶¬{<\í\Ş\×\æ!™LF?\Äÿ¬p)\ÒË“¹Â·w?&ú9\0\ŞüŠ\İ³;\\‚0\rN7T\î¦%BZÃ«›.J ¥CZJ®\í­¹W\ëÁ\Å\n\ÜwtÿÜ½¾‡j\Ù04\İMúr”ù¯iÿ/l·ğ7v™ıoŸ¨‡ô{†®0û¥*\Ön™\Ù\\\Î/]\ÒZ\áBÁ\İr\Ë\å²\î–s÷º\í,g\Ò×·¿\ï/Kšôıƒ\ïJ0¯F\0\Î\Ëa»°zÛ¥R«¹\í+S…l¹TöW?*–JV®T|\Øj½®¾‡¾‹¢\Õ¿d\è—\ï~\ï\×\Ùı»„\Ş\ä\ëvó\ß\á¿OøóıOû¿)\é\à}ÿ\ß\çŠkm\è¡uÆ£#\Ã62\ìn\í{·\\?KŸ¯Pö\Õzûz\Ûÿ& i`”— ¸™¯æ´‰…SU\ë\æÖ–m¸[±Xò[FV\\Ğª\ËX_¯µ¸»«\àú^\í7_ş\Ü~×…\ä\îK\ØU­JX—\'\ÔWd\Ü\ßsØ…±nc£#v`\ß>u÷#…aÿ7V×»º\Ùõ­ôµ¯û™@ÀH¬°Q÷Í¹\Zu÷?\í8¥}¥\áª\Ö-W\Ånnmmm\Ãî†«l+ş\ë‚1S²\í€\r‚úßƒÁÿ}¬ış ñ]÷\ßÿk—ğ\ï¯{?\Î\í‚Z©\ÑQ…ò˜8`û÷º\Êy\ÄW\Ìúì¦¿¬¡\İ©ÿZIE\0#Q\ÂF_¶ªS®\ŞV\0]¸nl¬\Û\Êú†m¹\Ğõ{.»ªM[8ª«9¬jCş;\0{²ûùé±°[Z\Ûaª«>\ïxll\Ì\Üo÷\í÷!­¥\ÏmW\Ù\Âó¤ €\Ñ\×\Ô(«Aö7÷¾fñj6o¹Rµ••U[Z]µ\ÍM+—«¾{T\İ\Ì~fr»\ï	\Û\î	Ÿ³P¬ºW·´ö\ÂV7¡Pğ]\×‡\Æ\í°»io\ëp¹¾BŸï¿—¾˜\ç\r}ˆ\0F_	\Z\\\×Øºÿ©bU\à\ê±R©dk.h——WmÕ…nµ^\Â8v_¥€\Ş¶\îó…°\í/?\'z\ß?\â\îµK¡›\Ëfl|<\ã\í*YË®ô1U\È\á\×\é\É\æ™E? €\Ñó\Â\Æ\Ùw)»@Uu¤%=+«k6¿°h«\Örpp±‚à¶»!\'hû\×\î\çÏ‡²»©JV÷µ†\î\ßo““G|(kY“»\Ú\Õ1\Ï=zŒ£†S\Ôx*L³®òQ¥³¼²ló‹+¾\Â-–\Ë~\ÜVU®>owCKÃ›L»	C6˜\Şò3®°£G¸ûƒ¾§Äó·?O8.\ĞK`ô„İ¡©nc\íĞ¤\å@\Ë.t\ç]•»¶\î?\Í\ëK¾²û\ë0€¬\í\ç?Z­\ÉV—ô¸«;f‡\'\Æıú\ä`×±¦ÿ\\ô±Ù©J\\•«mÕµ\\©UmvnÁ\æ­TrU®û˜&M\é^h8ñ[v\naM\èjµš>€;j“‡»·~B^ğ±`\ì˜c\nq €\ÑUaèª‚\Õx®vRÒ¦/ffmqeÕ‡n\ÆnZ{;aÃ¨¯¢‰Ä»9\í·]w¡;2R°#v\Òò~W%\Ë\ÑctŒ\Îs\r \Ğv\èj™f-¿p•\îô‹«\Õ~\áğ¢Á—P\é\":»\'½­°Uğj­ñ{§OÚ±£“¶ot\Ô\ê.¤\ÃI\\\è4Va\è\Ö\ëM››Ÿ³\é\Ù9¿½£\Ü\İh\è£Z\æ\Ôr7­;>sRa|\ØrÙœc5aŒN!€©0t5fL¦\ÊØŒÜ™¹Y[Y\Ûô\ã¼\Ùö\Ìe W‡­.¸\ÑğWvR\×ô\é“\Ç\í¸«ŒÂš¼E5¢F\0#a• \à\ÕzL\ë>›™±\é\éY¿\Õcººé€£	C¯	a\én¾;Ú…\î\Éc\Ç\ì\Ìé“¶l\Ì_b’ªQ!€±\'aC¤€Õ´°¸dOŸO\Ûf±¸S\ÓL¡\ß\ì>Iw\â\ÒeÏ>m\Ç&«‹š \ÆÀxk>tİ½&Mò9?ûø\Ùs›_ğS‡Ë†€¤P\Øj±W!|\î\ÌiµJµê»­}h\Æx0\ŞXX\íjÀL6c««kv÷\ác\Û\Ø\ØğaW\è\Ò\0!\éô:P7´‚W[a^<\ÖOL¸Š¸\î\×‡¯\àu`¼VØ h\ÛG-š™Ÿ·GOŸùª4\ŞKµ‹A¥ ®\×–\Ëe\ìâ¹³®2ô•°¿bAŒ\× €ñ«\ÂD›eÈ£\'\Ïlzf\Æ\ÏÍµ·„¼V4AK½C\'O÷a¬W‡#ˆñk`ü›°Á\È\år~³‚‡OØ³\ç3–\Ï\çü\Ú]\Z\à\Õô\Ú\ÑF\ÕZ\İN8æƒ¸Ï»÷k1ş\rŒ;Á\ë*\Şz£n÷¦ù\Ëıi[Cx3\á\ì\é\ã“G\ì\â…ó–w¯+*b\ìF\0\ã_*^5wLù‹!d\Ò¾L¬Ş•^[~œØ\Ğ=<ixÑŸÌªg‰ <ÀvW¼\ê\"›zü\Ä\Üñ\à»Ì˜\ÑD\Ç±»U*;qô¨«ˆ\Ï\ÙH¡@\×ô€#€”^ô\n^\İßzh3s~¿fm s4F¬\èjL^<\ï\×\Ók}±Äƒ…\0 á™¶ª[­\ÛUÅ«\åDš¹\É\ä* »4Ü£0~\ïô)ûğıV«\Õı¸1¯\ÂÁA\0„m¾ÁU‰Tõ\Î\Î\Í\Ù\Ïw\ïû \ÖxÁ\ÄC\'\Å\n]\í9ıñû\íô‰\ã~|X\ï¯\Íd#€.¬zµ„hyy\Õn?˜²j5\Ø@ƒ7\Ğô:U7´Nˆ/}ô¡MLŒ»\×)\ã\ÃIG\0\'Tø\Â\Íf3\Öj¶\ì\æ\í;¶¼²\ê\'Xñ‚z“^·\Ú\ârü\àû\â\ÓO,›Iûñb‚8™\àÒ‹U\İ\Í\nß©GO\ì\á\ã§V(3›ô>-]*—+~Ÿ\ég\ßóc\Å\êª‚89\à	Ï’5Ájyu\Ínİ¹ku÷¢Uw3€ş£n\é”;™¾ô\Ñvdb\"¸ò\ÕpbÀ	¡¥.\èR»ñó-ÀºT /T ¿éµ­\à=tğ }q\é¿jA;jñ\Ú\îpŸÏ†5¶û\ìÅŒİºwß†\Ûi\0H	\ÄJ\Õ>¼xÁÎŸ=\ã7õ\Ğ\æqÿ\"€û˜¯z³Yk¶šv\í\æOV,–,—Í©P\Ú=kldØ¾ø\ì\Ò\ÎşÒ„p\"€ûPXõ\Û\Óg\ÏıNV\Z\ç¥\êƒªam\Üqñ\Ü9{ÿ\Â{V,•w\Úô¸\Ï\ìT½†]½ù£•\Ê\ÖôJÕ°†Ÿ~÷\Åg~­¿B™¶ À}F«\Ï\ÌÚûST½\0|5¬\ëxñœ=}\ÚO\ØB €û€ª^m!—³\Ë7~´Õµ5¿Ôˆ3]\0k#*®\Z\Öª†¦_;L\Ñ\Û\à¦\àuO‘\åóY\Û\ØØ´+.|uµ\"m²\0/k6[.|\ëöµa-[ò\ÛYºqo\"€{T8¡B;XİŸzdOMû1^H\0~‹\ÚuCŸ=}\Ê>¸x\ŞwOo·Z´=ˆ\0\îAz©\ÊU·ó\åk7¬T*Y.—k\0^O²tÿÇ¯¿t5ppbB¸·0ƒ§\Ç(|5¾[t¡ûÿşöi2\ÂÀ\Û\Ê\å²şš\Ãÿ×µ#\ÅbÑ·+Á°zpQ7ó³\é»{ÊŸ½r\Æ\n`/ºº©\ÖŸ;wÆª\åŠkùiWz\ÜôQ\Ğ\n~\çù\Å%¿¶\0¢¢?x\ĞşğõşJKlc?8f\áx¯^ÿ¸üƒµZMQn\0ˆšº¤‡†Rö§o¾ö\íNğ>!Æ€c¤ğÕ®V¥r\Ùş\ë\Û\ïô\á cÔ¾(oÿö\Ï\ïmcsÓ·?ŒÇ‡\0‰zu3//¯\Ú\å®³«€®P;£‰W®ß´\Å%\rw\á˜\Ğ\â\ÇD\áûøùs»şóOV(\è\Ğ5joF†‡\íæ­»6õø±\rò.„\ÛD\×À1PøŞ¾÷À>z\â^#\íG »F†~“Ÿ?\ßño£»\à.\ÓY§6×˜]X°<3\ÄLK—VV\ìû®ûµ\Â\è¸4¾¢fMxø\ïo¿³­bÑù@/P{¤v\é¯ÿüŞ²~¢\Ö\ã\Â]@\0w˜bMzH»ƒú\Û\ËWı´f:\è5j—\Ô^)„u\Ñµ[„pgÀ†¯\Î.5\í_\áË•Œ\0ô*µWª~ÿÛµWi÷¶\Ş\×òHt\Ü!\n\ßt\Úıy‡\Ìşò·oıAMø\èu\nİ”k¯şò\ï‚\"b(M%\Ü!pøğuq«µmÿøîŠ¥\\g’\0\Ğû\Ô^i,øo\ß}o\ÍV\Ó„pôH…ˆù3Fwğ¹\Ûß¾»\ì\Ş\ÆR\0 Ÿ¤RC–\Ë\æ\ì\ï\ß_q\ÅD\Ë÷\è‘Á\Ñ\"\"†¯Ü¿~û½Ÿõ¬· i\è\Ì\Ïaq\Å\Äv+e*\á\èÀ\n\Çy¿ışª?[\Ô8\n\0ô3µk\êşû\å+¾}S‘AGƒ\0.\'ø¾º\Ì\İ\Î\0’B\í™\æµü\İU\Â\ê\ÙS(c\ïH‰ˆ\ä³9\ßM£\Ë	2\Û@Ò„•\ïß¿¿\ì/æ€½#€÷h\Ûı\ÓömWnŞ´j­FøH,µo\ÍF\Óşyùª¿ˆö†\0\Ş\r†\í§\ÛwmssË“\0@’)„+Õª\İøñgÂºŠ\ãÁ\ïŠ\0~G:\èTùN=~js‹~\\\0Ú»\Å\åe»?õ\È_İ~7ğ;\ĞÁ¦jW ®¥©³@\0$ºšÛ“\ç\Ó63?\ï™~{ğ[\ÒA¦\É\Z\ï½ùóö\0ƒHíŸ†\à\Êå²¿€!üv\à·†o0ÿŠ¿&\Óñ2-¿ü\ç•k\Öl¶‚å—„ğ#€\ßB¸+\Ìwºp5\á\0A»˜\Ë\Ú÷×¯[6›\Ñ\í\àu\à7¤\êWc?ß½\ïg\0ú3=\0€oµ<\é\æÏ·mx¸@Wô\"EŞ€&\Ù\Í\Ì\ÍÛ¬»©\n\0üBô_\\^±§\Ó/|I¿ü\Z:†tv×¨7\ì§;w­g\0x•|.ow\ï=°R©\â\ç\ÊÂ¿\0~\r\rgøñk7¬\à.\Æ7\0\à\Õ\Ô<j¨\î\êÍ›–qU0ód~üü¸o.g7~ºe\Íf\ÓU\ÂL\0ğ[ºª{¯º¢…ñ\à\ßF\0ÿ\n4™L\Ú\æ—lqiÅo\0\0^Ok‚\×67\íùôŒŸ?C¿\Zü+t—Ne\ì\æ­\Û~\É\0\àÍ©÷ğöı)k¶ZtEÿ\nøt¶¦^4¡ƒˆƒ\0Ş\Ú\Íl&m\×nü\Ä~Ñ¿‚\0~‰u™L\Ï\Î\Ù\Úú&\ë}\à\é\ÊI\ÅRÉ<\ÎÒ¤W ]^¢³¶V\Ë\ì\Îı®úe½/\0\ì….\Ş\çÁCº¢_\0\ŞEgg\Ú\×ô‡›?ú«q°\0À\Ş\r\çóvù\Ú\r?Ÿ†*øp›\n\ÍÜ›_X´Í­-º \"jOuÅ¤3s¾¸!„¤L›ª]Wh¯gM¼\0DG]\Ñw§º¶6E\ïb\ì\èlL\î=|h\Û\î\0DK\íj\Ê\İ~¾w\×9TÁ°§£R©\Úô‹Y\ß\r\r\0ˆ64š[°b©ì»¥=„>€u\0Œ\ì\æ\í;\ì]\n\0¦5Á\Ú\àH]Òƒn X\á«q\ß\Ùù\Û\Ø\ÜôW\ï\0\0t*_UÀ/f\çüv¿ƒ\\t\â¨\Ú\ÕN-÷§ù³2\0@\çi…ùh{6€ƒ\ê7e³‹V®\Õ\èz€.Q{\Ûj´lzf\ÖRšw3 UğÀ°€L*m÷<´|–¯\0 ›2ÙŒİ¹\ï\Ú_]in@ \àp\ì÷¹;ûb{4\0\è>_¥S6õä‰Ÿ=ˆcÁ[\çrY»7õ\Ğ\ï\Ê\0\è>\ï\ãgÓ¦h¡`ee³š\0ğ\ÄR©Á\0\0\0qRû«\Í9¦?\È-*.€ı\îÎ·¿˜ñS\à\0ñ\Ñp .ÿ:ˆ»T\0\ë\ìJk\Ğæ——­^oPı@\Ì\Ô«m\Ö~ƒvœÁú¯uOt.“±©G¸\Ö/\0ôu?\ßø\Øòùü@uCT\0k¬aym\İ*\Öı@¯P{\Üj6m~~\ÑwIJL\0\ë	\Õ\Ù\ÕC\rög™ù\0½D“c>\r&c\rŠ	`a•\Ë%[ZY¸q\0\èuj—76‹~_şAi£\â¿R\Õo°\Ş\ì…\r\Øó\0zQ.›±§\Ó/fI\Ò@°ª_ÿ.,.Rı@Rû¼¸¼b­\íÁØ¡p`xem\Íjµú@<©\0Ğ\Ô>o·Z®XZqaL\0÷=ucøn\ç/üö“\0€Ş¥\á\Âg\Ó\Óş‚ıI\ï†N|\0\ëŒJ›n¬º\n˜\ê\0z›º¡W\×7b³¤D°Î\Ò\îÉœ_ôO$\0½O%=~ú<ñWIJ|œ\Í\å\ì\Å\ì¬_\Ü\r\0\è}ºHÿ\âò’Ÿ<›\ä\Â)\Ñ¬\'®\Ùh\Ø\Æ\æ³Ÿ O(x‹Å²Uk\Õö#É”\èTR\è\Î-.ún\0@ÿH§S¶°¸œ\è­)Àz\Â2î‰››W\0\Óı\0ıDÁ«+$%¹€Jl\0«û¹\åBx}cƒ\ÉW\0\Ğg\Ôno•Š‰Ş¿!\Ñ¼¶¾nf“\0€>\ã\Û\ím³•\ÕU¸Ÿø\î\çL\Æ\æ\ê\Ê\Z\0$iµ\ã‹K‰\İ:±°¶1\ÓbnM\ÄJö^*\0Lš\r­\n8©\ãÀ‰`uWhÜ R	¦°\Ó\r\0ıÇ·\åõº•+•DvC\'6€µöW•oR\Ç\0`h5\Ë\Ê\êš\ï\ÕLZwf\âX\ãÁ^¢k\î‰Kl;\0$^8Ÿgee\ÕÒ©´\Ë\ßd%p\"*›\ÍØ’{Â¨~ mø­&t9iòXO’;k\ÚdûI\0\è{j\Ò5\Üh$\ï\êH‰K(\rlK\í÷\0\0ıL¡«®\èb¹L\0÷º¡¡”¯~¹ú\0$ƒ.+\ë/ª\Ó\ã¤HT\0\ë‰r%°(ÍœK\Ò\0ƒHÍ¸†7·\\\0\'¬°J\\¬3%uUx	\ë®\0€A”v…\Õ\ÖV\É\ß\'I¢Ø´¶­T*ù·‰_\0\èoª£¶]k®‰X­¦{+A…U\â*\àf«e\ÕZ­ı\0 	šÍ¦U\ë\Éj\ÛV›U«5w–\ÔJ\ÔY\02ß»\éş•\Ê\ÉÚ’2ağ«~«„/\0$ŒZuµ\ïI’¸1\àjµ\ê\×\0’C3¡u‘$IL\0kÉ‘ r\ÅUÀ\î\0*°*®ÀJ§S‰Ybš¸1\àJµF4\0$¸\\±\ÔPrb+q]Ğ•ª{‚¨€ Q´°Tp’\Ú÷¡\é™\ÙD\Ôò\ê’.\ì¿şş­U\ëÚ´»ı\0@\ßó;º´ú?ÿûY)!ûB\'&€EOH±½	\0 YZ­–ú{¸ù§„\0€DJJøJ\â\0€~Àl%\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\Ğufÿ\Ü\ÑûÑ‚dPğ\0\0\0\0IEND®B`‚','07 58 75 29 55','mosefsanogo366@gmail.com','Second Cycle','Master'),(2,'Sanogo','Mohamed','Masculin','2000-01-21','Bamako',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\à\0\0\à\0\0\0}Ô¾•\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0\Ä\0\0\Ä•+\0\04{IDATx^\í\İ÷w[×¹\æñ—\è,*%ª\Ëj\îrMœ\ÜÜ¬53k\ÍóW\Ï\ä\ŞÇ–d\Û\êT§\Ø;‰^8û\Ù‡f\Ù*<À¾	Vû9\ïnghzfv\Û\0\0@W¥\Ú÷\0\0 ‹`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\Ğã¶··÷tĞ›†¦gfy…1\Ú’CCC\í·‚·\Ã[*¥\Ç¹w_¥/ôo_½\í\Şr·¿|w\0·ZÁg´Z-/\á\Ïô\ßI?Ã¿ ›` \ËvÂ¯|©T\Ê\ßô~\Ëf\Ë\êÕš+«\ÖjVs·Š{_÷µz=R}\İ\í¦ş?ø^\nç¡¡\àûd2i\Ëgs–\Ë\ç,Ÿn#\Ã÷~Ş²\é´ÿy\Òt\ßk\Û\İôswÿ^\0:\0:\ì_W\á\è0É¸\Ç[¶¹µe«k¶¹¹i\ÅR\Ùm\Õ\ê\nY÷5şóõ\ÏkJ¡\ènşş\r\èg¾|S%¬/Ï¤3>˜‡ó\Û7j\ãöÛıû}Hûğw?_¿qøu\îû¯-ˆš‚\Ë\İ\í®«FS®2-»p\İ\ØØ°\å\Õ5[ZZq\ïWü\ãi÷ñt»\"\Õ\ç\ï¾Yˆ»„Ÿ÷ò\ã\Îo}\àÓƒ€m4›\Öl4ı\ï© <2a\İı\Øè¨¯”\ë\ÆN÷µ>ÿ×¾/€·C\0	\Ã1\í*\\U¹z\İ\î\ìü‚-¯­[\Õ°*\Útú—.\çPÁüº¿ü\\ıº©[º\Ùlùÿ†}®B>69iG&Y6›õA\Üt\Ç\ï$\r\ìADºe³?37oóK¶\æÂ·Q¯û\à\n\Ç\\w‡]¯˜\Z‚İ¿Q\È\rW+x\ÆG&&\ì\äñc622l\ÕJug\ì¸\×ş[€~@\0oI#>t3.t]¸®¬®\ÚôÌœŞ… \Ö\ã\î\ã½¸ob÷\ï­V\àj2\Ø\èÈ¨=u\Â&\'XÎ`hr˜>—0\Ş¼ŒªYU»š¬ôôù{1;\ç«\ÄlV³‹\Ó;Ÿ—\ä \Ò_£=6<~ğ€?û8Œ\'\ÓE\r¼x\r…‰úf5aj¸·Õµu{ôô™-,­¸\n8\í+^…>M)wô·\ÑMp!Ÿ·³gNÛ™“\'\\7üI	Aü:øax¨\âU7\ë\âÊŠİ¹7e¥J\Ù\n¹œÿ\áòı½4cZğ9\Ä\ç\Ş;\í{ü²&‚ø70ğ\n\nU¶\Z\ã_\\²[¥R±¬^­\ÅÕ‹†8y5ı\í\Ô­u\Î\'·g\ßó3¿\Î1ğ\ØE¡Š7Ÿ\Ï\Ûòò²İº÷Ào¡M*·£¿¥ª\áz£igOŸ´.^ğ\ã\Æ\ng÷Aşx0\à„•™‚¶X*Ù·\ïú]ª4®IP\ìM\Ä\ZV+Œ5f¬\Çø\ÛbÀx\nu5\ë…p\ë\Ş=[XX¶\\î—µ»ˆ†ş\Î\ZÖº\èK}d‡\Æø½®Ã“`\ĞÀXjøuƒB¾`\Ó/f\ìöƒ–NgüP\èı\İÕ­¯İµ¾¼tÉš-U\Ç\rB‡\0\ÆÀQ\0hU.›³r¥b7~ºe%wŸw•!\Ğ=\Ú\î²Z¯Ú§|`§Oğ¡L5ŒAB\0c „\r¼\ÆzŸ<Ÿ¶Sü•\èn‡\Ø\ï¿ü\Ü=2D5ŒA\0c`¨±\×‘rõúM\Û*•,§\Ù\Íş\ÄI\Õp£Q·O?ş\ÈNôW¢\ZF\ÒÀH>×»–\ÜW½s‹¾\Ëyx¸@\Õ\Ûc¸\Õj\Í\Æ\Ç\Ú\ï?ÿ\Ìj.µ\Õ%!Œ¤\"€‘h;]\Îùœı|\ç¾\Í\Î\ÍY¡Ph½H]\Ğ:9úıW_XÁ=oõ:]\ÒH&‰å»œµO³k\Ìÿyùªk\Ôô>=w•Z\Í.}ø:q\ÌJ\å\n!Œ\Ä!€‘HjÀ\Õ\å¬kò^¹~Ó¿M—sÿ)—\Ëv\âøQ»ôñ\ÇVe\\	C\0#q\ÔHk«\é\ÙY»}o\Êwc\Òh÷/õ\\\ìõ]\Ò\á%y>‘”Hœ‘\áa»÷ğ‘İ¾ûÀ_>Æº¿\éJT%W	ÿõ\Û\ï|/†.’¡“, \ßÀH†vƒ¬\Ê÷\ÊõöüÅŒŸ\éŒd®¹œ²¿ü\í~\Ã¿u(!Œ>G\0£ÿ©!vU®®`ô\í•k¶¾¹\å\Ç|‘,\Ú6T\ÏñwW¯\Û\æVÑ²YBı\0Fÿs\á«\r5şqùªU*e_!™4œ\Ïe\íûk\×m}c\ÓwO\Â\èW0úV\Øğf3iû\ë·\ß[½V\Û\Ù\é\nÉ¥\Ö8ÿ\åk7lai\Ù÷v\Â\èG0ú’\ZÜ \Z\Ê\Ùß¿»b\Û\îŸ\Æ	18FGF\ì\Ç\ÛwlÑ…°\Öw\Â\è70ú’ß¼\ß\ËW­\å\Z\Ş4k|’.%yı§[¾;šF¿¡\ÕB_òc¾\ß_±F½N\å;À\Üy˜\r\Û\Õ\ë7l}}ƒ\Ù\Ñ\è+0úŠ\Z\×\áBÁ.ÿp\Ãj5\Â.„\İMû{ÿğ\ãOşºÎ¬F¿ €\Ñ7|ø\ì\æ­Û¶U*2\á\n;\Âù\0\ß]½\æ\ßf\ÛQôRô…¯6Ù¸7õ\Ğ_RP\ËO€\İ¼\Zšø\Û?/û‹p\0½\0F\ÏSø*p_\Ì\ÎÙ³\ç/|¯’r!¬q\á\ï®]÷›v\Ğ^F\0£§©Õ˜¶üù\î=ß¨¿\Å/w¼Üº\í\×\Â\èU0zšºuû\ç•ü\ä+\àMh6ô\Ì\â¢=}>\ÍnY\èY0zš¶\Ôõ|U\Õ(ˆ75œ/\Ø\İS¶Y,23\Z=‰\0FORc©Y­w\î?ô—¢S\n¼-\rYüpó\'N\àĞ“`ô…¯f±.¯®Ú³\é\Ìx\Æ;S\èjb\Ö\Õ7ı6ª`ô½\Å5A¥2d7~¾\Í5}±gª~766\íÉ³\çlW‰B\0£§¨i\Ô2£k?ş\ä÷w¦\ÛQPWô\İ¬V«²IzG\"z†*U(OOû‹\ê3\î‹(\åóš\Ğ÷£\årY\ß\ÓÄ\0FOPøª\Ú\İnm\Û\İûS®\nÎµ?D#5”²F£aSû³\èŠF\Ü`ô]Z\î\ÚO?Y¡Àf\èõ°<|òÌªµ\Z]ÑˆG bv=?ñ\Â_×•†¤+\'iV´9 N´tˆ\ïzv!|o\ê‘_ût’–%U*5Â—É°A\âC\0#Vjü‚\r7X*Í¬gt‡&b\İø\ÄÁ	 ±Q\ã§\î\æ­R\É_\éˆKÈ¡[ºZ\æv\ë\î=¿\ì*q €\Ùl\Æ~¼uÇ†‡‡Ûİ¡\îç¹…%\Û\Ø\Úò\'‚„0º\0F,\ÔØ©™_Z²¢«€5.t›–»İºs/XtŒX¨0“\ÉØ½{SL¼BlTùnlmqy•+&¡\ë`t¯~]c÷üÅŒ5Z-&Á Vª‚u\ÙB\r‡p,¢›`tš8­Á¼;õ\Ğ_8ˆ“B·V­\Ùüük\Ğ\ÑUm\è*U¿¾SŸpVôU¿?\ß{`yW\r\Ó\rn!€\ÑU\n\\ı{>ı‚eG\è:.¼3³sŒ£k`tM8ö;;?g\Í&c¿\è-9\íıø[T¢k`tWU\ïƒ\ÇO}—\ĞKt|\Ëe[ZZ¦\nFWÀ\è\n5fš\à2;¿\à/	Gõ‹^”\×•º\\!U0º€\0F\×h‚Ë£§tñ¡w\é$Q\Ãhw¬!fD£\Ã8\Â\Ğqaõ»±¹e\Åb‘]¯\ĞÓ²™¬?Q\Ìe2tC££`t…\Öû>zò\Ôr\ìz…—N§lnnÁ´`¡tŒS#\Öh6mqi™\Ğ²¹¬=yöœ\ÉX\è(ZCt”\Z/¿ôhnŞ½7DE¾ \Ùú\Ó3Z\Ì5ª\Ñ90:.\ë³Y¿ôˆZı@¡[®Tls³H\0£c`tT*5d[¥²•\Êeµj~h h)\Òó™?nhtŒ	»Ÿ_\Ì\Îú{\ÂıDó—üqLŒN €\ÑQ¹L¶=–Æ¾\Ï\è/\n\İf«eË««0:‚\0FÇ¨‚X\ßÜ´F“¯ĞŸ2\éŒß½nhtŒ»ŸUı\ærY÷~û@\Ñ†ù\ÅEKg\èÁAô`t„*^\íxµ´º\êîµ”£ı =7C¶¼²\Æ\ZvD#\nS®V­\\*\ÑıŒ¾¦\î\ç¹ùyß£C74¢D\0#ra÷óü\Â\"\İG\ßSå»¸¢‰XaEDƒ\0FGd2i[\\^¶Œ>§Ğ­V«şD‰\0F\ä\Ô`5›M+n\ÑıŒdP¼²ºniwO74¢B\0#r\n\İõMkn7	`$‚†Ræ—–,“É´ö\0F¤T\ÕÂš«h¬:‘\Üp\'•­\í\'•ˆŒ\Èi\Ö\è\ÒÊŠ_C	$2·\ÑlY©T!€‘ª…-\ÖM\"At)Mó;»Q¡…D¤´ù\Æf±\Ø~HMÀZ_[÷\ãÀL\ÄB`Dj\È5R««k~$~n\Ãú:Ad`D\ÆoÀ¡F\ÊU	\ì\Z„¤\Ñ\ĞJ±X²V‹\ÙıˆŒH\r\r¥¬X*µß¦‘B²¨\n\Ş\Ú*rl#0\"£F©µİ´J…™¢H¦t:e[[ßˆŒHUkuk4\é¢Còø!–t\Ú67Š¾fˆ{E\0#2\n\İR¹¤\íG€\äO*·\Ê\n`q\ìŒH¨\ZPU°¹\é\Z§4‡’I!\\.Wl»µM/öŒ–‘ñTŠ.€i˜`µzİš­Vû=\à\İÀˆŒ¸\\©¸{– !™Tõ¶\\ø\Ö]{E\0#2\n\İZ­¦·\\K<$Q­^£\Z{F\0#jŒ¶}e\Ğ\Ş\'‘P)­u/—	`\ìŒ\Èhl¬Õ¢\ëÉ¦¡–J©\ê\ïjÁ^Àˆ„ª‹m»TH2Ş•*›\Í`\ï`DFp\0I¦ŠWÁ[­7dÁÀˆ„\Z£€®øÕ¨\×}4°Aˆ„º\ë`dC®\nVo\ã¿\Ø+²Zƒª\0É¦\îg\Ån³Ù°\Öv‹q`\ì	­%\"¡\àUt\Ğ\r$[£\Ùò\Ëİ½ €¿‰ü\Å@ }±w0ö,˜\êX]r\íÇ€DsÇ¼ş{A\0#CC)k©[\0š¥+\"{A\0#2\\!ƒB\Ñ\Ûb4öˆ\0FdX–A\á‡Z¶pÁ\ŞÀˆŒ6(\0?\Õ\äp\Çq!\"Û–aM$„ô‡;öˆ\0F$üLh*`mÀ¡‰‡À^pa\Ïü\î@\Ûf\ét°K0(€±W0¢¡\nx(\İ~H6U¿œlb¯`DBK2rÙŒb \éÒ©!K¹3ÿ±0\"“q\Üb-0,\Üõ-\É\Ø\Ğ\Ø#‘\Ğ8p6\í*`\Z%$œ‹`Ë¤\Ó:\èÛ\0\ï†\0F$Td³Yº\äpC¶\İjY6\çuz{°G0\"“Î¨*h¿$Š^d\æt²\É4,\ìŒHR\ÆR~I\r’K\Ç÷p>\Ï\Å°g0\"“\Ídı…ù$\Óu¯‡‡Gü\Ì\Í}\0\Ş­%\"¡ª@;ai8|H\"ğÈ°«€9Æ±G0\"£b@cc@’\r\ri\Âa\0ÆÀˆL\Ğ5Wğk\éšC…==¹\'š\Ø;‘Qğcc@R\ås9\æ: Eˆ„*^ğ}û¬\Õl¶’E°zy\ÔÁC4öŠ\0Fd‚\Æi8&Ü±‘Qw’\É&\Ø;‘\Ò\ØX&•¦:@â¨—§\Ñh\Úş}.€\İñ\Íy&öŠ\0Fdº\Z+˜!Šdj´š¶ol¬}|“À\Ø‘\Òş¸j üÛ„0’\Æ\Ó:¾¹\ê¢@\0#2\ê¢kj\"Ö\Öl6ıû@R\è„rlt„\Â‘!€)U‡´F£\Ñ~H\Û\ãtl3\Ë\Ñ €©°J\ĞftA#IÔ»3~\ŞD‡\0F\ä¼ûw&ª\0É «\í\Û7\Ú~\Ø;‘ReP«\×\í\È\áCLTAb\èd2“\Í\Ø\èğ\'–ˆŒÈ©š÷]u@¿S\Ü\ê˜?°_g˜0\"C\0#rj öZ:¡±B\ß\Óh¯&^M`r!\"E\0#r\n\İT*mcc#z\ÇW@?kµš6~ğ Va¢B\0£#\ZÍ†=r\Ä\İ7Y6‰¾¦Ê‘‘\Ë\çóş„ˆ\nŒ\Èù\r9š-›œ˜ğK7€~¥¸U\Õ;qh\Ü\ß¿ˆŒPÕ/\ältd\Ø5\\4[\èO\ê½Ñ¬şG\'Yÿ‹\ÈÀ\èUÁGvaÜ¤\ç}I\'’\ét\ÚoÀÁ²:D\0FG¨RĞ…ù›´Z­®\Õ@\ßQ\è›<bõ:³Ÿ=£k¦\î\Ûg\Ùl\ÖW@¿\Ñ$\Âc““ÁdB\Î\"1U­\Õ\ì½S§Ø”}G\'™t\Æ\äA\0£c‚\ÙĞ®‚8z„\0F\ß\Ñ1{|RsZ0:‚\0FG©\á\ÒL\èÑ‘Q&± ¯h÷«S\'OX£Ş ûA\0£\ã4\å\Ìi×±ú„–Î\Û\È(_@\çÀ\è(\ß\r­™¤Gû·i\Ì\ĞšÍ†:qÜš®\n\æˆE§À\è8…\î\ĞP\Ú&¡\Z}¡\ŞhØ™“\'ı80\İ\Ï\è§¬Ş¨\Û\Åóg­Z­¶z“B÷\Ì\É\Öbò:Œ\0FW¨!.\ìÀvB\ïR\Üj®Â™S\'ı=\Õ/:‰\0FW¨!Sõ{\á½3V¯\×Û½eÛ\î\Ûgc£šµOõ‹\Î\"€\Ñ5ZOy\ä\Èa\Ëòt\í¡\'i\ã˜\ß?\ï\ï©~\Ñi0ºF™\Ûp\Õ\ïÅ³g­\æ\Z8 —hhd\ßØ˜Ü¿ŸDtŒ®QE\á—$Mahô]4\äâ¹³~4\Ç&º\0FW©aS¥qş¬Æ‚Ù˜½A\Çe>Ÿó\'‡,=B·À\è*5l~å©“\î\í \á\â¦!‘O>x\ß*\ÕJû ó`\ÄB\İ}¿\ÑjÌˆF\Ì\Ô#3<<l‡O¸\ê·Eõ‹®!€\Ñuj\àZ­¦?v\ÌòyfD#^Uw2x\é\ã}Lø¢›`\ÄB™«İ±>qU°–|\0qPõ;~`¿Ø¿Ï¿\rtŒX¨\ÒPw\ßÄ¡ƒ¶o\ßbQ.W\ì³O>òC\"Ô¾\è6±QoŸºÿ¾ú\ìS+W\Ø#\Zİ¥­&Ï9eù\\>8¤û]F\0#V\Zÿ\Íe²vöô)?;\Z\èw\Zyÿü9«\ÕûE<`\ÄJ\rŸfBpñ¼fBº!\Ørò‚¿ø\Ç\âB\0#vj\05+ú\Ò\ÇYµÊ„,t–º›÷Ù©\ãG¹\âbE\0#vj\0¦M™°‰‰q¿\Ğ)•JÕ¾ú\âRûdğE|`ô…°\Z\Ä//}jµjnAt„º?zÿ‚¥Sik¹cŒ\âq\"€\ÑSTı~ş\Ù\'~S Jº\È\ØÈˆ=s\Ú_“š®gÄ\0FOQ\0kCüC‡\ÑÈ¨GE—\Âü\êóO\Ùø=ƒ\0FO	º¢«ö\å§ûŠ…®hD¡â©O?ú\È2éŒŸ„Eõ‹^@\0£\ç(t¾üúK+W¸:\röF3°“Çúµ\æ„/zŒ£R\İÏ££#v\á\ì{Œã©\ÚM¥\Óöù§Ÿø“9\Â½„\0FO\nº¢kvñü9¿Wtƒñ`¼\rg|ó\å\ç¾òe0½†\0F\Ï\nB\Ø5 _}\é\Ô!ÆƒñVJ\åŠ}õù%\Ë\çrÁ¸oûq WÀ\èi\n]-ùo¾òlØ¦Á\Ğö¦\Ú_ü\È\Ä\ã¾\èY0zš\ZNU/š½úõgŸX¥\ÌU“ğ\Û4\éj\ßØ¨}ôşy?û™ğE¯\"€\ÑóÔ€ªŠ9ìª™>¸À\Ìhü*¬e³Yû\ã\×_¹ğ\å*G\èm0ú‚\ZRm p\æ\äI{\ï\ÔI6SÀ¿iµ´|­iÿù‡\ßùÊ—9\èu0ú†BX\r\ë\Ç¼o\ãX½\ÎõƒP\Ø\Ö\êUûó7¿óö\ĞûT¿\èu0úŠ\ZUuAÿş\Ë\Ïmÿ¾1B>lµd\íO\ß|civºB!€Ñ—T	ÿÎ…ğ\ØèˆŸtƒÁ¤ğ­¸²ÿøı\×V\È\çüzq\Âı‚\0F\ß\ÒYüıW–\Ëf}·#‹\ÂW½!øú+.ø1\Âı„\0F_\Ó\Å\Õÿü°\áB\ŞÏ”\Æ`ğ•oµjü\İW~\Ék}Ñ`ô9ÿ¹†ø÷_\Ûş1Æ„ó­\Õ\ìO\î9\ß7Jø¢À\èsjx·}wô¾ş\Òö\ïó» !™Z>|\ë~¶óğğ0á‹¾F\0#‚¸\\®\Ø7_\á/\è¯\îI$K«\Ùô·ÿñŸ°l.Ç˜/úŒ\äpmq¥T±O?ü\ĞŞ¿p\Î2’Aa›\Éf\ìşùO\îi.WIø¢\ßÀH\×(Wª¿[\ÖWŸ}j¥rÙ¢iK\ÉöÛŸÿğ¿0\ë|‘C\Ó3³´NH…n\ÖUL\Õjİ¾ûáš¥\\ƒN§\ÛE?–U\í\â¹÷\ìıó\ç\Ø‰C\0#±Ô€§S)Kg2v\å\ÚM\Û*nY.—k½LU®&X}y\é›8t\È\Ït§\êE\ÒÀH4…°\Z\îB¡`÷>¶GûÙ³4\æ½KK\É\Ô{¡5¾)w\Åd+$Œ  \Î\çs¶±±eWo\Üô\İ\ÑtI÷=Gš½~òø1ûü\ÓO¬T*\íœ@ID\0c`ø.iºªª~üù¶-­®Z!Ÿoq\Ò\ÎÛ­mûò³Omü\àºœ1`”.iW\r\Ï-,\ÚõŸnù\îi£ûÂª÷ğ¡C>|µ¼ˆ%F0\ÒN5<”²›·\\5¼¢j8G\Ã\ßEZR¤\Ù\éŸ~ü¡M9\ì÷õ¦\Ëƒ„\0\ÆÀ\Ë\çr¶¼ºf?º \Şvÿ²™lû#\è\Íp\Öv¡\'³O>¼hõU/ŒV\Ãw»ÿ\è±=~úŒn\éº›k662lŸ_ú\ÄF\İ}­V§\ê\ÅÀ\"€\'\\6\ã7üÿñ\Ö][Z^ö\ë†5i\ïN[U¼ºnó\Ç\\´c““~›\Ğ\Ö6;Za°ÀÀ.;Aì‚·X,Ú­»÷mckË‡Aüvô·\Ô\Z^50^8o§N÷›k\Ğ\İ`\à\n\\M\ÌZ^]·û\Ù\ÚÚº\ny‚ø5ô·\Óf\Z\ZOÿ\à\Â9;}\â„5[-¼\á	\0øUş…\ÑbM\Ô\Ú,nÙ{S¶¶¾nWkŒx\Ğ\Ãdw †“«ô·:{æ”;sÆ¯\çUø¼À¿#€7V\Ä\êŠ\Ör™\ÇÏ\Ù\ÌÜ¼{\rY6“\èp\Ñ&\Z\êj\Ş76fÏ¾g‡|µ«\Çô÷!vW#€7¤…­‚X\ß\ìü‚\ã\çş²‡ªü\Òaë³“>ú\Ï\×šşº©›Y©N?n\ï>ic££V­\Õv>N\Åü6xaÀø\î\é|ÎŠ[%{ú\â…\Í/.YµZó³©ÿ%Œû0Ü¯\ì7x;U?©\Êİ\Û\é\Ç\ì\Ø\ä÷˜«v›.Œ[„.ğ6``\Âp\r»¢\×77mvnÁ—–­V¯µ÷ŸÖ­÷\Ã\Øıjÿºªò\ÕÅ¬\äƒö\Ûñ£“v\äğ!Ë¤3şqu5Á¼=ˆH¬ºe2Á6—[[[¶¸¼bó.Œ\×76ücº\Ô^øy»ƒK_/»\ëÿS^:	\Ğ\Ï~¼·å»—5ü\ÈÄ„=2a\ãú	-#R(w\ëw’Œ\0:`wk¿\ãlV\Û[n\Û\êú†d-i*–Ê¾\ëV\É^¥iw ½n\á÷…!zùó_oHAª\Ê-WÅ¦]E;\\\È\Û\ØØ¨Mº\Ğ=th\Üw­7\\û+¹¯{ù\ç\Ø\è‚İ¬\åK\n[½ğ4^¼U,ú\êxcs\Ë_¨V«ùPl¹»¯\Ğÿù\ß~;o‡÷\í`\İ²ºóÁ©úùî±¡”ºÊ³~\Â\Ø\ØØˆ\í\Ûo÷\ï³\Âp!ø\Ü\ç)˜©r\Î#€.{9\ØvB9TÀ\Íf\ËOv\Òr\']1Hkkı­Vµj­¾«rUPª:u\İşút*\í¿‡Æ£µiˆ*o\Í\Ø\Î\æ2–\Ï\æ\\U›÷Õ¶~´¾\Şw\İ\Ğ.\Ğ0\Ğ\ÂP–\İÁ¬·ô\İù\ÊYµ\Ò}<Ü“KŸ\ã¿Cûû\èû…`\ìpoû\Ï{\Å\Ï\Ğ}0\ĞGş%P_ƒpz›\Ú}\ÄW\Åox\Ğ\Û` \ì®l\Ãn\â\ÈoÁ·w‚÷Ä‹.h ƒ^t»«Sÿ\ÖK\ëN\Û~Gğ\É\î¦\ïù¯~Ê®ŸõÒUüú_eW‡Á¼\Û\ë~_\0\Ñ!€w°;¨^ú¸\îÓš\Ù\ìşk|ı\'[76\Z;[8\ê\í¦»\ÕôX½iõF=¸˜\Ö\ßúµHÁ\Ò ı\Èm÷@Ë¿aş~\Û=\î\'gùŸ«oüılı\Ìğw\Ò\Ì\çL\Ê\İrË¦3–\Éf,—\ÉZ:“¶¬{<\í\Ş\×\æ!™LF?\Äÿ¬p)\ÒË“¹Â·w?&ú9\0\ŞüŠ\İ³;\\‚0\rN7T\î¦%BZÃ«›.J ¥CZJ®\í­¹W\ëÁ\Å\n\ÜwtÿÜ½¾‡j\Ù04\İMúr”ù¯iÿ/l·ğ7v™ıoŸ¨‡ô{†®0û¥*\Ön™\Ù\\\Î/]\ÒZ\áBÁ\İr\Ë\å²\î–s÷º\í,g\Ò×·¿\ï/Kšôıƒ\ïJ0¯F\0\Î\Ëa»°zÛ¥R«¹\í+S…l¹TöW?*–JV®T|\Øj½®¾‡¾‹¢\Õ¿d\è—\ï~\ï\×\Ùı»„\Ş\ä\ëvó\ß\á¿OøóıOû¿)\é\à}ÿ\ß\çŠkm\è¡uÆ£#\Ã62\ìn\í{·\\?KŸ¯Pö\Õzûz\Ûÿ& i`”— ¸™¯æ´‰…SU\ë\æÖ–m¸[±Xò[FV\\Ğª\ËX_¯µ¸»«\àú^\í7_ş\Ü~×…\ä\îK\ØU­JX—\'\ÔWd\Ü\ßsØ…±nc£#v`\ß>u÷#…aÿ7V×»º\Ùõ­ôµ¯û™@ÀH¬°Q÷Í¹\Zu÷?\í8¥}¥\áª\Ö-W\Ånnmmm\Ãî†«l+ş\ë‚1S²\í€\r‚úßƒÁÿ}¬ış ñ]÷\ßÿk—ğ\ï¯{?\Î\í‚Z©\ÑQ…ò˜8`û÷º\Êy\ÄW\Ìúì¦¿¬¡\İ©ÿZIE\0#Q\ÂF_¶ªS®\ŞV\0]¸nl¬\Û\Êú†m¹\Ğõ{.»ªM[8ª«9¬jCş;\0{²ûùé±°[Z\Ûaª«>\ïxll\Ì\Üo÷\í÷!­¥\ÏmW\Ù\Âó¤ €\Ñ\×\Ô(«Aö7÷¾fñj6o¹Rµ••U[Z]µ\ÍM+—«¾{T\İ\Ì~fr»\ï	\Û\î	Ÿ³P¬ºW·´ö\ÂV7¡Pğ]\×‡\Æ\í°»io\ëp¹¾BŸï¿—¾˜\ç\r}ˆ\0F_	\Z\\\×Øºÿ©bU\à\ê±R©dk.h——WmÕ…nµ^\Â8v_¥€\Ş¶\îó…°\í/?\'z\ß?\â\îµK¡›\Ëfl|<\ã\í*YË®ô1U\È\á\×\é\É\æ™E? €\Ñó\Â\Æ\Ùw)»@Uu¤%=+«k6¿°h«\Örpp±‚à¶»!\'hû\×\î\çÏ‡²»©JV÷µ†\î\ßo““G|(kY“»\Ú\Õ1\Ï=zŒ£†S\Ôx*L³®òQ¥³¼²ló‹+¾\Â-–\Ë~\ÜVU®>owCKÃ›L»	C6˜\Şò3®°£G¸ûƒ¾§Äó·?O8.\ĞK`ô„İ¡©nc\íĞ¤\å@\Ë.t\ç]•»¶\î?\Í\ëK¾²û\ë0€¬\í\ç?Z­\ÉV—ô¸«;f‡\'\Æıú\ä`×±¦ÿ\\ô±Ù©J\\•«mÕµ\\©UmvnÁ\æ­TrU®û˜&M\é^h8ñ[v\naM\èjµš>€;j“‡»·~B^ğ±`\ì˜c\nq €\ÑUaèª‚\Õx®vRÒ¦/ffmqeÕ‡n\ÆnZ{;aÃ¨¯¢‰Ä»9\í·]w¡;2R°#v\Òò~W%\Ë\ÑctŒ\Îs\r \Ğv\èj™f-¿p•\îô‹«\Õ~\áğ¢Á—P\é\":»\'½­°Uğj­ñ{§OÚ±£“¶ot\Ô\ê.¤\ÃI\\\è4Va\è\Ö\ëM››Ÿ³\é\Ù9¿½£\Ü\İh\è£Z\æ\Ôr7­;>sRa|\ØrÙœc5aŒN!€©0t5fL¦\ÊØŒÜ™¹Y[Y\Ûô\ã¼\Ùö\Ìe W‡­.¸\ÑğWvR\×ô\é“\Ç\í¸«ŒÂš¼E5¢F\0#a• \à\ÕzL\ë>›™±\é\éY¿\Õcººé€£	C¯	a\én¾;Ú…\î\Éc\Ç\ì\Ìé“¶l\Ì_b’ªQ!€±\'aC¤€Õ´°¸dOŸO\Ûf±¸S\ÓL¡\ß\ì>Iw\â\ÒeÏ>m\Ç&«‹š \ÆÀxk>tİ½&Mò9?ûø\Ùs›_ğS‡Ë†€¤P\Øj±W!|\î\ÌiµJµê»­}h\Æx0\ŞXX\íjÀL6c««kv÷\ác\Û\Ø\ØğaW\è\Ò\0!\éô:P7´‚W[a^<\ÖOL¸Š¸\î\×‡¯\àu`¼VØ h\ÛG-š™Ÿ·GOŸùª4\ŞKµ‹A¥ ®\×–\Ëe\ìâ¹³®2ô•°¿bAŒ\× €ñ«\ÂD›eÈ£\'\Ïlzf\Æ\ÏÍµ·„¼V4AK½C\'O÷a¬W‡#ˆñk`ü›°Á\È\år~³‚‡OØ³\ç3–\Ï\çü\Ú]\Z\à\Õô\Ú\ÑF\ÕZ\İN8æƒ¸Ï»÷k1ş\rŒ;Á\ë*\Şz£n÷¦ù\Ëıi[Cx3\á\ì\é\ã“G\ì\â…ó–w¯+*b\ìF\0\ã_*^5wLù‹!d\Ò¾L¬Ş•^[~œØ\Ğ=<ixÑŸÌªg‰ <ÀvW¼\ê\"›zü\Ä\Üñ\à»Ì˜\ÑD\Ç±»U*;qô¨«ˆ\Ï\ÙH¡@\×ô€#€”^ô\n^\İßzh3s~¿fm s4F¬\èjL^<\ï\×\Ók}±Äƒ…\0 á™¶ª[­\ÛUÅ«\åDš¹\É\ä* »4Ü£0~\ïô)ûğıV«\Õı¸1¯\ÂÁA\0„m¾ÁU‰Tõ\Î\Î\Í\Ù\Ïw\ïû \ÖxÁ\ÄC\'\Å\n]\í9ıñû\íô‰\ã~|X\ï¯\Íd#€.¬zµ„hyy\Õn?˜²j5\Ø@ƒ7\Ğô:U7´Nˆ/}ô¡MLŒ»\×)\ã\ÃIG\0\'Tø\Â\Íf3\Öj¶\ì\æ\í;¶¼²\ê\'Xñ‚z“^·\Ú\ârü\àû\â\ÓO,›Iûñb‚8™\àÒ‹U\İ\Í\nß©GO\ì\á\ã§V(3›ô>-]*—+~Ÿ\ég\ßóc\Å\êª‚89\à	Ï’5Ájyu\Ínİ¹ku÷¢Uw3€ş£n\é”;™¾ô\Ñvdb\"¸ò\ÕpbÀ	¡¥.\èR»ñó-ÀºT /T ¿éµ­\à=tğ }q\é¿jA;jñ\Ú\îpŸÏ†5¶û\ìÅŒİºwß†\Ûi\0H	\ÄJ\Õ>¼xÁÎŸ=\ã7õ\Ğ\æqÿ\"€û˜¯z³Yk¶šv\í\æOV,–,—Í©P\Ú=kldØ¾ø\ì\Ò\ÎşÒ„p\"€ûPXõ\Û\Óg\ÏıNV\Z\ç¥\êƒªam\Üqñ\Ü9{ÿ\Â{V,•w\Úô¸\Ï\ìT½†]½ù£•\Ê\ÖôJÕ°†Ÿ~÷\Åg~­¿B™¶ À}F«\Ï\ÌÚûST½\0|5¬\ëxñœ=}\ÚO\ØB €û€ª^m!—³\Ë7~´Õµ5¿Ôˆ3]\0k#*®\Z\Öª†¦_;L\Ñ\Û\à¦\àuO‘\åóY\Û\ØØ´+.|uµ\"m²\0/k6[.|\ëöµa-[ò\ÛYºqo\"€{T8¡B;XİŸzdOMû1^H\0~‹\ÚuCŸ=}\Ê>¸x\ŞwOo·Z´=ˆ\0\îAz©\ÊU·ó\åk7¬T*Y.—k\0^O²tÿÇ¯¿t5ppbB¸·0ƒ§\Ç(|5¾[t¡ûÿşöi2\ÂÀ\Û\Ê\å²şš\Ãÿ×µ#\ÅbÑ·+Á°zpQ7ó³\é»{ÊŸ½r\Æ\n`/ºº©\ÖŸ;wÆª\åŠkùiWz\ÜôQ\Ğ\n~\çù\Å%¿¶\0¢¢?x\ĞşğõşJKlc?8f\áx¯^ÿ¸üƒµZMQn\0ˆšº¤‡†Rö§o¾ö\íNğ>!Æ€c¤ğÕ®V¥r\Ùş\ë\Û\ïô\á cÔ¾(oÿö\Ï\ïmcsÓ·?ŒÇ‡\0‰zu3//¯\Ú\å®³«€®P;£‰W®ß´\Å%\rw\á˜\Ğ\â\ÇD\áûøùs»şóOV(\è\Ğ5joF†‡\íæ­»6õø±\rò.„\ÛD\×À1PøŞ¾÷À>z\â^#\íG »F†~“Ÿ?\ßño£»\à.\ÓY§6×˜]X°<3\ÄLK—VV\ìû®ûµ\Â\è¸4¾¢fMxø\ïo¿³­bÑù@/P{¤v\é¯ÿüŞ²~¢\Ö\ã\Â]@\0w˜bMzH»ƒú\Û\ËWı´f:\è5j—\Ô^)„u\Ñµ[„pgÀ†¯\Î.5\í_\áË•Œ\0ô*µWª~ÿÛµWi÷¶\Ş\×òHt\Ü!\n\ßt\Úıy‡\Ìşò·oıAMø\èu\nİ”k¯şò\ï‚\"b(M%\Ü!pøğuq«µmÿøîŠ¥\\g’\0\Ğû\Ô^i,øo\ß}o\ÍV\Ó„pôH…ˆù3Fwğ¹\Ûß¾»\ì\Ş\ÆR\0 Ÿ¤RC–\Ë\æ\ì\ï\ß_q\ÅD\Ë÷\è‘Á\Ñ\"\"†¯Ü¿~û½Ÿõ¬· i\è\Ì\Ïaq\Å\Äv+e*\á\èÀ\n\Çy¿ışª?[\Ô8\n\0ô3µk\êşû\å+¾}S‘AGƒ\0.\'ø¾º\Ì\İ\Î\0’B\í™\æµü\İU\Â\ê\ÙS(c\ïH‰ˆ\ä³9\ßM£\Ë	2\Û@Ò„•\ïß¿¿\ì/æ€½#€÷h\Ûı\ÓömWnŞ´j­FøH,µo\ÍF\Óşyùª¿ˆö†\0\Ş\r†\í§\ÛwmssË“\0@’)„+Õª\İøñgÂºŠ\ãÁ\ïŠ\0~G:\èTùN=~js‹~\\\0Ú»\Å\åe»?õ\È_İ~7ğ;\ĞÁ¦jW ®¥©³@\0$ºšÛ“\ç\Ó63?\ï™~{ğ[\ÒA¦\É\Z\ï½ùóö\0ƒHíŸ†\à\Êå²¿€!üv\à·†o0ÿŠ¿&\Óñ2-¿ü\ç•k\Öl¶‚å—„ğ#€\ßB¸+\Ìwºp5\á\0A»˜\Ë\Ú÷×¯[6›\Ñ\í\àu\à7¤\êWc?ß½\ïg\0ú3=\0€oµ<\é\æÏ·mx¸@Wô\"EŞ€&\Ù\Í\Ì\ÍÛ¬»©\n\0üBô_\\^±§\Ó/|I¿ü\Z:†tv×¨7\ì§;w­g\0x•|.ow\ï=°R©\â\ç\ÊÂ¿\0~\r\rgøñk7¬\à.\Æ7\0\à\Õ\Ô<j¨\î\êÍ›–qU0ód~üü¸o.g7~ºe\Íf\ÓU\ÂL\0ğ[ºª{¯º¢…ñ\à\ßF\0ÿ\n4™L\Ú\æ—lqiÅo\0\0^Ok‚\×67\íùôŒŸ?C¿\Zü+t—Ne\ì\æ­\Û~\É\0\àÍ©÷ğöı)k¶ZtEÿ\nøt¶¦^4¡ƒˆƒ\0Ş\Ú\Íl&m\×nü\Ä~Ñ¿‚\0~‰u™L\Ï\Î\Ù\Úú&\ë}\à\é\ÊI\ÅRÉ<\ÎÒ¤W ]^¢³¶V\Ë\ì\Îı®úe½/\0\ì….\Ş\çÁCº¢_\0\ŞEgg\Ú\×ô‡›?ú«q°\0À\Ş\r\çóvù\Ú\r?Ÿ†*øp›\n\ÍÜ›_X´Í­-º \"jOuÅ¤3s¾¸!„¤L›ª]Wh¯gM¼\0DG]\Ñw§º¶6E\ïb\ì\èlL\î=|h\Û\î\0DK\íj\Ê\İ~¾w\×9TÁ°§£R©\Úô‹Y\ß\r\r\0ˆ64š[°b©ì»¥=„>€u\0Œ\ì\æ\í;\ì]\n\0¦5Á\Ú\àH]Òƒn X\á«q\ß\Ùù\Û\Ø\ÜôW\ï\0\0t*_UÀ/f\çüv¿ƒ\\t\â¨\Ú\ÕN-÷§ù³2\0@\çi…ùh{6€ƒ\ê7e³‹V®\Õ\èz€.Q{\Ûj´lzf\ÖRšw3 UğÀ°€L*m÷<´|–¯\0 ›2ÙŒİ¹\ï\Ú_]in@ \àp\ì÷¹;ûb{4\0\è>_¥S6õä‰Ÿ=ˆcÁ[\çrY»7õ\Ğ\ï\Ê\0\è>\ï\ãgÓ¦h¡`ee³š\0ğ\ÄR©Á\0\0\0qRû«\Í9¦?\È-*.€ı\îÎ·¿˜ñS\à\0ñ\Ñp .ÿ:ˆ»T\0\ë\ìJk\Ğæ——­^oPı@\Ì\Ô«m\Ö~ƒvœÁú¯uOt.“±©G¸\Ö/\0ôu?\ßø\Øòùü@uCT\0k¬aym\İ*\Öı@¯P{\Üj6m~~\ÑwIJL\0\ë	\Õ\Ù\ÕC\rög™ù\0½D“c>\r&c\rŠ	`a•\Ë%[ZY¸q\0\èuj—76‹~_şAi£\â¿R\Õo°\Ş\ì…\r\Øó\0zQ.›±§\Ó/fI\Ò@°ª_ÿ.,.Rı@Rû¼¸¼b­\íÁØ¡p`xem\Íjµú@<©\0Ğ\Ô>o·Z®XZqaL\0÷=ucøn\ç/üö“\0€Ş¥\á\Âg\Ó\Óş‚ıI\ï†N|\0\ëŒJ›n¬º\n˜\ê\0z›º¡W\×7b³¤D°Î\Ò\îÉœ_ôO$\0½O%=~ú<ñWIJ|œ\Í\å\ì\Å\ì¬_\Ü\r\0\è}ºHÿ\âò’Ÿ<›\ä\Â)\Ñ¬\'®\Ùh\Ø\Æ\æ³Ÿ O(x‹Å²Uk\Õö#É”\èTR\è\Î-.ún\0@ÿH§S¶°¸œ\è­)Àz\Â2î‰››W\0\Óı\0ıDÁ«+$%¹€Jl\0«û¹\åBx}cƒ\ÉW\0\Ğg\Ôno•Š‰Ş¿!\Ñ¼¶¾nf“\0€>\ã\Û\ím³•\ÕU¸Ÿø\î\çL\Æ\æ\ê\Ê\Z\0$iµ\ã‹K‰\İ:±°¶1\ÓbnM\ÄJö^*\0Lš\r­\n8©\ãÀ‰`uWhÜ R	¦°\Ó\r\0ıÇ·\åõº•+•DvC\'6€µöW•oR\Ç\0`h5\Ë\Ê\êš\ï\ÕLZwf\âX\ãÁ^¢k\î‰Kl;\0$^8Ÿgee\ÕÒ©´\Ë\ßd%p\"*›\ÍØ’{Â¨~ mø­&t9iòXO’;k\ÚdûI\0\è{j\Ò5\Üh$\ï\êH‰K(\rlK\í÷\0\0ıL¡«®\èb¹L\0÷º¡¡”¯~¹ú\0$ƒ.+\ë/ª\Ó\ã¤HT\0\ë‰r%°(ÍœK\Ò\0ƒHÍ¸†7·\\\0\'¬°J\\¬3%uUx	\ë®\0€A”v…\Õ\ÖV\É\ß\'I¢Ø´¶­T*ù·‰_\0\èoª£¶]k®‰X­¦{+A…U\â*\àf«e\ÕZ­ı\0 	šÍ¦U\ë\Éj\ÛV›U«5w–\ÔJ\ÔY\02ß»\éş•\Ê\ÉÚ’2ağ«~«„/\0$ŒZuµ\ïI’¸1\àjµ\ê\×\0’C3¡u‘$IL\0kÉ‘ r\ÅUÀ\î\0*°*®ÀJ§S‰Ybš¸1\àJµF4\0$¸\\±\ÔPrb+q]Ğ•ª{‚¨€ Q´°Tp’\Ú÷¡\é™\ÙD\Ôò\ê’.\ì¿şş­U\ëÚ´»ı\0@\ßó;º´ú?ÿûY)!ûB\'&€EOH±½	\0 YZ­–ú{¸ù§„\0€DJJøJ\â\0€~Àl%\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\0€À\0\0Ä€\0\0 0\0\01 €\0ˆ\0@`\0\0b@\0\0\Ğufÿ\Ü\ÑûÑ‚dPğ\0\0\0\0IEND®B`‚','78 59 12 63','','Second Cycle','Master');
/*!40000 ALTER TABLE `personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presence`
--

DROP TABLE IF EXISTS `presence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idE` int NOT NULL,
  `mat` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idC` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annee` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presence`
--

LOCK TABLES `presence` WRITE;
/*!40000 ALTER TABLE `presence` DISABLE KEYS */;
INSERT INTO `presence` VALUES (1,3,'Mathematique','1','absent','2025-2026','2026-10-20'),(2,4,'Mathematique','1','absent','2025-2026','2026-10-20'),(5,2,'Biologie','1','absent','2025-2026','2026-10-21'),(6,3,'Biologie','1','absent','2025-2026','2026-10-21'),(7,4,'Biologie','1','absent','2025-2026','2026-10-21'),(8,1,'Biologie','1','absent','2025-2026','2026-10-26'),(9,3,'Biologie','1','absent','2025-2026','2026-10-26');
/*!40000 ALTER TABLE `presence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaire`
--

DROP TABLE IF EXISTS `salaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salaire` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idN` int NOT NULL,
  `mois` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idP` int NOT NULL,
  `montant` double NOT NULL,
  `heure` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annee` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaire`
--

LOCK TABLES `salaire` WRITE;
/*!40000 ALTER TABLE `salaire` DISABLE KEYS */;
INSERT INTO `salaire` VALUES (1,1,'Janvier',2,25000,'13:46:07','29-11-2025','2025-2026');
/*!40000 ALTER TABLE `salaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequence` (
  `id` int NOT NULL,
  `seq_value` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `region` varchar(45) NOT NULL,
  `localisation` varchar(45) NOT NULL,
  `prix` double NOT NULL,
  `categorie` varchar(45) NOT NULL,
  `id_fournisseur` int NOT NULL,
  `img` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signatures`
--

DROP TABLE IF EXISTS `signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signatures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signatures`
--

LOCK TABLES `signatures` WRITE;
/*!40000 ALTER TABLE `signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcours`
--

DROP TABLE IF EXISTS `subcours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcours` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cours_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cours_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcours`
--

LOCK TABLES `subcours` WRITE;
/*!40000 ALTER TABLE `subcours` DISABLE KEYS */;
INSERT INTO `subcours` VALUES (1,'Cos et Sin','Marquer terminÃ©',1);
/*!40000 ALTER TABLE `subcours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idP` int NOT NULL,
  `username` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `password` varchar(105) COLLATE utf8mb3_bin NOT NULL,
  `role` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'Ali','Ali2024','Enseignant'),(2,2,'Mosef','mosef2024','Enseignant');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idUsers` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(45) NOT NULL,
  `Prenom` varchar(45) NOT NULL,
  `Telephone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Pasword` varchar(45) NOT NULL,
  PRIMARY KEY (`idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `year`
--

DROP TABLE IF EXISTS `year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `year` (
  `id` int NOT NULL AUTO_INCREMENT,
  `annee` varchar(45) NOT NULL,
  `debut` varchar(45) DEFAULT NULL,
  `fin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `year`
--

LOCK TABLES `year` WRITE;
/*!40000 ALTER TABLE `year` DISABLE KEYS */;
/*!40000 ALTER TABLE `year` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-27  7:36:11
