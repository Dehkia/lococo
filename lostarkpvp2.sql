-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: lostarkpvp
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `ClassCode` int NOT NULL,
  `ClassName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ClassCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hit`
--

DROP TABLE IF EXISTS `hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hit` (
  `HitCode` int NOT NULL,
  `HitName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`HitCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hit`
--

LOCK TABLES `hit` WRITE;
/*!40000 ALTER TABLE `hit` DISABLE KEYS */;
INSERT INTO `hit` VALUES (1,'약경직'),(2,'강경직');
/*!40000 ALTER TABLE `hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `JobCode` int DEFAULT NULL,
  `JobName` varchar(45) NOT NULL,
  `ClassCode` int DEFAULT NULL,
  PRIMARY KEY (`JobName`),
  KEY `ClassCode` (`ClassCode`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`ClassCode`) REFERENCES `class` (`ClassCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (NULL,'건슬링어',NULL),(NULL,'기공사',NULL),(NULL,'기상술사',NULL),(NULL,'데모닉',NULL),(NULL,'데빌헌터',NULL),(NULL,'도화가',NULL),(NULL,'디스트로이어',NULL),(NULL,'리퍼',NULL),(NULL,'바드',NULL),(NULL,'배틀마스터',NULL),(NULL,'버서커',NULL),(NULL,'블래스터',NULL),(NULL,'블레이드',NULL),(NULL,'서머너',NULL),(NULL,'소서리스',NULL),(NULL,'소울이터',NULL),(NULL,'스카우터',NULL),(NULL,'스트라이커',NULL),(NULL,'슬레이어',NULL),(NULL,'아크라나',NULL),(NULL,'워로드',NULL),(NULL,'인파이터',NULL),(NULL,'창술사',NULL),(NULL,'호크아이',NULL),(NULL,'홀리나이트',NULL);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `Num` int NOT NULL AUTO_INCREMENT,
  `Contents` varchar(500) DEFAULT NULL,
  `Me` varchar(45) DEFAULT NULL,
  `You` varchar(45) DEFAULT NULL,
  `SkillName1` varchar(600) DEFAULT NULL,
  `SkillName2` varchar(45) DEFAULT NULL,
  `SkillName3` varchar(45) DEFAULT NULL,
  `SkillName4` varchar(45) DEFAULT NULL,
  `SkillName5` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Num`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (7,'[순간 타격]으로 [전진의 일격]피한다','인파이터',NULL,'순간 타격','전진의 일격',NULL,NULL,NULL),(8,'[순간 타격]으로 [전진의 일격]피한다','인파이터','리퍼','순간 타격','전진의 일격',NULL,NULL,NULL),(9,'[순간 타격]으로 [전진의 일격][맹호격]을피한다','인파이터','리퍼','순간 타격','전진의 일격','맹호격',NULL,NULL),(10,'인파이터가 [순간 타격]으로 [전진의 일격][맹호격]을피한다','인파이터','리퍼','순간 타격','전진의 일격','맹호격',NULL,NULL),(11,'워로드의 [대쉬 어퍼 파이어]를 [전진의 일격]과 [맹호격]으로 반격한다.','인파이터','워로드','대쉬 어퍼 파이어','전진의 일격','맹호격',NULL,NULL),(12,'인파이터의 [전진의 일격]을 [러닝 크래쉬]로 카운터 치고 [점핑 스매쉬] 사용','디스트로이어','인파이터','전진의 일격','러닝 크래쉬','점핑 스매쉬',NULL,NULL),(13,'인파이터의 [전진의 일격]을 [러닝 크래쉬]로 카운터 치고 [점핑 스매쉬] 사용','디스트로이어','인파이터','전진의 일격','러닝 크래쉬','점핑 스매쉬',NULL,NULL),(14,'인파이터의 [전진의 일격]을 [러닝 크래쉬]로 카운터 치고 [점핑 스매쉬] 사용','디스트로이어','디스트로이어','전진의 일격','러닝 크래쉬','점핑 스매쉬','전진의 일격','러닝 크래쉬');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `JobCode` int DEFAULT NULL,
  `SkillName` varchar(45) NOT NULL,
  `SkillEx` varchar(200) DEFAULT NULL,
  `DefHit` varchar(45) DEFAULT NULL,
  `AttHit` varchar(45) DEFAULT NULL,
  `SkillImg` varchar(200) DEFAULT NULL,
  `JobName` varchar(45) DEFAULT NULL,
  `TripodName1` varchar(200) DEFAULT NULL,
  `TripodEx1` varchar(200) DEFAULT NULL,
  `TripodName2` varchar(200) DEFAULT NULL,
  `TripodEx2` varchar(200) DEFAULT NULL,
  `TripodName3` varchar(200) DEFAULT NULL,
  `TripodEx3` varchar(200) DEFAULT NULL,
  `TripodName4` varchar(200) DEFAULT NULL,
  `TripodEx4` varchar(200) DEFAULT NULL,
  `TripodName5` varchar(200) DEFAULT NULL,
  `TripodEx5` varchar(200) DEFAULT NULL,
  `TripodName6` varchar(200) DEFAULT NULL,
  `TripodEx6` varchar(200) DEFAULT NULL,
  `TripodName7` varchar(200) DEFAULT NULL,
  `TripodEx7` varchar(200) DEFAULT NULL,
  `TripodName8` varchar(200) DEFAULT NULL,
  `TripodEx8` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`SkillName`),
  KEY `JobCode` (`JobCode`),
  KEY `job_ibfk_1_idx` (`JobName`),
  CONSTRAINT `skill_job` FOREIGN KEY (`JobName`) REFERENCES `job` (`JobName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (NULL,'대쉬 어퍼 파이어','3m 전진하며 창을 쳐올려 85의 피해를 주고 상대를 공중에 띄운다. 추가 입력을 통해 포격 공격을 하여 337의 피해를 준다.','X','피격이상','/images/637548315458067306-1700410619031.gif','워로드','빠른 준비','재사용 대기시간이 5.6초 감소한다.','탁월한 기동성','전진하는 이동거리가 1.0m 증가한다.','날렵한 움직임','공격속도가 27.0% 증가한다.','강화된 일격','적에게 주는 피해가 60.0% 증가한다.','약점 포착','피격이상 면역인 적에게 주는 피해가 70.0% 증가한다.','넓은 타격','공격 범위가 20.0% 증가한다.','창격 강화','창으로 올려칠 때 적을 더 멀리 날려버린 후 포격을 하지 않고 창으로 돌려 내려친다. 내려치는 공격은 피격이상 상태인 적에게 120.0% 증가된 피해를 준다.','멈추지 않는 포성','포격 공격 시 1회 더 포격하여 포격 공격의 159.5%에 해당하는 추가 피해를 입힌다.'),(NULL,'러닝 크래쉬','홀딩 시 전방으로 질주하여 적에게 부딪혀 7회 걸쳐 총 372 피해를 주고 홀딩 완료 또는 키 입력을 때는 순간 중력에너지가 폭발하며 124의 피해를 주며 적중된 적을 띄워 올린다','경직면역','상태이상','/images/2-1700496994777.gif','디스트로이어','','','','','','','','','','','','','','','',''),(NULL,'맹호격','빠르게 2회 공격하여 59의 피해를 두 번 주고, 116의 피해를 주며 넘어뜨린다.','X','피격이상','/images/2-1697854839583.gif','인파이터','넓은 타격','공격 범위가 20.0% 증가한다.','피해 증폭','공격 적중 시 대상이 자신 및 파티원에게 받는 피해가 8.0초간 6.0% 증가한다.','복식 강화','기력 소모량이 9 감소한다.','파고들기','전방으로 전진하는 거리가 2.0m증가한다.','약점 포착','피격이상 면역인 적에게 공격 적중 시 주는 피해가 80.0% 증가한다.','집중','충격 획득량이 23 증가한다.','거친 분쇄','공격 적중 대상 수에 따라 최대 388.0% 피해가 증가한다.','광란한 폭격','콤보 조작으로 변경된다. 올려치는 공격 이후 콤보 입력 시 밀쳐내는 추가 공격을 하여 기본 피해량의 80.0%에 해당하는 추가 피해를 준다. 밀쳐내는 공격이 단일 대상에게 적중할 '),(NULL,'순간 타격','순간적으로 타격하여 350의 피해를 주고 3초간 기절 시킨다.','경직면역','상태이상','/images/3-1697855024187.gif','인파이터','넓은 타격','공격 범위가 20.0% 증가한다.','복식 강화','기력 소모량이 9 감소한다.','집중','충격 획득량이 15 증가한다.','위험한 계약','재사용 대기시간이 9.0초 감소하지만 공격 적중 시 적에게 주는 기절 시간이 1초 감소한다.','정밀함','공격 적중 시 적에게 주는 기절 시간이 3.0초 증가한다.','역작용','기절효과가 사라지고 피격이상 면역인 적에게 주는 피해가 387.0% 증가한다.','추적 본능','지정된 방향으로 4m 전진하면서 타격한다.','최후의 승자','공격 범위가 350도 증가한다.'),(NULL,'전진의 일격','빠르게 돌진하여 52의 피해를 3회 준 뒤, 건틀릿으로 타격하여 68의 피해를 준다.','경직면역','강경직','/images/17225ec4a934dd712-1697854712223.gif','인파이터','집중','충격 획득량이 15증가한다.','탁월한 기동성','돌진거리가 5.0m 증가한다.','분노의 타격','적에게 주는 피해가 35.0% 증가한다.','무자비한 전진','내려치는 공격 이후 반대팔로 한번 더 내려치며 기본 피해량의 60.0%에 해당하는 추가 피해를 준다.','강인한 주먹','내려치는 공격의 범위가 70.0% 증가하고 적을 앞으로 모은다.','파괴자','건틀렛에 충격에너지가 모이고 적에게 주는 피해가 40.0% 증가하며 내려치는 공격에 적을 띄운다.','강력한 주먹','내려치는 공격 시 적에게 주는 피해가 150.0% 증가한다.','돌격대','공격속도가 20.0% 증가하고 피격이상 면역인 적에게 주는 피해가 70.0% 증가한다.'),(NULL,'점핑 스매쉬','크게 도약하여 10m 내 지정된 위치를 해머로 내려쳐 321의 피해를 준다. 공격 적중 시 중력 코어 2개를 획득한다.','경직면역','피격이상','/images/1-1700496927386.gif','디스트로이어','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tripod`
--

DROP TABLE IF EXISTS `tripod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tripod` (
  `TripodCode` int NOT NULL,
  `SkillName` varchar(45) NOT NULL,
  `TripodName` varchar(45) DEFAULT NULL,
  `TripodEx` varchar(500) DEFAULT NULL,
  `TripodOX` int DEFAULT NULL,
  PRIMARY KEY (`TripodCode`,`SkillName`),
  KEY `tripod_ibfk_1_idx` (`SkillName`),
  CONSTRAINT `tripod_ibfk_1` FOREIGN KEY (`SkillName`) REFERENCES `skill` (`SkillName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tripod`
--

LOCK TABLES `tripod` WRITE;
/*!40000 ALTER TABLE `tripod` DISABLE KEYS */;
/*!40000 ALTER TABLE `tripod` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21 12:11:10
