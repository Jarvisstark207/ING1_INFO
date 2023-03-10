-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ipslsupermarche
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adresse` (
  `id_adresse` int(10) NOT NULL AUTO_INCREMENT,
  `region` varchar(50) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `code_postal` varchar(50) DEFAULT NULL,
  `residence` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_adresse`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES (1,'Dakar','Pikine','17000','SIPERES 5'),(2,'Dakar','Guediawaye','10200','Cite Sofraco'),(3,'Saint-Louis','Saint-Louis','32000','UGB'),(4,'Diourbel','Diourbel','22300','RESIDENCE CHEIKHOUL KHADIM'),(5,'Thies','thies','21000','CITE SENGHOR'),(6,'Dakar','Rufisque','20000','CITE AL AZHAR '),(7,'Dakar','BARGNY','20100','CITE EST 1'),(8,'Diourbel','Touba','22300','DAROU MINAME 1'),(9,'Dakar','Dakar','20000','CITE Sicaps'),(10,'Dakar','Dakar','11500','CITE MILLIONNAIRE'),(11,'Dakar','RUFISQUE','20000','CITE SAGESSE'),(12,'SAINT-LOUIS','DAGANA','32800','KEUR MBAYE'),(13,'THIES','JOAL','23015','VELINGARA'),(14,'THIES','TIVAOUANE','30000','KEUR BACAR'),(15,'LOUGA','KEBEMER','30800','WAKHAL DIAM'),(16,'RUFISQUE','RUFISQUE CITES','20000','CITE SOCOCIM'),(17,'Dakar','PARCELLES ASSAINIES-HLM ','14000','UNITE 23'),(18,'SAINT-LOUIS','RICHARD TOLL','32600','MEDINA CHERIF'),(19,'DIOURBEL','DIOURBEL','22100','MBACKE'),(20,'Dakar','BEL AIR - MARINAS','10000','VILLA HIBISCUS');
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_securite`
--

DROP TABLE IF EXISTS `agent_securite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_securite` (
  `id_agent_sec` int(10) NOT NULL AUTO_INCREMENT,
  `id_personne` int(10) NOT NULL,
  `id_local` int(10) NOT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `heures_de_services` time DEFAULT NULL,
  PRIMARY KEY (`id_agent_sec`),
  KEY `FK_id_local_of_agent_securite` (`id_local`),
  KEY `FK_id_personne_of_agent_securite` (`id_personne`),
  CONSTRAINT `FK_id_local_of_agent_securite` FOREIGN KEY (`id_local`) REFERENCES `local` (`id_local`),
  CONSTRAINT `FK_id_personne_of_agent_securite` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_securite`
--

LOCK TABLES `agent_securite` WRITE;
/*!40000 ALTER TABLE `agent_securite` DISABLE KEYS */;
INSERT INTO `agent_securite` VALUES (1,31,1,'Surveillance','2 ans ','05:00:00'),(2,17,2,'Surveillance','3 ann├®es d\'exp├®rience','04:00:00'),(3,36,3,'Surveillance','1 ans d\'exp├®rience','06:00:00'),(4,13,4,'Surveillance','2 ans d\'exp├®rience','07:00:00'),(5,14,5,'Surveillance','3 ans d\'exp├®rience','04:00:00');
/*!40000 ALTER TABLE `agent_securite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id_article` int(10) NOT NULL AUTO_INCREMENT,
  `id_casier` int(10) NOT NULL,
  `nom_article` varchar(50) DEFAULT NULL,
  `prix_article` smallint(10) DEFAULT NULL,
  `date_prod` date DEFAULT NULL,
  `date_exp` date DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_article`),
  KEY `FK_id_caisier_of_article` (`id_casier`),
  CONSTRAINT `FK_id_caisier_of_article` FOREIGN KEY (`id_casier`) REFERENCES `casier` (`id_Casier`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,1,'Beurre',2000,'2022-10-03','2024-10-03','Beurre Sofia'),(2,1,'Riz',10895,'2022-09-03','2022-10-03','Riz de la vall├®e'),(3,2,'Bouteille d\'eau',1300,'2022-05-03','2024-04-03','Eau min├®rale'),(4,2,'Glace',950,'2022-06-03','2024-08-03','Glace a l\'amandes'),(5,3,'Jus',500,'2022-09-05','2024-10-03','Coca Cola'),(6,3,'Huile',1000,'2022-05-17','2024-10-03','Jador'),(7,4,'Caf├® Touba',500,'2022-12-03','2024-10-03','Caf├® Touba'),(8,4,'Lait',400,'2022-10-03','2024-12-03','Nido'),(9,5,'Sucre',420,'2022-05-14','2024-12-17',NULL),(10,6,'Farine',600,'2022-02-03','2024-12-08','Fati'),(11,7,'The',200,'2022-12-15','2024-12-06','Flecha'),(12,8,'Petit pois',652,'2022-12-15','2024-12-10','Le soleil'),(13,9,'Cereals',654,'2022-03-15','2024-02-15','Pops'),(14,10,'Confiture',500,'2022-02-14','2024-12-15','Confiture brut'),(15,8,'Miel',700,'2022-07-14','2024-02-14','Miel brut');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avoirs`
--

DROP TABLE IF EXISTS `avoirs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avoirs` (
  `id_avoirs` int(10) NOT NULL AUTO_INCREMENT,
  `id_facture` int(10) NOT NULL,
  `montant_avoirs` decimal(10,2) DEFAULT NULL,
  `date_avoirs` date DEFAULT NULL,
  `duree_de_validite` time DEFAULT NULL,
  PRIMARY KEY (`id_avoirs`),
  KEY `FK_id_facture_of_avoirs` (`id_facture`),
  CONSTRAINT `FK_id_facture_of_avoirs` FOREIGN KEY (`id_facture`) REFERENCES `facture` (`id_facture`),
  CONSTRAINT `CHK_avoirs_montant_avoirs` CHECK (`montant_avoirs` >= 0 and `montant_avoirs` < 499)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avoirs`
--

LOCK TABLES `avoirs` WRITE;
/*!40000 ALTER TABLE `avoirs` DISABLE KEYS */;
/*!40000 ALTER TABLE `avoirs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caisse`
--

DROP TABLE IF EXISTS `caisse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caisse` (
  `id_caisse` int(10) NOT NULL AUTO_INCREMENT,
  `id_local` int(10) NOT NULL,
  PRIMARY KEY (`id_caisse`),
  KEY `FK_id_local_of_caisse` (`id_local`),
  CONSTRAINT `FK_id_local_of_caisse` FOREIGN KEY (`id_local`) REFERENCES `local` (`id_local`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caisse`
--

LOCK TABLES `caisse` WRITE;
/*!40000 ALTER TABLE `caisse` DISABLE KEYS */;
INSERT INTO `caisse` VALUES (1,1),(2,1),(4,2),(6,2),(3,3),(5,3),(8,4),(9,4),(7,5),(10,5);
/*!40000 ALTER TABLE `caisse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caissier`
--

DROP TABLE IF EXISTS `caissier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caissier` (
  `id_caissier` int(10) NOT NULL AUTO_INCREMENT,
  `id_personne` int(10) NOT NULL,
  `id_caisse` int(10) NOT NULL,
  `experience` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_caissier`),
  KEY `FK_id_caisse_of_caissier` (`id_caisse`),
  KEY `FK_id_personne_of_caissier` (`id_personne`),
  CONSTRAINT `FK_id_caisse_of_caissier` FOREIGN KEY (`id_caisse`) REFERENCES `caisse` (`id_caisse`),
  CONSTRAINT `FK_id_personne_of_caissier` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caissier`
--

LOCK TABLES `caissier` WRITE;
/*!40000 ALTER TABLE `caissier` DISABLE KEYS */;
INSERT INTO `caissier` VALUES (1,67,10,'2 ann├®es d\'exp├®rience'),(2,66,9,'5 ann├®es d\'exp├®rience'),(3,65,8,'3 ann├®es d\'exp├®rience'),(4,64,7,'7 ann├®es d\'exp├®rience'),(5,63,6,'4 ann├®es d\'exp├®rience'),(6,62,5,'3 ann├®es d\'exp├®rience'),(7,61,4,'1 ans d\'exp├®rience'),(8,60,3,'5 ann├®es d\'exp├®rience'),(9,59,2,'3 ann├®es d\'exp├®rience'),(10,58,1,'6 ann├®es d\'exp├®rience');
/*!40000 ALTER TABLE `caissier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casier`
--

DROP TABLE IF EXISTS `casier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casier` (
  `id_Casier` int(10) NOT NULL AUTO_INCREMENT,
  `id_rayon` int(10) NOT NULL,
  `dimension` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `capacite` decimal(50,0) DEFAULT NULL,
  PRIMARY KEY (`id_Casier`),
  KEY `FK_id_rayon_of_casier` (`id_rayon`),
  CONSTRAINT `FK_id_rayon_of_casier` FOREIGN KEY (`id_rayon`) REFERENCES `rayon` (`id_rayon`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casier`
--

LOCK TABLES `casier` WRITE;
/*!40000 ALTER TABLE `casier` DISABLE KEYS */;
INSERT INTO `casier` VALUES (1,1,'3 m','1er etage',50),(2,2,'2 m','1er etage',40),(3,3,'3 m','2eme ├®tage',23),(4,4,'3 m','3eme ├®tage',35),(5,5,'3 m','2eme ├®tage',29),(6,2,'3 m','1er ├®tage',54),(7,3,'3 m','2eme ├®tage',29),(8,1,'3 m','2eme ├®tage',42),(9,5,'3 m','2eme ├®tage',36),(10,1,'3 m','3eme ├®tage',25);
/*!40000 ALTER TABLE `casier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorie` (
  `id_categorie` int(10) NOT NULL AUTO_INCREMENT,
  `id_article` int(10) NOT NULL,
  `nom_categorie` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categorie`),
  KEY `FK_id_article_of_categorie` (`id_article`),
  CONSTRAINT `FK_id_article_of_categorie` FOREIGN KEY (`id_article`) REFERENCES `article` (`id_article`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,4,'G├óteaux'),(2,12,'Aliments d\'origine v├®g├®tale'),(3,12,'Conserves'),(4,13,'Aliments ├á base de Cereals'),(5,5,'Fruits au sirop'),(6,5,'Boissons'),(7,7,'Petit-d├®jeuners'),(8,3,'Water'),(9,9,'Sucres'),(10,8,'Frais'),(11,14,'Amuse-gueules');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id_Client` int(10) NOT NULL AUTO_INCREMENT,
  `id_personne` int(10) NOT NULL,
  PRIMARY KEY (`id_Client`),
  KEY `FK_id_personne_of_client` (`id_personne`),
  CONSTRAINT `FK_id_personne_of_client` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,43),(2,44),(3,45),(4,46),(5,47),(6,48),(7,49),(8,50),(9,51),(10,52),(11,53),(12,54),(13,55),(14,56),(15,57);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commande` (
  `id_commande` int(10) NOT NULL AUTO_INCREMENT,
  `id_livreur` int(10) NOT NULL,
  `id_client` int(10) NOT NULL,
  PRIMARY KEY (`id_commande`),
  KEY `FK_id_client_of_commande` (`id_client`),
  KEY `FK_id_livreur_of_commande` (`id_livreur`),
  CONSTRAINT `FK_id_client_of_commande` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_Client`),
  CONSTRAINT `FK_id_livreur_of_commande` FOREIGN KEY (`id_livreur`) REFERENCES `livreur` (`id_livreur`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (1,1,1),(2,2,13),(3,3,15),(4,4,10),(5,5,2),(6,4,14),(7,6,8),(8,5,10),(9,4,14),(10,5,3);
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenir`
--

DROP TABLE IF EXISTS `contenir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contenir` (
  `id_article` int(10) NOT NULL,
  `id_commande` int(10) NOT NULL,
  PRIMARY KEY (`id_article`,`id_commande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenir`
--

LOCK TABLES `contenir` WRITE;
/*!40000 ALTER TABLE `contenir` DISABLE KEYS */;
/*!40000 ALTER TABLE `contenir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiquette`
--

DROP TABLE IF EXISTS `etiquette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etiquette` (
  `id_Etiquette` int(10) NOT NULL AUTO_INCREMENT,
  `nature_Etiquette` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_Etiquette`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiquette`
--

LOCK TABLES `etiquette` WRITE;
/*!40000 ALTER TABLE `etiquette` DISABLE KEYS */;
/*!40000 ALTER TABLE `etiquette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facture`
--

DROP TABLE IF EXISTS `facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facture` (
  `id_facture` int(10) NOT NULL AUTO_INCREMENT,
  `id_caisse` int(10) NOT NULL,
  `id_commande` int(10) NOT NULL,
  `date_facture` date DEFAULT NULL,
  `montant_facture` decimal(10,2) DEFAULT NULL,
  `montant_donne` decimal(10,2) DEFAULT NULL,
  `montant_de_retour` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_facture`),
  KEY `FK_id_commande_of_facture` (`id_commande`),
  KEY `FK_id_caisse_of_facture` (`id_caisse`),
  CONSTRAINT `FK_id_caisse_of_facture` FOREIGN KEY (`id_caisse`) REFERENCES `caisse` (`id_caisse`),
  CONSTRAINT `FK_id_commande_of_facture` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facture`
--

LOCK TABLES `facture` WRITE;
/*!40000 ALTER TABLE `facture` DISABLE KEYS */;
INSERT INTO `facture` VALUES (1,1,10,'2023-01-04',5000.00,10000.00,5000.00),(2,2,9,'2023-01-04',4500.00,5000.00,500.00),(3,3,8,'2022-09-04',6500.00,10000.00,3500.00),(4,4,7,'2023-02-17',8500.00,10000.00,1500.00),(5,5,8,'2023-12-08',9000.00,10000.00,1000.00);
/*!40000 ALTER TABLE `facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournir`
--

DROP TABLE IF EXISTS `fournir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournir` (
  `id_fournisseur` int(10) NOT NULL,
  `id_article` int(10) NOT NULL,
  PRIMARY KEY (`id_fournisseur`,`id_article`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournir`
--

LOCK TABLES `fournir` WRITE;
/*!40000 ALTER TABLE `fournir` DISABLE KEYS */;
/*!40000 ALTER TABLE `fournir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournisseur` (
  `id_Fournisseur` int(10) NOT NULL AUTO_INCREMENT,
  `id_personne` int(10) NOT NULL,
  `ninea` varchar(50) NOT NULL,
  `agrement` varchar(50) DEFAULT NULL,
  `registre_de_commerce` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_Fournisseur`),
  KEY `FK_id_personne_of_fournisseur` (`id_personne`),
  CONSTRAINT `FK_id_personne_of_fournisseur` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` VALUES (1,17,'nin-56521482','OUI','valide'),(2,37,'nin-21548965','oui','Valide'),(3,18,'nin-54698723','OUI','Valide'),(4,6,'nin-84652152','OUI','Valide'),(5,27,'nin-54982361','OUI','Valide');
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerant`
--

DROP TABLE IF EXISTS `gerant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerant` (
  `id_gerant` int(10) NOT NULL AUTO_INCREMENT,
  `id_personne` int(10) NOT NULL,
  `id_local` int(10) NOT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `specialite` varchar(50) DEFAULT NULL,
  `type_de_contrat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_gerant`),
  KEY `FK_id_local_of_gerant` (`id_local`),
  KEY `FK_id_personne_of_gerant` (`id_personne`),
  CONSTRAINT `FK_id_local_of_gerant` FOREIGN KEY (`id_local`) REFERENCES `local` (`id_local`),
  CONSTRAINT `FK_id_personne_of_gerant` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerant`
--

LOCK TABLES `gerant` WRITE;
/*!40000 ALTER TABLE `gerant` DISABLE KEYS */;
INSERT INTO `gerant` VALUES (1,19,1,'4 ann├®es d\'exp├®rience','Marketing','CDI'),(2,12,2,'2 ann├®es d\'exp├®rience','Ressources humaines','CDI'),(3,1,3,'1 ans d\'exp├®rience','Finance','CDD'),(4,18,4,'1 ans d\'exp├®rience','Commerce','CDD'),(5,39,5,'3 ans d\'exp├®rience','Marketing digital','CDI');
/*!40000 ALTER TABLE `gerant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livreur`
--

DROP TABLE IF EXISTS `livreur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livreur` (
  `id_livreur` int(10) NOT NULL AUTO_INCREMENT,
  `id_personne` int(10) NOT NULL,
  `nature_permis` varchar(50) DEFAULT NULL,
  `moyen_de_transport` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_livreur`),
  KEY `FK_id_personne_of_livreur` (`id_personne`),
  CONSTRAINT `FK_id_personne_of_livreur` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livreur`
--

LOCK TABLES `livreur` WRITE;
/*!40000 ALTER TABLE `livreur` DISABLE KEYS */;
INSERT INTO `livreur` VALUES (1,48,'Permis B1','Vehicule'),(2,50,'Permis B2','V├®hicule'),(3,40,'Permis A','Moto'),(4,36,'Permis A2','Moto'),(5,3,'Permis B2','V├®hicule'),(6,56,'Permis B1','V├®hicule');
/*!40000 ALTER TABLE `livreur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local`
--

DROP TABLE IF EXISTS `local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local` (
  `id_local` int(10) NOT NULL AUTO_INCREMENT,
  `id_adresse` int(10) NOT NULL,
  `nom_local` varchar(50) DEFAULT NULL,
  `superficie_local` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_local`),
  KEY `FK_id_adresse_of_local` (`id_adresse`),
  CONSTRAINT `FK_id_adresse_of_local` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local`
--

LOCK TABLES `local` WRITE;
/*!40000 ALTER TABLE `local` DISABLE KEYS */;
INSERT INTO `local` VALUES (1,16,'Local Rufisque',100.00),(2,3,'Local Saint-Louis',151.00),(3,5,'Local  Thies',140.00),(4,15,'Local Louga',120.00),(5,8,'Local Diourbel',130.00);
/*!40000 ALTER TABLE `local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personne`
--

DROP TABLE IF EXISTS `personne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personne` (
  `id_personne` int(10) NOT NULL AUTO_INCREMENT,
  `id_adresse` int(10) NOT NULL,
  `nom_pers` varchar(50) NOT NULL,
  `prenom_pers` varchar(50) NOT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `age` smallint(6) DEFAULT NULL,
  `sexe` varchar(5) NOT NULL,
  PRIMARY KEY (`id_personne`),
  UNIQUE KEY `UQ_personne_nom_prenom_mail` (`nom_pers`,`prenom_pers`,`mail`),
  KEY `FK_id_adresse_of_personne` (`id_adresse`),
  CONSTRAINT `FK_id_adresse_of_personne` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personne`
--

LOCK TABLES `personne` WRITE;
/*!40000 ALTER TABLE `personne` DISABLE KEYS */;
INSERT INTO `personne` VALUES (1,2,'Kouli baly','Kalidou ','Kalidou@gmail.com','775556699',31,'M'),(2,16,'Dieng ','Pape Abdoulaye ','Dieng@gmail.com','785426589',28,'M'),(3,17,'Faty','Alioune Badara ','Faty@gmail.com','754625982',23,'M'),(4,16,'Sy','Pape Mamadou ','Sy@gmail.com','785214596',25,'M'),(5,14,'Di├®dhiou','Abdoulaye ','Di├®dhiou@gmail.com','745895623',22,'M'),(6,15,'Diouf','Ousmane ','Diouf@gmail.com','795652548',28,'M'),(7,16,'San├®','Mamadou ','San├®@gmail.com','759862548',18,'M'),(8,19,'Sidib├®','Cheikh Tidiane ','Sidib├®@gmail.com','759652458',23,'M'),(9,12,'Wagu├®','Moussa ','Wagu├®@gmail.com','785469525',24,'M'),(10,4,'Ciss├®','Pape Abou ','Ciss├®@gmail.com','785469256',27,'M'),(11,12,'Diatta','Kr├®pin','Diatta@gmail.com','785423652',23,'M'),(12,16,'Sarr','Isma├»la','Sarr@gmail.com','759826521',24,'M'),(13,8,'Kouyat├®','Cheikhou ','Kouyat├®@gmail.com','785426933',32,'M'),(14,5,'Mendy','Nampalys','Mendy@gmail.com','785426963',30,'M'),(15,14,'Ndiaye','Iliman','Ndiaye@gmail.com','758265748',22,'M'),(16,4,'Di├®dhiou','Famara ','Di├®dhiou@gmail.com','785462953',29,'M'),(17,17,'Dia','Boulaye ','Dia@gmail.com','756542325',25,'M'),(18,3,'Dieng','Bamba ','Dieng@gmail.com','785462369',22,'M'),(19,8,'Man├®','Sadio ','Man├®@gmail.com','756524859',30,'M'),(20,12,'Ciss├®','Aliou ','Ciss├®@gmail.com','755213525',46,'M'),(21,18,'Traor├®','Aya ','Aya@gmail.com','754262210',28,'F'),(22,18,'Traore','Astou','Astou@gmail.com','785462585',32,'F'),(23,5,'Marie','Anne','Anne@gmail.com','754256523',18,'F'),(24,5,'S├¿ne','Nd├¿ye ','Nd├¿ye@gmail.com','742159865',24,'F'),(25,9,'Sarr','Oumoul Khairy ','Sarr@gmail.com','754216985',30,'F'),(26,19,'Ba','Mya ','ba@gmail.com','754282210',28,'F'),(27,4,'Seck','Adja','Adja@gmail.com','754213699',29,'F'),(28,16,'Dieng','Fatou ','Fatou@gmail.com','754623524',32,'F'),(29,10,'Diouf','Mame Diodio ','Diouf@gmail.com','754126598',32,'F'),(30,17,'Fall','Aminata ','Fall@gmail.com','785421685',32,'F'),(31,14,'Daou','Ramata ','Daou@gmail.com','754213698',30,'F'),(32,13,'Sidibe','Aicha ','Sidibe@gmail.com','795321545',31,'F'),(33,18,'Thiam','Oumoul ','Thiam@gmail.com','754621358',34,'F'),(34,12,'Diouf','Bineta ','Diouf@gmail.com','754213698',32,'F'),(35,11,'Diatta','Salimata ','Diatta@gmail.com','762135468',25,'F'),(36,15,'Diagne','Nafissatou ','Diagne@gmail.com','745213598',22,'F'),(37,17,'Diallo','Babacar','Diallo@gmail.com','754284510',12,'M'),(38,5,'Diop','Moussa','Diop@gmail.com','752184510',19,'M'),(39,11,'Ndiaye','Oumy','Ndiaye@gmail.com','754284510',12,'F'),(40,12,'Diarra','Abdou','Diarra@gmail.com','754212150',9,'M'),(41,2,'Mboup','Tala','Mboup@gmail.com','754953510',13,'F'),(42,9,'Mane','Mor','Mane@gmail.com','754598510',15,'M'),(43,3,'Traor├®','Babacar','Traor├®@gmail.com','754213589',25,'M'),(44,11,'Diallo','Aya ','DialloAya@gmail.com','754896524',12,'M'),(45,15,'Seck','Mamy','SeckMamy@gmail.com','754862135',24,'F'),(46,4,'Gomis','Marie','Gomis@gmail.com','754215895',26,'F'),(47,18,'S├¿ne','John','JohnS├¿ne@gmail.com','745698523',25,'F'),(48,13,'Sarr','Keba','Keba@gmail.com','789654231',12,'M'),(49,15,'Mar','Oumar','Oumar@gmail.com','742159856',28,'M'),(50,2,'Diop','Abdou','Abdou@gmail.com','745215896',14,'M'),(51,16,'Mane','Papis','Papis@gmail.com','756253125',25,'M'),(52,16,'Bouye','Abdou','abdou@gmail.com','745215985',27,'M'),(53,3,'Diakite','Nabou','nabou@gmail.com','754213598',13,'F'),(54,16,'Rassoul','Aicha','aicha@gmail.com','789546325',21,'F'),(55,2,'Mboup','Fadel','fadel@gmail.com','745213259',10,'M'),(56,13,'Ba','Fatim','ba@gmail.com','712321589',16,'F'),(57,2,'Amar','Fallou','amar@gmail.com','723215987',21,'M'),(58,20,'Ndour','Maurice ','Ndour@gmail.com','754213598',26,'M'),(59,15,'Thiam','Djibril ','Djibril@gmail.com','745125987',27,'M'),(60,13,'Diop','Pape ','Pape@gmail.com','785412365',29,'M'),(61,15,'Sambe','Lamine','Lamine@gmail.com','741258963',29,'M'),(62,18,'Faye','Mouhammad','Faye@gmail.com','785413214',27,'M'),(63,16,'Ndoye','Youssou ','Ndoye@gmail.com','745215874',26,'M'),(64,8,'Faye','Amina','Faye@gmail.com','752145982',24,'F'),(65,6,'Sam','Fanta','Fanta@gmail','789654124',25,'F'),(66,16,'Ndour','Lana','lana@gmail.com','742589632',28,'F'),(67,18,'Gueye','Aby','Aby@gmail.com','789652587',27,'F');
/*!40000 ALTER TABLE `personne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rayon`
--

DROP TABLE IF EXISTS `rayon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rayon` (
  `id_rayon` int(10) NOT NULL AUTO_INCREMENT,
  `id_rayonniste` int(10) NOT NULL,
  `id_local` int(10) NOT NULL,
  `emplacement` varchar(50) DEFAULT NULL,
  `longueur` decimal(50,0) DEFAULT NULL,
  `nombre_de_casier` int(100) DEFAULT NULL,
  `le_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_rayon`),
  KEY `FK_id_local_of_rayon` (`id_local`),
  KEY `FK_id_rayonniste_of_rayon` (`id_rayonniste`),
  CONSTRAINT `FK_id_local_of_rayon` FOREIGN KEY (`id_local`) REFERENCES `local` (`id_local`),
  CONSTRAINT `FK_id_rayonniste_of_rayon` FOREIGN KEY (`id_rayonniste`) REFERENCES `rayonniste` (`id_rayonniste`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rayon`
--

LOCK TABLES `rayon` WRITE;
/*!40000 ALTER TABLE `rayon` DISABLE KEYS */;
INSERT INTO `rayon` VALUES (1,1,5,'Zone 1',120,100,'Boulangerie'),(2,2,4,'Zone 2',30,99,'Poissonnerie'),(3,3,3,'Zone 2',25,95,'Charcuterie'),(4,4,2,'Zone B',19,120,'Fruits et L├®gumes'),(5,5,1,'Zone A',70,68,'P├ótisserie');
/*!40000 ALTER TABLE `rayon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rayonniste`
--

DROP TABLE IF EXISTS `rayonniste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rayonniste` (
  `id_rayonniste` int(10) NOT NULL AUTO_INCREMENT,
  `id_personne` int(10) NOT NULL,
  `experience` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_rayonniste`),
  KEY `FK_id_personne_of_rayonniste` (`id_personne`),
  CONSTRAINT `FK_id_personne_of_rayonniste` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rayonniste`
--

LOCK TABLES `rayonniste` WRITE;
/*!40000 ALTER TABLE `rayonniste` DISABLE KEYS */;
INSERT INTO `rayonniste` VALUES (1,23,'1 ann├®es d\'exp├®rience'),(2,20,'3 ann├®es d\'exp├®rience'),(3,30,'2 ann├®es d\'exp├®rience'),(4,11,'5 ann├®es d\'exp├®rience'),(5,33,'0 ann├®e d\'exp├®rience');
/*!40000 ALTER TABLE `rayonniste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tech_surface`
--

DROP TABLE IF EXISTS `tech_surface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tech_surface` (
  `id_tech_surface` int(10) NOT NULL AUTO_INCREMENT,
  `id_personne` int(10) NOT NULL,
  `id_local` int(10) NOT NULL,
  `nb_heures_services` time DEFAULT NULL,
  PRIMARY KEY (`id_tech_surface`),
  KEY `FK_id_local_of_tech_surf` (`id_local`),
  KEY `FK_id_personne_of_tech_surface` (`id_personne`),
  CONSTRAINT `FK_id_local_of_tech_surf` FOREIGN KEY (`id_local`) REFERENCES `local` (`id_local`),
  CONSTRAINT `FK_id_personne_of_tech_surface` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tech_surface`
--

LOCK TABLES `tech_surface` WRITE;
/*!40000 ALTER TABLE `tech_surface` DISABLE KEYS */;
INSERT INTO `tech_surface` VALUES (1,28,1,'02:00:00'),(2,29,1,'02:00:00'),(3,30,2,'03:00:00'),(4,31,2,'03:00:00'),(5,32,3,'02:00:00'),(6,33,3,'02:00:00'),(7,34,4,'01:30:00'),(8,35,4,'01:30:00'),(9,36,5,'02:30:00'),(10,23,5,'02:30:00');
/*!40000 ALTER TABLE `tech_surface` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_client`
--

DROP TABLE IF EXISTS `type_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_client` (
  `id_type_client` int(10) NOT NULL AUTO_INCREMENT,
  `id_client` int(10) NOT NULL,
  `type_client` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_type_client`),
  KEY `FK_id_client_of_type_client` (`id_client`),
  CONSTRAINT `FK_id_client_of_type_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_Client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_client`
--

LOCK TABLES `type_client` WRITE;
/*!40000 ALTER TABLE `type_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_client` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-31  8:21:42
