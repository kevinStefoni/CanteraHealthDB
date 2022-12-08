CREATE DATABASE  IF NOT EXISTS `canterahealthdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `canterahealthdb`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: canterahealth.cvnm0pefalo9.us-east-2.rds.amazonaws.com    Database: canterahealthdb
-- ------------------------------------------------------
-- Server version	8.0.28

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `AIR_MATTRESS`
--

DROP TABLE IF EXISTS `AIR_MATTRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AIR_MATTRESS` (
  `AIR_MATTRESS_NUM` int NOT NULL AUTO_INCREMENT,
  `AIR_MATTRESS_PATIENT_ID` varchar(4) NOT NULL,
  `AIR_MATTRESS_COMPANY` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AIR_MATTRESS_NUM`),
  KEY `AIR_MATTRESS_PATIENT_ID` (`AIR_MATTRESS_PATIENT_ID`),
  CONSTRAINT `AIR_MATTRESS_ibfk_1` FOREIGN KEY (`AIR_MATTRESS_PATIENT_ID`) REFERENCES `PATIENT` (`PATIENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AIR_MATTRESS`
--

LOCK TABLES `AIR_MATTRESS` WRITE;
/*!40000 ALTER TABLE `AIR_MATTRESS` DISABLE KEYS */;
INSERT INTO `AIR_MATTRESS` VALUES (38,'318B','Medline'),(39,'506B','Medline'),(40,'414B','Medline'),(41,'414B','Medline'),(42,'505B','Medline'),(43,'404B','Medline'),(44,'515A','Medline'),(45,'418A','Medline'),(46,'402B','Medline'),(47,'512A','Medline'),(49,'502B','Medline'),(50,'306B','Medline'),(51,'500A','Medline'),(52,'519B','Medline');
/*!40000 ALTER TABLE `AIR_MATTRESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `CHECK_MATTRESSES`
--

DROP TABLE IF EXISTS `CHECK_MATTRESSES`;
/*!50001 DROP VIEW IF EXISTS `CHECK_MATTRESSES`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `CHECK_MATTRESSES` AS SELECT 
 1 AS `PATIENT_ID`,
 1 AS `PATIENT_FNAME`,
 1 AS `PATIENT_LNAME`,
 1 AS `WOUND_CARE_WOUND_STAGE`,
 1 AS `AIR_MATTRESS_NUM`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `HAS_AIR_MATTRESS`
--

DROP TABLE IF EXISTS `HAS_AIR_MATTRESS`;
/*!50001 DROP VIEW IF EXISTS `HAS_AIR_MATTRESS`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `HAS_AIR_MATTRESS` AS SELECT 
 1 AS `PATIENT_ID`,
 1 AS `PATIENT_FNAME`,
 1 AS `PATIENT_LNAME`,
 1 AS `WOUND_CARE_WOUND_STAGE`,
 1 AS `AIR_MATTRESS`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `MEDICATIONS`
--

DROP TABLE IF EXISTS `MEDICATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MEDICATIONS` (
  `MEDICATION_ID` int NOT NULL AUTO_INCREMENT,
  `MEDICATION_NAME` varchar(80) NOT NULL,
  PRIMARY KEY (`MEDICATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEDICATIONS`
--

LOCK TABLES `MEDICATIONS` WRITE;
/*!40000 ALTER TABLE `MEDICATIONS` DISABLE KEYS */;
INSERT INTO `MEDICATIONS` VALUES (1,'TORSEMIDE'),(2,'HOMATROPINE HYDROBROMIDE'),(3,'SODIUM BICARBONATE'),(4,'DOXYCYCLINE HYCLATE'),(5,'AMANTADINE HYDROCHLORIDE'),(6,'VENLAFAXINE'),(7,'ZINC OXIDE'),(8,'POTASSIUM NITRATE AND SODIUM FLUORIDE'),(9,'LOPERAMIDE HCL'),(10,'BACITRACIN ZINC AND POLYMYXIN B SULFATE'),(11,'NEOMYCIN, POLYMYXIN B, PRAMOXINE HCL'),(12,'QUERCUS DUMOSA'),(13,'ISOPROPYL ALCOHOL'),(14,'OXYGEN'),(15,'MENTHOL'),(16,'CETIRIZINE HYDROCHLORIDE'),(17,'CAMPHOR, PHENOL'),(18,'VALSARTAN'),(19,'BEECH'),(20,'PSEUDOEPHEDRINE HCL'),(21,'DANDELION'),(22,'OCTINOXATE AND TITANIUM DIOXIDE'),(23,'ACETAMINOPHEN'),(24,'DESOXIMETASONE'),(25,'CARBON DIOXIDE'),(26,'TITANIUM DIOXIDE, ETHYLHEXYL METHOXYCINNAMATE, ETHYLHEXYL SALICYLATE'),(27,'ROSIGLITAZONE MALEATE AND GLIMEPIRIDE'),(28,'DOCUSATE SODIUM'),(29,'SALICYLIC ACID'),(30,'EUCALYPTOL'),(31,'ALCOHOL'),(32,'ALUMINUM ZIRCONIUM TETRACHLOROHYDREX GLY'),(33,'AVOBENZONE, HOMOSALATE, OCTISALATE, OCTOCRYLENE, AND OXYBENZONE'),(34,'BISMUTH SUBSALICYLATE'),(35,'RAMIPRIL'),(36,'ALLANTOIN'),(37,'CHLORPHENIRAMINE MALEATE'),(38,'AMPHOTERICIN B'),(39,'AMMONIUM MURIATICUM, ANTIMONIUM TARTARICUM, ARSENICUM ALBUM, CALCAREA CARBONICA,'),(41,'HYDROQUINONE'),(42,'TITANIUM DIOXIDE AND ZINC OXIDE'),(43,'DIMETHICONE'),(44,'IMIQUIMOD'),(45,'DOXYLAMINE SUCCINATE'),(46,'FLUCONAZOLE'),(47,'MEMANTINE HYDROCHLORIDE'),(48,'ADALIMUMAB'),(49,'ALPRAZOLAM'),(50,'PRAMIPEXOLE DIHYDROCHLORIDE'),(51,'BISMUTHUM METALLICUM, BRYONIA, CIMICIFUGA, GOSSYPIUM HERBACEUM, IPECAC., KREOSOT'),(52,'SERTRALINE HYDROCHLORIDE'),(53,'CEFAZOLIN SODIUM'),(54,'HYDRALAZINE HYDROCHLORIDE'),(55,'PIOGLITAZONE HYDROCHLORIDE'),(56,'ACETAMINOPHEN, DIPHENHYDRAMINE HCL'),(57,'ADENOSINE DIMETHICONE'),(58,'ERYTHROMYCIN ETHYLSUCCINATE'),(59,'AZITHROMYCIN'),(60,'ACETAMINOPHEN, DEXTROMETHORPHAN HYDROBROMIDEM, DOXYLAMINE SUCCINATE'),(61,'DIAZEPAM'),(62,'METHYLPREDNISOLONE ACETATE'),(63,'MESALAMINE'),(64,'WITCH HAZEL'),(65,'DEXTROMETHORPHAN HYDROBROMIDE, DOXYLAMINE SUCCINATE'),(66,'RED OAK'),(67,'ARNICA MONTANA'),(68,'HYDROCODONE BITARTRATE AND ACETAMINOPHEN'),(69,'IRBESARTAN AND HYDROCHLOROTHIAZIDE'),(70,'LEDUM PALUSTRE TWIG, URTICA URENS, SIMABA CEDRON SEED, DELPHINIUM STAPHISAGRIA S'),(71,'HYDROCHLOROTHIAZIDE'),(73,'CHLOROXYLENOL'),(74,'PYRITHIONE ZINC'),(75,'ASPIRIN, CITRIC ACID, SODIUM BICARBONATE'),(77,'HYDROCODONE BITARTRATE'),(78,'DIPHENHYDRAMINE HCL'),(79,'POVIDONE IODINE'),(80,'QUINAPRIL'),(81,'ERYTHROPOIETIN'),(82,'DIFLUNISAL'),(83,'SALINE'),(84,'QUETIAPINE FUMARATE'),(85,'METHYLPHENIDATE HYDROCHLORIDE'),(88,'OXYBENZONE, AVOBENZONE, OCTOCRYLENE'),(89,'PSEUDOEPHEDRINE HYDROCHLORIDE'),(91,'DEXTROSE, SODIUM CHLORIDE, AND POTASSIUM CHLORIDE'),(92,'ACETAZOLAMIDE'),(93,'TITANIUM DIOXIDE, OCTINOXATE'),(94,'OMEPRAZOLE'),(95,'TITANIUM DIOXIDE AND OCTINOXATE'),(96,'BUPROPION HYDROCHLORIDE'),(97,'ATORVASTATIN CALCIUM'),(98,'AMOXICILLIN'),(99,'BALANCED SALT SOLUTION'),(100,'CLONIDINE HYDROCHLORIDE'),(101,'GABAPENTIN'),(102,'TRAZODONE HYDROCHLORIDE'),(103,'TITANIUM DIOXIDE, ZINC OXIDE'),(104,'OCTINOXATE, PADIMATE O'),(105,'ATOVAQUONE'),(106,'EUCALYPTOL, MENTHOL, METHYL SALICYLATE, THYMOL'),(107,'TITANIUM DIOXIDE OCTINOXATE'),(109,'PENICILLIUM MIXTURE'),(110,'MENTHOL AND BENZOCAINE'),(111,'WARFARIN'),(112,'PETROLATUM OPHTHALMIC OINTMENT'),(113,'ACONITUM NAPELLUS, APIS MELLIFICA, ARNICA MONTANA, BELLIS PERENNIS, BRYONIA, CAL'),(114,'ETHYNODIOL DIACETATE AND ETHINYL ESTRADIOL'),(116,'RIVASTIGMINE TARTRATE'),(117,'ACETAMINOPHEN AND CODEINE'),(119,'LORATADINE'),(120,'ACETAMINOPHEN, DEXTROMETHORPHAN HYDROBROMIDE AND DOXYLAMINE SUCCINATE'),(121,'BAHIA GRASS'),(124,'NABUMETONE'),(125,'CALENDULA OFFICINALIS'),(126,'DIPHENHYDRAMINE HYDROCHLORIDE, ZINC ACETATE'),(128,'NOT APPLICABLE'),(129,'CAMPHOR'),(132,'SODIUM MONOFLUOROPHOSPHATE'),(134,'DEXTROMETHORPHAN HYDROBROMIDE AND GUAIFENESIN'),(135,'MORPHINE SULFATE'),(136,'BACILLUS FIRMUS'),(137,'TRITICUM AESTIVUM POLLEN'),(139,'CLARITHROMYCIN'),(140,'BENZOYL PEROXIDE'),(142,'BENZOCAINE'),(143,'IBUPROFEN'),(145,'METHOXSALEN'),(148,'GUAIFENESIN, PSEUDOEPHEDRINE HYDROCHLORIDE'),(149,'FIREBUSH/BURNING BUSH'),(151,'INSULIN HUMAN'),(154,'AURUM HYPERICUM'),(155,'RISPERIDONE'),(156,'OCTINOXATE'),(157,'ANASTROZOLE'),(158,'CITRUS URTICA COMP. SPECIAL ORDER'),(159,'OXYCODONE AND ACETAMINOPHEN'),(160,'HERRING'),(161,'FLUORIDE'),(162,'BENZOIN RESIN'),(163,'NATURAL MEDICINE'),(164,'GUAIFENESIN, PHENYLEPHRINE HCL, DEXTROMETHORPHAN HBR'),(167,'DL-CAMPHOR,L-MENTHOL,METHYL SALICYLATE'),(168,'ACETAMINOPHEN, DEXTROMETHORPHAN HBR, GUAIFENESIN, PHENYLEPHRINE HCL'),(169,'METHYLDOPA'),(170,'CINNAMIC ACID, PHLORIDZINUM, ARGENTUM NITRICUM, ATP (ADENOSINE TRIPHOSPHATE DISO'),(171,'GALANTAMINE HYDROBROMIDE'),(172,'LEVONORGESTREL'),(173,'TRAMADOL');
/*!40000 ALTER TABLE `MEDICATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PATIENT`
--

DROP TABLE IF EXISTS `PATIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PATIENT` (
  `PATIENT_FNAME` varchar(45) DEFAULT NULL,
  `PATIENT_LNAME` varchar(45) DEFAULT NULL,
  `PATIENT_BDAY` date DEFAULT NULL,
  `PATIENT_AGE` int DEFAULT NULL,
  `PATIENT_SEX` enum('Male','Female') DEFAULT NULL,
  `PATIENT_HEIGHT_INCHES` int DEFAULT NULL,
  `PATIENT_WEIGHT_LBS` int DEFAULT NULL,
  `PATIENT_INSURANCE` varchar(45) DEFAULT NULL,
  `PATIENT_ENTRY_DATE` date DEFAULT NULL,
  `PATIENT_RM_NUM` int DEFAULT NULL,
  `PATIENT_BED` enum('A','B') DEFAULT NULL,
  `PATIENT_ID` varchar(4) NOT NULL,
  PRIMARY KEY (`PATIENT_ID`),
  CONSTRAINT `CHK_AGE` CHECK (((`PATIENT_AGE` >= 18) and (`PATIENT_AGE` <= 120))),
  CONSTRAINT `CHK_HEIGHT` CHECK (((`PATIENT_HEIGHT_INCHES` >= 40) and (`PATIENT_HEIGHT_INCHES` <= 108))),
  CONSTRAINT `CHK_WEIGHT` CHECK (((`PATIENT_WEIGHT_LBS` >= 40) and (`PATIENT_WEIGHT_LBS` <= 1000)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PATIENT`
--

LOCK TABLES `PATIENT` WRITE;
/*!40000 ALTER TABLE `PATIENT` DISABLE KEYS */;
INSERT INTO `PATIENT` VALUES ('Meaghan','Johnson','1921-12-10',100,'Female',97,428,'Blue Cross Blue Shield','2019-06-28',300,'A','300A'),('Vickie','Kurdani','1951-12-29',70,'Female',47,546,'United','2003-11-10',300,'B','300B'),('Thomasin','Cake','1964-11-25',57,'Female',76,502,'Blue Cross Blue Shield','2006-02-16',301,'A','301A'),('Garwood','Karlolak','1947-10-08',75,'Male',44,193,'Medicare','2004-07-15',301,'B','301B'),('Mathilda','Bolstridge','1954-08-31',68,'Female',69,541,'Blue Cross Blue Shield','2004-11-06',302,'A','302A'),('Sheilakathryn','Bibb','1935-10-31',87,'Female',51,121,'Medicaid','2022-02-25',302,'B','302B'),('Luciana','Salery','1929-12-20',92,'Female',77,216,'None','2011-06-05',303,'B','303B'),('Granthem','Tinniswood','1921-06-25',101,'Male',76,147,'None','2001-01-04',304,'A','304A'),('Trixie','Harvie','1967-03-11',55,'Female',49,180,'None','2005-07-07',304,'B','304B'),('Sadella','Boulden','1928-07-21',94,'Female',81,408,'Blue Cross Blue Shield','2014-06-20',305,'A','305A'),('Guthry','Comellini','1915-01-18',107,'Male',70,211,'None','2006-05-13',305,'B','305B'),('Editha','Tebald','1965-11-02',57,'Female',55,557,'United','2010-11-28',306,'A','306A'),('Swen','O\' Bee','1953-02-13',69,'Male',72,260,'Medicaid','2010-08-16',306,'B','306B'),('Zackariah','Obell','1921-02-24',101,'Male',43,420,'None','2020-06-25',308,'A','308A'),('Faye','Forder','1944-11-16',77,'Female',43,191,'Blue Cross Blue Shield','2020-04-22',308,'B','308B'),('Lacie','Hanhart','1965-01-11',57,'Female',88,406,'Medicare','2009-07-14',309,'A','309A'),('Christian','Asman','1918-07-05',104,'Male',63,531,'Medicaid','2012-07-28',309,'B','309B'),('Mair','Bonafant','1959-07-25',63,'Female',43,307,'Molina','2010-01-21',310,'A','310A'),('Garreth','Garard','1952-09-02',70,'Male',65,254,'United','2004-08-13',310,'B','310B'),('Claudie','Ahearne','1927-01-20',95,'Female',91,363,'Medicaid','2001-06-17',311,'A','311A'),('Kelila','Gomes','1920-01-11',102,'Female',41,570,'None','2019-07-05',311,'B','311B'),('Leonard','Mathen','1919-09-19',103,'Male',91,192,'Blue Cross Blue Shield','2012-02-07',312,'A','312A'),('Dasi','Figures','1913-01-06',109,'Female',78,258,'Medicaid','2011-08-11',313,'A','313A'),('Sheffie','Jentet','1928-02-28',94,'Male',83,489,'Molina','2001-11-30',313,'B','313B'),('Corly','Rasell','1920-01-18',102,'Female',88,582,'Molina','2000-11-25',618,'A','314A'),('Dene','Charkham','1932-02-19',90,'Male',98,334,'Blue Cross Blue Shield','2008-03-14',314,'B','314B'),('Reilly','Aitchinson','1927-04-17',95,'Male',40,112,'None','2003-09-17',315,'A','315A'),('Aura','Gier','1949-06-03',73,'Female',53,477,'United','2012-12-25',315,'B','315B'),('North','Blowes','1928-05-28',94,'Male',90,144,'United','2020-09-18',316,'B','316B'),('Cece','Foch','1926-01-23',96,'Male',73,490,'Medicare','2002-04-15',317,'A','317A'),('Lidia','Dei','1945-09-23',77,'Female',62,584,'Medicaid','2013-10-04',317,'B','317B'),('Abagael','McCluskey','1960-07-18',62,'Female',96,221,'Blue Cross Blue Shield','2007-09-17',318,'B','318B'),('Anthea','Carvell','1935-03-02',87,'Female',81,120,'Molina','2005-07-27',319,'A','319A'),('Roi','Mogg','1947-04-16',75,'Male',79,169,'Medicaid','2002-08-23',320,'A','320A'),('Ilsa','Vearncomb','1928-03-24',94,'Female',67,443,'Medicare','2013-08-04',320,'B','320B'),('Hubert','Kitchen','1950-03-21',72,'Male',101,486,'United','2012-10-25',400,'B','400B'),('Jessa','Karmel','1920-06-28',102,'Female',93,290,'United','2001-03-29',401,'A','401A'),('Lilyan','Anstis','1961-06-14',61,'Female',75,191,'United','2001-12-20',401,'B','401B'),('Arvie','Alvin','1926-02-14',96,'Male',55,400,'Molina','2014-11-03',402,'B','402B'),('Harriot','Gristwood','1944-02-19',78,'Female',51,190,'United','2013-08-28',403,'A','403A'),('Dennis','Goom','1957-11-27',64,'Male',98,371,'Molina','2016-04-13',403,'B','403B'),('Alberto','McArthur','1932-08-14',90,'Male',96,119,'Blue Cross Blue Shield','2016-02-14',404,'B','404B'),('Lori','Splevin','1947-10-23',75,'Female',74,226,'Molina','2013-04-25',405,'A','405A'),('Jeannie','Tewes','1932-03-23',90,'Female',47,576,'Medicare','2022-01-13',405,'B','405B'),('Braden','Trees','1923-09-08',99,'Male',66,413,'None','2022-08-31',406,'B','406B'),('Yevette','Kirrens','1923-10-27',99,'Female',42,212,'None','2002-09-24',407,'A','407A'),('Lennard','Androli','1953-11-15',68,'Male',46,321,'Medicare','2005-12-21',407,'B','407B'),('Brunhilda','Wallwood','1949-02-14',73,'Female',53,513,'Molina','2013-12-14',408,'A','408A'),('Judon','Scain','1960-03-04',62,'Male',84,131,'Molina','2014-04-01',408,'B','408B'),('Jill','Dellow','1926-08-27',96,'Female',61,156,'Molina','2014-04-19',409,'A','409A'),('Chaddie','Dowdle','1923-09-18',99,'Male',93,578,'None','2012-01-22',409,'B','409B'),('Lane','Ettritch','1960-06-14',62,'Male',94,483,'Medicaid','2002-01-25',410,'A','410A'),('Barry','Syers','1914-11-27',107,'Female',70,217,'Medicaid','2020-09-17',410,'B','410B'),('Trumann','Izkoveski','1966-07-23',56,'Male',107,245,'None','2020-09-09',411,'A','411A'),('Lyndy','Holligan','1931-07-31',91,'Female',68,586,'Molina','2008-12-09',411,'B','411B'),('Pate','Shallcroff','1917-11-13',104,'Male',70,435,'Medicaid','2012-03-20',412,'A','412A'),('Carl','Tedman','1963-08-08',59,'Male',100,140,'None','2016-07-09',412,'B','412B'),('Jennica','Malpas','1952-09-18',70,'Female',41,120,'Medicaid','2009-08-15',413,'A','413A'),('Zora','Belvard','1967-03-14',55,'Female',47,267,'Molina','2012-10-31',413,'B','413B'),('Jarib','Haukey','1935-08-26',87,'Male',76,158,'Molina','2006-07-28',414,'A','414A'),('Ingemar','Kiloh','1940-06-30',82,'Male',57,212,'None','2003-01-27',414,'B','414B'),('Julia','Antognoni','1931-02-21',91,'Female',59,246,'None','2016-04-27',415,'A','415A'),('Elwira','Martino','1950-06-08',72,'Female',104,293,'United','2011-06-19',415,'B','415B'),('Ciel','Fowley','1942-01-13',80,'Female',89,298,'United','2014-05-06',416,'A','416A'),('Malorie','Kropach','1956-09-07',66,'Female',93,390,'Medicare','2017-11-11',416,'B','416B'),('Kerrie','Tomaschke','1937-04-17',85,'Female',77,294,'Blue Cross Blue Shield','2021-10-08',417,'A','417A'),('Hastings','Olyfant','1918-02-27',104,'Male',75,575,'Medicare','2018-01-06',417,'B','417B'),('Dominica','Dashwood','1958-07-18',64,'Female',56,412,'Medicare','2008-06-17',418,'A','418A'),('Elijah','Pyper','1924-04-18',98,'Male',88,159,'Molina','2019-04-05',419,'A','419A'),('Hewett','McLernon','1917-06-23',105,'Male',45,420,'Blue Cross Blue Shield','2016-03-09',419,'B','419B'),('Erl','Rochford','1959-04-06',63,'Male',90,343,'United','2018-05-07',420,'A','420A'),('Hugues','Marsden','1924-03-22',98,'Male',84,244,'United','2006-02-06',420,'B','420B'),('Marlyn','Laviss','1934-07-22',88,'Female',58,288,'Blue Cross Blue Shield','2011-09-05',500,'A','500A'),('Dimitry','Torrent','1955-05-30',67,'Male',97,223,'United','2018-08-15',500,'B','500B'),('Salli','Goldson','1964-11-21',57,'Female',67,511,'Blue Cross Blue Shield','2008-02-07',501,'B','501B'),('Jasmin','Bunyard','1914-05-07',108,'Female',86,389,'Medicaid','2007-06-16',502,'A','502A'),('Shanda','Hurler','1914-08-26',108,'Female',74,356,'Molina','2002-05-22',502,'B','502B'),('Nisse','Geleman','1932-09-12',90,'Female',90,182,'United','2022-03-11',503,'A','503A'),('Gardy','Amaya','1930-06-18',92,'Male',100,226,'Molina','2003-12-27',503,'B','503B'),('Odo','Gascar','1916-02-10',106,'Male',76,420,'Molina','2020-05-06',504,'B','504B'),('Huberto','Willoughby','1917-07-12',105,'Male',47,287,'Medicare','2021-08-03',505,'A','505A'),('Manda','Dobbyn','1933-09-06',89,'Female',64,171,'Medicaid','2019-09-10',505,'B','505B'),('Arnie','Clausner','1962-07-31',60,'Male',101,255,'Medicare','2005-05-26',506,'A','506A'),('Aurilia','Gomez','1940-09-25',82,'Female',52,184,'Blue Cross Blue Shield','2002-09-10',506,'B','506B'),('Doria','Andreu','1957-06-12',65,'Female',78,457,'Blue Cross Blue Shield','2009-05-10',507,'A','507A'),('Raynor','Sire','1917-02-06',105,'Male',90,149,'Molina','2008-06-11',509,'A','509A'),('Abigail','Martensen','1926-12-23',95,'Female',48,191,'None','2017-11-15',509,'B','509B'),('Nealon','Wille','1925-11-09',97,'Male',67,436,'United','2016-10-15',510,'B','510B'),('Cyndie','Jori','1951-09-01',71,'Female',90,541,'United','2003-11-08',511,'B','511B'),('Chick','Cristobal','1920-11-10',101,'Male',107,167,'Medicare','2015-12-17',512,'A','512A'),('Gianni','Wigfall','1961-08-12',61,'Male',89,215,'United','2008-12-06',512,'B','512B'),('Hillery','Mulryan','1948-05-08',74,'Male',97,438,'None','2010-02-26',513,'A','513A'),('Adair','Gever','1925-10-13',97,'Male',102,159,'Medicaid','2014-12-24',513,'B','513B'),('Riobard','McLeman','1936-08-07',86,'Male',108,425,'Molina','2018-02-17',514,'B','514B'),('Federica','Macquire','1930-07-05',92,'Female',63,363,'Molina','2014-07-08',515,'A','515A'),('Shanan','Peggram','1961-08-12',61,'Male',93,138,'United','2016-07-20',515,'B','515B'),('Carmel','Wickersham','1937-12-19',84,'Female',74,155,'Blue Cross Blue Shield','2008-10-04',516,'A','516A'),('Ferdy','Attock','1934-05-20',88,'Male',90,401,'Medicare','2018-01-23',516,'B','516B'),('Lesley','Haggarth','1924-12-06',97,'Male',84,487,'Medicare','2013-10-20',517,'A','517A'),('Fannie','Nellies','1943-08-05',79,'Female',90,462,'Molina','2017-09-16',517,'B','517B'),('Kellen','Becken','1964-10-18',58,'Female',45,174,'Medicare','2004-08-23',518,'A','518A'),('Sharia','Creegan','1914-01-04',108,'Female',69,352,'None','2004-02-17',518,'B','518B'),('Phillida','Bell','1951-12-27',70,'Female',58,112,'United','2008-05-17',519,'A','519A'),('Paul','Scullion','1952-10-28',70,'Male',85,262,'Medicaid','2005-09-05',519,'B','519B'),('Simone','Bracco','1959-11-04',63,'Male',60,181,'None','2010-01-06',520,'A','520A'),('Kristoffer','Lardnar','1942-09-18',80,'Male',67,144,'None','2006-09-11',601,'A','601A'),('Jaquelyn','Basil','1946-07-29',76,'Female',56,362,'Medicaid','2012-06-03',601,'B','601B'),('Nilson','Jursch','1949-11-23',72,'Male',80,490,'Medicare','2005-09-01',602,'B','602B'),('Tully','cornhill','1922-10-29',100,'Male',92,259,'United','2001-06-17',604,'B','604B'),('Pooh','Jowett','1933-04-23',89,'Male',57,377,'Molina','2020-10-18',605,'B','605B'),('Collen','Kintish','1959-10-09',63,'Female',72,180,'United','2018-03-18',609,'B','609B'),('Osbourne','Ballach','1935-08-02',87,'Male',108,472,'Blue Cross Blue Shield','2022-08-30',610,'B','610B'),('Towny','Wallsam','1934-12-27',87,'Male',72,172,'Blue Cross Blue Shield','2016-02-07',611,'B','611B'),('Emma','Pedrick','1929-04-09',93,'Female',74,528,'United','2014-10-09',612,'B','612B'),('Laurella','Kubin','1927-02-19',95,'Female',86,502,'None','2005-03-06',613,'A','613A'),('Hart','Colleford','1962-11-20',59,'Male',54,485,'None','2003-05-25',613,'B','613B'),('Garold','Chew','1920-03-03',102,'Male',73,139,'Molina','2021-11-04',614,'B','614B'),('Dedie','Nutkins','1957-12-02',64,'Female',70,100,'None','2004-09-19',615,'A','615A'),('Kennedy','Rubinsztein','1917-11-23',104,'Male',96,296,'Medicaid','2017-10-31',615,'B','615B'),('Filide','Braikenridge','1925-06-17',97,'Female',41,241,'Medicare','2014-09-16',618,'B','618B');
/*!40000 ALTER TABLE `PATIENT` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`CS3743_Group3`@`%`*/ /*!50003 TRIGGER `TwoPatientsPerRoom` AFTER INSERT ON `PATIENT` FOR EACH ROW BEGIN
    DECLARE cnt INT;
    IF EXISTS(SELECT * FROM (SELECT COUNT(PATIENT_RM_NUM) AS C1 FROM PATIENT GROUP BY PATIENT_RM_NUM) AS T2 WHERE (C1 = 3)) THEN
        SIGNAL SQLSTATE VALUE '45000' 
        SET MESSAGE_TEXT = 'There can only be two patients per room.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`CS3743_Group3`@`%`*/ /*!50003 TRIGGER `TwoPatientsPerRoomUpdate` AFTER UPDATE ON `PATIENT` FOR EACH ROW BEGIN
    DECLARE cnt INT;
    IF EXISTS(SELECT * FROM (SELECT COUNT(PATIENT_RM_NUM) AS C1 FROM PATIENT GROUP BY PATIENT_RM_NUM) AS T2 WHERE (C1 = 3)) THEN
        SIGNAL SQLSTATE VALUE '45000'
        SET MESSAGE_TEXT = 'There can only be two patients per room.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PATIENT_INFO`
--

DROP TABLE IF EXISTS `PATIENT_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PATIENT_INFO` (
  `PATIENT_NOTES_PATIENT_ID` varchar(4) NOT NULL,
  `PATIENT_NOTES_TAKES_PILLS_CRUSHED` enum('TRUE','FALSE') DEFAULT NULL,
  `PATIENT_NOTES_MAXIMUM_MOBILITY` enum('Walk','Wheelchair','Bed') DEFAULT NULL,
  `PATIENT_NOTES_FALL_RISK` enum('TRUE','FALSE') DEFAULT NULL,
  `PATIENT_NOTES_COVID_STATUS` enum('POSITIVE','NEGATIVE') DEFAULT NULL,
  `PATIENT_NOTES_VISITOR_FREQUENCY` enum('Never','Sometimes','Often','Daily') DEFAULT NULL,
  PRIMARY KEY (`PATIENT_NOTES_PATIENT_ID`),
  CONSTRAINT `PATIENT_INFO_ibfk_1` FOREIGN KEY (`PATIENT_NOTES_PATIENT_ID`) REFERENCES `PATIENT` (`PATIENT_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PATIENT_INFO`
--

LOCK TABLES `PATIENT_INFO` WRITE;
/*!40000 ALTER TABLE `PATIENT_INFO` DISABLE KEYS */;
INSERT INTO `PATIENT_INFO` VALUES ('300A','TRUE','Walk','FALSE','NEGATIVE','Never'),('300B','TRUE','Walk','TRUE','NEGATIVE','Daily'),('301A','TRUE','Wheelchair','FALSE','NEGATIVE','Often'),('301B','FALSE','Bed','TRUE','NEGATIVE','Sometimes'),('302A','FALSE','Wheelchair','TRUE','NEGATIVE','Never'),('302B','TRUE','Walk','FALSE','NEGATIVE','Sometimes'),('303B','TRUE','Bed','TRUE','NEGATIVE','Sometimes'),('304A','FALSE','Wheelchair','TRUE','NEGATIVE','Never'),('304B','TRUE','Wheelchair','TRUE','NEGATIVE','Never'),('305A','FALSE','Walk','TRUE','NEGATIVE','Daily'),('305B','TRUE','Wheelchair','TRUE','NEGATIVE','Never'),('306A','TRUE','Walk','FALSE','NEGATIVE','Often'),('306B','FALSE','Walk','TRUE','NEGATIVE','Daily'),('308A','TRUE','Bed','TRUE','NEGATIVE','Often'),('308B','TRUE','Walk','TRUE','NEGATIVE','Often'),('309A','FALSE','Wheelchair','FALSE','NEGATIVE','Never'),('309B','FALSE','Walk','FALSE','NEGATIVE','Sometimes'),('310A','TRUE','Bed','FALSE','NEGATIVE','Daily'),('310B','TRUE','Wheelchair','FALSE','NEGATIVE','Sometimes'),('311A','TRUE','Wheelchair','TRUE','NEGATIVE','Never'),('311B','FALSE','Walk','FALSE','NEGATIVE','Daily'),('312A','FALSE','Walk','TRUE','NEGATIVE','Never'),('313A','FALSE','Wheelchair','FALSE','NEGATIVE','Sometimes'),('313B','TRUE','Wheelchair','FALSE','NEGATIVE','Sometimes'),('314A','TRUE','Wheelchair','FALSE','POSITIVE','Often'),('314B','TRUE','Wheelchair','FALSE','NEGATIVE','Daily'),('315A','FALSE','Walk','FALSE','NEGATIVE','Often'),('315B','TRUE','Walk','FALSE','NEGATIVE','Never'),('316B','FALSE','Bed','TRUE','NEGATIVE','Often'),('317A','TRUE','Bed','TRUE','NEGATIVE','Never'),('317B','FALSE','Wheelchair','TRUE','NEGATIVE','Never'),('318B','TRUE','Walk','FALSE','NEGATIVE','Often'),('319A','TRUE','Walk','FALSE','NEGATIVE','Sometimes'),('320A','FALSE','Wheelchair','FALSE','NEGATIVE','Sometimes'),('320B','FALSE','Bed','FALSE','NEGATIVE','Daily'),('400B','TRUE','Wheelchair','FALSE','NEGATIVE','Never'),('401A','FALSE','Walk','TRUE','NEGATIVE','Often'),('401B','TRUE','Bed','FALSE','NEGATIVE','Never'),('402B','FALSE','Wheelchair','FALSE','NEGATIVE','Daily'),('403A','TRUE','Bed','TRUE','NEGATIVE','Often'),('403B','TRUE','Bed','FALSE','NEGATIVE','Often'),('404B','FALSE','Bed','FALSE','NEGATIVE','Daily'),('405A','TRUE','Walk','FALSE','NEGATIVE','Never'),('405B','TRUE','Walk','TRUE','NEGATIVE','Sometimes'),('406B','TRUE','Bed','TRUE','NEGATIVE','Daily'),('407A','TRUE','Bed','FALSE','NEGATIVE','Sometimes'),('407B','TRUE','Wheelchair','FALSE','NEGATIVE','Daily'),('408A','FALSE','Bed','FALSE','NEGATIVE','Sometimes'),('408B','FALSE','Walk','TRUE','NEGATIVE','Daily'),('409A','TRUE','Wheelchair','FALSE','NEGATIVE','Sometimes'),('409B','FALSE','Wheelchair','FALSE','NEGATIVE','Often'),('410A','TRUE','Bed','FALSE','NEGATIVE','Often'),('410B','TRUE','Bed','TRUE','NEGATIVE','Sometimes'),('411A','TRUE','Bed','TRUE','NEGATIVE','Daily'),('411B','FALSE','Wheelchair','TRUE','NEGATIVE','Sometimes'),('412A','TRUE','Wheelchair','TRUE','NEGATIVE','Daily'),('412B','FALSE','Bed','TRUE','NEGATIVE','Sometimes'),('413A','TRUE','Wheelchair','TRUE','NEGATIVE','Often'),('413B','TRUE','Walk','FALSE','NEGATIVE','Daily'),('414A','TRUE','Walk','FALSE','NEGATIVE','Never'),('414B','TRUE','Bed','TRUE','NEGATIVE','Never'),('415A','TRUE','Wheelchair','TRUE','NEGATIVE','Sometimes'),('415B','FALSE','Walk','FALSE','NEGATIVE','Never'),('416A','TRUE','Wheelchair','FALSE','NEGATIVE','Never'),('416B','TRUE','Bed','TRUE','NEGATIVE','Often'),('417A','TRUE','Walk','FALSE','NEGATIVE','Daily'),('417B','FALSE','Wheelchair','FALSE','NEGATIVE','Never'),('418A','TRUE','Wheelchair','FALSE','NEGATIVE','Often'),('419A','TRUE','Bed','TRUE','NEGATIVE','Daily'),('419B','FALSE','Wheelchair','TRUE','NEGATIVE','Never'),('420A','FALSE','Walk','FALSE','NEGATIVE','Sometimes'),('420B','TRUE','Walk','TRUE','NEGATIVE','Daily'),('500A','FALSE','Bed','FALSE','NEGATIVE','Often'),('500B','FALSE','Wheelchair','FALSE','NEGATIVE','Sometimes'),('501B','TRUE','Walk','TRUE','NEGATIVE','Daily'),('502A','TRUE','Bed','TRUE','NEGATIVE','Never'),('502B','TRUE','Walk','TRUE','NEGATIVE','Sometimes'),('503A','FALSE','Bed','FALSE','NEGATIVE','Daily'),('503B','FALSE','Wheelchair','TRUE','NEGATIVE','Sometimes'),('504B','TRUE','Wheelchair','FALSE','NEGATIVE','Often'),('505A','TRUE','Bed','FALSE','NEGATIVE','Sometimes'),('505B','TRUE','Wheelchair','TRUE','NEGATIVE','Never'),('506A','TRUE','Wheelchair','FALSE','NEGATIVE','Often'),('506B','FALSE','Wheelchair','TRUE','NEGATIVE','Often'),('507A','TRUE','Wheelchair','TRUE','NEGATIVE','Often'),('509A','FALSE','Bed','FALSE','NEGATIVE','Never'),('509B','FALSE','Walk','TRUE','NEGATIVE','Never'),('510B','TRUE','Walk','FALSE','NEGATIVE','Sometimes'),('511A','FALSE','Walk','FALSE','POSITIVE','Never'),('511B','FALSE','Walk','FALSE','NEGATIVE','Never'),('512A','FALSE','Bed','TRUE','NEGATIVE','Sometimes'),('512B','TRUE','Wheelchair','TRUE','NEGATIVE','Never'),('513A','FALSE','Walk','TRUE','NEGATIVE','Sometimes'),('513B','TRUE','Walk','TRUE','NEGATIVE','Often'),('514B','FALSE','Bed','FALSE','NEGATIVE','Daily'),('515A','FALSE','Walk','FALSE','NEGATIVE','Often'),('515B','FALSE','Wheelchair','FALSE','NEGATIVE','Sometimes'),('516A','FALSE','Walk','FALSE','NEGATIVE','Often'),('516B','FALSE','Wheelchair','TRUE','NEGATIVE','Often'),('517A','FALSE','Bed','TRUE','NEGATIVE','Never'),('517B','TRUE','Bed','FALSE','NEGATIVE','Often'),('518A','FALSE','Walk','TRUE','NEGATIVE','Often'),('518B','TRUE','Bed','TRUE','NEGATIVE','Daily'),('519A','FALSE','Walk','TRUE','NEGATIVE','Daily'),('519B','TRUE','Bed','FALSE','NEGATIVE','Daily'),('520A','FALSE','Walk','FALSE','NEGATIVE','Never'),('601A','TRUE','Wheelchair','TRUE','POSITIVE','Never'),('601B','FALSE','Walk','FALSE','NEGATIVE','Never'),('602B','FALSE','Wheelchair','TRUE','POSITIVE','Sometimes'),('604B','FALSE','Wheelchair','FALSE','POSITIVE','Never'),('605B','TRUE','Wheelchair','FALSE','POSITIVE','Often'),('609B','TRUE','Wheelchair','TRUE','POSITIVE','Sometimes'),('610B','TRUE','Wheelchair','FALSE','POSITIVE','Often'),('611B','TRUE','Walk','TRUE','POSITIVE','Never'),('612B','TRUE','Wheelchair','FALSE','POSITIVE','Often'),('613A','FALSE','Walk','FALSE','POSITIVE','Daily'),('613B','FALSE','Bed','FALSE','POSITIVE','Never'),('614B','FALSE','Walk','TRUE','POSITIVE','Sometimes'),('615A','FALSE','Walk','TRUE','POSITIVE','Often'),('615B','FALSE','Wheelchair','TRUE','POSITIVE','Often'),('618B','FALSE','Wheelchair','FALSE','POSITIVE','Sometimes');
/*!40000 ALTER TABLE `PATIENT_INFO` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`CS3743_Group3`@`%`*/ /*!50003 TRIGGER `MoveToCovidWard` BEFORE UPDATE ON `PATIENT_INFO` FOR EACH ROW BEGIN
    DECLARE cnt INT DEFAULT 600;
    DECLARE temp VARCHAR(4) DEFAULT NEW.PATIENT_NOTES_PATIENT_ID;

    IF NEW.PATIENT_NOTES_COVID_STATUS='POSITIVE' THEN
        
		# check if any 600 Hall rooms are available
		WHILE cnt < 621 DO
			IF EXISTS(SELECT * FROM (SELECT COUNT(PATIENT_RM_NUM) AS C1 FROM PATIENT GROUP BY PATIENT_RM_NUM=cnt) AS T2 WHERE (C1 < 2)) THEN

				# check which bed A or B is available and update DB
				IF EXISTS(SELECT PATIENT_ID FROM PATIENT WHERE PATIENT_BED = 'A' AND PATIENT_RM_NUM=cnt) THEN
                    UPDATE PATIENT SET PATIENT.PATIENT_RM_NUM=cnt, PATIENT.PATIENT_BED = 'B' WHERE PATIENT.PATIENT_ID=temp;
				ELSE
					UPDATE PATIENT SET PATIENT.PATIENT_RM_NUM=cnt, PATIENT.PATIENT_BED = 'A' WHERE PATIENT.PATIENT_ID=temp;
				END IF;
                
			END IF;
			SET cnt = cnt + 1;
		END WHILE;
    
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PRESCRIPTIONS`
--

DROP TABLE IF EXISTS `PRESCRIPTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRESCRIPTIONS` (
  `PRESCRIPTION_NUM` int NOT NULL AUTO_INCREMENT,
  `PRESCRIPTION_MEDICATION_ID` int NOT NULL,
  `PRESCRIPTION_FREQUENCY` enum('Q24HR','QOD','BID','TID','QID','STAT','PRN') DEFAULT NULL,
  `PRESCRIPTION_PATIENT_ID` varchar(4) NOT NULL,
  PRIMARY KEY (`PRESCRIPTION_NUM`),
  KEY `PRESCRIPTION_MEDICATION_ID_idx` (`PRESCRIPTION_MEDICATION_ID`),
  KEY `PRESCRIPTION_PATIENT_ID_idx` (`PRESCRIPTION_PATIENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=550 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRESCRIPTIONS`
--

LOCK TABLES `PRESCRIPTIONS` WRITE;
/*!40000 ALTER TABLE `PRESCRIPTIONS` DISABLE KEYS */;
INSERT INTO `PRESCRIPTIONS` VALUES (5,101,'BID','513B'),(6,2,'Q24HR','301A'),(8,49,'QOD','511B'),(9,82,'QID','410B'),(10,112,'QOD','318B'),(11,43,'Q24HR','503B'),(12,35,'Q24HR','518A'),(13,17,'STAT','311B'),(15,141,'TID','415B'),(17,113,'BID','301B'),(18,32,'QOD','310A'),(20,59,'TID','415B'),(21,79,'Q24HR','513A'),(22,96,'PRN','401A'),(23,31,'BID','313B'),(24,93,'STAT','417A'),(25,149,'QOD','618B'),(26,145,'STAT','419A'),(28,60,'STAT','303B'),(30,146,'Q24HR','304A'),(31,74,'QID','300A'),(32,152,'STAT','310B'),(33,141,'PRN','612B'),(36,86,'PRN','315A'),(37,52,'QOD','516A'),(39,27,'Q24HR','320B'),(41,80,'PRN','305A'),(42,126,'PRN','410B'),(43,166,'TID','303B'),(44,10,'Q24HR','312A'),(45,84,'STAT','409B'),(46,16,'BID','517A'),(47,93,'QID','405B'),(49,142,'STAT','506A'),(50,108,'QOD','420B'),(52,53,'TID','318B'),(54,162,'QOD','613A'),(55,131,'Q24HR','602B'),(56,99,'QID','615B'),(57,65,'BID','413A'),(58,127,'PRN','420B'),(59,71,'PRN','301B'),(63,52,'PRN','406B'),(65,126,'QOD','601A'),(66,23,'STAT','317B'),(68,125,'PRN','502A'),(69,137,'PRN','301A'),(70,1,'Q24HR','507A'),(71,44,'QID','316B'),(72,78,'Q24HR','507A'),(73,129,'Q24HR','318B'),(74,133,'Q24HR','509B'),(76,140,'PRN','610B'),(77,131,'QOD','500A'),(79,125,'QOD','414A'),(80,38,'BID','613A'),(81,14,'QID','405A'),(84,109,'Q24HR','415A'),(85,127,'BID','411B'),(86,1,'QOD','417A'),(88,56,'BID','409B'),(90,11,'STAT','305B'),(92,12,'QOD','510B'),(93,156,'BID','505B'),(96,163,'QID','412B'),(97,55,'QOD','504B'),(98,39,'QOD','612B'),(101,174,'STAT','519B'),(104,7,'BID','317A'),(106,38,'TID','516B'),(107,24,'QOD','601A'),(108,91,'Q24HR','513A'),(109,51,'TID','505B'),(110,167,'Q24HR','500A'),(111,122,'QOD','310A'),(112,141,'Q24HR','519A'),(114,105,'Q24HR','410B'),(117,22,'TID','511A'),(119,69,'TID','618B'),(120,104,'QOD','411B'),(121,139,'BID','419A'),(122,109,'PRN','313B'),(123,174,'Q24HR','316B'),(124,25,'STAT','407A'),(125,139,'STAT','401B'),(128,43,'Q24HR','415A'),(130,170,'BID','417A'),(131,76,'QID','517A'),(137,135,'STAT','601A'),(138,127,'STAT','415B'),(139,134,'Q24HR','500B'),(140,169,'Q24HR','613B'),(141,154,'TID','304B'),(142,124,'PRN','313A'),(143,2,'Q24HR','309A'),(144,150,'TID','500A'),(145,14,'QID','409B'),(146,122,'PRN','315B'),(147,110,'Q24HR','405A'),(149,141,'BID','500A'),(150,158,'BID','402B'),(151,32,'Q24HR','412B'),(153,156,'QID','319A'),(154,20,'BID','509A'),(155,21,'QOD','320A'),(156,160,'Q24HR','518A'),(157,15,'Q24HR','303B'),(158,97,'BID','400B'),(159,83,'Q24HR','517A'),(162,91,'Q24HR','317B'),(163,165,'QID','502B'),(164,170,'BID','417B'),(165,83,'Q24HR','412B'),(167,156,'PRN','610B'),(168,98,'STAT','506B'),(171,44,'STAT','419B'),(173,3,'TID','306B'),(174,109,'QID','415A'),(175,162,'TID','503B'),(177,66,'Q24HR','319A'),(178,168,'STAT','610B'),(180,135,'QID','605B'),(181,44,'STAT','407A'),(183,72,'Q24HR','417A'),(184,19,'Q24HR','519B'),(185,137,'QOD','306A'),(186,3,'QID','611B'),(187,112,'TID','409A'),(189,62,'QID','304A'),(190,115,'QOD','516B'),(192,49,'PRN','411A'),(202,96,'QOD','303A'),(203,42,'STAT','317B'),(205,110,'QID','510B'),(206,151,'QID','519A'),(207,103,'QOD','305A'),(209,29,'Q24HR','403A'),(210,126,'BID','305A'),(211,59,'Q24HR','405A'),(212,165,'BID','409B'),(213,41,'Q24HR','310B'),(214,62,'STAT','516B'),(215,153,'STAT','419B'),(216,14,'STAT','509B'),(217,15,'PRN','519B'),(218,150,'STAT','515B'),(219,72,'PRN','407A'),(220,41,'PRN','520A'),(221,14,'BID','308A'),(222,151,'QOD','411A'),(223,87,'BID','509A'),(228,92,'PRN','516B'),(230,36,'PRN','318B'),(231,144,'STAT','401A'),(232,142,'PRN','611B'),(234,117,'BID','400B'),(235,21,'Q24HR','407B'),(238,132,'QID','406B'),(240,44,'TID','304A'),(241,50,'STAT','520A'),(242,154,'TID','420B'),(245,5,'QID','602B'),(247,29,'STAT','517B'),(248,116,'BID','310B'),(249,121,'STAT','302B'),(250,22,'STAT','505A'),(251,69,'QID','415B'),(252,70,'STAT','309B'),(253,37,'Q24HR','408B'),(255,114,'STAT','506A'),(256,99,'TID','618B'),(258,27,'Q24HR','417B'),(259,68,'BID','404B'),(260,63,'Q24HR','411A'),(261,36,'Q24HR','314B'),(263,162,'STAT','500A'),(265,128,'PRN','506A'),(266,35,'QOD','418A'),(267,136,'PRN','502B'),(269,23,'QOD','520A'),(270,125,'QOD','512A'),(271,68,'TID','300A'),(272,111,'BID','300B'),(273,67,'BID','403B'),(274,2,'QID','506A'),(275,145,'STAT','510B'),(276,18,'QID','614B'),(277,73,'Q24HR','615A'),(278,96,'BID','502A'),(279,78,'BID','413B'),(280,1,'Q24HR','314A'),(281,84,'QOD','512B'),(282,49,'QID','410A'),(284,11,'QID','315A'),(286,15,'QID','416A'),(287,115,'QOD','505B'),(288,39,'QID','518B'),(289,64,'QOD','410B'),(290,8,'PRN','420B'),(291,14,'BID','507A'),(294,58,'PRN','614B'),(295,126,'BID','310B'),(296,38,'QOD','415B'),(299,112,'STAT','507A'),(300,112,'BID','513A'),(302,143,'Q24HR','515B'),(303,48,'TID','420A'),(304,149,'BID','413B'),(306,136,'QID','515A'),(309,70,'QID','309B'),(312,88,'BID','613B'),(313,172,'STAT','414A'),(314,49,'TID','516B'),(315,134,'QID','402B'),(317,64,'BID','505A'),(319,1,'QOD','503B'),(320,118,'QID','405B'),(325,87,'BID','408A'),(327,92,'QID','303B'),(332,161,'BID','301B'),(335,70,'TID','519B'),(336,54,'PRN','511B'),(337,73,'STAT','311A'),(338,37,'BID','320A'),(342,175,'TID','403B'),(343,37,'BID','406B'),(347,18,'PRN','420A'),(350,50,'TID','602B'),(353,117,'QID','406B'),(356,133,'TID','305B'),(358,144,'STAT','412A'),(360,114,'PRN','612B'),(361,39,'QID','601A'),(363,75,'Q24HR','515B'),(364,163,'QID','612B'),(366,142,'BID','305B'),(368,64,'TID','503A'),(370,130,'Q24HR','515A'),(371,47,'QID','414A'),(373,69,'STAT','419B'),(375,158,'PRN','405A'),(381,175,'QID','416B'),(382,60,'QID','419B'),(383,132,'STAT','502B'),(386,109,'STAT','302A'),(387,123,'PRN','503A'),(388,112,'PRN','402B'),(392,152,'BID','604B'),(396,146,'TID','300A'),(397,56,'STAT','413A'),(404,100,'Q24HR','615B'),(413,127,'PRN','518A'),(414,37,'TID','509A'),(416,91,'Q24HR','312B'),(417,118,'QID','414B'),(418,79,'STAT','416B'),(423,146,'QID','500B'),(424,146,'TID','500B'),(425,37,'QID','503B'),(428,73,'QID','320A'),(429,124,'BID','302A'),(432,127,'QID','609B'),(434,17,'QOD','515B'),(436,124,'PRN','401B'),(443,116,'TID','602B'),(445,66,'TID','401A'),(447,71,'Q24HR','301B'),(455,63,'BID','403A'),(459,116,'PRN','314A'),(460,124,'QID','418A'),(468,151,'TID','309B'),(469,3,'QOD','618B'),(470,9,'STAT','416B'),(482,112,'Q24HR','308B'),(484,96,'QID','504B'),(486,117,'BID','314A'),(487,82,'BID','309B'),(489,18,'QOD','503A'),(490,114,'Q24HR','420A'),(493,133,'STAT','615A'),(494,52,'PRN','302B'),(497,20,'Q24HR','313A'),(500,116,'QOD','520A'),(532,173,'BID','304B'),(533,173,'BID','306A'),(534,173,'BID','306B'),(535,173,'BID','318B'),(536,173,'BID','401B'),(537,173,'BID','402B'),(538,173,'BID','404B'),(539,173,'BID','413B'),(540,173,'BID','414B'),(541,173,'BID','417B'),(542,173,'BID','418A'),(543,173,'BID','500A'),(544,173,'BID','502B'),(545,173,'BID','505B'),(546,173,'BID','506B'),(547,173,'BID','512A'),(548,173,'BID','515A'),(549,173,'BID','519B');
/*!40000 ALTER TABLE `PRESCRIPTIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STAFF_HISTORY`
--

DROP TABLE IF EXISTS `STAFF_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STAFF_HISTORY` (
  `STAFF_HISTORY_ENTRY_NUM` int NOT NULL AUTO_INCREMENT,
  `STAFF_HISTORY_ENTRY_STAFF_ID` int NOT NULL,
  `STAFF_HISTORY_ENTRY_DATE` date DEFAULT NULL,
  `STAFF_HISTORY_ENTRY_SHIFT` enum('1','2','3') DEFAULT NULL,
  `STAFF_HISTORY_ENTRY_HALL` int DEFAULT NULL,
  PRIMARY KEY (`STAFF_HISTORY_ENTRY_NUM`),
  KEY `STAFF_HISTORY_ENTRY_STAFF_ID` (`STAFF_HISTORY_ENTRY_STAFF_ID`),
  KEY `SHIFT_INDEX` (`STAFF_HISTORY_ENTRY_SHIFT`),
  CONSTRAINT `STAFF_HISTORY_ibfk_1` FOREIGN KEY (`STAFF_HISTORY_ENTRY_STAFF_ID`) REFERENCES `STAFF_MEMBER` (`STAFF_ID`),
  CONSTRAINT `CHK_HALL` CHECK ((`STAFF_HISTORY_ENTRY_HALL` in (300,400,500,600)))
) ENGINE=InnoDB AUTO_INCREMENT=1521 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STAFF_HISTORY`
--

LOCK TABLES `STAFF_HISTORY` WRITE;
/*!40000 ALTER TABLE `STAFF_HISTORY` DISABLE KEYS */;
INSERT INTO `STAFF_HISTORY` VALUES (904,92,'2022-10-30','3',400),(905,88,'2022-03-19','2',500),(906,90,'2022-06-18','3',600),(907,41,'2022-02-27','3',400),(908,87,'2022-03-16','1',600),(909,43,'2022-08-31','3',400),(910,73,'2021-11-10','2',500),(911,12,'2022-04-29','3',400),(912,96,'2022-10-13','2',500),(913,18,'2022-10-23','2',400),(914,74,'2022-04-14','2',500),(915,98,'2022-07-09','3',600),(916,92,'2022-09-01','1',300),(917,69,'2022-04-01','2',500),(918,43,'2022-03-31','1',300),(919,19,'2022-05-08','3',400),(920,89,'2022-10-07','3',300),(921,58,'2022-03-14','2',400),(922,58,'2022-01-30','2',600),(923,41,'2022-01-10','2',600),(924,3,'2022-10-13','2',400),(925,13,'2021-11-24','1',600),(926,74,'2022-11-05','2',500),(927,56,'2022-02-05','1',400),(928,35,'2021-12-31','2',400),(929,16,'2022-01-20','1',600),(930,52,'2022-01-20','3',600),(931,44,'2022-03-05','1',600),(932,23,'2022-07-30','1',400),(933,4,'2022-01-19','3',400),(934,93,'2022-03-06','2',400),(935,81,'2021-12-23','1',400),(936,82,'2022-04-06','3',400),(937,11,'2022-02-02','2',500),(938,85,'2021-12-01','1',600),(939,43,'2022-08-10','1',400),(940,38,'2022-03-01','1',600),(941,31,'2022-08-15','2',500),(942,39,'2021-11-27','1',500),(943,38,'2022-07-11','1',600),(944,59,'2021-12-11','2',600),(945,28,'2022-02-18','3',600),(946,42,'2022-04-11','2',400),(947,21,'2022-10-25','3',500),(948,31,'2022-04-26','3',400),(949,87,'2022-07-10','1',500),(950,37,'2022-03-19','2',400),(951,16,'2022-10-24','2',400),(952,8,'2022-10-01','3',300),(954,61,'2022-09-19','3',500),(955,66,'2022-08-06','3',600),(956,10,'2022-08-09','2',500),(957,49,'2022-03-19','1',400),(958,69,'2022-09-24','2',300),(959,4,'2022-07-08','1',400),(960,60,'2022-05-12','2',600),(961,24,'2022-07-07','1',500),(962,91,'2022-10-25','2',300),(963,10,'2022-04-02','2',600),(964,13,'2022-10-02','3',400),(965,59,'2022-07-19','3',500),(966,52,'2022-10-12','2',500),(967,98,'2022-06-05','3',600),(968,13,'2022-04-15','3',500),(969,18,'2021-11-11','3',300),(970,32,'2022-03-27','3',300),(971,6,'2022-06-08','3',600),(972,22,'2022-07-18','2',400),(973,97,'2022-05-24','1',500),(974,17,'2022-03-08','1',400),(975,98,'2022-04-28','3',600),(976,32,'2021-11-11','2',300),(977,55,'2022-10-26','3',300),(978,48,'2022-08-29','1',500),(979,23,'2022-05-30','1',500),(980,37,'2022-08-21','1',600),(981,56,'2022-05-30','1',300),(982,50,'2022-03-29','2',500),(983,47,'2022-09-20','1',400),(984,48,'2022-08-10','3',600),(985,11,'2022-07-30','2',400),(986,33,'2022-01-08','2',300),(987,79,'2022-06-02','1',300),(988,79,'2021-12-31','3',600),(989,71,'2022-06-07','1',500),(990,7,'2022-10-21','2',500),(991,48,'2022-04-25','3',500),(992,89,'2022-08-19','1',600),(993,76,'2022-03-05','2',600),(994,92,'2022-01-03','1',400),(995,83,'2022-06-02','2',300),(996,57,'2022-08-01','2',400),(997,21,'2022-08-15','1',300),(998,16,'2022-07-16','2',600),(999,83,'2022-07-09','3',400),(1000,7,'2022-05-18','3',500),(1001,85,'2022-10-11','2',300),(1002,95,'2022-05-26','1',500),(1003,23,'2021-12-14','1',500),(1004,61,'2022-07-28','3',600),(1005,97,'2021-11-23','1',500),(1006,31,'2022-04-29','3',300),(1007,24,'2022-02-23','1',400),(1008,26,'2022-01-13','3',600),(1009,54,'2022-05-25','1',600),(1010,25,'2022-03-15','1',600),(1011,45,'2021-12-22','2',600),(1012,31,'2022-01-09','3',600),(1013,45,'2022-05-10','3',500),(1014,26,'2022-02-05','3',600),(1015,72,'2022-01-30','3',600),(1016,39,'2022-07-16','3',400),(1017,56,'2022-11-04','2',600),(1018,82,'2022-07-05','2',600),(1019,12,'2022-07-29','3',500),(1020,4,'2022-05-22','1',400),(1021,58,'2022-03-27','2',400),(1022,19,'2022-10-25','3',400),(1023,43,'2022-01-07','3',500),(1024,13,'2022-08-31','2',300),(1025,65,'2022-09-22','3',500),(1026,3,'2022-04-07','1',300),(1027,11,'2022-07-06','3',500),(1028,9,'2022-07-13','3',300),(1029,44,'2021-12-16','2',500),(1030,13,'2021-11-19','3',500),(1031,46,'2022-07-28','1',500),(1032,75,'2022-07-11','2',300),(1033,91,'2022-10-16','1',500),(1034,67,'2022-02-26','2',500),(1035,44,'2022-01-17','2',400),(1036,19,'2022-01-15','1',400),(1037,54,'2022-05-17','3',400),(1038,31,'2022-09-21','3',500),(1040,82,'2022-07-16','3',400),(1041,40,'2022-09-02','3',400),(1042,29,'2022-09-27','1',300),(1043,8,'2022-09-13','2',400),(1044,4,'2022-01-04','3',500),(1045,23,'2022-03-01','1',600),(1046,75,'2022-05-06','1',500),(1047,62,'2022-05-04','2',400),(1048,13,'2022-04-09','2',300),(1049,77,'2022-04-25','1',600),(1050,45,'2022-01-06','1',300),(1051,87,'2022-07-17','1',500),(1052,47,'2022-10-31','1',300),(1053,66,'2022-02-23','1',600),(1054,64,'2022-05-01','3',600),(1055,3,'2022-08-17','3',500),(1056,90,'2022-06-18','1',500),(1057,4,'2021-12-03','2',600),(1058,7,'2022-10-18','3',600),(1059,23,'2022-07-08','3',400),(1060,62,'2022-07-23','2',600),(1061,7,'2022-11-04','3',500),(1062,23,'2022-03-05','1',300),(1063,45,'2022-02-04','2',300),(1064,97,'2021-12-19','2',400),(1065,61,'2022-02-18','2',400),(1066,24,'2022-01-01','1',600),(1067,48,'2022-09-08','1',300),(1068,52,'2022-09-08','3',300),(1069,22,'2022-10-30','1',600),(1070,43,'2022-02-05','2',600),(1071,40,'2022-02-21','1',400),(1072,72,'2021-11-11','2',600),(1073,24,'2022-02-07','3',500),(1074,9,'2022-06-18','3',500),(1075,60,'2022-01-01','3',600),(1076,78,'2022-07-11','1',500),(1077,2,'2022-08-16','3',400),(1078,54,'2022-06-11','1',300),(1079,82,'2022-02-02','3',500),(1080,26,'2022-03-10','3',400),(1081,72,'2021-12-04','3',300),(1082,49,'2022-11-02','1',600),(1083,80,'2022-04-10','2',500),(1084,31,'2022-09-05','1',300),(1085,54,'2022-07-08','1',500),(1086,77,'2022-10-24','1',600),(1087,48,'2022-05-09','2',600),(1088,7,'2022-05-17','2',500),(1089,53,'2022-03-09','3',300),(1090,74,'2021-12-27','1',500),(1091,56,'2022-07-07','3',500),(1092,11,'2022-04-03','3',300),(1093,18,'2022-10-11','2',400),(1094,66,'2022-07-14','2',600),(1095,90,'2022-07-11','3',500),(1096,14,'2022-02-09','3',300),(1097,83,'2022-04-04','2',500),(1098,54,'2022-03-08','3',500),(1099,44,'2022-03-24','3',500),(1100,72,'2022-03-12','3',600),(1101,8,'2022-02-20','1',400),(1102,81,'2022-02-10','3',600),(1103,6,'2021-12-02','2',500),(1104,12,'2022-06-28','1',400),(1105,41,'2021-12-05','3',400),(1106,36,'2022-05-17','3',300),(1107,5,'2022-08-03','1',500),(1108,62,'2022-07-24','1',600),(1109,82,'2022-05-29','2',300),(1110,51,'2022-07-02','1',300),(1111,69,'2022-03-09','1',400),(1112,52,'2022-07-29','3',400),(1113,8,'2022-08-16','2',400),(1114,84,'2022-07-11','1',600),(1115,9,'2022-09-04','1',400),(1116,53,'2022-01-04','2',600),(1117,25,'2021-12-10','2',400),(1118,26,'2022-04-01','3',300),(1119,30,'2022-09-27','1',400),(1120,69,'2022-09-06','1',400),(1121,2,'2021-12-14','2',300),(1122,96,'2021-12-01','3',500),(1123,25,'2022-06-17','2',400),(1124,98,'2022-09-20','2',600),(1125,21,'2022-07-23','1',300),(1126,62,'2022-04-15','1',300),(1127,81,'2022-02-25','3',400),(1128,49,'2022-06-12','3',400),(1129,74,'2022-04-15','2',400),(1130,40,'2022-04-05','3',500),(1131,53,'2022-08-12','2',400),(1132,59,'2022-06-25','1',600),(1133,38,'2022-10-05','1',500),(1134,84,'2022-02-06','2',500),(1135,27,'2022-07-13','3',400),(1136,50,'2021-12-24','2',500),(1137,41,'2022-11-03','3',600),(1138,65,'2021-12-24','3',500),(1139,30,'2022-05-30','2',300),(1140,12,'2021-12-27','3',500),(1141,9,'2022-02-28','1',600),(1142,69,'2022-08-21','2',400),(1143,27,'2022-08-29','1',600),(1144,91,'2022-05-08','1',400),(1145,46,'2022-08-10','3',400),(1146,83,'2021-11-11','3',400),(1147,4,'2022-01-18','1',400),(1148,53,'2022-06-22','1',400),(1149,23,'2021-12-03','3',600),(1150,95,'2022-03-26','2',500),(1151,80,'2022-09-07','3',400),(1152,48,'2022-08-18','2',400),(1153,22,'2022-07-01','3',500),(1154,91,'2022-02-23','2',600),(1155,37,'2022-10-08','1',500),(1156,67,'2022-02-24','3',600),(1157,38,'2022-10-22','2',300),(1158,68,'2022-10-24','3',500),(1159,38,'2021-11-30','3',500),(1160,74,'2022-09-26','2',600),(1161,83,'2022-07-09','1',300),(1162,49,'2022-10-03','2',600),(1163,57,'2022-09-14','1',600),(1164,31,'2022-01-09','2',500),(1165,7,'2022-09-08','2',400),(1166,94,'2022-01-31','3',400),(1167,27,'2022-06-27','2',400),(1168,67,'2022-10-15','1',600),(1169,86,'2022-01-17','1',600),(1170,61,'2022-08-08','3',400),(1171,99,'2022-05-10','2',500),(1172,24,'2022-06-15','2',500),(1173,88,'2022-10-12','3',600),(1174,65,'2022-03-10','1',500),(1175,45,'2021-12-22','2',300),(1176,40,'2022-08-02','3',300),(1177,60,'2022-08-04','1',500),(1178,59,'2022-09-27','2',400),(1179,99,'2021-11-21','2',300),(1180,15,'2022-09-06','3',300),(1181,88,'2021-11-24','2',300),(1182,17,'2022-08-15','3',300),(1183,32,'2022-10-12','3',300),(1184,26,'2022-07-27','2',500),(1185,39,'2022-03-02','3',500),(1186,41,'2022-06-05','1',600),(1187,47,'2021-11-08','3',500),(1188,24,'2022-07-15','2',300),(1189,73,'2022-05-12','3',400),(1190,76,'2022-06-10','1',500),(1191,20,'2021-12-11','2',500),(1192,40,'2021-11-28','1',400),(1193,58,'2022-09-11','3',400),(1194,47,'2022-07-29','1',600),(1195,13,'2022-06-05','3',500),(1196,25,'2022-07-01','1',600),(1198,91,'2022-03-23','1',500),(1199,64,'2021-12-08','2',400),(1200,99,'2022-01-29','3',400),(1201,53,'2022-11-10','2',300),(1202,3,'2022-04-03','1',600),(1203,15,'2022-09-23','2',500),(1204,54,'2022-02-04','3',300),(1205,70,'2022-05-21','1',500),(1206,16,'2022-09-05','3',400),(1207,72,'2022-07-14','1',300),(1208,96,'2021-11-19','1',500),(1209,33,'2022-08-06','2',500),(1210,6,'2022-08-18','1',300),(1211,58,'2022-03-13','3',300),(1212,26,'2022-10-22','3',400),(1213,47,'2022-07-28','2',500),(1214,12,'2021-11-16','3',300),(1215,63,'2022-09-16','1',400),(1216,73,'2022-03-19','1',400),(1217,22,'2022-01-25','3',400),(1218,60,'2022-03-12','1',600),(1219,92,'2021-11-13','2',400),(1220,50,'2022-08-12','3',600),(1221,57,'2022-08-26','1',400),(1222,43,'2021-11-29','3',600),(1223,79,'2021-11-18','2',600),(1224,2,'2022-11-03','2',500),(1225,90,'2022-04-27','3',300),(1226,25,'2022-07-20','3',400),(1227,8,'2022-08-29','1',300),(1228,34,'2022-02-26','1',300),(1229,97,'2021-11-16','1',400),(1230,55,'2022-01-08','2',500),(1231,38,'2021-12-21','1',600),(1232,61,'2022-07-17','2',400),(1233,11,'2022-08-23','3',300),(1234,67,'2022-05-11','1',400),(1235,2,'2022-09-05','3',400),(1236,40,'2022-09-27','2',600),(1237,49,'2022-04-16','1',500),(1238,64,'2021-11-14','2',500),(1239,76,'2022-05-30','2',300),(1240,74,'2022-03-05','1',600),(1241,96,'2021-11-28','3',600),(1242,41,'2022-03-12','3',400),(1243,73,'2022-05-28','1',300),(1244,26,'2021-11-11','1',600),(1245,13,'2022-07-20','2',400),(1246,52,'2022-07-17','2',500),(1247,87,'2022-07-30','3',500),(1248,23,'2022-06-24','2',300),(1249,22,'2021-12-19','3',600),(1250,24,'2022-05-27','3',400),(1251,45,'2022-01-01','3',600),(1252,25,'2022-10-11','1',400),(1253,24,'2022-09-23','3',500),(1254,42,'2022-07-24','3',300),(1255,67,'2022-03-15','2',300),(1256,24,'2022-05-21','3',400),(1257,69,'2022-05-02','2',500),(1258,19,'2022-08-14','2',500),(1259,67,'2022-09-15','3',600),(1260,71,'2021-12-04','1',400),(1261,11,'2022-08-22','2',300),(1262,77,'2022-01-18','2',600),(1263,38,'2022-01-11','2',600),(1264,73,'2022-08-30','1',500),(1265,63,'2022-03-22','3',300),(1266,4,'2021-11-25','2',600),(1267,87,'2021-11-11','2',500),(1268,98,'2022-01-26','1',400),(1269,34,'2021-12-31','3',600),(1270,3,'2021-12-14','3',600),(1271,66,'2022-02-06','2',300),(1272,53,'2021-12-24','2',400),(1273,5,'2022-04-06','2',300),(1274,83,'2022-09-28','1',600),(1275,84,'2022-04-21','1',500),(1276,56,'2022-09-21','1',400),(1277,7,'2022-09-22','2',400),(1278,88,'2022-07-15','3',400),(1279,30,'2022-05-24','3',600),(1280,3,'2022-11-06','3',600),(1281,61,'2022-04-05','1',500),(1282,83,'2022-04-29','1',500),(1283,44,'2022-03-03','2',300),(1284,33,'2022-02-23','3',500),(1285,95,'2021-11-26','3',400),(1286,55,'2022-08-13','3',600),(1287,15,'2022-01-08','3',500),(1288,23,'2022-07-09','2',500),(1289,75,'2022-09-26','1',500),(1290,21,'2022-05-04','1',600),(1291,97,'2022-07-09','3',500),(1293,71,'2022-07-16','1',600),(1294,41,'2022-09-18','2',500),(1295,47,'2022-09-09','3',600),(1296,6,'2022-06-05','1',400),(1298,93,'2021-12-29','2',400),(1299,23,'2022-05-17','3',400),(1300,2,'2022-03-07','1',300),(1301,5,'2022-08-08','3',300),(1302,44,'2022-07-08','2',400),(1303,39,'2021-12-02','2',600),(1304,46,'2022-02-26','2',300),(1305,24,'2022-09-19','2',400),(1306,77,'2022-01-17','3',600),(1307,75,'2022-10-01','2',400),(1308,11,'2021-12-17','2',600),(1309,67,'2021-11-19','2',500),(1310,90,'2022-05-30','3',500),(1311,19,'2022-01-08','2',400),(1312,35,'2022-10-12','2',300),(1313,16,'2022-01-28','1',300),(1314,35,'2022-07-20','3',300),(1315,63,'2022-06-16','1',300),(1316,45,'2022-08-27','1',400),(1317,61,'2022-07-11','2',500),(1318,8,'2022-02-11','3',400),(1319,9,'2022-04-14','2',600),(1320,11,'2022-06-21','1',400),(1321,59,'2021-11-17','3',400),(1322,80,'2022-04-16','1',300),(1323,84,'2021-12-29','1',500),(1324,56,'2022-06-24','1',600),(1325,76,'2021-11-28','1',300),(1326,62,'2022-08-09','2',300),(1327,13,'2022-05-02','2',600),(1328,11,'2022-09-18','1',600),(1329,9,'2022-08-08','3',600),(1330,59,'2021-11-17','3',600),(1331,7,'2021-11-14','1',300),(1332,71,'2021-11-16','3',600),(1333,95,'2022-05-04','1',300),(1334,41,'2021-11-18','2',300),(1335,39,'2022-01-29','3',500),(1336,40,'2021-11-10','1',600),(1337,7,'2022-10-07','3',400),(1338,97,'2022-08-15','3',300),(1339,68,'2022-07-24','3',600),(1340,84,'2022-10-28','3',400),(1341,81,'2022-01-22','1',600),(1342,60,'2022-02-06','1',600),(1343,62,'2022-04-14','1',300),(1344,76,'2022-07-02','3',500),(1345,52,'2021-12-22','3',600),(1346,22,'2022-08-19','3',500),(1347,18,'2022-09-14','2',400),(1348,73,'2022-01-06','3',600),(1349,61,'2022-02-19','1',400),(1350,3,'2021-11-24','2',400),(1351,37,'2022-07-10','2',300),(1352,17,'2022-05-17','1',300),(1353,33,'2022-01-04','3',600),(1354,55,'2022-08-22','3',400),(1355,55,'2022-03-05','2',300),(1356,72,'2021-12-30','1',500),(1358,85,'2021-12-31','1',300),(1359,8,'2021-11-24','2',400),(1360,34,'2022-02-20','2',400),(1361,13,'2022-09-09','2',300),(1362,87,'2022-07-16','1',600),(1363,48,'2022-03-02','2',600),(1364,71,'2022-10-21','1',400),(1365,82,'2022-10-02','2',300),(1366,65,'2022-10-22','1',300),(1367,42,'2021-11-15','2',400),(1368,86,'2022-07-15','3',500),(1369,81,'2021-11-24','1',400),(1370,55,'2021-12-17','3',400),(1371,44,'2022-06-25','1',600),(1372,97,'2022-01-12','2',500),(1373,73,'2022-05-31','3',500),(1374,85,'2022-05-20','3',500),(1375,55,'2022-02-27','2',300),(1376,22,'2022-06-14','2',500),(1377,33,'2022-07-03','3',400),(1378,7,'2022-09-09','1',500),(1379,91,'2022-11-07','1',400),(1380,94,'2022-02-08','3',500),(1381,33,'2022-06-10','1',300),(1382,79,'2021-12-18','2',400),(1383,6,'2022-07-03','1',300),(1384,17,'2022-02-18','3',400),(1385,41,'2022-07-05','2',600),(1386,55,'2022-03-30','3',400),(1387,77,'2022-04-15','3',500),(1388,96,'2021-12-06','1',600),(1389,37,'2022-05-09','2',300),(1390,61,'2021-12-24','1',300),(1391,34,'2021-11-16','1',500),(1392,16,'2021-11-10','1',300),(1393,38,'2022-01-11','2',300),(1394,46,'2022-06-30','3',300),(1395,4,'2022-11-01','1',500),(1396,3,'2022-04-09','1',500),(1397,74,'2021-12-20','3',500),(1398,63,'2022-09-07','3',500),(1399,50,'2022-02-18','2',600),(1400,53,'2022-05-07','2',500),(1401,15,'2022-02-25','1',400),(1402,89,'2022-03-18','1',500),(1403,90,'2022-02-01','3',500),(1404,81,'2022-07-06','2',500),(1405,51,'2022-08-25','3',300),(1406,56,'2021-11-24','3',400),(1407,5,'2022-04-30','1',600),(1408,35,'2022-03-06','3',500),(1409,5,'2022-01-01','3',400),(1410,87,'2022-05-05','2',600),(1411,47,'2022-01-11','1',500),(1412,89,'2021-11-23','2',500),(1413,85,'2022-07-31','2',600),(1414,59,'2022-06-01','2',600),(1415,40,'2022-06-18','2',500),(1416,86,'2022-08-27','2',600),(1417,36,'2022-10-29','3',500),(1418,90,'2022-01-04','2',400),(1419,25,'2022-01-25','3',600),(1420,21,'2022-02-17','1',300),(1421,7,'2021-12-31','2',400),(1422,82,'2022-07-03','2',500),(1423,89,'2022-09-03','2',300),(1424,56,'2021-12-09','1',300),(1425,99,'2022-03-05','1',600),(1426,52,'2022-01-30','3',300),(1427,74,'2022-08-03','1',600),(1428,64,'2022-11-01','1',400),(1429,83,'2022-06-11','1',300),(1430,51,'2022-05-04','3',400),(1431,22,'2022-01-15','3',400),(1432,99,'2022-03-02','1',400),(1433,3,'2022-01-06','2',400),(1434,54,'2022-11-06','2',400),(1435,41,'2022-01-17','3',400),(1436,65,'2022-09-21','3',300),(1437,90,'2022-06-24','2',500),(1438,43,'2022-03-05','3',400),(1439,95,'2021-12-25','2',600),(1440,19,'2022-01-15','3',500),(1441,10,'2022-10-31','1',400),(1442,52,'2021-12-11','1',400),(1443,54,'2022-05-13','1',600),(1444,64,'2022-05-11','3',400),(1445,30,'2021-12-20','3',400),(1446,20,'2022-01-13','1',300),(1447,58,'2022-04-01','3',600),(1448,75,'2022-06-05','2',400),(1449,94,'2022-01-30','1',600),(1450,57,'2022-08-09','3',500),(1451,49,'2022-04-17','2',600),(1452,83,'2022-02-02','1',500),(1453,39,'2022-06-03','1',500),(1454,31,'2022-04-21','1',600),(1455,72,'2022-08-25','2',400),(1456,31,'2022-01-19','1',600),(1457,60,'2022-10-09','2',600),(1458,61,'2022-03-22','2',400),(1459,9,'2022-07-30','2',300),(1460,99,'2022-09-27','1',600),(1461,23,'2022-04-06','3',600),(1462,55,'2022-02-10','1',400),(1463,75,'2022-08-10','3',600),(1464,28,'2021-12-08','2',300),(1465,45,'2022-09-29','1',300),(1466,2,'2022-04-20','3',400),(1467,12,'2022-06-23','2',400),(1468,40,'2022-08-20','2',300),(1469,25,'2022-05-13','3',500),(1470,66,'2022-06-16','3',500),(1471,5,'2022-01-21','2',400),(1472,71,'2022-08-16','1',500),(1473,20,'2022-02-14','2',400),(1474,83,'2022-02-25','3',600),(1475,80,'2022-10-17','3',500),(1476,55,'2021-11-10','3',300),(1477,38,'2022-11-01','2',400),(1478,7,'2022-10-28','2',400),(1479,59,'2021-11-09','3',400),(1480,74,'2022-05-26','1',600),(1481,22,'2021-12-23','2',600),(1482,3,'2022-03-05','3',300),(1483,84,'2022-05-29','2',500),(1484,83,'2021-11-11','1',500),(1485,78,'2022-04-03','3',600),(1486,3,'2022-08-19','1',300),(1487,68,'2022-02-05','1',400),(1489,24,'2022-08-05','3',500),(1490,40,'2022-04-19','1',400),(1491,97,'2022-06-24','1',400),(1492,92,'2022-05-17','1',600),(1493,47,'2022-04-20','2',400),(1494,43,'2022-07-11','2',400),(1495,57,'2022-04-27','3',500),(1496,10,'2022-10-11','3',400),(1497,91,'2022-04-19','2',300),(1498,60,'2022-06-21','2',400),(1499,7,'2022-09-19','3',400),(1500,44,'2022-08-11','2',500),(1501,27,'2022-07-01','1',300),(1502,98,'2022-04-28','2',600),(1503,40,'2022-01-12','1',300),(1504,35,'2022-08-03','1',600),(1508,2,'2022-03-05','1',600),(1517,2,'2021-11-12','1',600),(1519,43,'2021-11-12','1',600);
/*!40000 ALTER TABLE `STAFF_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`CS3743_Group3`@`%`*/ /*!50003 TRIGGER `TwoCNAsPerShiftPerDayPerHall` AFTER INSERT ON `STAFF_HISTORY` FOR EACH ROW BEGIN
    DECLARE cnt INT;
    IF EXISTS(
				SELECT * 
				FROM 
				(
					SELECT *, COUNT(STAFF_HISTORY_ENTRY_STAFF_ID) AS C1
					FROM STAFF_HISTORY
                    INNER JOIN STAFF_MEMBER ON STAFF_HISTORY_ENTRY_STAFF_ID=STAFF_ID
					WHERE STAFF_POSITION='CNA'
					GROUP BY STAFF_HISTORY_ENTRY_SHIFT, STAFF_HISTORY_ENTRY_HALL, STAFF_HISTORY_ENTRY_DATE, STAFF_POSITION
				) AS T2 
				WHERE (C1 >= 3)) 
		THEN
        SIGNAL SQLSTATE VALUE '45000'
        SET MESSAGE_TEXT = 'There can only be two CNAs in the same hall, in the same shift, on the same day.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`CS3743_Group3`@`%`*/ /*!50003 TRIGGER `OneNursePerShiftPerDayPerHall` AFTER INSERT ON `STAFF_HISTORY` FOR EACH ROW BEGIN
    DECLARE cnt INT;
    IF EXISTS(
				SELECT * 
				FROM 
				(
					SELECT *, COUNT(STAFF_HISTORY_ENTRY_STAFF_ID) AS C1
					FROM STAFF_HISTORY
                    INNER JOIN STAFF_MEMBER ON STAFF_HISTORY_ENTRY_STAFF_ID=STAFF_ID
					WHERE STAFF_POSITION IN ('LVN', 'RN')
					GROUP BY STAFF_HISTORY_ENTRY_SHIFT, STAFF_HISTORY_ENTRY_HALL, STAFF_HISTORY_ENTRY_DATE, STAFF_POSITION
				) AS T2 
				WHERE (C1 >= 2)) 
		THEN
        SIGNAL SQLSTATE VALUE '45000'
        SET MESSAGE_TEXT = 'There can only be one nurse in the same hall, in the same shift, on the same day.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`CS3743_Group3`@`%`*/ /*!50003 TRIGGER `OneCMAPerShiftPerDayPerHall` AFTER INSERT ON `STAFF_HISTORY` FOR EACH ROW BEGIN
    DECLARE cnt INT;
    IF EXISTS(
				SELECT * 
				FROM 
				(
					SELECT *, COUNT(STAFF_HISTORY_ENTRY_STAFF_ID) AS C1
					FROM STAFF_HISTORY
                    INNER JOIN STAFF_MEMBER ON STAFF_HISTORY_ENTRY_STAFF_ID=STAFF_ID
					WHERE STAFF_POSITION='CMA'
					GROUP BY STAFF_HISTORY_ENTRY_SHIFT, STAFF_HISTORY_ENTRY_HALL, STAFF_HISTORY_ENTRY_DATE, STAFF_POSITION
				) AS T2 
				WHERE (C1 >= 2)) 
		THEN
        SIGNAL SQLSTATE VALUE '45000'
        SET MESSAGE_TEXT = 'There can only be one CMA in the same hall, in the same shift, on the same day.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`CS3743_Group3`@`%`*/ /*!50003 TRIGGER `TwoCNAsPerShiftPerDayPerHallUpdate` AFTER UPDATE ON `STAFF_HISTORY` FOR EACH ROW BEGIN
    DECLARE cnt INT;
    IF EXISTS(
				SELECT * 
				FROM 
				(
					SELECT *, COUNT(STAFF_HISTORY_ENTRY_STAFF_ID) AS C1
					FROM STAFF_HISTORY
                    INNER JOIN STAFF_MEMBER ON STAFF_HISTORY_ENTRY_STAFF_ID=STAFF_ID
					WHERE STAFF_POSITION='CNA'
					GROUP BY STAFF_HISTORY_ENTRY_SHIFT, STAFF_HISTORY_ENTRY_HALL, STAFF_HISTORY_ENTRY_DATE, STAFF_POSITION
				) AS T2 
				WHERE (C1 >= 3)) 
		THEN
        SIGNAL SQLSTATE VALUE '45000'
        SET MESSAGE_TEXT = 'There can only be two CNAs in the same hall, in the same shift, on the same day.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`CS3743_Group3`@`%`*/ /*!50003 TRIGGER `OneNursePerShiftPerDayPerHallUpdate` AFTER UPDATE ON `STAFF_HISTORY` FOR EACH ROW BEGIN
    DECLARE cnt INT;
    IF EXISTS(
				SELECT * 
				FROM 
				(
					SELECT *, COUNT(STAFF_HISTORY_ENTRY_STAFF_ID) AS C1
					FROM STAFF_HISTORY
                    INNER JOIN STAFF_MEMBER ON STAFF_HISTORY_ENTRY_STAFF_ID=STAFF_ID
					WHERE STAFF_POSITION IN ('LVN', 'RN')
					GROUP BY STAFF_HISTORY_ENTRY_SHIFT, STAFF_HISTORY_ENTRY_HALL, STAFF_HISTORY_ENTRY_DATE, STAFF_POSITION
				) AS T2 
				WHERE (C1 >= 2)) 
		THEN
        SIGNAL SQLSTATE VALUE '45000'
        SET MESSAGE_TEXT = 'There can only be one nurse in the same hall, in the same shift, on the same day.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`CS3743_Group3`@`%`*/ /*!50003 TRIGGER `OneCMAPerShiftPerDayPerHallUpdate` AFTER UPDATE ON `STAFF_HISTORY` FOR EACH ROW BEGIN
    DECLARE cnt INT;
    IF EXISTS(
				SELECT * 
				FROM 
				(
					SELECT *, COUNT(STAFF_HISTORY_ENTRY_STAFF_ID) AS C1
					FROM STAFF_HISTORY
                    INNER JOIN STAFF_MEMBER ON STAFF_HISTORY_ENTRY_STAFF_ID=STAFF_ID
					WHERE STAFF_POSITION='CMA'
					GROUP BY STAFF_HISTORY_ENTRY_SHIFT, STAFF_HISTORY_ENTRY_HALL, STAFF_HISTORY_ENTRY_DATE, STAFF_POSITION
				) AS T2 
				WHERE (C1 >= 2)) 
		THEN
        SIGNAL SQLSTATE VALUE '45000'
        SET MESSAGE_TEXT = 'There can only be one CMA in the same hall, in the same shift, on the same day.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `STAFF_MEMBER`
--

DROP TABLE IF EXISTS `STAFF_MEMBER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STAFF_MEMBER` (
  `STAFF_ID` int NOT NULL AUTO_INCREMENT,
  `STAFF_FNAME` varchar(45) DEFAULT NULL,
  `STAFF_LNAME` varchar(45) DEFAULT NULL,
  `STAFF_POSITION` enum('LVN','RN','CNA','CMA') DEFAULT NULL,
  PRIMARY KEY (`STAFF_ID`),
  KEY `STAFF_POSITION` (`STAFF_POSITION`),
  CONSTRAINT `STAFF_MEMBER_ibfk_1` FOREIGN KEY (`STAFF_POSITION`) REFERENCES `STAFF_POSITION` (`STAFF_POSITION`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STAFF_MEMBER`
--

LOCK TABLES `STAFF_MEMBER` WRITE;
/*!40000 ALTER TABLE `STAFF_MEMBER` DISABLE KEYS */;
INSERT INTO `STAFF_MEMBER` VALUES (2,'Georgy','Cicutto','RN'),(3,'Jessey','Merry','RN'),(4,'De','Haig','RN'),(5,'Janeta','Vinck','RN'),(6,'Gretal','Gisbey','LVN'),(7,'Bobbie','MacMeanma','LVN'),(8,'Clarisse','Leahy','LVN'),(9,'Haskell','Dykes','LVN'),(10,'Aimee','Scawen','LVN'),(11,'Sherwin','McKibben','LVN'),(12,'Delbert','Scrannage','LVN'),(13,'Carrissa','Vedntyev','LVN'),(14,'Zoe','Gelderd','LVN'),(15,'Alphard','Odd','LVN'),(16,'Grover','Roblou','LVN'),(17,'Lanna','Davoren','LVN'),(18,'Smitty','Kupec','LVN'),(19,'Susan','Parsonson','LVN'),(20,'Hersch','Bastian','LVN'),(21,'Braden','Brickham','LVN'),(22,'Griffith','Pallent','LVN'),(23,'Bryce','Lavies','LVN'),(24,'Curran','Anniwell','LVN'),(25,'Legra','Cox','LVN'),(26,'Mariette','Mabbe','LVN'),(27,'Steffen','Sargint','LVN'),(28,'Loralie','Outram','LVN'),(29,'Lita','Greener','LVN'),(30,'Rivalee','Isaq','CMA'),(31,'Anya','Navarro','CMA'),(32,'Beatrix','Forst','CMA'),(33,'Mehetabel','Filippo','CMA'),(34,'Bernadine','Betancourt','CMA'),(35,'Jayson','Semrad','CMA'),(36,'Augustine','Wormleighton','CMA'),(37,'Leela','Mildner','CMA'),(38,'Niccolo','Walster','CMA'),(39,'Helyn','Collip','CMA'),(40,'Devondra','Noir','CMA'),(41,'Wye','Leyden','CMA'),(42,'Lek','McDermott-Row','CMA'),(43,'Evered','Deniskevich','CMA'),(44,'Yolane','Scrivens','CMA'),(45,'Mel','Tattersfield','CNA'),(46,'Kearney','Josipovic','CNA'),(47,'Chan','Brumfitt','CNA'),(48,'Pincas','Gimert','CNA'),(49,'Laird','Deporte','CNA'),(50,'Binni','Pracy','CNA'),(51,'Mei','Greenhaugh','CNA'),(52,'Noby','Geerling','CNA'),(53,'Penelope','Ungerer','CNA'),(54,'Deane','Hulke','CNA'),(55,'Jemima','Waterhowse','CNA'),(56,'Chick','Seak','CNA'),(57,'Codi','Aronoff','CNA'),(58,'Boot','Buey','CNA'),(59,'Matti','Gibbe','CNA'),(60,'Taffy','Way','CNA'),(61,'Marketa','Duinbleton','CNA'),(62,'Koenraad','Goudard','CNA'),(63,'Gregory','Bridgeland','CNA'),(64,'Lyndsay','Chesswas','CNA'),(65,'Mikol','Tasseler','CNA'),(66,'Lena','Maggi','CNA'),(67,'Cindi','Hourihan','CNA'),(68,'Kermie','Labrum','CNA'),(69,'Dar','Lalley','CNA'),(70,'Dasie','Wyldbore','CNA'),(71,'Eileen','Nosworthy','CNA'),(72,'Aime','Grzelczak','CNA'),(73,'Gabi','Pattillo','CNA'),(74,'Grover','Rorke','CNA'),(75,'Elinore','Lawlor','CNA'),(76,'Olia','Elcocks','CNA'),(77,'Phillipe','Bage','CNA'),(78,'Geoff','Liebermann','CNA'),(79,'Stacey','Nerheny','CNA'),(80,'Arley','Tweedy','CNA'),(81,'Clarissa','Poletto','CNA'),(82,'Thor','Paulus','CNA'),(83,'Darlleen','Beswell','CNA'),(84,'Heidi','Segebrecht','CNA'),(85,'Sondra','Spaldin','CNA'),(86,'Rog','Frowde','CNA'),(87,'Yorke','Greaterex','CNA'),(88,'Eldredge','Gwyllt','CNA'),(89,'Emili','Warry','CNA'),(90,'Maure','Dennis','CNA'),(91,'Rochette','Doul','CNA'),(92,'James','Cordier','CNA'),(93,'Diego','Klaiser','CNA'),(94,'Archer','Kiossel','CNA'),(95,'Selina','Escofier','CNA'),(96,'Mylo','Tapenden','CNA'),(97,'Yulma','Simondson','CNA'),(98,'Nonna','Reye','CNA'),(99,'Lemmy','Glencros','CNA');
/*!40000 ALTER TABLE `STAFF_MEMBER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STAFF_POSITION`
--

DROP TABLE IF EXISTS `STAFF_POSITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STAFF_POSITION` (
  `STAFF_POSITION` enum('RN','LVN','CMA','CNA') NOT NULL,
  `STAFF_POSITION_HOURLY_PAY` decimal(5,2) DEFAULT NULL,
  `STAFF_POSITION_MIN_EDU_REQ` enum('None','High School','Nursing Assistant Certificate','Medical Assistant Certificate','Medical School') DEFAULT NULL,
  PRIMARY KEY (`STAFF_POSITION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STAFF_POSITION`
--

LOCK TABLES `STAFF_POSITION` WRITE;
/*!40000 ALTER TABLE `STAFF_POSITION` DISABLE KEYS */;
INSERT INTO `STAFF_POSITION` VALUES ('RN',35.00,'Medical School'),('LVN',25.00,'Medical School'),('CMA',15.00,'Medical Assistant Certificate'),('CNA',10.00,'Nursing Assistant Certificate');
/*!40000 ALTER TABLE `STAFF_POSITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VISITOR`
--

DROP TABLE IF EXISTS `VISITOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VISITOR` (
  `VISITOR_ID` int NOT NULL AUTO_INCREMENT,
  `VISITOR_FNAME` varchar(45) DEFAULT NULL,
  `VISITOR_LNAME` varchar(45) DEFAULT NULL,
  `VISITOR_TYPE` enum('Family','Friend','Medical','Other') DEFAULT NULL,
  PRIMARY KEY (`VISITOR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VISITOR`
--

LOCK TABLES `VISITOR` WRITE;
/*!40000 ALTER TABLE `VISITOR` DISABLE KEYS */;
INSERT INTO `VISITOR` VALUES (1,'Jephthah','Cheater','Family'),(2,'Mella','Manville','Other'),(3,'Phillipp','Cruickshanks','Other'),(4,'Dall','Largent','Friend'),(5,'Eydie','Floris','Medical'),(6,'Janette','Gledstane','Other'),(7,'Deck','Jewise','Medical'),(8,'Sheffield','Prott','Medical'),(9,'Pate','Vlasyev','Medical'),(10,'Hartwell','Waud','Medical'),(11,'Wandis','Durie','Other'),(12,'Karlotte','Althrop','Friend'),(13,'Gweneth','Eaddy','Medical'),(14,'Carly','Capener','Family'),(15,'Parker','Gowry','Friend'),(16,'Winne','Munnis','Medical'),(17,'Elden','Spofforth','Medical'),(18,'Joane','Linfoot','Other'),(19,'Obidiah','Wyllcock','Medical'),(20,'Jewell','Dackombe','Friend'),(21,'Ester','Keetch','Friend'),(22,'Melisenda','Iskov','Friend'),(23,'Pearl','Denniston','Family'),(24,'Buffy','Balthasar','Friend'),(25,'Wake','Craighill','Medical'),(26,'Morgana','Pearsey','Medical'),(27,'Genny','Mouncey','Friend'),(28,'Marilin','Stigell','Friend'),(29,'Julissa','Ziemecki','Other'),(30,'Chad','Pendleberry','Family'),(31,'Sharia','Mabon','Friend'),(32,'Nye','Siege','Medical'),(33,'Winni','Suthren','Friend'),(34,'Alan','Gledhall','Family'),(35,'Marie-ann','Bealing','Friend'),(36,'Welch','Newlin','Family'),(37,'Tarah','Durtnal','Other'),(38,'Rogerio','Harbisher','Friend'),(39,'Garik','Brimfield','Medical'),(40,'Jacky','Worcester','Family'),(41,'Mord','Rosling','Family'),(42,'Olav','Mingardi','Other'),(43,'Odelle','Creswell','Medical'),(44,'Greta','Olivera','Family'),(45,'Mitchell','Spiers','Other'),(46,'Phineas','Andrzejczak','Other'),(47,'Meris','Hasnney','Friend'),(48,'Clarissa','Smout','Family'),(49,'Ashlan','Moores','Other'),(50,'Chantal','Backhouse','Other'),(51,'Fidelity','Durrad','Medical'),(52,'Augustus','Huxtable','Medical'),(53,'Angus','Berrygun','Friend'),(54,'Tiena','Abrahm','Other'),(55,'Ulrika','Audiss','Friend'),(56,'Deeann','Sumshon','Other'),(57,'Tuesday','Tuffrey','Other'),(58,'Letta','Casone','Medical'),(59,'Alberik','Dammarell','Other'),(60,'Saunderson','Kezourec','Other');
/*!40000 ALTER TABLE `VISITOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VISITOR_HISTORY`
--

DROP TABLE IF EXISTS `VISITOR_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VISITOR_HISTORY` (
  `VISITOR_HISTORY_NUM` int NOT NULL AUTO_INCREMENT,
  `VISITOR_HISTORY_VISITOR_ID` int NOT NULL,
  `VISITOR_HISTORY_PATIENT_ID` varchar(4) NOT NULL,
  `VISITOR_HISTORY_DATE` date DEFAULT NULL,
  PRIMARY KEY (`VISITOR_HISTORY_NUM`),
  KEY `VISITOR_HISTORY_VISITOR_ID` (`VISITOR_HISTORY_VISITOR_ID`),
  KEY `VISITOR_HISTORY_ibfk_2` (`VISITOR_HISTORY_PATIENT_ID`),
  CONSTRAINT `VISITOR_HISTORY_ibfk_1` FOREIGN KEY (`VISITOR_HISTORY_VISITOR_ID`) REFERENCES `VISITOR` (`VISITOR_ID`),
  CONSTRAINT `VISITOR_HISTORY_ibfk_2` FOREIGN KEY (`VISITOR_HISTORY_PATIENT_ID`) REFERENCES `PATIENT` (`PATIENT_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VISITOR_HISTORY`
--

LOCK TABLES `VISITOR_HISTORY` WRITE;
/*!40000 ALTER TABLE `VISITOR_HISTORY` DISABLE KEYS */;
INSERT INTO `VISITOR_HISTORY` VALUES (1,42,'401A','2022-07-28'),(3,8,'415A','2022-03-11'),(4,46,'519A','2022-02-09'),(6,33,'305B','2021-07-12'),(7,58,'509B','2022-04-12'),(8,28,'519A','2021-02-20'),(9,46,'505A','2021-03-25'),(10,29,'517B','2022-03-02'),(11,16,'420B','2022-01-09'),(12,33,'317B','2022-06-14'),(13,29,'401B','2021-10-29'),(14,48,'409A','2022-05-28'),(15,4,'312A','2022-07-04'),(16,58,'409A','2021-01-25'),(17,2,'512A','2022-09-18'),(18,52,'416A','2022-06-07'),(19,50,'306A','2022-02-07'),(21,50,'416B','2021-07-31'),(22,16,'313B','2022-01-06'),(23,52,'317A','2021-08-08'),(24,60,'311B','2022-07-21'),(25,7,'518B','2021-12-02'),(26,43,'415A','2022-02-28'),(27,50,'320A','2021-11-15'),(28,25,'304A','2021-04-24'),(29,46,'503B','2022-10-31'),(30,25,'503B','2021-03-18'),(31,3,'502A','2022-06-28'),(32,30,'609B','2022-09-02'),(33,34,'520A','2021-07-27'),(35,41,'502B','2022-04-27'),(36,47,'518B','2022-06-12'),(38,18,'313A','2022-02-03'),(39,15,'516B','2021-01-09'),(41,51,'512B','2022-08-14'),(42,2,'311B','2021-11-29'),(43,39,'403B','2022-09-08'),(44,57,'517A','2022-11-09'),(46,40,'313A','2022-02-01'),(47,2,'500A','2022-02-04'),(48,47,'310A','2021-12-26'),(49,3,'416B','2022-02-03'),(50,51,'418A','2021-09-20'),(52,23,'413B','2022-01-29'),(53,37,'411A','2021-10-21'),(55,43,'519B','2022-04-02'),(56,42,'300A','2022-06-06'),(57,1,'506B','2021-06-27'),(58,30,'409A','2022-04-09'),(59,18,'518A','2022-05-25'),(60,47,'309A','2022-03-10');
/*!40000 ALTER TABLE `VISITOR_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VITALS_READING`
--

DROP TABLE IF EXISTS `VITALS_READING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VITALS_READING` (
  `VITALS_READING_ID` int NOT NULL AUTO_INCREMENT,
  `VITALS_READING_PATIENT_ID` varchar(4) DEFAULT NULL,
  `VITALS_READING_STAFF_MEMBER_ID` int DEFAULT NULL,
  `VITALS_READING_O2_SAT` int DEFAULT NULL,
  `VITALS_READING_TEMP` decimal(5,2) DEFAULT NULL,
  `VITALS_READING_PULSE` int DEFAULT NULL,
  `VITALS_READING_SYSTOLIC_BLOOD_PRESSURE` int DEFAULT NULL,
  `VITALS_READING_DIASTOLIC_BLOOD_PRESSURE` int DEFAULT NULL,
  `VITALS_READING_DATE` date DEFAULT NULL,
  PRIMARY KEY (`VITALS_READING_ID`),
  KEY `VITALS_READING_STAFF_MEMBER_ID` (`VITALS_READING_STAFF_MEMBER_ID`),
  KEY `VITALS_READING_ibfk_1` (`VITALS_READING_PATIENT_ID`),
  KEY `O2_SAT_INDX` (`VITALS_READING_O2_SAT`),
  KEY `SYS_PRES_INDX` (`VITALS_READING_SYSTOLIC_BLOOD_PRESSURE`),
  KEY `DIAS_PRES_INDX` (`VITALS_READING_DIASTOLIC_BLOOD_PRESSURE`),
  CONSTRAINT `VITALS_READING_ibfk_1` FOREIGN KEY (`VITALS_READING_PATIENT_ID`) REFERENCES `PATIENT` (`PATIENT_ID`) ON UPDATE CASCADE,
  CONSTRAINT `VITALS_READING_ibfk_2` FOREIGN KEY (`VITALS_READING_STAFF_MEMBER_ID`) REFERENCES `STAFF_MEMBER` (`STAFF_ID`),
  CONSTRAINT `CHK_VITALS_READING_DIASTOLIC_BLOOD_PRESSURE` CHECK (((`VITALS_READING_DIASTOLIC_BLOOD_PRESSURE` >= 25) and (`VITALS_READING_DIASTOLIC_BLOOD_PRESSURE` <= 180))),
  CONSTRAINT `CHK_VITALS_READING_O2_SAT` CHECK ((`VITALS_READING_O2_SAT` <= 100)),
  CONSTRAINT `CHK_VITALS_READING_PULSE` CHECK (((`VITALS_READING_PULSE` >= 55) and (`VITALS_READING_PULSE` <= 150))),
  CONSTRAINT `CHK_VITALS_READING_SYSTOLIC_BLOOD_PRESSURE` CHECK (((`VITALS_READING_SYSTOLIC_BLOOD_PRESSURE` >= 50) and (`VITALS_READING_SYSTOLIC_BLOOD_PRESSURE` <= 210))),
  CONSTRAINT `CHK_VITALS_READING_TEMP` CHECK (((`VITALS_READING_TEMP` >= 95) and (`VITALS_READING_TEMP` <= 105)))
) ENGINE=InnoDB AUTO_INCREMENT=1060 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VITALS_READING`
--

LOCK TABLES `VITALS_READING` WRITE;
/*!40000 ALTER TABLE `VITALS_READING` DISABLE KEYS */;
INSERT INTO `VITALS_READING` VALUES (656,'420B',86,100,97.20,71,121,74,'2021-07-21'),(657,'507A',77,95,99.59,98,137,106,'2021-05-07'),(658,'312A',19,92,97.86,65,142,109,'2020-12-17'),(659,'420B',51,93,98.13,71,112,75,'2022-07-14'),(660,'516A',86,99,99.42,100,132,91,'2021-05-20'),(661,'320A',75,97,100.43,65,116,71,'2022-09-11'),(662,'517A',81,95,95.13,92,120,72,'2020-09-28'),(663,'313B',61,92,100.37,61,107,59,'2022-10-05'),(664,'419A',4,94,99.38,93,114,76,'2021-11-27'),(665,'317A',57,100,97.89,81,102,64,'2021-02-16'),(666,'319A',85,97,100.24,61,102,67,'2020-03-21'),(667,'305B',37,85,98.78,99,132,86,'2022-10-26'),(668,'302A',62,92,95.50,61,105,62,'2022-11-05'),(669,'515B',94,95,97.59,100,115,84,'2021-05-28'),(670,'401A',3,87,96.94,86,124,85,'2022-07-06'),(671,'309B',66,97,95.38,104,107,70,'2022-02-02'),(672,'520A',40,85,98.00,88,118,86,'2020-12-05'),(673,'316B',77,97,95.79,91,106,65,'2020-02-09'),(674,'517B',73,97,97.88,60,125,93,'2020-05-14'),(675,'311A',37,99,95.34,93,89,43,'2021-02-04'),(676,'412A',12,97,98.29,103,124,88,'2022-03-05'),(677,'314B',18,93,98.94,98,119,74,'2020-10-06'),(678,'516A',25,94,97.52,83,112,81,'2020-08-30'),(679,'515A',31,96,96.07,62,111,71,'2020-11-16'),(680,'408B',17,100,96.91,89,128,85,'2020-08-20'),(681,'403A',37,97,97.54,86,118,70,'2020-11-15'),(682,'318B',50,89,98.22,60,143,111,'2022-03-13'),(683,'519A',28,96,99.77,106,120,74,'2021-05-06'),(684,'300B',49,93,100.03,63,99,51,'2021-07-03'),(685,'410B',52,88,98.74,79,109,66,'2022-06-01'),(686,'502A',87,94,97.86,62,131,91,'2021-07-20'),(687,'420A',77,100,95.00,70,123,91,'2022-04-07'),(688,'412B',59,96,99.16,73,121,75,'2020-12-02'),(689,'314A',3,96,95.00,68,111,78,'2022-04-01'),(691,'414B',30,87,96.25,105,134,100,'2021-04-10'),(692,'408B',62,97,100.01,73,116,71,'2021-11-10'),(693,'313A',39,86,97.00,109,99,61,'2020-02-20'),(694,'503A',46,90,100.35,68,134,91,'2021-08-22'),(695,'400B',26,99,98.77,78,126,95,'2021-04-28'),(696,'405A',48,99,96.05,62,130,89,'2020-06-03'),(697,'310A',6,97,99.29,56,109,69,'2021-05-21'),(698,'515B',95,98,95.00,63,120,71,'2020-07-12'),(699,'518B',97,97,96.05,65,145,114,'2021-01-06'),(700,'401A',51,97,95.00,100,88,50,'2022-09-24'),(701,'419A',16,94,97.54,68,104,67,'2021-11-03'),(702,'409B',31,97,102.44,61,135,91,'2021-12-29'),(703,'520A',61,97,99.16,70,119,85,'2021-01-17'),(704,'411A',30,97,97.65,79,125,80,'2021-03-06'),(705,'419B',44,94,100.50,73,121,80,'2021-11-04'),(707,'411A',60,99,97.03,77,130,99,'2021-11-09'),(708,'304B',9,99,95.69,82,120,81,'2020-08-23'),(709,'414A',15,98,96.33,74,126,76,'2022-05-31'),(710,'512A',97,98,99.09,110,116,79,'2020-09-12'),(711,'314B',8,100,99.13,84,114,70,'2022-03-05'),(712,'410A',50,97,100.38,68,133,87,'2020-07-05'),(713,'412A',36,96,95.00,92,85,43,'2021-08-05'),(714,'419A',30,87,99.47,60,119,76,'2020-08-27'),(715,'414A',98,90,95.94,90,107,71,'2022-01-30'),(716,'518A',94,97,97.52,62,110,77,'2021-06-20'),(717,'313A',93,97,99.17,71,130,81,'2022-07-28'),(718,'309A',31,93,95.61,90,123,81,'2020-12-12'),(719,'404B',89,97,96.30,106,94,64,'2022-09-17'),(720,'308B',80,93,104.83,105,123,92,'2020-06-20'),(721,'419B',60,97,100.09,98,105,66,'2021-12-22'),(722,'418A',6,95,97.90,67,113,70,'2022-09-01'),(723,'317B',54,98,98.36,93,139,106,'2021-05-30'),(724,'317B',96,95,100.82,57,115,82,'2021-02-26'),(725,'602B',51,85,97.84,66,115,70,'2022-07-29'),(726,'302B',8,92,95.00,93,132,92,'2020-07-11'),(727,'407B',36,97,98.33,94,94,55,'2021-08-06'),(728,'615A',30,94,96.39,58,139,105,'2020-08-14'),(729,'506A',43,94,98.28,82,115,67,'2021-01-17'),(730,'412B',61,92,97.07,59,133,94,'2020-02-03'),(731,'304B',56,88,98.87,62,99,50,'2022-02-13'),(732,'516B',93,95,99.80,82,134,96,'2022-10-12'),(733,'613B',98,99,95.89,60,168,131,'2021-05-23'),(734,'313B',5,85,98.57,90,126,96,'2021-06-11'),(735,'400B',2,98,97.48,89,142,107,'2020-03-04'),(736,'300A',22,98,97.00,100,102,71,'2022-08-11'),(737,'401A',64,97,100.71,77,107,66,'2020-10-01'),(738,'301A',64,97,95.00,92,117,82,'2021-07-23'),(739,'506A',69,99,96.24,93,138,104,'2021-04-23'),(740,'402B',63,97,97.51,61,135,105,'2020-07-09'),(741,'305B',86,96,97.62,99,121,89,'2022-11-04'),(742,'414B',10,97,96.95,82,101,63,'2021-11-21'),(743,'310B',77,98,101.10,105,106,76,'2021-02-28'),(744,'610B',55,97,96.99,73,121,86,'2022-08-03'),(745,'502B',58,96,96.36,107,140,101,'2020-07-18'),(746,'601A',82,92,99.70,64,122,75,'2022-07-15'),(747,'302B',40,98,97.01,79,124,78,'2020-10-31'),(748,'415B',31,94,99.63,85,125,87,'2021-04-24'),(749,'409B',35,93,97.90,65,131,99,'2021-09-21'),(750,'306A',13,96,101.16,98,98,63,'2022-04-11'),(751,'320A',84,97,99.22,95,91,57,'2020-07-08'),(752,'308A',22,97,99.51,72,125,77,'2021-09-14'),(753,'304B',68,88,98.84,69,134,92,'2022-01-01'),(754,'318B',43,97,98.73,97,118,78,'2020-04-08'),(755,'420A',90,91,99.87,59,139,102,'2020-07-11'),(756,'303B',62,97,100.21,99,122,80,'2020-02-25'),(757,'320B',50,97,101.02,97,142,105,'2022-10-16'),(758,'305A',60,95,97.47,81,108,63,'2021-11-25'),(759,'315B',69,98,96.85,60,113,73,'2020-02-24'),(760,'310B',32,89,96.02,97,115,83,'2022-05-20'),(761,'411A',30,94,97.63,58,117,67,'2021-09-17'),(762,'415A',86,96,95.00,87,112,65,'2021-12-24'),(763,'405A',43,98,97.63,86,128,78,'2022-08-10'),(764,'309A',83,99,97.32,65,103,71,'2020-08-01'),(765,'505B',40,96,99.45,107,150,111,'2022-03-22'),(766,'618B',77,97,95.46,88,124,79,'2022-11-09'),(767,'417A',24,97,98.54,64,117,71,'2020-08-16'),(768,'506A',15,97,96.06,76,121,71,'2020-06-29'),(769,'407B',36,94,99.88,72,108,70,'2021-05-30'),(770,'414A',28,97,97.37,88,136,95,'2021-03-29'),(771,'401B',47,92,97.36,96,133,93,'2021-10-07'),(772,'301A',32,96,95.00,88,122,73,'2020-12-31'),(774,'411A',60,99,97.03,77,130,99,'2021-11-09'),(775,'304B',9,99,95.69,82,120,81,'2020-08-23'),(776,'414A',15,98,96.33,74,126,76,'2022-05-31'),(777,'512A',97,98,99.09,110,116,79,'2020-09-12'),(778,'314B',8,100,99.13,84,114,70,'2022-03-05'),(779,'410A',50,97,100.38,68,133,87,'2020-07-05'),(780,'412A',36,96,95.00,92,85,43,'2021-08-05'),(781,'419A',30,87,99.47,60,119,76,'2020-08-27'),(782,'414A',98,90,95.94,90,107,71,'2022-01-30'),(783,'518A',94,97,97.52,62,110,77,'2021-06-20'),(784,'313A',93,97,99.17,71,130,81,'2022-07-28'),(785,'309A',31,93,95.61,90,123,81,'2020-12-12'),(786,'404B',89,97,96.30,106,94,64,'2022-09-17'),(787,'308B',80,93,104.83,105,123,92,'2020-06-20'),(788,'419B',60,97,100.09,98,105,66,'2021-12-22'),(789,'418A',6,95,97.90,67,113,70,'2022-09-01'),(790,'317B',54,98,98.36,93,139,106,'2021-05-30'),(791,'317B',96,95,100.82,57,115,82,'2021-02-26'),(792,'602B',51,85,97.84,66,115,70,'2022-07-29'),(793,'302B',8,92,95.00,93,132,92,'2020-07-11'),(794,'407B',36,97,98.33,94,94,55,'2021-08-06'),(795,'615A',30,94,96.39,58,139,105,'2020-08-14'),(796,'506A',43,94,98.28,82,115,67,'2021-01-17'),(797,'412B',61,92,97.07,59,133,94,'2020-02-03'),(798,'304B',56,88,98.87,62,99,50,'2022-02-13'),(799,'516B',93,95,99.80,82,134,96,'2022-10-12'),(800,'613B',98,99,95.89,60,168,131,'2021-05-23'),(801,'313B',5,85,98.57,90,126,96,'2021-06-11'),(802,'400B',2,98,97.48,89,142,107,'2020-03-04'),(803,'300A',22,98,97.00,100,102,71,'2022-08-11'),(804,'401A',64,97,100.71,77,107,66,'2020-10-01'),(805,'301A',64,97,95.00,92,117,82,'2021-07-23'),(806,'506A',69,99,96.24,93,138,104,'2021-04-23'),(807,'402B',63,97,97.51,61,135,105,'2020-07-09'),(808,'305B',86,96,97.62,99,121,89,'2022-11-04'),(809,'414B',10,97,96.95,82,101,63,'2021-11-21'),(810,'310B',77,98,101.10,105,106,76,'2021-02-28'),(811,'610B',55,97,96.99,73,121,86,'2022-08-03'),(812,'502B',58,96,96.36,107,140,101,'2020-07-18'),(813,'601A',82,92,99.70,64,122,75,'2022-07-15'),(814,'302B',40,98,97.01,79,124,78,'2020-10-31'),(815,'415B',31,94,99.63,85,125,87,'2021-04-24'),(816,'409B',35,93,97.90,65,131,99,'2021-09-21'),(817,'306A',13,96,101.16,98,98,63,'2022-04-11'),(818,'320A',84,97,99.22,95,91,57,'2020-07-08'),(819,'308A',22,97,99.51,72,125,77,'2021-09-14'),(820,'304B',68,88,98.84,69,134,92,'2022-01-01'),(821,'318B',43,97,98.73,97,118,78,'2020-04-08'),(822,'420A',90,91,99.87,59,139,102,'2020-07-11'),(823,'303B',62,97,100.21,99,122,80,'2020-02-25'),(824,'320B',50,97,101.02,97,142,105,'2022-10-16'),(825,'305A',60,95,97.47,81,108,63,'2021-11-25'),(826,'315B',69,98,96.85,60,113,73,'2020-02-24'),(827,'310B',32,89,96.02,97,115,83,'2022-05-20'),(828,'411A',30,94,97.63,58,117,67,'2021-09-17'),(829,'415A',86,96,95.00,87,112,65,'2021-12-24'),(830,'405A',43,98,97.63,86,128,78,'2022-08-10'),(831,'309A',83,99,97.32,65,103,71,'2020-08-01'),(832,'505B',40,96,99.45,107,150,111,'2022-03-22'),(833,'618B',77,97,95.46,88,124,79,'2022-11-09'),(834,'417A',24,97,98.54,64,117,71,'2020-08-16'),(835,'506A',15,97,96.06,76,121,71,'2020-06-29'),(836,'407B',36,94,99.88,72,108,70,'2021-05-30'),(837,'414A',28,97,97.37,88,136,95,'2021-03-29'),(838,'401B',47,92,97.36,96,133,93,'2021-10-07'),(839,'301A',32,96,95.00,88,122,73,'2020-12-31'),(841,'411A',60,99,97.03,77,130,99,'2021-11-09'),(842,'304B',9,99,95.69,82,120,81,'2020-08-23'),(843,'414A',15,98,96.33,74,126,76,'2022-05-31'),(844,'512A',97,98,99.09,110,116,79,'2020-09-12'),(845,'314B',8,100,99.13,84,114,70,'2022-03-05'),(846,'410A',50,97,100.38,68,133,87,'2020-07-05'),(847,'412A',36,96,95.00,92,85,43,'2021-08-05'),(848,'419A',30,87,99.47,60,119,76,'2020-08-27'),(849,'414A',98,90,95.94,90,107,71,'2022-01-30'),(850,'518A',94,97,97.52,62,110,77,'2021-06-20'),(851,'313A',93,97,99.17,71,130,81,'2022-07-28'),(852,'309A',31,93,95.61,90,123,81,'2020-12-12'),(853,'404B',89,97,96.30,106,94,64,'2022-09-17'),(854,'308B',80,93,104.83,105,123,92,'2020-06-20'),(855,'419B',60,97,100.09,98,105,66,'2021-12-22'),(856,'418A',6,95,97.90,67,113,70,'2022-09-01'),(857,'317B',54,98,98.36,93,139,106,'2021-05-30'),(858,'317B',96,95,100.82,57,115,82,'2021-02-26'),(859,'602B',51,85,97.84,66,115,70,'2022-07-29'),(860,'302B',8,92,95.00,93,132,92,'2020-07-11'),(861,'407B',36,97,98.33,94,94,55,'2021-08-06'),(862,'615A',30,94,96.39,58,139,105,'2020-08-14'),(863,'506A',43,94,98.28,82,115,67,'2021-01-17'),(864,'412B',61,92,97.07,59,133,94,'2020-02-03'),(865,'304B',56,88,98.87,62,99,50,'2022-02-13'),(866,'516B',93,95,99.80,82,134,96,'2022-10-12'),(867,'613B',98,99,95.89,60,168,131,'2021-05-23'),(868,'313B',5,85,98.57,90,126,96,'2021-06-11'),(869,'400B',2,98,97.48,89,142,107,'2020-03-04'),(870,'300A',22,98,97.00,100,102,71,'2022-08-11'),(871,'401A',64,97,100.71,77,107,66,'2020-10-01'),(872,'301A',64,97,95.00,92,117,82,'2021-07-23'),(873,'506A',69,99,96.24,93,138,104,'2021-04-23'),(874,'402B',63,97,97.51,61,135,105,'2020-07-09'),(875,'305B',86,96,97.62,99,121,89,'2022-11-04'),(876,'414B',10,97,96.95,82,101,63,'2021-11-21'),(877,'310B',77,98,101.10,105,106,76,'2021-02-28'),(878,'610B',55,97,96.99,73,121,86,'2022-08-03'),(879,'502B',58,96,96.36,107,140,101,'2020-07-18'),(880,'601A',82,92,99.70,64,122,75,'2022-07-15'),(881,'302B',40,98,97.01,79,124,78,'2020-10-31'),(882,'415B',31,94,99.63,85,125,87,'2021-04-24'),(883,'409B',35,93,97.90,65,131,99,'2021-09-21'),(884,'306A',13,96,101.16,98,98,63,'2022-04-11'),(885,'320A',84,97,99.22,95,91,57,'2020-07-08'),(886,'308A',22,97,99.51,72,125,77,'2021-09-14'),(887,'304B',68,88,98.84,69,134,92,'2022-01-01'),(888,'318B',43,97,98.73,97,118,78,'2020-04-08'),(889,'420A',90,91,99.87,59,139,102,'2020-07-11'),(890,'303B',62,97,100.21,99,122,80,'2020-02-25'),(891,'320B',50,97,101.02,97,142,105,'2022-10-16'),(892,'305A',60,95,97.47,81,108,63,'2021-11-25'),(893,'315B',69,98,96.85,60,113,73,'2020-02-24'),(894,'310B',32,89,96.02,97,115,83,'2022-05-20'),(895,'411A',30,94,97.63,58,117,67,'2021-09-17'),(896,'415A',86,96,95.00,87,112,65,'2021-12-24'),(897,'405A',43,98,97.63,86,128,78,'2022-08-10'),(898,'309A',83,99,97.32,65,103,71,'2020-08-01'),(899,'505B',40,96,99.45,107,150,111,'2022-03-22'),(900,'618B',77,97,95.46,88,124,79,'2022-11-09'),(901,'417A',24,97,98.54,64,117,71,'2020-08-16'),(902,'506A',15,97,96.06,76,121,71,'2020-06-29'),(903,'407B',36,94,99.88,72,108,70,'2021-05-30'),(904,'414A',28,97,97.37,88,136,95,'2021-03-29'),(905,'401B',47,92,97.36,96,133,93,'2021-10-07'),(906,'301A',32,96,95.00,88,122,73,'2020-12-31'),(908,'414A',88,96,95.00,56,117,83,'2021-11-09'),(909,'303B',19,99,99.55,103,134,104,'2020-08-27'),(910,'407B',3,97,97.39,97,124,86,'2022-10-27'),(911,'505A',23,91,96.51,89,105,73,'2020-05-15'),(912,'411B',98,96,96.43,63,115,76,'2022-02-05'),(913,'403B',5,94,100.55,83,110,62,'2020-10-16'),(914,'611B',94,95,96.73,99,124,91,'2021-10-01'),(915,'413A',50,98,97.93,96,130,90,'2020-05-28'),(916,'505A',23,96,95.40,64,119,69,'2022-01-08'),(917,'516B',13,97,95.41,60,129,81,'2022-06-22'),(918,'420B',20,97,99.16,69,120,87,'2020-04-15'),(919,'512B',93,94,95.00,89,128,98,'2020-12-23'),(920,'412A',35,90,96.09,84,118,85,'2021-09-11'),(921,'319A',15,91,97.59,101,90,40,'2022-08-04'),(922,'418A',77,93,97.37,99,110,64,'2020-08-04'),(923,'512B',53,97,95.00,110,135,105,'2020-05-04'),(924,'317A',23,93,98.61,95,131,81,'2022-06-01'),(925,'407A',92,97,98.47,74,115,79,'2022-03-19'),(926,'320B',41,93,97.96,92,128,95,'2020-09-17'),(927,'502B',77,94,95.00,70,136,90,'2021-06-12'),(928,'310A',2,95,99.64,79,126,88,'2021-09-29'),(929,'412B',36,99,95.43,105,112,81,'2021-11-03'),(930,'513B',3,92,97.71,71,108,66,'2020-05-16'),(931,'406B',84,97,99.18,104,126,81,'2021-07-30'),(932,'311B',53,100,95.77,57,119,89,'2020-10-06'),(933,'500A',55,100,95.00,64,106,67,'2022-06-03'),(934,'416A',9,97,99.93,78,118,82,'2022-05-15'),(935,'300B',69,97,98.71,57,135,99,'2020-03-10'),(936,'512A',41,90,96.16,98,113,65,'2020-03-29'),(937,'313A',4,97,96.16,93,135,102,'2021-05-23'),(938,'302B',82,99,101.25,82,112,63,'2021-03-08'),(939,'406B',96,97,96.42,98,158,122,'2021-03-21'),(940,'516B',96,92,97.14,70,126,94,'2022-06-08'),(941,'312A',5,94,99.30,100,127,87,'2020-09-09'),(942,'407A',39,97,100.22,91,122,84,'2021-01-06'),(943,'505A',12,96,97.12,96,83,38,'2020-05-26'),(944,'519B',92,94,98.15,80,108,60,'2022-04-04'),(945,'306A',52,92,98.80,61,114,83,'2022-02-21'),(946,'300B',81,92,95.00,71,100,53,'2020-10-20'),(947,'514B',91,96,96.07,88,124,81,'2022-02-19'),(948,'609B',78,92,101.50,99,133,97,'2021-05-09'),(949,'601B',11,92,96.03,61,138,101,'2020-10-04'),(950,'510B',13,83,95.23,99,113,71,'2020-05-10'),(951,'317B',42,98,97.98,80,110,60,'2021-02-17'),(952,'410B',8,89,98.56,75,107,62,'2022-09-17'),(953,'420A',71,91,97.29,61,104,59,'2020-03-18'),(954,'312A',90,97,99.36,103,117,68,'2022-08-26'),(955,'318B',77,91,95.97,69,116,85,'2021-03-28'),(956,'519A',60,100,103.12,67,115,81,'2020-05-14'),(957,'509B',90,98,95.00,56,128,79,'2021-04-18'),(958,'516B',39,100,97.11,79,114,84,'2020-11-14'),(959,'409A',42,99,98.55,75,176,145,'2021-07-11'),(960,'506B',76,97,99.62,98,99,50,'2020-04-26'),(961,'504B',43,97,98.27,90,136,104,'2022-10-06'),(962,'300B',82,89,103.18,85,106,76,'2021-03-14'),(963,'502A',21,95,100.40,62,123,90,'2022-05-15'),(964,'501B',8,97,102.63,55,115,76,'2020-09-28'),(965,'613A',73,94,96.24,92,111,80,'2020-12-22'),(966,'317A',54,97,95.00,63,135,103,'2021-07-11'),(967,'305B',29,95,96.81,110,109,65,'2022-08-27'),(968,'403B',79,97,97.58,104,118,72,'2020-05-15'),(969,'513A',70,100,99.02,64,123,80,'2020-07-20'),(970,'403B',99,99,100.51,109,130,85,'2021-03-15'),(971,'304B',69,91,95.00,88,110,63,'2020-09-02'),(972,'417B',69,97,96.17,89,136,89,'2020-06-08'),(973,'518B',20,94,99.15,90,113,83,'2021-07-30'),(974,'405B',27,91,97.60,94,142,97,'2020-08-04'),(975,'613B',6,91,95.82,56,106,61,'2020-05-16'),(976,'405A',88,98,95.00,94,93,44,'2020-04-23'),(977,'415B',15,97,99.55,95,103,65,'2020-06-16'),(979,'304A',29,92,97.93,106,122,91,'2021-07-21'),(980,'309B',49,97,95.47,97,116,72,'2021-07-01'),(981,'500B',46,97,99.77,56,132,95,'2020-12-06'),(982,'518B',72,96,96.73,60,132,102,'2022-06-18'),(983,'419A',48,98,97.14,62,126,93,'2021-01-30'),(984,'300B',17,97,96.61,72,127,80,'2020-05-24'),(985,'604B',34,89,98.64,55,121,76,'2020-10-24'),(986,'503A',64,95,96.85,110,129,99,'2020-02-23'),(987,'309A',80,91,95.00,71,116,80,'2021-10-01'),(988,'315A',85,99,99.87,57,106,68,'2020-06-10'),(989,'300A',48,96,97.73,72,114,78,'2020-12-18'),(990,'506A',32,97,95.00,106,128,85,'2021-09-08'),(991,'512A',73,93,95.47,55,133,91,'2022-02-15'),(992,'416B',24,92,95.62,108,111,69,'2021-11-17'),(993,'303B',86,92,97.34,69,98,66,'2022-10-20'),(994,'506A',21,92,96.96,106,117,71,'2022-07-24'),(995,'306B',27,99,101.85,95,136,99,'2020-10-26'),(996,'615A',20,95,97.92,105,118,71,'2020-07-21'),(997,'315B',21,95,97.13,72,87,39,'2022-03-26'),(998,'511B',18,97,97.15,66,114,64,'2021-10-09'),(999,'409B',21,97,98.87,73,110,69,'2020-02-29'),(1000,'400B',4,97,98.54,63,149,101,'2020-08-25'),(1001,'311A',49,90,100.30,67,125,85,'2020-10-10'),(1002,'411A',60,97,97.54,80,125,89,'2020-03-07'),(1003,'516A',81,97,98.71,56,137,106,'2021-06-20'),(1004,'409A',4,95,95.00,104,119,69,'2020-07-18'),(1005,'308A',83,98,98.52,86,95,58,'2021-09-04'),(1006,'416A',92,95,99.33,95,156,112,'2022-10-24'),(1007,'311B',43,97,98.28,94,104,74,'2020-04-28'),(1008,'320A',10,97,99.87,70,108,69,'2020-11-07'),(1009,'417A',47,93,97.62,95,114,69,'2022-09-24'),(1010,'612B',28,93,99.54,61,136,98,'2021-12-20'),(1011,'408A',12,84,99.18,65,126,88,'2022-07-04'),(1012,'403A',28,95,95.51,67,135,87,'2021-07-31'),(1013,'401B',78,97,99.09,101,91,45,'2020-10-08'),(1014,'301A',41,92,98.86,72,105,60,'2021-06-28'),(1015,'509A',16,97,96.60,88,128,81,'2020-08-03'),(1016,'300A',8,96,98.40,108,111,69,'2021-09-09'),(1017,'419A',70,97,102.95,67,124,87,'2022-04-10'),(1018,'520A',77,93,95.56,106,107,63,'2020-08-01'),(1019,'308A',87,92,95.02,90,123,82,'2022-10-29'),(1020,'516A',57,96,96.69,58,142,100,'2022-09-20'),(1021,'311A',83,95,98.19,94,120,74,'2020-07-30'),(1022,'301B',47,97,97.44,89,120,74,'2022-07-21'),(1023,'510B',82,95,97.43,86,115,82,'2022-02-27'),(1024,'502B',64,97,99.29,83,100,65,'2021-07-07'),(1025,'304A',53,97,99.51,76,135,89,'2021-10-26'),(1026,'506B',4,94,100.95,79,145,105,'2021-08-02'),(1027,'301B',37,93,97.46,81,128,88,'2021-12-27'),(1028,'401A',49,100,99.73,63,100,70,'2022-05-28'),(1029,'605B',53,97,98.15,92,124,85,'2020-05-07'),(1030,'316B',76,93,95.00,56,95,53,'2022-04-23'),(1031,'404B',57,93,97.49,70,103,54,'2020-05-03'),(1032,'301A',87,98,98.33,81,133,96,'2020-12-10'),(1033,'519B',34,97,95.20,72,88,55,'2021-01-14'),(1034,'503B',4,100,99.20,55,122,84,'2020-05-22'),(1035,'418A',5,95,98.16,72,92,42,'2021-07-25'),(1036,'314A',30,98,98.54,65,119,81,'2022-02-20'),(1037,'505B',18,89,96.62,110,110,74,'2020-12-10'),(1038,'505A',37,89,97.03,55,94,61,'2021-01-15'),(1039,'405A',49,94,97.25,67,132,88,'2022-04-21'),(1040,'305A',34,97,99.90,82,128,96,'2021-01-06'),(1041,'301A',84,89,96.29,82,131,87,'2021-03-19'),(1042,'300A',8,97,97.02,63,122,86,'2022-05-09'),(1043,'503B',31,95,98.06,104,118,81,'2021-11-05'),(1044,'505A',82,91,102.69,83,105,74,'2022-02-20'),(1045,'306A',56,100,95.15,55,91,53,'2020-07-24'),(1046,'614B',38,91,97.63,83,125,85,'2020-08-24'),(1047,'318B',22,96,97.08,98,127,81,'2022-08-15'),(1048,'300B',18,83,100.15,97,125,78,'2022-04-19'),(1049,'417A',95,97,97.83,104,106,65,'2020-12-01'),(1050,'615B',28,89,99.98,81,102,67,'2021-11-24'),(1051,'315B',24,97,99.50,63,118,71,'2021-05-20'),(1052,'506B',61,89,95.82,60,120,77,'2021-04-05'),(1053,'518A',81,80,97.47,99,105,57,'2021-11-13'),(1054,'304B',14,97,98.83,65,131,81,'2022-02-04'),(1055,'413B',60,99,100.80,110,106,75,'2022-05-01'),(1056,'312A',47,89,95.00,76,110,76,'2021-07-22'),(1057,'306A',86,95,98.18,110,106,62,'2020-04-15'),(1058,'314B',49,100,99.45,95,119,83,'2021-01-23'),(1059,'511B',78,94,99.71,98,116,85,'2020-05-23');
/*!40000 ALTER TABLE `VITALS_READING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WOUND_CARE`
--

DROP TABLE IF EXISTS `WOUND_CARE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WOUND_CARE` (
  `WOUND_CARE_WOUND_NUM` int NOT NULL AUTO_INCREMENT,
  `WOUND_CARE_PATIENT_ID` varchar(4) DEFAULT NULL,
  `WOUND_CARE_WOUND_STAGE` enum('0','1','2','3','4') DEFAULT NULL,
  `WOUND_CARE_WOUND_LOCATION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`WOUND_CARE_WOUND_NUM`),
  KEY `WOUND_CARE_PATIENT_ID` (`WOUND_CARE_PATIENT_ID`),
  KEY `WOUND_CARE_WOUND_STAGE` (`WOUND_CARE_WOUND_STAGE`),
  CONSTRAINT `WOUND_CARE_ibfk_1` FOREIGN KEY (`WOUND_CARE_PATIENT_ID`) REFERENCES `PATIENT` (`PATIENT_ID`),
  CONSTRAINT `WOUND_CARE_ibfk_2` FOREIGN KEY (`WOUND_CARE_WOUND_STAGE`) REFERENCES `WOUND_STAGE` (`WOUND_STAGE`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WOUND_CARE`
--

LOCK TABLES `WOUND_CARE` WRITE;
/*!40000 ALTER TABLE `WOUND_CARE` DISABLE KEYS */;
INSERT INTO `WOUND_CARE` VALUES (4,'609B','1','left bottom'),(5,'403B','1','center lower back'),(7,'311A','2','right ankle'),(8,'503A','1','center back'),(9,'503B','1','right ankle'),(10,'401B','4','back of left ear'),(12,'306A','3','right heel'),(14,'417B','4','center bottom'),(15,'413B','4','back of head'),(16,'309A','1','back of left ear'),(17,'512A','1','back of left ear'),(20,'412B','2','left heel'),(24,'304B','3','right back'),(26,'408B','1','left ankle'),(27,'318B','3','back of left ear'),(28,'506B','4','left back'),(29,'509B','1','left bottom'),(30,'414B','4','right shoulder'),(32,'414B','3','left shoulder'),(33,'505B','4','right ankle'),(34,'519B','1','right back'),(35,'520A','1','right shoulder'),(36,'404B','4','right bottom'),(37,'515A','3','left lower back'),(38,'310A','1','right bottom'),(39,'418A','4','coccyx'),(40,'319A','2','center bottom'),(41,'510B','1','left heel'),(42,'402B','3','left bottom'),(43,'512A','3','left bottom'),(44,'314A','2','back of left ear'),(45,'519B','4','coccyx'),(46,'404B','2','center back'),(48,'502B','4','right lower back'),(49,'306B','3','right shoulder'),(50,'500A','4','right shoulder'),(51,'516B','2','right heel'),(52,'306A','3','coccyx');
/*!40000 ALTER TABLE `WOUND_CARE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WOUND_STAGE`
--

DROP TABLE IF EXISTS `WOUND_STAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WOUND_STAGE` (
  `WOUND_STAGE` enum('0','1','2','3','4') NOT NULL,
  `WOUND_STAGE_TREATMENT` enum('Wet-To-Dry Dressing','Wound Vac','Foam Dressing','Other') DEFAULT NULL,
  `WOUND_STAGE_REPOSITION_INTERVAL_HRS` tinyint DEFAULT NULL,
  `WOUND_STAGE_NUM_WKLY_VISITS` tinyint DEFAULT NULL,
  PRIMARY KEY (`WOUND_STAGE`),
  CONSTRAINT `CHK_NUM_WKLY_VISITS` CHECK (((`WOUND_STAGE_NUM_WKLY_VISITS` >= 0) and (`WOUND_STAGE_NUM_WKLY_VISITS` <= 7))),
  CONSTRAINT `CHK_REPO_INT_HRS` CHECK (((`WOUND_STAGE_REPOSITION_INTERVAL_HRS` >= 0) and (`WOUND_STAGE_REPOSITION_INTERVAL_HRS` <= 24)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WOUND_STAGE`
--

LOCK TABLES `WOUND_STAGE` WRITE;
/*!40000 ALTER TABLE `WOUND_STAGE` DISABLE KEYS */;
INSERT INTO `WOUND_STAGE` VALUES ('0','Other',0,0),('1','Other',6,1),('2','Other',4,3),('3','Wet-To-Dry Dressing',2,5),('4','Wound Vac',2,7);
/*!40000 ALTER TABLE `WOUND_STAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'canterahealthdb'
--

--
-- Dumping routines for database 'canterahealthdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `FIND_PATIENTS_WHO_NEED_AIR_MATTRESS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`CS3743_Group3`@`%` PROCEDURE `FIND_PATIENTS_WHO_NEED_AIR_MATTRESS`()
BEGIN
	SELECT * FROM CHECK_MATTRESSES WHERE (WOUND_CARE_WOUND_STAGE='3' OR WOUND_CARE_WOUND_STAGE='4') AND AIR_MATTRESS_NUM IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GETINDIVIDUALPAY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`CS3743_Group3`@`%` PROCEDURE `GETINDIVIDUALPAY`(ID INT)
BEGIN
	SELECT STAFF_ID, STAFF_FNAME, STAFF_LNAME, 
	COUNT(STAFF_HISTORY_ENTRY_SHIFT) * 8 * STAFF_POSITION_HOURLY_PAY AS "TOTAL PAY"
	FROM STAFF_MEMBER NATURAL JOIN STAFF_POSITION
	INNER JOIN STAFF_HISTORY ON STAFF_ID = STAFF_HISTORY_ENTRY_STAFF_ID
	WHERE STAFF_ID = ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GETPAY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`CS3743_Group3`@`%` PROCEDURE `GETPAY`()
BEGIN
	SELECT STAFF_ID, STAFF_FNAME, STAFF_LNAME, 
    COUNT(STAFF_HISTORY_ENTRY_SHIFT) * 8 * STAFF_POSITION_HOURLY_PAY AS "TOTAL PAY"
    FROM STAFF_MEMBER NATURAL JOIN STAFF_POSITION
    INNER JOIN STAFF_HISTORY ON STAFF_ID = STAFF_HISTORY_ENTRY_STAFF_ID
    GROUP BY STAFF_ID
    ORDER BY STAFF_ID ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GIVEBEDS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`CS3743_Group3`@`%` PROCEDURE `GIVEBEDS`()
BEGIN
DECLARE THIS_PATIENT_ID VARCHAR(4);
DECLARE THIS_WOUND_CARE_WOUND_STAGE ENUM ('0', '1', '2', '3', '4');
DECLARE DONE INT DEFAULT 0;
DECLARE PATIENT_CURSOR CURSOR FOR SELECT DISTINCT PATIENT_ID, WOUND_CARE_WOUND_STAGE FROM PATIENT INNER JOIN WOUND_CARE ON WOUND_CARE_PATIENT_ID=PATIENT_ID;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET DONE=TRUE;
OPEN PATIENT_CURSOR;
CURSORLOOP:LOOP
    IF DONE=TRUE THEN
		LEAVE CURSORLOOP;
	END IF;
	FETCH PATIENT_CURSOR INTO THIS_PATIENT_ID, THIS_WOUND_CARE_WOUND_STAGE;
    IF THIS_WOUND_CARE_WOUND_STAGE='3' OR THIS_WOUND_CARE_WOUND_STAGE='4'
    THEN
    INSERT INTO AIR_MATTRESS (AIR_MATTRESS_PATIENT_ID, AIR_MATTRESS_COMPANY) VALUES (THIS_PATIENT_ID, 'Medline');
    END IF;
END LOOP CURSORLOOP;
CLOSE PATIENT_CURSOR;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GIVEPAINMEDICATION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`CS3743_Group3`@`%` PROCEDURE `GIVEPAINMEDICATION`()
BEGIN
DECLARE THIS_PATIENT_ID VARCHAR(4);
DECLARE THIS_WOUND_CARE_WOUND_STAGE ENUM ('0', '1', '2', '3', '4');
DECLARE THIS_PRESCRIPTION_MEDICATION_ID int;
DECLARE DONE INT DEFAULT 0;
DECLARE PATIENT_CURSOR CURSOR FOR SELECT DISTINCT WOUND_CARE_PATIENT_ID FROM (SELECT * FROM WOUND_CARE WHERE WOUND_CARE_WOUND_STAGE='3' OR WOUND_CARE_WOUND_STAGE='4') AS T;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET DONE=TRUE;
OPEN PATIENT_CURSOR;
CURSORLOOP:LOOP
    IF DONE=TRUE THEN
        LEAVE CURSORLOOP;
    END IF;
    FETCH PATIENT_CURSOR INTO THIS_PATIENT_ID;
    IF NOT EXISTS(SELECT * FROM PRESCRIPTIONS WHERE PRESCRIPTION_MEDICATION_ID=173 AND PRESCRIPTION_PATIENT_ID=THIS_PATIENT_ID)
    THEN
    INSERT INTO PRESCRIPTIONS (PRESCRIPTION_MEDICATION_ID, PRESCRIPTION_FREQUENCY, PRESCRIPTION_PATIENT_ID) VALUES (173, 'BID', THIS_PATIENT_ID);
    END IF;
END LOOP CURSORLOOP;
CLOSE PATIENT_CURSOR;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GIVERAISE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`CS3743_Group3`@`%` PROCEDURE `GIVERAISE`(IN RAISE_AMT_IN_PERCENT DEC(3, 2))
BEGIN
DECLARE STAFF_POS_WAGE DEC(5,2);
DECLARE STAFF_POS ENUM ('RN', 'LVN', 'CMA', 'CNA');
DECLARE DONE INT DEFAULT 0;
DECLARE STAFF_POSITION_CURSOR CURSOR FOR SELECT STAFF_POSITION, STAFF_POSITION_HOURLY_PAY FROM STAFF_POSITION;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET DONE=TRUE;
OPEN STAFF_POSITION_CURSOR;
CURSORLOOP:LOOP
    IF DONE=TRUE THEN
		LEAVE CURSORLOOP;
	END IF;
	FETCH STAFF_POSITION_CURSOR INTO STAFF_POS, STAFF_POS_WAGE;
    UPDATE STAFF_POSITION SET STAFF_POSITION_HOURLY_PAY=(STAFF_POS_WAGE + (STAFF_POS_WAGE * (RAISE_AMT_IN_PERCENT / 100))) WHERE STAFF_POSITION=STAFF_POS;
END LOOP CURSORLOOP;
CLOSE STAFF_POSITION_CURSOR;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GIVE_PATIENT_COVID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`CS3743_Group3`@`%` PROCEDURE `GIVE_PATIENT_COVID`()
BEGIN
	DECLARE THIS_PATIENT_ID VARCHAR(4);
    SET THIS_PATIENT_ID = (SELECT PATIENT_ID FROM PATIENT INNER JOIN PATIENT_INFO ON PATIENT_NOTES_PATIENT_ID=PATIENT_ID WHERE PATIENT_NOTES_COVID_STATUS='NEGATIVE' LIMIT 1);
	SELECT PATIENT_ID, PATIENT_RM_NUM, PATIENT_NOTES_COVID_STATUS FROM PATIENT INNER JOIN PATIENT_INFO ON PATIENT_NOTES_PATIENT_ID=PATIENT_ID WHERE PATIENT_ID=THIS_PATIENT_ID;
    UPDATE PATIENT_INFO SET PATIENT_NOTES_COVID_STATUS='POSITIVE' WHERE PATIENT_NOTES_PATIENT_ID=THIS_PATIENT_ID;
    SELECT PATIENT_ID, PATIENT_RM_NUM, PATIENT_NOTES_COVID_STATUS FROM PATIENT INNER JOIN PATIENT_INFO ON PATIENT_NOTES_PATIENT_ID=PATIENT_ID WHERE PATIENT_ID=THIS_PATIENT_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `JOIN_AGGREGATE_HIGH_AVG_BLOOD_PRESSURE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`CS3743_Group3`@`%` PROCEDURE `JOIN_AGGREGATE_HIGH_AVG_BLOOD_PRESSURE`()
BEGIN
SELECT VITALS_READING_PATIENT_ID AS "Patient ID",
PATIENT_FNAME AS "First Name", PATIENT_LNAME AS "Last Name",
ROUND(AVG(VITALS_READING_SYSTOLIC_BLOOD_PRESSURE)) AS "Average Systolic Blood Pressure",
ROUND(AVG(VITALS_READING_DIASTOLIC_BLOOD_PRESSURE)) AS "Average Diastolic Blood Pressure"
FROM VITALS_READING INNER JOIN PATIENT ON VITALS_READING.VITALS_READING_PATIENT_ID = PATIENT.PATIENT_ID
GROUP BY (VITALS_READING_PATIENT_ID)
HAVING AVG(VITALS_READING_SYSTOLIC_BLOOD_PRESSURE) >= 130 OR AVG(VITALS_READING_DIASTOLIC_BLOOD_PRESSURE) > 90;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SUBQUERY_FIND_LOW_O2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`CS3743_Group3`@`%` PROCEDURE `SUBQUERY_FIND_LOW_O2`()
BEGIN
SELECT PATIENT_ID AS 'PATIENT ID', PATIENT_FNAME AS 'PATIENT FIRST NAME', PATIENT_LNAME AS 'PATIENT LAST NAME',
(
    SELECT MIN(VITALS_READING_O2_SAT) AS T
    FROM VITALS_READING
    WHERE VITALS_READING_PATIENT_ID=PATIENT_ID) AS 'LOWEST O2'
FROM PATIENT
WHERE PATIENT_ID IN (SELECT VITALS_READING_PATIENT_ID FROM VITALS_READING WHERE VITALS_READING_O2_SAT < 90 AND VITALS_READING_O2_SAT IS NOT NULL);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `CHECK_MATTRESSES`
--

/*!50001 DROP VIEW IF EXISTS `CHECK_MATTRESSES`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`CS3743_Group3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `CHECK_MATTRESSES` AS select `PATIENT`.`PATIENT_ID` AS `PATIENT_ID`,`PATIENT`.`PATIENT_FNAME` AS `PATIENT_FNAME`,`PATIENT`.`PATIENT_LNAME` AS `PATIENT_LNAME`,`WOUND_CARE`.`WOUND_CARE_WOUND_STAGE` AS `WOUND_CARE_WOUND_STAGE`,`AIR_MATTRESS`.`AIR_MATTRESS_NUM` AS `AIR_MATTRESS_NUM` from ((`PATIENT` join `WOUND_CARE` on((`WOUND_CARE`.`WOUND_CARE_PATIENT_ID` = `PATIENT`.`PATIENT_ID`))) left join `AIR_MATTRESS` on((`AIR_MATTRESS`.`AIR_MATTRESS_PATIENT_ID` = `PATIENT`.`PATIENT_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HAS_AIR_MATTRESS`
--

/*!50001 DROP VIEW IF EXISTS `HAS_AIR_MATTRESS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`CS3743_Group3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `HAS_AIR_MATTRESS` AS select `PATIENT`.`PATIENT_ID` AS `PATIENT_ID`,`PATIENT`.`PATIENT_FNAME` AS `PATIENT_FNAME`,`PATIENT`.`PATIENT_LNAME` AS `PATIENT_LNAME`,`WOUND_CARE`.`WOUND_CARE_WOUND_STAGE` AS `WOUND_CARE_WOUND_STAGE`,if((`WOUND_CARE`.`WOUND_CARE_WOUND_STAGE` > 3),'True','False') AS `AIR_MATTRESS` from (`PATIENT` join `WOUND_CARE` on((`PATIENT`.`PATIENT_ID` = `WOUND_CARE`.`WOUND_CARE_PATIENT_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-20 21:23:56
