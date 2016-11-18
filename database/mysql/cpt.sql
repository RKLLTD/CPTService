-- MySQL dump 10.13  Distrib 5.5.50, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cpt
-- ------------------------------------------------------
-- Server version	5.5.50-0ubuntu0.14.04.1

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
-- Current Database: `cpt`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cpt` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cpt`;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `subsetId` int(100) DEFAULT NULL,
  `section` varchar(100) NOT NULL,
  `subsection` varchar(100) NOT NULL,
  `dtkConceptId` int(10) DEFAULT NULL,
  `code` int(10) NOT NULL,
  `descriptor` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subset_ind` (`subsetId`),
  CONSTRAINT `serivce_ibfk_1` FOREIGN KEY (`subsetId`) REFERENCES `subset` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,1,'Surgery','Surgical Procedures on the Respiratory System',1020962,32554,'Thoracentesis, needle or catheter, aspiration of the pleural space; without imaging guidance'),(2,1,'Surgery','Surgical Procedures on the Respiratory System',1020963,32555,'Thoracentesis, needle or catheter, aspiration of the pleural space; with imaging guidance'),(3,1,'Surgery','Surgical Procedures on the Digestive System',1021298,43197,'Esophagoscopy, flexible, transnasal; diagnostic, including collection of specimen(s) by brushing or washing, when performed (separate procedure)'),(4,1,'Surgery','Surgical Procedures on the Digestive System',1021299,43198,'Esophagoscopy, flexible, transnasal; with biopsy, single or multiple'),(5,1,'Surgery','Surgical Procedures on the Digestive System',1007243,43200,'Esophagoscopy, flexible, transoral; diagnostic, including collection of specimen(s) by brushing or washing, when performed (separate procedure)'),(6,1,'Surgery','Surgical Procedures on the Digestive System',1007245,43202,'Esophagoscopy, flexible, transoral; with biopsy, single or multiple'),(7,1,'Surgery','Surgical Procedures on the Digestive System',1007246,43204,'Esophagoscopy, flexible, transoral; with injection sclerosis of esophageal varices'),(8,1,'Surgery','Surgical Procedures on the Digestive System',1007247,43205,'Esophagoscopy, flexible, transoral; with band ligation of esophageal varices'),(9,1,'Surgery','Surgical Procedures on the Digestive System',1021303,43214,'Esophagoscopy, flexible, transoral; with dilation of esophagus with balloon (30 mm diameter or larger) (includes fluoroscopic guidance, when performed)'),(10,1,'Surgery','Surgical Procedures on the Digestive System',1007248,43215,'Esophagoscopy, flexible, transoral; with removal of foreign body(s)'),(11,1,'Surgery','Surgical Procedures on the Digestive System',1007252,43220,'Esophagoscopy, flexible, transoral; with transendoscopic balloon dilation (less than 30 mm diameter)'),(12,1,'Surgery','Surgical Procedures on the Digestive System',1007254,43227,'Esophagoscopy, flexible, transoral; with control of bleeding, any method'),(13,1,'Surgery','Surgical Procedures on the Digestive System',1007261,43235,'Esophagogastroduodenoscopy, flexible, transoral; diagnostic, including collection of specimen(s) by brushing or washing, when performed (separate procedure)'),(14,1,'Surgery','Surgical Procedures on the Digestive System',1007262,43236,'Esophagogastroduodenoscopy, flexible, transoral; with directed submucosal injection(s), any substance'),(15,1,'Surgery','Surgical Procedures on the Digestive System',1007265,43239,'Esophagogastroduodenoscopy, flexible, transoral; with biopsy, single or multiple'),(16,1,'Surgery','Surgical Procedures on the Digestive System',1007271,43245,'Esophagogastroduodenoscopy, flexible, transoral; with dilation of gastric/duodenal stricture(s) (eg, balloon, bougie)'),(17,1,'Surgery','Surgical Procedures on the Digestive System',1007272,43246,'Esophagogastroduodenoscopy, flexible, transoral; with directed placement of percutaneous gastrostomy tube'),(18,1,'Surgery','Surgical Procedures on the Digestive System',1007276,43250,'Esophagogastroduodenoscopy, flexible, transoral; with removal of tumor(s), polyp(s), or other lesion(s) by hot biopsy forceps'),(19,1,'Surgery','Surgical Procedures on the Digestive System',1007277,43251,'Esophagogastroduodenoscopy, flexible, transoral; with removal of tumor(s), polyp(s), or other lesion(s) by snare technique'),(20,1,'Surgery','Surgical Procedures on the Digestive System',1007278,43255,'Esophagogastroduodenoscopy, flexible, transoral; with control of bleeding, any method'),(21,1,'Surgery','Surgical Procedures on the Digestive System',1007284,43260,'Endoscopic retrograde cholangiopancreatography (ERCP); diagnostic, including collection of specimen(s) by brushing or washing, when performed (separate procedure)'),(22,1,'Surgery','Surgical Procedures on the Digestive System',1007285,43261,'Endoscopic retrograde cholangiopancreatography (ERCP); with biopsy, single or multiple'),(23,1,'Surgery','Surgical Procedures on the Digestive System',1007286,43262,'Endoscopic retrograde cholangiopancreatography (ERCP)'),(24,1,'Surgery','Surgical Procedures on the Digestive System',1007287,43263,'Endoscopic retrograde cholangiopancreatography (ERCP)'),(25,1,'Surgery','Surgical Procedures on the Digestive System',1007288,43264,'Endoscopic retrograde cholangiopancreatography (ERCP)'),(26,1,'Surgery','Surgical Procedures on the Digestive System',1021310,43274,'Endoscopic retrograde cholangiopancreatography (ERCP); with placement of endoscopic stent into biliary or pancreatic duct, including pre- and post-dilation and guide wire passage, when performed, incl'),(27,1,'Surgery','Surgical Procedures on the Digestive System',1007336,43450,'Dilation of esophagus, by unguided sound or bougie, single or multiple passes'),(28,1,'Surgery','Surgical Procedures on the Digestive System',1007337,43453,'Dilation of esophagus, over guide wire'),(29,1,'Surgery','Surgical Procedures on the Digestive System',1007350,43510,'Gastrotomy; with esophageal dilation and insertion of permanent intraluminal tube (eg, Celestin or Mousseaux-Barbin)'),(30,1,'Surgery','Surgical Procedures on the Digestive System',1007383,43760,'Change of gastrostomy tube, percutaneous, without imaging or endoscopic guidance'),(31,1,'Surgery','Surgical Procedures on the Digestive System',1007512,44360,'Small intestinal endoscopy, enteroscopy beyond second portion of duodenum, not including ileum; diagnostic, including collection of specimen(s) by brushing or washing, when performed (separate procedu'),(32,1,'Surgery','Surgical Procedures on the Digestive System',1007520,44372,'Small intestinal endoscopy, enteroscopy beyond second portion of duodenum, not including ileum; with placement of percutaneous jejunostomy tube'),(33,1,'Surgery','Surgical Procedures on the Digestive System',1007544,44500,'Introduction of long gastrointestinal tube (eg, Miller-Abbott) (separate procedure)'),(34,1,'Surgery','Surgical Procedures on the Digestive System',1007621,45190,'Destruction of rectal tumor (eg, electrodesiccation, electrosurgery, laser ablation, laser resection, cryosurgery) transanal approach'),(35,1,'Surgery','Surgical Procedures on the Digestive System',1007624,45300,'Proctosigmoidoscopy, rigid; diagnostic, with or without collection of specimen(s) by brushing or washing (separate procedure)'),(36,1,'Surgery','Surgical Procedures on the Digestive System',1007636,45330,'Sigmoidoscopy, flexible; diagnostic, including collection of specimen(s) by brushing or washing, when performed (separate procedure)'),(37,1,'Surgery','Surgical Procedures on the Digestive System',1007637,45331,'Sigmoidoscopy, flexible; with biopsy, single or multiple'),(38,1,'Surgery','Surgical Procedures on the Digestive System',1007651,45378,'Colonoscopy, flexible; diagnostic, including collection of specimen(s) by brushing or washing, when performed (separate procedure)'),(39,1,'Surgery','Surgical Procedures on the Digestive System',1007653,45380,'Colonoscopy, flexible; with biopsy, single or multiple'),(40,1,'Surgery','Surgical Procedures on the Digestive System',1007657,45384,'Colonoscopy, flexible; with removal of tumor(s), polyp(s), or other lesion(s) by hot biopsy forceps'),(41,1,'Surgery','Surgical Procedures on the Digestive System',1007658,45385,'Colonoscopy, flexible; with removal of tumor(s), polyp(s), or other lesion(s) by snare technique'),(42,1,'Surgery','Surgical Procedures on the Digestive System',1007659,45386,'Colonoscopy, flexible; with transendoscopic balloon dilation'),(43,1,'Surgery','Surgical Procedures on the Digestive System',1007864,47552,'Biliary endoscopy, percutaneous via T-tube or other tract; diagnostic, with collection of specimen(s) by brushing and/or washing, when performed (separate procedure)'),(44,1,'Surgery','Surgical Procedures on the Digestive System',1020655,49082,'Abdominal paracentesis (diagnostic or therapeutic)'),(45,1,'Surgery','Surgical Procedures on the Digestive System',1020656,49083,'Abdominal paracentesis (diagnostic or therapeutic)'),(46,1,'Surgery','Surgical Procedures on the Digestive System',1018396,49451,'Replacement of duodenostomy or jejunostomy tube, percutaneous, under fluoroscopic guidance including contrast injection(s), image documentation and report'),(47,1,'Surgery','Surgical Procedures on the Digestive System',1018397,49452,'Replacement of gastro-jejunostomy tube, percutaneous, under fluoroscopic guidance including contrast injection(s), image documentation and report'),(48,1,'Medicine Services and Procedures','Gastroenterology Procedures',1012766,91010,'Esophageal motility (manometric study of the esophagus and/or gastroesophageal junction) study with interpretation and report'),(49,1,'Medicine Services and Procedures','Gastroenterology Procedures',1020402,91013,'Esophageal motility (manometric study of the esophagus and/or gastroesophageal junction) study with interpretation and report; with stimulation or perfusion (eg, stimulant, acid or alkali perfusion) ('),(50,1,'Medicine Services and Procedures','Gastroenterology Procedures',1012773,91034,'Esophagus, gastroesophageal reflux test; with nasal catheter pH electrode(s) placement, recording, analysis and interpretation'),(51,1,'Medicine Services and Procedures','Gastroenterology Procedures',1012774,91035,'Esophagus, gastroesophageal reflux test; with mucosal attached telemetry pH electrode placement, recording, analysis and interpretation'),(52,1,'Medicine Services and Procedures','Gastroenterology Procedures',1012786,91122,'Anorectal manometry'),(53,1,'Evaluation and Management Services','Office or Other Outpatient Services',1013629,99201,'Office or other outpatient visit for the evaluation and management of a new patient, which requires these 3 key components: A problem focused history; A problem focused examination; Straightforward me'),(54,1,'Evaluation and Management Services','Office or Other Outpatient Services',1013631,99202,'Office or other outpatient visit for the evaluation and management of a new patient, which requires these 3 key components: An expanded problem focused history; An expanded problem focused examination'),(55,1,'Evaluation and Management Services','Office or Other Outpatient Services',1013633,99203,'Office or other outpatient visit for the evaluation and management of a new patient, which requires these 3 key components: A detailed history; A detailed examination; Medical decision making of low c'),(56,1,'Evaluation and Management Services','Office or Other Outpatient Services',1013635,99204,'Office or other outpatient visit for the evaluation and management of a new patient, which requires these 3 key components: A comprehensive history; A comprehensive examination; Medical decision makin'),(57,1,'Evaluation and Management Services','Office or Other Outpatient Services',1013637,99205,'Office or other outpatient visit for the evaluation and management of a new patient, which requires these 3 key components: A comprehensive history; A comprehensive examination; Medical decision makin'),(58,1,'Evaluation and Management Services','Office or Other Outpatient Services',1013641,99212,'Office or other outpatient visit for the evaluation and management of an established patient, which requires at least 2 of these 3 key components: A problem focused history; A problem focused examinat'),(59,1,'Evaluation and Management Services','Office or Other Outpatient Services',1013643,99213,'Office or other outpatient visit for the evaluation and management of an established patient, which requires at least 2 of these 3 key components: An expanded problem focused history; An expanded prob'),(60,1,'Evaluation and Management Services','Office or Other Outpatient Services',1013645,99214,'Office or other outpatient visit for the evaluation and management of an established patient, which requires at least 2 of these 3 key components: A detailed history; A detailed examination; Medical d'),(61,1,'Evaluation and Management Services','Office or Other Outpatient Services',1013647,99215,'Office or other outpatient visit for the evaluation and management of an established patient, which requires at least 2 of these 3 key components: A comprehensive history; A comprehensive examination;'),(62,1,'Evaluation and Management Services','Hospital Inpatient Services',1013663,99221,'Initial hospital care, per day, for the evaluation and management of a patient, which requires these 3 key components: A detailed or comprehensive history; A detailed or comprehensive examination; and'),(63,1,'Evaluation and Management Services','Hospital Inpatient Services',1013665,99222,'Initial hospital care, per day, for the evaluation and management of a patient, which requires these 3 key components: A comprehensive history; A comprehensive examination; and Medical decision making'),(64,1,'Evaluation and Management Services','Hospital Inpatient Services',1013667,99223,'Initial hospital care, per day, for the evaluation and management of a patient, which requires these 3 key components: A comprehensive history; A comprehensive examination; and Medical decision making'),(65,1,'Evaluation and Management Services','Hospital Inpatient Services',1013670,99231,'Subsequent hospital care, per day, for the evaluation and management of a patient, which requires at least 2 of these 3 key components: A problem focused interval history; A problem focused examinatio'),(66,1,'Evaluation and Management Services','Hospital Inpatient Services',1013672,99232,'Subsequent hospital care, per day, for the evaluation and management of a patient, which requires at least 2 of these 3 key components: An expanded problem focused interval history; An expanded proble'),(67,1,'Evaluation and Management Services','Hospital Inpatient Services',1013674,99233,'Subsequent hospital care, per day, for the evaluation and management of a patient, which requires at least 2 of these 3 key components: A detailed interval history; A detailed examination; Medical dec'),(68,1,'Evaluation and Management Services','Hospital Inpatient Services',1013684,99238,'Hospital discharge day management'),(69,1,'Evaluation and Management Services','Hospital Inpatient Services',1013685,99239,'Hospital discharge day management'),(70,1,'Evaluation and Management Services','Consultation Services',1013690,99241,'Office consultation for a new or established patient, which requires these 3 key components: A problem focused history; A problem focused examination; and Straightforward medical decision making. Coun'),(71,1,'Evaluation and Management Services','Consultation Services',1013692,99242,'Office consultation for a new or established patient, which requires these 3 key components: An expanded problem focused history; An expanded problem focused examination; and Straightforward medical d'),(72,1,'Evaluation and Management Services','Consultation Services',1013694,99243,'Office consultation for a new or established patient, which requires these 3 key components: A detailed history; A detailed examination; and Medical decision making of low complexity. Counseling and/o'),(73,1,'Evaluation and Management Services','Consultation Services',1013696,99244,'Office consultation for a new or established patient, which requires these 3 key components: A comprehensive history; A comprehensive examination; and Medical decision making of moderate complexity. C'),(74,1,'Evaluation and Management Services','Consultation Services',1013698,99245,'Office consultation for a new or established patient, which requires these 3 key components: A comprehensive history; A comprehensive examination; and Medical decision making of high complexity. Couns'),(75,1,'Evaluation and Management Services','Consultation Services',1013702,99251,'Inpatient consultation for a new or established patient, which requires these 3 key components: A problem focused history; A problem focused examination; and Straightforward medical decision making. C'),(76,1,'Evaluation and Management Services','Consultation Services',1013704,99252,'Inpatient consultation for a new or established patient, which requires these 3 key components: An expanded problem focused history; An expanded problem focused examination; and Straightforward medica'),(77,1,'Evaluation and Management Services','Consultation Services',1013706,99253,'Inpatient consultation for a new or established patient, which requires these 3 key components: A detailed history; A detailed examination; and Medical decision making of low complexity. Counseling an'),(78,1,'Evaluation and Management Services','Consultation Services',1013708,99254,'Inpatient consultation for a new or established patient, which requires these 3 key components: A comprehensive history; A comprehensive examination; and Medical decision making of moderate complexity'),(79,1,'Evaluation and Management Services','Consultation Services',1013710,99255,'Inpatient consultation for a new or established patient, which requires these 3 key components: A comprehensive history; A comprehensive examination; and Medical decision making of high complexity. Co'),(80,1,'Evaluation and Management Services','Emergency Department Services',1013714,99281,'Emergency department visit for the evaluation and management of a patient, which requires these 3 key components: A problem focused history; A problem focused examination; and Straightforward medical '),(81,1,'Evaluation and Management Services','Emergency Department Services',1013716,99282,'Emergency department visit for the evaluation and management of a patient, which requires these 3 key components: An expanded problem focused history; An expanded problem focused examination; and Medi'),(82,1,'Evaluation and Management Services','Emergency Department Services',1013718,99283,'Emergency department visit for the evaluation and management of a patient, which requires these 3 key components: An expanded problem focused history; An expanded problem focused examination; and Medi'),(83,1,'Evaluation and Management Services','Emergency Department Services',1013720,99284,'Emergency department visit for the evaluation and management of a patient, which requires these 3 key components: A detailed history; A detailed examination; and Medical decision making of moderate co'),(84,1,'Evaluation and Management Services','Emergency Department Services',1013722,99285,'Emergency department visit for the evaluation and management of a patient, which requires these 3 key components within the constraints imposed by the urgency of the patient\'s clinical condition and/o'),(85,1,'Evaluation and Management Services','Case Management Services',1018464,99366,'Medical team conference with interdisciplinary team of health care professionals, face-to-face with patient and/or family, 30 minutes or more, participation by nonphysician qualified health care profe'),(86,1,'Evaluation and Management Services','Case Management Services',1018465,99367,'Medical team conference with interdisciplinary team of health care professionals, patient and/or family not present, 30 minutes or more; participation by physician'),(87,1,'Evaluation and Management Services','Case Management Services',1018466,99368,'Medical team conference with interdisciplinary team of health care professionals, patient and/or family not present, 30 minutes or more; participation by nonphysician qualified health care professiona');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subset`
--

DROP TABLE IF EXISTS `subset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subset` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subset`
--

LOCK TABLES `subset` WRITE;
/*!40000 ALTER TABLE `subset` DISABLE KEYS */;
INSERT INTO `subset` VALUES (1,'gastroenterology');
/*!40000 ALTER TABLE `subset` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-26 15:31:25
