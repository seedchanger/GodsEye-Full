# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     medifile
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2016-10-08 10:50:31
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'medifile'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "medifile" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "medifile";


#
# Table structure for table 'tbl_adminlogin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_adminlogin" (
  "logid" int(20) NOT NULL auto_increment,
  "username" varchar(50) NOT NULL,
  "password" varchar(50) NOT NULL,
  PRIMARY KEY  ("logid"),
  UNIQUE KEY "logid" ("logid")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_adminlogin'
#

LOCK TABLES "tbl_adminlogin" WRITE;
/*!40000 ALTER TABLE "tbl_adminlogin" DISABLE KEYS;*/
REPLACE INTO "tbl_adminlogin" ("logid", "username", "password") VALUES
	(1,'jithin','jithin');
/*!40000 ALTER TABLE "tbl_adminlogin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_admit'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_admit" (
  "admit_id" int(40) unsigned NOT NULL auto_increment,
  "patient_id" int(40) default NULL,
  "doc_id" int(40) default NULL,
  "admit_date" date default NULL,
  "admit_time" time default NULL,
  "out_date" date default NULL,
  "out_time" time default NULL,
  PRIMARY KEY  ("admit_id")
) AUTO_INCREMENT=23;



#
# Dumping data for table 'tbl_admit'
#

LOCK TABLES "tbl_admit" WRITE;
/*!40000 ALTER TABLE "tbl_admit" DISABLE KEYS;*/
REPLACE INTO "tbl_admit" ("admit_id", "patient_id", "doc_id", "admit_date", "admit_time", "out_date", "out_time") VALUES
	('16',15,2,'2016-09-27','04:28:00','2016-08-30',NULL);
REPLACE INTO "tbl_admit" ("admit_id", "patient_id", "doc_id", "admit_date", "admit_time", "out_date", "out_time") VALUES
	('17',14,4,'2016-09-27','05:10:00',NULL,NULL);
REPLACE INTO "tbl_admit" ("admit_id", "patient_id", "doc_id", "admit_date", "admit_time", "out_date", "out_time") VALUES
	('21',15,5,'2016-09-27','05:22:00',NULL,NULL);
REPLACE INTO "tbl_admit" ("admit_id", "patient_id", "doc_id", "admit_date", "admit_time", "out_date", "out_time") VALUES
	('22',17,2,'2016-10-01','08:35:00',NULL,NULL);
/*!40000 ALTER TABLE "tbl_admit" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_bgroup'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_bgroup" (
  "bid" int(3) unsigned NOT NULL auto_increment,
  "name" varchar(10) NOT NULL,
  PRIMARY KEY  ("bid"),
  UNIQUE KEY "bid" ("bid")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_bgroup'
#

LOCK TABLES "tbl_bgroup" WRITE;
/*!40000 ALTER TABLE "tbl_bgroup" DISABLE KEYS;*/
REPLACE INTO "tbl_bgroup" ("bid", "name") VALUES
	('1','A+');
REPLACE INTO "tbl_bgroup" ("bid", "name") VALUES
	('2','B+');
/*!40000 ALTER TABLE "tbl_bgroup" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_blood_normal'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_blood_normal" (
  "blood_normal_id" int(20) default NULL,
  "normal_values" varchar(40) default NULL,
  "after_food" varchar(40) default NULL
);



#
# Dumping data for table 'tbl_blood_normal'
#

# No data found.



#
# Table structure for table 'tbl_blood_test_report'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_blood_test_report" (
  "blood_report_id" int(30) unsigned NOT NULL auto_increment,
  "test_assign_id" int(30) unsigned default NULL,
  "value" varchar(50) default NULL,
  "report_date" varchar(30) default NULL,
  "report_time" varchar(50) default NULL,
  "observation" varchar(100) default NULL,
  "lab_id" int(30) unsigned default NULL,
  PRIMARY KEY  ("blood_report_id")
) AUTO_INCREMENT=39;



#
# Dumping data for table 'tbl_blood_test_report'
#

LOCK TABLES "tbl_blood_test_report" WRITE;
/*!40000 ALTER TABLE "tbl_blood_test_report" DISABLE KEYS;*/
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('1','1','100','2016-09-09','03:44','ggdgdgdg','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('2','2','106','2016-12-12','03:44','ggdgdgdg','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('3','3','dd','2016-09-20','03:54','gfg','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('4','3','dd','2016-09-20','03:54','gfg','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('5','3','dd','2016-09-20','03:54','gfg','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('6','3','dd','2016-09-20','03:54','gfg','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('7','3','dd','2016-09-20','03:54','gfg','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('8','3','qqqq','2016-09-20','04:00','fghfhn','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('9','4','dfd','2016-09-20','08:09','fgfuuu','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('10','4','dsgfbbv','2016-09-20','08:10','dfbgf ghbvgbv ','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('11','3','777','2016-09-20','08:16','7777','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('13','4','wdfvvb ','2016-09-20','08:18','wdasvfcb ','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('14','6','kiyjuhgf','2016-09-20','08:20','lokijuhybv','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('15','7','fhk','2016-09-21','07:08','cxnm','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('26','7','45','2016-09-21','11:18',' weffrgrgr   kkdfl sdusuuw77  ewewr  df283828nmlsapw0-1-3 nwjd','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('28','3','efrtyu','2016-09-21','12:07','defrghj','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('29','6','mootaa','2016-09-21','07:44','motta','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('30','8','89','2016-09-30','02:50','bad','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('31','1','kkkll','2016-09-30','03:27','mmm','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('32','6','xcvb ','2016-10-01','07:43','dfbgvbn','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('33','7','good','2016-10-01','07:45','good','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('34','10','gtvfcd','2016-10-01','07:50','gvfc','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('35','3','','2016-10-07','04:24','','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('36','26','','2016-10-07','04:35','','1');
REPLACE INTO "tbl_blood_test_report" ("blood_report_id", "test_assign_id", "value", "report_date", "report_time", "observation", "lab_id") VALUES
	('37','37','','2016-10-07','04:42','uuu','1');
/*!40000 ALTER TABLE "tbl_blood_test_report" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_booking'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_booking" (
  "bid" int(10) unsigned NOT NULL auto_increment,
  "patient_id" int(10) unsigned default NULL,
  "schedule_id" int(50) default NULL,
  "book_date" date default NULL,
  "tocken_no" int(50) unsigned default NULL,
  "status" varchar(30) default '0',
  PRIMARY KEY  ("bid"),
  UNIQUE KEY "bid" ("bid")
) AUTO_INCREMENT=30;



#
# Dumping data for table 'tbl_booking'
#

LOCK TABLES "tbl_booking" WRITE;
/*!40000 ALTER TABLE "tbl_booking" DISABLE KEYS;*/
REPLACE INTO "tbl_booking" ("bid", "patient_id", "schedule_id", "book_date", "tocken_no", "status") VALUES
	('11','15',23,'2016-09-21','1','2');
REPLACE INTO "tbl_booking" ("bid", "patient_id", "schedule_id", "book_date", "tocken_no", "status") VALUES
	('12','15',24,'2016-09-13','1','1');
REPLACE INTO "tbl_booking" ("bid", "patient_id", "schedule_id", "book_date", "tocken_no", "status") VALUES
	('14','15',23,'2016-09-29','3','0');
REPLACE INTO "tbl_booking" ("bid", "patient_id", "schedule_id", "book_date", "tocken_no", "status") VALUES
	('25','15',26,'2016-09-30','1','0');
REPLACE INTO "tbl_booking" ("bid", "patient_id", "schedule_id", "book_date", "tocken_no", "status") VALUES
	('27','15',26,'2016-09-30','2','0');
REPLACE INTO "tbl_booking" ("bid", "patient_id", "schedule_id", "book_date", "tocken_no", "status") VALUES
	('28','15',23,'2016-09-30','2','0');
REPLACE INTO "tbl_booking" ("bid", "patient_id", "schedule_id", "book_date", "tocken_no", "status") VALUES
	('29','14',26,'2016-09-30','3','1');
/*!40000 ALTER TABLE "tbl_booking" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_caretaker'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_caretaker" (
  "takerid" int(30) unsigned NOT NULL auto_increment,
  "patient_id" int(30) default NULL,
  "name" varchar(50) default NULL,
  "address" varchar(50) default NULL,
  "email" varchar(70) default NULL,
  "phone" varchar(30) default NULL,
  "caretaker_location" varchar(70) default NULL,
  PRIMARY KEY  ("takerid")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_caretaker'
#

LOCK TABLES "tbl_caretaker" WRITE;
/*!40000 ALTER TABLE "tbl_caretaker" DISABLE KEYS;*/
REPLACE INTO "tbl_caretaker" ("takerid", "patient_id", "name", "address", "email", "phone", "caretaker_location") VALUES
	('1',15,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE "tbl_caretaker" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_consult'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_consult" (
  "consult_id" int(20) unsigned NOT NULL auto_increment,
  "patient_id" int(30) unsigned default NULL,
  "doc_id" int(30) unsigned default NULL,
  "cdate" varchar(30) default NULL,
  "ctime" varchar(30) default NULL,
  "desease" varchar(500) NOT NULL default '0',
  PRIMARY KEY  ("consult_id"),
  UNIQUE KEY "consult_id" ("consult_id")
) AUTO_INCREMENT=65;



#
# Dumping data for table 'tbl_consult'
#

LOCK TABLES "tbl_consult" WRITE;
/*!40000 ALTER TABLE "tbl_consult" DISABLE KEYS;*/
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('1','15','2','2016-09-17','10:50','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('2','15','2','2016-09-17','10:51','fever');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('3','14','2','2016-09-17','11:03','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('4','14','2','2016-09-17','11:17','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('5','14','2','2016-09-17','11:34','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('6','15','2','2016-09-17','01:30','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('7','15','2','2016-09-17','01:32','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('8','15','2','2016-09-17','01:34','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('9','15','2','2016-09-17','01:40','rrr');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('10','15','2','2016-09-17','01:40','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('11','15','2','2016-09-17','01:43','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('12','15','2','2016-09-17','01:56','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('13','15','2','2016-09-17','02:02','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('14','15','2','2016-09-17','02:03','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('15','15','2','2016-09-17','02:16','ttt');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('16','15','2','2016-09-17','02:20','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('17','15','2','2016-09-17','02:25','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('18','15','2','2016-09-17','02:26','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('19','15','2','2016-09-17','02:26','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('20','15','2','2016-09-17','02:26','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('21','15','2','2016-09-17','02:29','rreee');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('22','15','2','2016-09-17','02:33','rreeefffff');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('23','15','2','2016-09-17','02:35','rreeeffffdsd');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('24','15','2','2016-09-17','02:36','ppoo');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('25','15','2','2016-09-19','03:15','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('26','15','2','2016-09-22','08:11','pain');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('27','15','2','2016-09-22','08:14','uioo');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('28','15','2','2016-09-22','08:21','ioopp');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('29','15','2','2016-09-22','08:26','gh');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('30','15','2','2016-09-22','08:27','gh');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('31','15','2','2016-09-23','02:33','jio');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('32','15','2','2016-09-23','03:08','jiopp');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('33','15','2','2016-09-23','03:34','uiioo');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('34','15','2','2016-09-24','10:57','uuu');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('35','15','2','2016-09-24','11:20','uuu');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('36','15','2','2016-09-24','11:30','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('37','15','2','2016-09-24','12:05','erwet');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('38','15','2','2016-09-24','12:42','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('39','15','2','2016-09-26','12:25','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('40','15','2','2016-09-27','05:49','seriz');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('41','15','2','2016-09-27','05:57','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('42','15','2','2016-09-27','06:41','00000000000009');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('43','15','2','2016-09-27','06:42','eeeee');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('44','15','2','2016-09-27','12:04','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('45','15','2','2016-09-27','12:20','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('46','15','2','2016-09-27','01:04','dfdf');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('47','15','2','2016-09-27','04:03','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('48','15','2','2016-09-28','12:47','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('49','16','2','2016-09-28','12:52','fwedf');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('50','15','2','2016-09-29','11:30','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('51','17','2','2016-10-01','08:35','pain');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('52','17','2','2016-10-01','09:07','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('53','14','5','2016-10-01','10:57','dsfvc');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('54','14','2','2016-10-01','10:59','fff');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('55','15','2','2016-10-01','11:02','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('56','15','2','2016-10-01','11:06','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('57','15','2','2016-10-01','11:20','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('58','15','2','2016-10-01','11:23','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('59','15','2','2016-10-01','11:29','rserfthgj');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('60','15','2','2016-10-01','11:42','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('61','15','2','2016-10-01','11:45','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('62','15','2','2016-10-01','11:54','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('63','15','2','2016-10-01','01:56','');
REPLACE INTO "tbl_consult" ("consult_id", "patient_id", "doc_id", "cdate", "ctime", "desease") VALUES
	('64','15','2','2016-10-01','03:05','');
/*!40000 ALTER TABLE "tbl_consult" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "district_id" int(10) NOT NULL auto_increment,
  "state_id" int(10) NOT NULL,
  "txt_district" varchar(50) NOT NULL,
  PRIMARY KEY  ("district_id"),
  UNIQUE KEY "dist_id" ("district_id","state_id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("district_id", "state_id", "txt_district") VALUES
	(1,1,'Trivandrm');
REPLACE INTO "tbl_district" ("district_id", "state_id", "txt_district") VALUES
	(2,1,'Kollam');
REPLACE INTO "tbl_district" ("district_id", "state_id", "txt_district") VALUES
	(3,1,'Pathanmthitta');
REPLACE INTO "tbl_district" ("district_id", "state_id", "txt_district") VALUES
	(4,2,'theni');
REPLACE INTO "tbl_district" ("district_id", "state_id", "txt_district") VALUES
	(5,1,'Kottayam');
REPLACE INTO "tbl_district" ("district_id", "state_id", "txt_district") VALUES
	(10,1,'Ernakulam');
/*!40000 ALTER TABLE "tbl_district" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_doc_reg'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_doc_reg" (
  "doc_id" int(30) unsigned NOT NULL auto_increment,
  "hid" varchar(50) default NULL,
  "name" varchar(40) default NULL,
  "lname" varchar(40) default NULL,
  "gender" varchar(10) default NULL,
  "hname" varchar(40) default NULL,
  "state" varchar(40) default NULL,
  "district" varchar(40) default NULL,
  "place" varchar(30) default NULL,
  "pin" varchar(40) default NULL,
  "phone" varchar(40) default NULL,
  "email" varchar(40) default NULL,
  "age" varchar(10) default NULL,
  "department" varchar(40) default NULL,
  "experiance" varchar(40) default NULL,
  "exp_des" varchar(100) default NULL,
  "quali" varchar(30) default NULL,
  "photo" varchar(30) default NULL,
  "qid" varchar(30) default NULL,
  "answer" varchar(50) default NULL,
  "username" varchar(40) default NULL,
  "password1" varchar(40) default NULL,
  "ipaddress" varchar(50) default NULL,
  "status" varchar(10) default '0',
  PRIMARY KEY  ("doc_id")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_doc_reg'
#

LOCK TABLES "tbl_doc_reg" WRITE;
/*!40000 ALTER TABLE "tbl_doc_reg" DISABLE KEYS;*/
REPLACE INTO "tbl_doc_reg" ("doc_id", "hid", "name", "lname", "gender", "hname", "state", "district", "place", "pin", "phone", "email", "age", "department", "experiance", "exp_des", "quali", "photo", "qid", "answer", "username", "password1", "ipaddress", "status") VALUES
	('2','24','jithin',NULL,'male','pulimoottil','kerala','ernakulam','elanji','678888','665656556','ghghghg','45','2','6','fhghghg','cbvbvbv','rttrtrg','1','ook','rtn','rtn',NULL,'0');
REPLACE INTO "tbl_doc_reg" ("doc_id", "hid", "name", "lname", "gender", "hname", "state", "district", "place", "pin", "phone", "email", "age", "department", "experiance", "exp_des", "quali", "photo", "qid", "answer", "username", "password1", "ipaddress", "status") VALUES
	('4','23','jinu','jose','male','kollamp','1','1','elanji','67899','2345566','elanjjhjjhi@gmail.com','23','2','5','surgen','MBBS','IMG_20160728_095118226.jpg','1','rice','jinu123io','jinu','8900','0');
REPLACE INTO "tbl_doc_reg" ("doc_id", "hid", "name", "lname", "gender", "hname", "state", "district", "place", "pin", "phone", "email", "age", "department", "experiance", "exp_des", "quali", "photo", "qid", "answer", "username", "password1", "ipaddress", "status") VALUES
	('5','23
','nithin','jose','male','kollamp','1','1','elanji','67899','2345566','elanji@gmail.com','23','4','5','surgen','MBBS','IMG_20160728_095118226.jpg','1','rice','jinu','jinu','8900','0');
/*!40000 ALTER TABLE "tbl_doc_reg" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_doc_schedule'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_doc_schedule" (
  "sch_id" int(20) unsigned NOT NULL auto_increment,
  "doc_id" int(20) unsigned NOT NULL,
  "s_date" varchar(30) default NULL,
  "start_time" varchar(30) default NULL,
  "end_time" varchar(50) NOT NULL,
  "capacity" varchar(50) NOT NULL,
  PRIMARY KEY  ("sch_id")
) AUTO_INCREMENT=27;



#
# Dumping data for table 'tbl_doc_schedule'
#

LOCK TABLES "tbl_doc_schedule" WRITE;
/*!40000 ALTER TABLE "tbl_doc_schedule" DISABLE KEYS;*/
REPLACE INTO "tbl_doc_schedule" ("sch_id", "doc_id", "s_date", "start_time", "end_time", "capacity") VALUES
	('13','2','2016-09-24','13:00','15:00','12');
REPLACE INTO "tbl_doc_schedule" ("sch_id", "doc_id", "s_date", "start_time", "end_time", "capacity") VALUES
	('14','4','2016-09-24','13:00','15:00','12');
REPLACE INTO "tbl_doc_schedule" ("sch_id", "doc_id", "s_date", "start_time", "end_time", "capacity") VALUES
	('23','4','2016-09-31','18:00','16:00','100');
REPLACE INTO "tbl_doc_schedule" ("sch_id", "doc_id", "s_date", "start_time", "end_time", "capacity") VALUES
	('26','5','2016-09-30','21:00','24:00','100');
/*!40000 ALTER TABLE "tbl_doc_schedule" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_follow'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_follow" (
  "follow_id" int(30) NOT NULL auto_increment,
  "patient_id" int(30) unsigned default NULL,
  "doc_id" varchar(30) default NULL,
  PRIMARY KEY  ("follow_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_follow'
#

LOCK TABLES "tbl_follow" WRITE;
/*!40000 ALTER TABLE "tbl_follow" DISABLE KEYS;*/
REPLACE INTO "tbl_follow" ("follow_id", "patient_id", "doc_id") VALUES
	(1,'15','2');
REPLACE INTO "tbl_follow" ("follow_id", "patient_id", "doc_id") VALUES
	(2,'15','5');
REPLACE INTO "tbl_follow" ("follow_id", "patient_id", "doc_id") VALUES
	(3,'14','2');
/*!40000 ALTER TABLE "tbl_follow" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_global_dept'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_global_dept" (
  "dept_id" int(10) unsigned NOT NULL auto_increment,
  "dept_name" varchar(30) default NULL,
  PRIMARY KEY  ("dept_id"),
  UNIQUE KEY "dept_id" ("dept_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_global_dept'
#

LOCK TABLES "tbl_global_dept" WRITE;
/*!40000 ALTER TABLE "tbl_global_dept" DISABLE KEYS;*/
REPLACE INTO "tbl_global_dept" ("dept_id", "dept_name") VALUES
	('1','Cardiology');
REPLACE INTO "tbl_global_dept" ("dept_id", "dept_name") VALUES
	('2','Nurology');
/*!40000 ALTER TABLE "tbl_global_dept" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_hospreg'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_hospreg" (
  "h_id" int(11) NOT NULL auto_increment,
  "hos_acc_id" varchar(50) NOT NULL,
  "hname" varchar(50) NOT NULL,
  "state" varchar(50) default NULL,
  "district" varchar(50) default NULL,
  "place" varchar(50) default NULL,
  "pincode" varchar(50) default NULL,
  "phone" varchar(50) NOT NULL,
  "phone2" varchar(30) default NULL,
  "email" varchar(30) NOT NULL,
  "category" varchar(30) default NULL,
  "spec" varchar(30) default NULL,
  "image_id" varchar(30) default NULL,
  "acc_file" varchar(40) NOT NULL,
  "since" varchar(50) NOT NULL,
  "domain" varchar(50) default NULL,
  "security_q" varchar(50) NOT NULL,
  "security_ans" varchar(30) default NULL,
  "username" varchar(50) NOT NULL,
  "password" varchar(50) NOT NULL,
  "status" int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  ("h_id")
) AUTO_INCREMENT=25;



#
# Dumping data for table 'tbl_hospreg'
#

LOCK TABLES "tbl_hospreg" WRITE;
/*!40000 ALTER TABLE "tbl_hospreg" DISABLE KEYS;*/
REPLACE INTO "tbl_hospreg" ("h_id", "hos_acc_id", "hname", "state", "district", "place", "pincode", "phone", "phone2", "email", "category", "spec", "image_id", "acc_file", "since", "domain", "security_q", "security_ans", "username", "password", "status") VALUES
	(23,'m1332','Nirmala Medical College Muvattupuzha','1','1','muvattupuzha','686665','988887000','976565656','nirmala@gmail.com','superspec','good','HM_93819.png','ACC_99003.jpg','2016-08-02','nirmala.com','1','rice','nirmala','nirmala','0');
REPLACE INTO "tbl_hospreg" ("h_id", "hos_acc_id", "hname", "state", "district", "place", "pincode", "phone", "phone2", "email", "category", "spec", "image_id", "acc_file", "since", "domain", "security_q", "security_ans", "username", "password", "status") VALUES
	(24,'dcdc','Lissie','1','1','1',NULL,'dfdfd',NULL,'dfdfdf',NULL,NULL,NULL,'frffrf','rfrffr',NULL,'1',NULL,'wdd','ded','0');
/*!40000 ALTER TABLE "tbl_hospreg" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_hosp_user_manager'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_hosp_user_manager" (
  "user_manager_id" int(30) unsigned NOT NULL auto_increment,
  "hosp_id" int(30) unsigned default NULL,
  "name" varchar(50) default NULL,
  "username" varchar(50) default NULL,
  "password" varchar(50) default NULL,
  PRIMARY KEY  ("user_manager_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_hosp_user_manager'
#

LOCK TABLES "tbl_hosp_user_manager" WRITE;
/*!40000 ALTER TABLE "tbl_hosp_user_manager" DISABLE KEYS;*/
REPLACE INTO "tbl_hosp_user_manager" ("user_manager_id", "hosp_id", "name", "username", "password") VALUES
	('1','23','saju','h','h');
/*!40000 ALTER TABLE "tbl_hosp_user_manager" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_hos_dept'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_hos_dept" (
  "hdid" int(15) unsigned NOT NULL auto_increment,
  "dept_id" int(15) unsigned NOT NULL,
  "hid" int(20) unsigned NOT NULL,
  "dname" varchar(50) NOT NULL,
  "ctime" varchar(50) NOT NULL,
  PRIMARY KEY  ("hdid")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_hos_dept'
#

LOCK TABLES "tbl_hos_dept" WRITE;
/*!40000 ALTER TABLE "tbl_hos_dept" DISABLE KEYS;*/
REPLACE INTO "tbl_hos_dept" ("hdid", "dept_id", "hid", "dname", "ctime") VALUES
	('2','1','23','cardiology','02:01');
REPLACE INTO "tbl_hos_dept" ("hdid", "dept_id", "hid", "dname", "ctime") VALUES
	('4','2','23','Neurology','02:58');
REPLACE INTO "tbl_hos_dept" ("hdid", "dept_id", "hid", "dname", "ctime") VALUES
	('5','2','23','ENT','10:00');
/*!40000 ALTER TABLE "tbl_hos_dept" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_lab_staff'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_lab_staff" (
  "lab_staff_id" int(10) unsigned NOT NULL auto_increment,
  "name" varchar(30) default NULL,
  "address" varchar(40) default NULL,
  "question" int(10) unsigned default NULL,
  "answer" varchar(50) default NULL,
  "username" varchar(50) default NULL,
  "password" varchar(50) default NULL,
  PRIMARY KEY  ("lab_staff_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_lab_staff'
#

LOCK TABLES "tbl_lab_staff" WRITE;
/*!40000 ALTER TABLE "tbl_lab_staff" DISABLE KEYS;*/
REPLACE INTO "tbl_lab_staff" ("lab_staff_id", "name", "address", "question", "answer", "username", "password") VALUES
	('1','arun','kkopp','1','man','res','res');
/*!40000 ALTER TABLE "tbl_lab_staff" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_lab_tech'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_lab_tech" (
  "lab_tech_id" int(30) NOT NULL auto_increment,
  "hosp_id" int(20) unsigned default NULL,
  "name" varchar(40) default NULL,
  "address" varchar(40) default NULL,
  "phone" varchar(30) default NULL,
  "email" varchar(40) default NULL,
  "username" varchar(50) default NULL,
  "password" varchar(50) default NULL,
  "s_question" varchar(10) default NULL,
  "s_answer" varchar(50) default NULL,
  "status" varchar(10) character set latin1 collate latin1_bin NOT NULL default '0',
  PRIMARY KEY  ("lab_tech_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_lab_tech'
#

LOCK TABLES "tbl_lab_tech" WRITE;
/*!40000 ALTER TABLE "tbl_lab_tech" DISABLE KEYS;*/
REPLACE INTO "tbl_lab_tech" ("lab_tech_id", "hosp_id", "name", "address", "phone", "email", "username", "password", "s_question", "s_answer", "status") VALUES
	(1,'23','RBS lab','wertyu','998776655
','eertt','lab','lab','1','rice','1');
/*!40000 ALTER TABLE "tbl_lab_tech" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_medical_history'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_medical_history" (
  "mhistory_id" tinyint(3) unsigned default NULL,
  "patient_id" tinyint(3) unsigned default NULL,
  "mhis_surgical" tinyint(3) unsigned default NULL,
  "mhis_allergy" tinyint(3) unsigned default NULL,
  "mhis_alcohol" tinyint(3) unsigned default NULL,
  "mhis_tobacco" tinyint(3) unsigned default NULL,
  "mhis_medication" tinyint(3) unsigned default NULL,
  "mhis_familyhistory" tinyint(3) unsigned default NULL,
  "mhis_rarediseases" tinyint(3) unsigned default NULL,
  "mhis_mental" tinyint(3) unsigned default NULL
);



#
# Dumping data for table 'tbl_medical_history'
#

# No data found.



#
# Table structure for table 'tbl_medicine'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_medicine" (
  "medid" int(20) unsigned NOT NULL auto_increment,
  "medname" varchar(50) default NULL,
  PRIMARY KEY  ("medid"),
  UNIQUE KEY "mid" ("medid")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_medicine'
#

LOCK TABLES "tbl_medicine" WRITE;
/*!40000 ALTER TABLE "tbl_medicine" DISABLE KEYS;*/
REPLACE INTO "tbl_medicine" ("medid", "medname") VALUES
	('1','Paracetamol');
REPLACE INTO "tbl_medicine" ("medid", "medname") VALUES
	('2','dolo');
REPLACE INTO "tbl_medicine" ("medid", "medname") VALUES
	('3','uni');
REPLACE INTO "tbl_medicine" ("medid", "medname") VALUES
	('4','mole');
REPLACE INTO "tbl_medicine" ("medid", "medname") VALUES
	('5','mod');
/*!40000 ALTER TABLE "tbl_medicine" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_med_pres'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_med_pres" (
  "med_pres_id" int(30) unsigned NOT NULL auto_increment,
  "consult_id" int(30) unsigned default NULL,
  "medid" int(30) unsigned default NULL,
  "no_oftime" varchar(30) default NULL,
  "after_before_food" varchar(20) default NULL,
  "course_length" int(10) unsigned default NULL,
  "doss" varchar(50) default NULL,
  PRIMARY KEY  ("med_pres_id"),
  UNIQUE KEY "med_pres_id" ("med_pres_id")
) AUTO_INCREMENT=29;



#
# Dumping data for table 'tbl_med_pres'
#

LOCK TABLES "tbl_med_pres" WRITE;
/*!40000 ALTER TABLE "tbl_med_pres" DISABLE KEYS;*/
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('1','1','1','2','After','10',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('2','1','2','2','Before','15',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('3','2','1','2','After','10',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('4','12','1','null','Before','5',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('5','12','1','null','Before','5',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('6','12','1','null','Before','5',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('7','15','2','null','Before','5',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('8','24','1','null','After','5',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('9','24','1','null','---Select---','4',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('10','25','2','3','Before','4',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('11','25','3','45','Before','56',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('12','62','1','2','Before','5',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('13','62','1','2','Before','6',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('14','62','1','4','Before','4',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('15','63','1','2','Before','15',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('16','63','1','3','Before','15',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('17','63','1','3','Before','15',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('18','63','1','2','Before','10',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('19','56','1','2','after','9',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('20','63','1','5','Before','5',NULL);
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('21','64','1','3','After','5','2');
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('22','64','1','2','After','5','1');
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('23','64','2','5','After','6','2');
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('24','64','1','5','Before','5','1');
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('25','64','1','5','Before','5','1');
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('26','64','1','4','After','5','5');
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('27','64','3','4','Before','7','1');
REPLACE INTO "tbl_med_pres" ("med_pres_id", "consult_id", "medid", "no_oftime", "after_before_food", "course_length", "doss") VALUES
	('28','64','5','3','Before','5','2');
/*!40000 ALTER TABLE "tbl_med_pres" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_med_time'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_med_time" (
  "med_time_id" int(30) unsigned NOT NULL auto_increment,
  "med_pres_id" int(30) unsigned default NULL,
  "mtime" varchar(30) default NULL,
  PRIMARY KEY  ("med_time_id"),
  UNIQUE KEY "med_time_id" ("med_time_id")
) AUTO_INCREMENT=33;



#
# Dumping data for table 'tbl_med_time'
#

LOCK TABLES "tbl_med_time" WRITE;
/*!40000 ALTER TABLE "tbl_med_time" DISABLE KEYS;*/
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('1','10','10:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('2','10','20:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('3','11','09:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('4','11','19:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('5','22','08:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('6','22','20:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('7','23','08:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('8','23','12:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('9','23','16:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('10','23','20:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('11','23','00:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('12','24','null');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('13','24','null');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('14','24','null');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('15','24','null');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('16','24','null');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('17','25','00:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('18','25','08:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('19','25','12:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('20','25','16:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('21','25','21:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('22','26','08:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('23','26','13:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('24','26','17:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('25','26','20:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('26','27','08:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('27','27','13:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('28','27','17:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('29','27','20:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('30','28','08:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('31','28','13:00');
REPLACE INTO "tbl_med_time" ("med_time_id", "med_pres_id", "mtime") VALUES
	('32','28','20:00');
/*!40000 ALTER TABLE "tbl_med_time" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_question'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_question" (
  "q_id" int(30) unsigned NOT NULL auto_increment,
  "question" varchar(100) NOT NULL,
  PRIMARY KEY  ("q_id")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_question'
#

LOCK TABLES "tbl_question" WRITE;
/*!40000 ALTER TABLE "tbl_question" DISABLE KEYS;*/
REPLACE INTO "tbl_question" ("q_id", "question") VALUES
	('1','favorite food');
REPLACE INTO "tbl_question" ("q_id", "question") VALUES
	('2','name of the first school');
REPLACE INTO "tbl_question" ("q_id", "question") VALUES
	('3','mother,s name');
REPLACE INTO "tbl_question" ("q_id", "question") VALUES
	('4','favorite filim');
REPLACE INTO "tbl_question" ("q_id", "question") VALUES
	('5','favorite actor');
/*!40000 ALTER TABLE "tbl_question" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_reg'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_reg" (
  "uid" int(20) NOT NULL auto_increment,
  "txt_name" varchar(50) NOT NULL,
  "txt_lastname" varchar(50) NOT NULL,
  "txt_hname" varchar(50) default NULL,
  "state_id" varchar(50) default NULL,
  "district_id" varchar(50) default NULL,
  "txt_place" varchar(50) default NULL,
  "pincode" varchar(50) default NULL,
  "email" varchar(50) default NULL,
  "phone" varchar(50) default NULL,
  "mobile" varchar(50) default NULL,
  "gender" varchar(50) default NULL,
  "photo_id" varchar(50) default NULL,
  "dob" varchar(50) default NULL,
  "bgroup" varchar(50) default NULL,
  "q_security" varchar(50) NOT NULL,
  "q_answer" varchar(50) NOT NULL,
  "username" varchar(50) NOT NULL,
  "password" varchar(50) NOT NULL,
  "reg_date" date NOT NULL,
  "hos_id" int(50) default NULL,
  "status" int(10) unsigned NOT NULL default '0',
  "patient_location" varchar(75) default NULL,
  "ipaddress" varchar(50) default NULL,
  "pstatus" varchar(20) default NULL,
  PRIMARY KEY  ("uid"),
  UNIQUE KEY "uid" ("uid")
) AUTO_INCREMENT=29;



#
# Dumping data for table 'tbl_reg'
#

LOCK TABLES "tbl_reg" WRITE;
/*!40000 ALTER TABLE "tbl_reg" DISABLE KEYS;*/
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(3,'aad','null','tyyr','null','null','fyyr','fgfgf','','','','male','photo','','null','question1','','','','2016-07-27',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(4,'jithin','null','pulimoottil','null','null','elanji','686665','jithinpulimoottil@gmail.com','9898254346','9633856584','male','photo','30','null','1','rice','jithin.jose','jithin.jose','2016-07-27',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(5,'jithin','null','pulimoottil','null','null','elanji','686665','jithinpulimoottil@gmail.com','9898254346','9633856584','male','photo','30','null','1','rice','jithin.jose','jithin.jose','2016-07-27',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(6,'','kklklk','','null','null','','','','','','null','photo','','null','Select','','','','2016-07-27',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(7,'','sdfdf','','null','null','','','','','','null','photo','','null','Select','','','','2016-07-27',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(8,'','sdfdf','','null','null','','','','','','null','photo','','null','Select','','','','2016-07-27',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(9,'','sdfdf','','null','null','','','','','','null','photo','','null','Select','','','','2016-07-27',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(10,'','sdfdf','','null','null','','','','','','null','photo','','null','Select','','','','2016-07-27',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(11,'jithin','dff','','','','','','','','','','on.jpg','','A','Select','','','','2016-08-01',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(12,'','','','','','','','','','','','IMG_20160728_165449524.jpg','','A','Select','','bini.mol','','2016-08-01',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(13,'','','','','','','','','','','','','','A','Select','','qwertyp','jithin.jose','2016-08-01',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(14,'jayakrishnan ','narayanan','vadakkeputhanmanass','1','5','rtyn','5555','jithinpulimoottil@gmail.com','56577','5656565','male','IMG_20160728_165847474.jpg','23','A','1','gg','man','man','2016-08-01',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(15,'Jithin','Jose','kalapathadam','1','5','elanji','null','edison@gmail.com','9895254346','87994444','Male','IMG_20160728_095206747.jpg','23','B+','3','elsy','ed','ed','2016-08-08',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(16,'jeethu','jose','pulimoottil','1','10','elanji','686665','tgrtgt@gmail.com','988887000','9633856584','female','2016-09-16-07-00-04-470.jpg','2016-09-15',NULL,'1','biriyani','jee','jee','2016-09-23',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(17,'jeethu','jose','pulimoottil','1','10','elanji','686665','tgrtgt@gmail.com','988887000','9633856584','female','2016-09-16-07-00-04-470.jpg','2016-09-15',NULL,'1','biriyani','jeee','jeee','2016-09-23',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(18,'Eltho','Joseph','vakkady','1','10','vakkad','98788','eltho@gmail.com','4t5y65456','5456665','male','photo.jpg','2016-09-03','','5','hjj','eltho','eltho','2016-09-24',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(19,'Eltho','Joseph','vakkady','1','','vakkad','98788','eltho@gmail.com','4t5y65456','5456665','male','photo.jpg','2016-09-03','','5','hjj','elthoz','elthoz','2016-09-24',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(22,'Tom','joseph','paralil','1','10','elanji','686665','tom@gmail.com','9876543210','7875433246','male','ico.jpg','2016-09-01','A+','1','rice','tom','tom','2016-09-25',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(23,'dsdsf','sdfsdf','dfdsf','1','1','dfdsf','dsfsdf','dfsdf','dfds','dsfsdf','female','IMG_20160303_175548163_HDR.jpg','2016-09-09','A+','2','sdfsdfs','q','q','2016-09-25',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(24,'dsdsf','sdfsdf','dfdsf','1','Select District','dfdsf','dsfsdf','dfsdf','dfds','dsfsdf','female','IMG_20160303_175548163_HDR.jpg','2016-09-09','A+','2','sdfsdfs','qq','qq','2016-09-25',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(25,'rgg','gfbfb','hnghn','1','2','hgnh','hgnh','gbb','hgnh','ghnghn','male','','2016-09-09','A+','2','nghn','s','s','2016-09-25',23,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(26,'gfb','gfbgfb','fgbgb','1','2','gfbgb','fgbgb','gbgfb','fgbgf','gbgb','male','PicsArt_09-03-09.07.38.jpg','2016-09-18','A+','3','bgfbgf','x','x','2016-09-26',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(27,'gfb','gfbgfb','fgbgb','1','','gfbgb','fgbgb','gbgfb','fgbgf','gbgb','male','PicsArt_09-03-09.07.38.jpg','2016-09-18','A+','3','bgfbgf','xx','xx','2016-09-26',NULL,'0',NULL,NULL,NULL);
REPLACE INTO "tbl_reg" ("uid", "txt_name", "txt_lastname", "txt_hname", "state_id", "district_id", "txt_place", "pincode", "email", "phone", "mobile", "gender", "photo_id", "dob", "bgroup", "q_security", "q_answer", "username", "password", "reg_date", "hos_id", "status", "patient_location", "ipaddress", "pstatus") VALUES
	(28,'dfd','dfgdf','dfgfhcv','1','1','vdsfbgn','sdvfbg n','zdfgxdfgb','fdg','dfghf','male','DSC01sss101.jpg','2016-09-15','A+','3','r','m','m','2016-09-26',NULL,'0',NULL,NULL,NULL);
/*!40000 ALTER TABLE "tbl_reg" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_state'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_state" (
  "state_id" int(30) unsigned NOT NULL auto_increment,
  "txt_state" varchar(50) NOT NULL,
  PRIMARY KEY  ("state_id"),
  UNIQUE KEY "state_id" ("state_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_state'
#

LOCK TABLES "tbl_state" WRITE;
/*!40000 ALTER TABLE "tbl_state" DISABLE KEYS;*/
REPLACE INTO "tbl_state" ("state_id", "txt_state") VALUES
	('1','Kerala');
REPLACE INTO "tbl_state" ("state_id", "txt_state") VALUES
	('2','Tamilnadu');
REPLACE INTO "tbl_state" ("state_id", "txt_state") VALUES
	('3','Karnadaka');
/*!40000 ALTER TABLE "tbl_state" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_test'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_test" (
  "test_id" int(30) NOT NULL auto_increment,
  "test_name" varchar(100) default NULL,
  "unit" varchar(50) default NULL,
  "technology" varchar(300) default NULL,
  PRIMARY KEY  ("test_id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'tbl_test'
#

LOCK TABLES "tbl_test" WRITE;
/*!40000 ALTER TABLE "tbl_test" DISABLE KEYS;*/
REPLACE INTO "tbl_test" ("test_id", "test_name", "unit", "technology") VALUES
	(7,'POTTASSIUM (DIRECT ISE) BLOOD TEST','mEq/L','Fully Automated Procedure on Vitros 250(DRY CHEMISTRY)');
REPLACE INTO "tbl_test" ("test_id", "test_name", "unit", "technology") VALUES
	(8,'Blood Pvc','up',NULL);
REPLACE INTO "tbl_test" ("test_id", "test_name", "unit", "technology") VALUES
	(9,'Blood Rbc','up',NULL);
REPLACE INTO "tbl_test" ("test_id", "test_name", "unit", "technology") VALUES
	(10,'Blood Rcyte','up',NULL);
/*!40000 ALTER TABLE "tbl_test" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_test_assign'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_test_assign" (
  "test_assign_id" int(30) unsigned NOT NULL auto_increment,
  "consult_id" int(30) unsigned default NULL,
  "hosp_id" varchar(40) default NULL,
  "test_id" varchar(30) default NULL,
  "test_date" varchar(30) default NULL,
  "test_time" varchar(30) default NULL,
  "description" varchar(100) default NULL,
  "test_status" varchar(30) default '0',
  PRIMARY KEY  ("test_assign_id")
) AUTO_INCREMENT=46;



#
# Dumping data for table 'tbl_test_assign'
#

LOCK TABLES "tbl_test_assign" WRITE;
/*!40000 ALTER TABLE "tbl_test_assign" DISABLE KEYS;*/
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('1','1','23','7','18-90888','1','blood','3');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('3','1','23','8','34-98-9000','12,89','blood rbc','2');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('4','2','23','9','12-13-9988','10:56','full f','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('5','3','23','7','56-090-3433','34:90','illop','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('6','1','23','8','cvcvcv','dfdvf','dfdvv','3');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('7','1','23','7','fyhghg','hgjhhk','hgjhkhj','3');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('23','55','24','8','2016-10-01','11:02','efghn','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('24','56','24','Select','2016-10-01','11:10','dsdfbgvb','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('25','57','24','Select','2016-10-01','11:20','sdefrgtfhygj','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('26','58','24','7','2016-10-01','11:23','eawsfdgh','2');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('27','59','24','Select','2016-10-01','11:29','00000000000000','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('28','59','24','Select','2016-10-01','11:29','00000000000000','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('29','59','24','Select','2016-10-01','11:32','wqweq','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('30','59','24','Select','2016-10-01','11:32','wqweq','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('31','59','24','Select','2016-10-01','11:32','wqweq','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('32','59','24','Select','2016-10-01','11:35','asdasd','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('33','59','24','Select','2016-10-01','11:36','qwewqwewqe','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('34','59','24','Select','2016-10-01','11:36','qwewqwewqe','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('35','59','24','Select','2016-10-01','11:37','AasASasAS','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('36','59','24','Select','2016-10-01','11:38','sadasdsadasdasda','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('37','59','24','7','2016-10-01','11:40','qwer','2');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('38','62','24','Select','2016-10-01','11:55','asdasdasd','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('39','62','24','Select','2016-10-01','12:00','wqeqwewqe','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('40','62','24','Select','2016-10-01','12:00','ewrwerwre','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('41','62','24','Select','2016-10-01','12:04','jhj','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('42','62','24','Select','2016-10-01','12:12','vgj','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('43','62','24','Select','2016-10-01','12:12','cfh','0');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('44','62','24','7','2016-10-05','12:18','gvhgh','1');
REPLACE INTO "tbl_test_assign" ("test_assign_id", "consult_id", "hosp_id", "test_id", "test_date", "test_time", "description", "test_status") VALUES
	('45','64','24','Select','2016-10-01','04:14','gbfvc','0');
/*!40000 ALTER TABLE "tbl_test_assign" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_test_normal_values'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_test_normal_values" (
  "normal_val_id" int(30) NOT NULL auto_increment,
  "test_id" varchar(30) default NULL,
  "lower" varchar(30) default NULL,
  "upper" varchar(30) default NULL,
  PRIMARY KEY  ("normal_val_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_test_normal_values'
#

LOCK TABLES "tbl_test_normal_values" WRITE;
/*!40000 ALTER TABLE "tbl_test_normal_values" DISABLE KEYS;*/
REPLACE INTO "tbl_test_normal_values" ("normal_val_id", "test_id", "lower", "upper") VALUES
	(1,'7','130','120');
/*!40000 ALTER TABLE "tbl_test_normal_values" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tb_article'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tb_article" (
  "tbl_postid" int(30) unsigned NOT NULL auto_increment,
  "doc_id" int(30) default NULL,
  "article" varchar(100) default NULL,
  "article_desc" varchar(500) default NULL,
  "date_art" date default NULL,
  "time_art" time default NULL,
  "status" int(10) unsigned default '0',
  PRIMARY KEY  ("tbl_postid")
) AUTO_INCREMENT=15;



#
# Dumping data for table 'tb_article'
#

LOCK TABLES "tb_article" WRITE;
/*!40000 ALTER TABLE "tb_article" DISABLE KEYS;*/
REPLACE INTO "tb_article" ("tbl_postid", "doc_id", "article", "article_desc", "date_art", "time_art", "status") VALUES
	('7',1,'POST_11081_24092016.jpg','    cfc cvc','2016-09-24','04:57:00','0');
REPLACE INTO "tb_article" ("tbl_postid", "doc_id", "article", "article_desc", "date_art", "time_art", "status") VALUES
	('9',2,'POST_11053_24092016.mp4','    sd','2016-09-24','05:29:00','0');
REPLACE INTO "tb_article" ("tbl_postid", "doc_id", "article", "article_desc", "date_art", "time_art", "status") VALUES
	('10',2,'how to Create transparent  Navigation Bar HTML & Css.mp4','dcdcdc','2016-09-13','11:17:48','0');
REPLACE INTO "tb_article" ("tbl_postid", "doc_id", "article", "article_desc", "date_art", "time_art", "status") VALUES
	('11',2,'Abstract Red Polygon Background.png','thfhfgh','2016-09-07','13:52:01','0');
REPLACE INTO "tb_article" ("tbl_postid", "doc_id", "article", "article_desc", "date_art", "time_art", "status") VALUES
	('12',5,'ico.jpg','fvfvfvs','2016-09-25','18:43:00','0');
REPLACE INTO "tb_article" ("tbl_postid", "doc_id", "article", "article_desc", "date_art", "time_art", "status") VALUES
	('14',2,'POST_10680_27092016.mp4','sddsdsd','2016-09-27','07:27:00','0');
/*!40000 ALTER TABLE "tb_article" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
