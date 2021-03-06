-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.5.16 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2012-12-03 23:49:46
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping structure for table my.company.access_levels
DROP TABLE IF EXISTS `access_levels`;
CREATE TABLE IF NOT EXISTS `access_levels` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Level_Status` varchar(50) DEFAULT 'customer',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table my.company.access_levels: ~0 rows (approximately)
DELETE FROM `access_levels`;
/*!40000 ALTER TABLE `access_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `access_levels` ENABLE KEYS */;


-- Dumping structure for table my.company.address
DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `Address_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Address_Line_1` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Address_Line_2` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  `Address_Line_3` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  `City` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Region_Name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `Postcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Address_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.address: 18 rows
DELETE FROM `address`;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` (`Address_ID`, `Address_Line_1`, `Address_Line_2`, `Address_Line_3`, `City`, `Region_Name`, `Postcode`) VALUES
	(1, '2 Gelbe House', 'Woolpit', 'Rattlesden', 'Stowmarket', '', 'IP29 1LD'),
	(15, '29 Wrights Way', 'Woolpit', 'Suffolk', 'Bury St Edmunds', '', 'ip30 9ty'),
	(14, '29 Wrights Way', 'Woolpit', 'Suffolk', 'Bury St Edmunds', '', 'IP30 9TY'),
	(13, '2 Gelbe House', 'Woolpit', 'Rattlesden', 'Stowmarket', '', 'IP30 9TY'),
	(12, '29 Wrights Way', 'Woolpit', 'Rattlesden', 'Stowmarket', '', 'IP30 9TY'),
	(11, '29 Wrights Way', 'Woolpit', 'Suffolk', 'Bury St Edmunds', '', 'ip30 9ty'),
	(10, '2 Gelbe House', 'Woolpit', 'Suffolk', 'Bury St Edmunds', '', 'IP30 9TY'),
	(16, '2 Gelbe House', 'Woolpit', 'Rattlesden', 'Bury St Edmunds', '', 'ip30 9ty'),
	(17, '2 Gelbe House', 'Woolpit', 'England', 'Stowmarket', '', 'IP29 1LD'),
	(18, 'Hello Roadyu', 'Walsham', 'Suffolk', 'Bury St Edmunds', 'England', 'IP30 9ty'),
	(19, '2 Gelbe House', 'Woolpit', 'Suffolk', 'Stowmarket', 'England', 'IP30 9TY'),
	(20, '29 Wirghts Way', 'Woolpit', '', 'Bury St Edmunds', 'Suffolk', 'IP30 9Ty'),
	(21, 'West Suffolk Hospital', 'Hardwick Lane', '', 'Bury St Edmunds', 'Suffolk', 'IP33 2QZ'),
	(22, 'West Suffolk Hospital', 'Hardwick Lane', '', 'Bury St Edmunds', 'Suffolk', 'IP33 2QZ'),
	(23, 'West Suffolk Hospital', 'Hardwick Lane', '', 'Bury St Edmunds', 'Suffolk', 'IP33 2QZ'),
	(24, '29 Wirghts Way', 'Hardwick Lane', '', 'Bury St Edmunds', 'Suffolk', 'IP33 2QZ'),
	(25, '2 Gelbe House', 'Woolpit', 'Suffolk', 'Stowmarket', 'England', 'IP30 9TY'),
	(26, '', '', '', '', '', '');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;


-- Dumping structure for table my.company.admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Admin_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Email_Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.admin: ~1 rows (approximately)
DELETE FROM `admin`;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`Admin_ID`, `Email_Address`, `Username`, `Password`) VALUES
	(1, 'simon@logicdesign.co.uk', 'simon-fletcher', 'b71685ea71d2cb978152d17bcaac97761f533325');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- Dumping structure for table my.company.businesses
DROP TABLE IF EXISTS `businesses`;
CREATE TABLE IF NOT EXISTS `businesses` (
  `business_id` int(10) NOT NULL AUTO_INCREMENT,
  `address_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `disabled` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`business_id`),
  KEY `business_id` (`business_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- Dumping data for table my.company.businesses: ~22 rows (approximately)
DELETE FROM `businesses`;
/*!40000 ALTER TABLE `businesses` DISABLE KEYS */;
INSERT INTO `businesses` (`business_id`, `address_id`, `name`, `phone`, `email`, `disabled`) VALUES
	(1, '0', 'Logic Design', '01359 245030', 'hello@simon.com.uk.toy', 'N'),
	(2, '18', 'Big Earth', '0207 657 2727', 'office@bigearth.co.uk', 'N'),
	(3, '0', 'Nicola Sexton', '01284 760011', 'info@nicolasexton.co.uk', 'Y'),
	(6, '10', 'Display World', '01284 345345', 'hello@displayworld.co.uk', 'N'),
	(9, '0', 'Reason Marketing', '01284 456 456', 'howie@reason.co.uk', 'N'),
	(11, '0', 'Finns Freelancer', '01284 345345', 'finn@finn.co.uk', 'N'),
	(12, '12', 'Kats Designs', '01284 345 345', 'kat@logicdesign.co.uk', 'N'),
	(15, '13', 'Waitrose', '10', 'finn@finn.co.uk', 'N'),
	(18, '19', 'Logic Two', '01284 345 345', 'finn@finn.co.uk', 'Y'),
	(19, '0', 'Logic Two', '10', 'finn@finn.co.uk', 'Y'),
	(20, '0', 'fdgfdgsd', 'fsdfdsf', 'fddsf', 'Y'),
	(21, '14', 'John Lewis', '0184 706842', 'john@lewis.com', 'N'),
	(22, '15', 'John Lewis', '0184 706842', 'john@lewis.com', 'N'),
	(23, '16', 'Simon Fletcher Designs', '10', 'hello@logicdesign.co.uk', 'N'),
	(24, '0', 'David Fulcher', '01284 345778', 'david@logicdesign.co.uk', 'N'),
	(25, '17', 'David Fulcher - 2', '01284 345 345', 'david@logicdesign.co.uk', 'N'),
	(26, '20', 'Sam Hunt Artistry', '01284 706842', 'sam@hunt.co.uk', 'Y'),
	(27, '21', 'NHS', '01284 706842', 'hello@nhs.co.uk', 'N'),
	(28, '22', 'NHS 2 ', '01284 706842', 'hello@nhs.co.uk', 'N'),
	(29, '23', 'Sam Hunt Artistry', '01284 706842', 'sam@hunt.co.uk', 'N'),
	(30, '24', 'NHS 2', '01284 706842', 'hello@nhs.co.uk', 'N'),
	(32, '25', 'Adams Pottery', '01284 706842', 'adam@pottery.co.uk', 'Y');
/*!40000 ALTER TABLE `businesses` ENABLE KEYS */;


-- Dumping structure for table my.company.business_to_people
DROP TABLE IF EXISTS `business_to_people`;
CREATE TABLE IF NOT EXISTS `business_to_people` (
  `b2p_id` int(10) NOT NULL AUTO_INCREMENT,
  `business_id` int(10) DEFAULT '0',
  `people_id` int(10) DEFAULT '0',
  PRIMARY KEY (`b2p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.business_to_people: ~31 rows (approximately)
DELETE FROM `business_to_people`;
/*!40000 ALTER TABLE `business_to_people` DISABLE KEYS */;
INSERT INTO `business_to_people` (`b2p_id`, `business_id`, `people_id`) VALUES
	(32, 1, 51),
	(33, 23, 51),
	(36, 1, 53),
	(42, NULL, 51),
	(44, 6, 53),
	(51, 25, 51),
	(56, 2, 51),
	(59, 18, 51),
	(64, 28, 55),
	(66, 29, 57),
	(67, 1, 49),
	(68, 3, 49),
	(69, 2, 49),
	(70, 28, 49),
	(72, 1, 59),
	(74, 6, 50),
	(75, 25, 50),
	(76, 2, 50),
	(77, 18, 50),
	(78, 26, 50),
	(79, 27, 50),
	(82, 1, 54),
	(84, 32, 54),
	(85, 32, 51),
	(89, 1, 0),
	(90, 1, 44),
	(91, 1, 44),
	(92, 6, 44),
	(93, 28, 44),
	(94, 1, 58),
	(96, 1, 60);
/*!40000 ALTER TABLE `business_to_people` ENABLE KEYS */;


-- Dumping structure for table my.company.casestudies
DROP TABLE IF EXISTS `casestudies`;
CREATE TABLE IF NOT EXISTS `casestudies` (
  `Casestudy_ID` int(10) NOT NULL AUTO_INCREMENT,
  `User_ID` int(10) DEFAULT NULL,
  `Injury_Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Breed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Age` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sex` enum('F','M') COLLATE utf8_unicode_ci DEFAULT 'M',
  `Case_Submitted_By` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Wound_Age` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'M',
  `Wound_Location` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'M',
  `Wound_Size` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'M',
  `Tissue_Status` int(10) DEFAULT NULL,
  `Date_Of_First_Presentation` date DEFAULT NULL,
  `Advice_On_Application` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT 'N',
  `Interventions_Used` text COLLATE utf8_unicode_ci,
  `Infected_Wound` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT 'N',
  `Wound_Treated_Prior` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT 'N',
  `Image` text COLLATE utf8_unicode_ci,
  `Initial_Dressing_ID` int(10) DEFAULT NULL,
  `Prior_Treatment` text COLLATE utf8_unicode_ci,
  `Management_Plan` text COLLATE utf8_unicode_ci NOT NULL,
  `Presentation_Of_Wound` text COLLATE utf8_unicode_ci,
  `Outcome` text COLLATE utf8_unicode_ci,
  `Admin_Status` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '0',
  `Customer_Status` enum('0','1','2') COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`Casestudy_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.casestudies: ~4 rows (approximately)
DELETE FROM `casestudies`;
/*!40000 ALTER TABLE `casestudies` DISABLE KEYS */;
INSERT INTO `casestudies` (`Casestudy_ID`, `User_ID`, `Injury_Name`, `Breed`, `Age`, `Sex`, `Case_Submitted_By`, `Wound_Age`, `Wound_Location`, `Wound_Size`, `Tissue_Status`, `Date_Of_First_Presentation`, `Advice_On_Application`, `Interventions_Used`, `Infected_Wound`, `Wound_Treated_Prior`, `Image`, `Initial_Dressing_ID`, `Prior_Treatment`, `Management_Plan`, `Presentation_Of_Wound`, `Outcome`, `Admin_Status`, `Customer_Status`) VALUES
	(1, 5, 'Wounded Leg (Gash)', '', '', 'M', '', 'M', 'M', 'M', 0, '2012-11-22', 'Y', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'N', 'N', '', 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '0', '1'),
	(6, 5, 'Wounded Leg', 'Stallion', '28', 'M', 'Simon Fletcher', '7 weeks', 'Knee', '10x50', 1, '2012-11-14', 'Y', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Y', 'Y', 'me13.jpg|T_M_Homepage_Image2.jpg|me9.jpg', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '0', '0', '0'),
	(7, 5, 'Testing Injury', 'Testing', '78', 'M', 'Simon', '78', 'Knee', '12x85', 1, '2012-11-23', 'Y', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Y', 'Y', 'me14.jpg|inflatable-bilboards1.jpg|clever-banner.png', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '0', '0', '1'),
	(8, 5, 'Testing Injury', 'Testing', '78', 'M', 'Simon', '78', 'Knee', '12x85', 1, '2012-11-23', 'Y', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Y', 'Y', 'me14.jpg|inflatable-bilboards1.jpg|clever-banner.png', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '0', '1', '1');
/*!40000 ALTER TABLE `casestudies` ENABLE KEYS */;


-- Dumping structure for table my.company.chat
DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recd` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.chat: ~0 rows (approximately)
DELETE FROM `chat`;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;


-- Dumping structure for table my.company.concepts
DROP TABLE IF EXISTS `concepts`;
CREATE TABLE IF NOT EXISTS `concepts` (
  `concept_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `notes` text,
  `date` datetime DEFAULT NULL,
  `images` text,
  PRIMARY KEY (`concept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table my.company.concepts: 3 rows
DELETE FROM `concepts`;
/*!40000 ALTER TABLE `concepts` DISABLE KEYS */;
INSERT INTO `concepts` (`concept_id`, `project_id`, `name`, `notes`, `date`, `images`) VALUES
	(1, 11, 'Initial Concepts', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2012-11-10 17:13:00', 'Maranello_CLIENTS_3.jpg|Maranello_HOME.jpg'),
	(2, 11, 'Concept Revisions', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2012-11-15 17:03:02', 'Maranello_CLIENTS_3.jpg|Maranello_HOME.jpg'),
	(3, 11, 'Finals', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2012-11-24 17:13:52', 'Maranello_CLIENTS_3.jpg|Maranello_HOME.jpg');
/*!40000 ALTER TABLE `concepts` ENABLE KEYS */;


-- Dumping structure for table my.company.concept_comments
DROP TABLE IF EXISTS `concept_comments`;
CREATE TABLE IF NOT EXISTS `concept_comments` (
  `concept_comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `concept_id` int(11) DEFAULT NULL,
  `who` enum('C','A') DEFAULT NULL,
  `who_id` int(11) DEFAULT NULL,
  `comment` text,
  `date` datetime DEFAULT NULL,
  `customer_seen` enum('Y','N') DEFAULT 'N',
  `admin_seen` enum('Y','N') DEFAULT 'N',
  `files` text,
  PRIMARY KEY (`concept_comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- Dumping data for table my.company.concept_comments: 77 rows
DELETE FROM `concept_comments`;
/*!40000 ALTER TABLE `concept_comments` DISABLE KEYS */;
INSERT INTO `concept_comments` (`concept_comment_id`, `concept_id`, `who`, `who_id`, `comment`, `date`, `customer_seen`, `admin_seen`, `files`) VALUES
	(1, 1, 'A', 1, 'hellosd\n', '2012-11-25 14:35:50', 'N', 'N', NULL),
	(2, 1, 'A', 1, 'THis is another xample ?', '2012-11-25 14:36:58', 'N', 'N', NULL),
	(3, 1, 'A', 1, 'gfhfghfhfg', '2012-11-25 14:37:25', 'N', 'N', NULL),
	(4, 1, 'A', 1, 'gfhgfhgfhgf', '2012-11-25 14:37:42', 'N', 'N', NULL),
	(5, 1, 'C', 44, 'fdsfsdfdsf', '2012-11-25 14:38:22', 'N', 'N', NULL),
	(6, 1, 'C', 44, 'this is another example\n', '2012-11-25 15:03:09', 'N', 'N', NULL),
	(7, 1, 'A', 1, 'this is another one\n', '2012-11-25 15:30:51', 'N', 'N', NULL),
	(8, 1, 'A', 1, 'and another\n', '2012-11-25 15:31:36', 'N', 'N', NULL),
	(9, 1, 'A', 1, 'sdfdsfdsf', '2012-11-25 15:32:38', 'N', 'N', NULL),
	(10, 1, 'C', 44, 'dfdsfds', '2012-11-25 15:32:55', 'N', 'N', NULL),
	(11, 1, 'A', 1, 'Here we go its working now\n', '2012-11-25 15:33:04', 'N', 'N', NULL),
	(12, 1, 'A', 1, 'and its now working really well', '2012-11-25 15:33:36', 'N', 'N', NULL),
	(13, 1, 'C', 44, 'and another one\n', '2012-11-25 15:33:43', 'N', 'N', NULL),
	(14, 1, 'C', 44, 'this is another example\n', '2012-11-25 15:40:19', 'N', 'N', NULL),
	(15, 1, 'C', 44, 'hello this should now say me to be fair', '2012-11-25 15:47:06', 'N', 'N', NULL),
	(16, 1, 'C', 44, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2012-11-25 15:47:23', 'N', 'N', NULL),
	(17, 1, 'C', 44, 'another comment', '2012-11-25 16:00:55', 'N', 'N', NULL),
	(18, 1, 'C', 44, '', '2012-11-25 16:34:44', 'N', 'N', NULL),
	(19, 2, 'A', 1, 'hello are you working on this at the moment ?', '2012-11-25 16:35:12', 'N', 'Y', NULL),
	(20, 1, 'C', 44, 'this is an example\n', '2012-11-25 16:43:27', 'N', 'N', NULL),
	(21, 1, 'C', 44, 'and another one', '2012-11-25 16:43:31', 'N', 'N', NULL),
	(22, 2, 'C', 44, 'sdfdsfsd', '2012-11-25 16:56:34', 'N', 'N', NULL),
	(23, 2, 'C', 44, 'dfdsfdsfs', '2012-11-25 16:56:36', 'N', 'N', NULL),
	(24, 3, 'C', 44, 'This is the first comment please see it working!!\n', '2012-11-25 17:07:42', 'Y', 'N', NULL),
	(25, 3, 'A', 1, 'This is the first comment please see it working!! by the admin\n', '2012-11-25 17:09:42', 'Y', 'Y', NULL),
	(26, 3, 'C', 44, 'hello\n', '2012-11-26 13:49:13', 'Y', 'N', NULL),
	(27, 1, 'C', 44, 'i like that', '2012-11-26 19:12:00', 'N', 'N', NULL),
	(28, 2, 'C', 44, 'thats nice', '2012-11-26 19:12:14', 'N', 'N', NULL),
	(29, 3, 'C', 44, 'good', '2012-11-26 19:12:21', 'Y', 'N', NULL),
	(30, 1, 'C', 44, 'just one thing can i have my logo bigger? you cunt', '2012-11-26 19:12:41', 'N', 'N', NULL),
	(31, 1, 'C', 44, 'this is another place\n', '2012-11-26 21:14:02', 'N', 'N', NULL),
	(32, 2, 'C', 44, 'and another', '2012-11-26 21:52:08', 'N', 'N', NULL),
	(33, 2, 'C', 44, 'fsdfdsf', '2012-11-26 21:56:49', 'N', 'N', NULL),
	(34, 2, 'C', 44, 'sdffdfds', '2012-11-26 21:57:03', 'N', 'N', NULL),
	(35, 2, 'C', 44, 'hello', '2012-11-26 21:57:29', 'N', 'N', NULL),
	(36, 3, 'C', 44, 'another hello right here', '2012-11-26 21:57:41', 'Y', 'N', NULL),
	(37, 3, 'C', 44, 'and another ', '2012-11-26 21:58:01', 'Y', 'N', NULL),
	(38, 3, 'C', 44, '', '2012-11-26 22:07:46', 'Y', 'N', NULL),
	(39, 3, 'C', 44, '', '2012-11-26 22:07:48', 'Y', 'N', NULL),
	(40, 3, 'C', 44, '', '2012-11-26 22:07:49', 'Y', 'N', NULL),
	(41, 3, 'C', 44, '', '2012-11-26 22:07:55', 'Y', 'N', NULL),
	(42, 3, 'C', 44, '', '2012-11-26 22:08:10', 'Y', 'N', NULL),
	(43, 2, 'C', 44, 'another one', '2012-11-26 22:32:24', 'N', 'N', NULL),
	(44, NULL, 'C', 44, 'fsdfdsf', '2012-11-27 22:49:42', 'N', 'N', NULL),
	(45, NULL, 'C', 44, 'fsdfdsf', '2012-11-27 22:49:42', 'N', 'N', NULL),
	(46, NULL, 'C', 44, 'Please see the attached files to see what i mean...', '2012-11-28 09:31:51', 'N', 'N', 'me1.jpg|T_M_Homepage_Image4.jpg|Concare-Homepage1.jpg'),
	(47, 1, 'C', 44, 'Helo how are you ?', '2012-11-28 09:34:25', 'N', 'N', 'me2.jpg|signature.jpg'),
	(48, 1, 'C', 44, 'This is an example piece of text', '2012-11-28 09:46:42', 'N', 'N', 'me3.jpg|pdf.png'),
	(49, 1, 'C', 44, 'This is an example piece of text', '2012-11-28 09:50:23', 'N', 'N', 'me4.jpg|pdf1.png'),
	(50, 1, 'C', 44, 'dsgfdgfdgfd', '2012-11-28 14:56:12', 'N', 'N', ''),
	(51, 1, 'C', 44, 'dsgfdgfdgfd', '2012-11-28 14:56:44', 'N', 'N', ''),
	(52, 1, 'C', 44, 'dsgfdgfdgfd', '2012-11-28 14:56:53', 'N', 'N', ''),
	(53, 1, 'C', 44, 'this is an example please check it out', '2012-11-29 13:13:46', 'N', 'N', 'me5.jpg|T_M_Homepage_Image5.jpg|clever-banner.png'),
	(54, 1, 'C', 44, '', '2012-11-29 13:16:59', 'N', 'N', ''),
	(55, 1, 'C', 44, '', '2012-11-29 13:18:26', 'N', 'N', ''),
	(56, 1, 'C', 44, '', '2012-11-29 13:21:34', 'N', 'N', 'Logic_Design_feedback.docx'),
	(57, 1, 'C', 44, 'example1', '2012-11-29 13:23:19', 'N', 'N', 'Certification-Study-Guide-MCD-v1.pdf'),
	(58, 1, 'C', 44, '', '2012-11-29 13:41:56', 'N', 'N', 'Certification-Study-Guide-MCD-v11.pdf'),
	(59, 1, 'C', 44, '', '2012-11-29 13:45:29', 'N', 'N', 'Certification-Study-Guide-MCD-v12.pdf'),
	(60, 1, 'C', 44, '', '2012-11-29 13:47:29', 'N', 'N', 'Certification-Study-Guide-MCD-v13.pdf'),
	(61, 1, 'C', 44, '', '2012-11-29 13:48:54', 'N', 'N', 'Certification-Study-Guide-MCD-v14.pdf'),
	(62, 1, 'C', 44, '', '2012-11-29 13:57:09', 'N', 'N', 'Certification-Study-Guide-MCD-v15.pdf'),
	(63, 1, 'C', 44, '', '2012-11-29 13:57:59', 'N', 'N', 'Certification-Study-Guide-MCD-v16.pdf'),
	(64, 1, 'C', 44, '', '2012-11-29 13:58:31', 'N', 'N', 'Certification-Study-Guide-MCD-v17.pdf'),
	(65, 1, 'C', 44, 'this is an example', '2012-11-30 14:21:11', 'N', 'N', ''),
	(66, 1, 'C', 44, 'this is an example', '2012-11-30 14:21:16', 'N', 'N', ''),
	(67, 1, 'C', 44, 'sadfghjk', '2012-11-30 14:21:36', 'N', 'N', 'Logic_Design_feedback1.docx'),
	(68, 2, 'C', 60, 'This is a new comment', '2012-12-02 15:59:13', 'N', 'N', ''),
	(69, 2, 'C', 60, 'This is a new comment', '2012-12-02 15:59:26', 'N', 'N', ''),
	(70, 2, 'C', 60, 'This is a new comment', '2012-12-02 16:04:54', 'N', 'N', ''),
	(71, 2, 'C', 60, 'This is a new comment', '2012-12-02 16:08:28', 'N', 'N', ''),
	(72, 2, 'C', 60, 'This is a new comment', '2012-12-02 16:10:40', 'N', 'N', ''),
	(73, 2, 'C', 60, 'This is a new comment', '2012-12-02 16:11:56', 'N', 'N', ''),
	(74, 2, 'C', 60, 'This is a new comment', '2012-12-02 16:12:20', 'N', 'N', ''),
	(75, 2, 'C', 60, 'This is a new comment', '2012-12-02 16:12:29', 'N', 'N', ''),
	(76, 3, 'C', 60, 'new comment ', '2012-12-02 16:13:21', 'Y', 'N', ''),
	(77, 3, 'C', 60, 'new comment ', '2012-12-02 16:13:54', 'Y', 'N', ''),
	(78, 3, 'C', 44, 'This is a new comment please check it out', '2012-12-03 22:38:01', 'Y', 'N', ''),
	(79, 3, 'A', 1, 'This is an example coming from me if i am honest', '2012-12-03 22:40:17', 'N', 'Y', ''),
	(80, 3, 'A', 1, 'This is what i want to see in my designs', '2012-12-03 22:40:41', 'N', 'Y', 'sqicon5.jpg');
/*!40000 ALTER TABLE `concept_comments` ENABLE KEYS */;


-- Dumping structure for table my.company.connections
DROP TABLE IF EXISTS `connections`;
CREATE TABLE IF NOT EXISTS `connections` (
  `connection_id` int(10) NOT NULL AUTO_INCREMENT,
  `business_id` int(10) DEFAULT NULL,
  `connection_options_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `username_two` varchar(255) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `notes` text,
  `disabled` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`connection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table my.company.connections: ~21 rows (approximately)
DELETE FROM `connections`;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
INSERT INTO `connections` (`connection_id`, `business_id`, `connection_options_id`, `username`, `username_two`, `password`, `url`, `notes`, `disabled`) VALUES
	(1, NULL, 3, 'logicdesign', '0', 'logicdesign123', 'www.google.com', NULL, 'N'),
	(2, 12, 3, 'logicdesign', '', 'logicdesign123', 'www.google.com', NULL, 'N'),
	(3, 0, 5, '', '', '', '', NULL, 'Y'),
	(4, 9, 6, 'example1', '', 'logicdesign123', 'www.google.com', NULL, 'Y'),
	(5, 9, 3, 'example1', '', 'logicdesign123', 'www.google.com', NULL, 'N'),
	(6, 9, 7, 'logicdesign123', 'Logicdesign2', 'logicdesign12322', 'test.sagepay.co.uk/MySagePay', NULL, 'N'),
	(7, 0, 1, '', '', '', '', NULL, 'N'),
	(8, 0, 8, 'sdfdsf', '', '', 'sdfsd', NULL, 'N'),
	(9, 9, 1, '', '', '', '', NULL, 'Y'),
	(10, 21, 5, 'sfdf', 'fff', '123456', 'www.google.com', NULL, 'N'),
	(11, 1, 4, '123', '123', '12345689', '', NULL, 'Y'),
	(12, 1, 4, '213', '123', '132', '', NULL, 'Y'),
	(13, 0, 9, '', '', '', '', NULL, 'N'),
	(14, 0, 10, 'hgvhv', '', '', '', NULL, 'N'),
	(15, 1, 11, '', '', 'hhhh', '', NULL, 'Y'),
	(16, 0, 1, '', '', '', '', NULL, 'N'),
	(17, 2, 5, '123123', '123123', 'ioi', 'www.google.com', NULL, 'N'),
	(18, 9, 1, 'fgfg', '', 'fgfg', '', NULL, 'Y'),
	(19, 9, 5, 'mo', 'mo', '123456', 'moose1.com', NULL, 'N'),
	(20, 1, 13, 'logicdesign', '', 'logicdesign123', 'hello@google.com', NULL, 'N'),
	(21, 21, 4, 'logicdesign', 'logicdesign', 'logicdesign123', 'www.opencart.co.uk', NULL, 'Y');
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;


-- Dumping structure for table my.company.connection_options
DROP TABLE IF EXISTS `connection_options`;
CREATE TABLE IF NOT EXISTS `connection_options` (
  `connection_options_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`connection_options_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table my.company.connection_options: ~13 rows (approximately)
DELETE FROM `connection_options`;
/*!40000 ALTER TABLE `connection_options` DISABLE KEYS */;
INSERT INTO `connection_options` (`connection_options_id`, `name`) VALUES
	(1, 'ftp'),
	(2, 'wodpress'),
	(3, 'cs-cart'),
	(4, 'Opencart'),
	(5, 'Sagepay'),
	(6, 'Wordpress Login'),
	(7, 'Sagepay Test Account'),
	(8, 'dfdsfds'),
	(9, 'ihkjjkjl'),
	(10, 'iyhuhkj'),
	(11, 'hybjhkh'),
	(12, 'Moose'),
	(13, 'Sagepay Live Account');
/*!40000 ALTER TABLE `connection_options` ENABLE KEYS */;


-- Dumping structure for table my.company.documents
DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `document_id` int(10) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_live` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.documents: ~6 rows (approximately)
DELETE FROM `documents`;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` (`document_id`, `file_name`, `image`, `description`, `title`, `is_live`) VALUES
	(1, 'Programming_in_Objective-C_3rd_Edition_Developers_Library3.pdf', '', 'This is the description for document one, check them out', 'Document 1', 'Y'),
	(2, 'Certification-Study-Guide-MCD-v1.pdf', '300x200.gif', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'Document 2', 'Y'),
	(3, 'Certification-Study-Guide-MCD-v1.pdf', '300x200.gif', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'Document 3', 'Y'),
	(4, 'Certification-Study-Guide-MCD-v1.pdf', '300x200.gif', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'Document 4', 'Y'),
	(5, 'Programming_in_Objective-C_(3rd_Edition)_(Developers_Library)3.pdf', '', 'gffdgfdgfdgdfg', 'This is an example', 'Y'),
	(6, 'Programming_in_Objective-C_(3rd_Edition)_(Developers_Library)4.pdf', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Document 21', 'Y');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;


-- Dumping structure for table my.company.dressings
DROP TABLE IF EXISTS `dressings`;
CREATE TABLE IF NOT EXISTS `dressings` (
  `Dressing_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci,
  `Price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rating` int(10) DEFAULT NULL,
  PRIMARY KEY (`Dressing_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.dressings: ~0 rows (approximately)
DELETE FROM `dressings`;
/*!40000 ALTER TABLE `dressings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dressings` ENABLE KEYS */;


-- Dumping structure for table my.company.experts
DROP TABLE IF EXISTS `experts`;
CREATE TABLE IF NOT EXISTS `experts` (
  `Expert_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Qualification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Small_Bio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Bio` text COLLATE utf8_unicode_ci NOT NULL,
  `Email_Address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Expert_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.experts: ~4 rows (approximately)
DELETE FROM `experts`;
/*!40000 ALTER TABLE `experts` DISABLE KEYS */;
INSERT INTO `experts` (`Expert_ID`, `Name`, `Qualification`, `Small_Bio`, `Image`, `Bio`, `Email_Address`) VALUES
	(1, 'Simon Fletcher', 'Horse Vet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'guy.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'simon@logicdesign.co.uk'),
	(2, 'Simon Fletcher', 'Horse Vet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'simon@logicdesign.co.uk'),
	(3, 'Simon Fletcher', 'Horse Vet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'simon@logicdesign.co.uk'),
	(4, 'Simon Fletcher', 'Horse Vet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'guy.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'simon@logicdesign.co.uk');
/*!40000 ALTER TABLE `experts` ENABLE KEYS */;


-- Dumping structure for table my.company.faq
DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `faq_id` int(10) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `explanation` text COLLATE utf8_unicode_ci,
  `verified` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT 'N',
  `request_by` int(11) DEFAULT NULL,
  `disabled` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.faq: ~14 rows (approximately)
DELETE FROM `faq`;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` (`faq_id`, `question`, `explanation`, `verified`, `request_by`, `disabled`) VALUES
	(3, 'How can I get my own domain name?', 'The Internet Corporation for Assigned Names and Numbers (ICANN) maintains a list of accredited registrars . Any of the companies on this list can register a domain name for you..', 'N', 44, 'N'),
	(4, 'How can I block my hosting service\'s advertisements?', 'Check the Terms of Service (TOS) agreement for your hosting service. It almost certainly prohibits interfering with the advertisements they add to your web pages. If you use some trick to block their advertisements on your own, then your hosting service may delete your account for violating its TOS.', 'Y', 44, 'N'),
	(5, 'How do I redirect someone to another page?', 'The most reliable way is to configure the server to send out a redirection instruction when the old URL is requested. Then the browser will automatically get the new URL. This is the fastest and most efficient way, and is the only way described here that can convince indexing robots to phase out the old URL. For configuration details consult your server admin or documentation (with NCSA or Apache servers, use a Redirect statement in .htaccess).', 'N', 44, 'N'),
	(6, 'How do I password protect my web site?', 'Password protection is done through HTTP authentication. The configuration details vary from server to server, so you should read the authentication section of your server documentation. Contact your server administrator if you need help with this.', 'N', 44, 'N'),
	(7, 'How do I stop my page from being cached?', 'Browsers cache web documents; they store local copies of documents to speed up repeated references to documents that haven\'t changed. Also, many browsers are configured to use public proxy caches, which serve many users (e.g., all customers of an ISP, or all employees behind a corporate firewall). To effectively control how your documents are cached you must configure your server to send appropriate HTTP headers.', 'Y', 44, 'N'),
	(8, 'How can I disable the browser\'s right-click options?', 'These scripts annoy visitors who lose ready access to their browsers\' normal context-menu functions (e.g., "Open in new window" or "Bookmark link"). These scripts can also interfere with features like mouse gestures. Nothing (including these scripts) can prevent anyone from copying your source or images. The browser cannot display your document without the source and images, so your web server must send them to the browser. Even without the various "save" functions in today\'s browsers, someone can retrieve your source or images from the browser\'s cache, request them from the server with some other tool, or use a screen-capture tool to copy the images. These scripts do nothing when JavaScript is disabled or unavailable, when JavaScript access to right-click events is disabled, on systems without mice, or on systems with single-button mice.', 'N', 44, 'N'),
	(9, 'How do I hide my URL?', 'You can\'t. URLs are fundamental to navigation on the WWW. The URL is necessary for the browser to be able to retrieve your document. It is impossible to hide the URL of a resource from the browser.', 'N', 44, 'N'),
	(10, 'How do I detect what browser is being used?', 'Many browsers identify themselves when they request a document. A CGI script will have this information available in the HTTP_USER_AGENT environment variable, and it can use that to send out a version of the document which is optimized for that browser.', 'Y', 44, 'Y'),
	(11, 'How do I get my visitors\' email addresses?', 'You can\'t. Although each request for a document is usually logged with the name or address of the remote host, the actual username is almost never logged as well. This is mostly because of performance reasons, as it would require that the server uses the ident protocol to see who is on the other end. This takes time. And if a cache proxy is doing the request, you don\'t get anything sensible.', 'Y', 44, 'N'),
	(12, 'Why is my custom 404 Not Found message not displayed?', 'If only Internet Explorer ignores your custom 404 Not Found messages, then you\'ve been caught by its "friendly" HTTP error messages. When a special HTTP response (e.g., a 404 Not Found response) is shorter than 512 bytes, Internet Explorer substitutes its own message for the one delivered by the server. As a user of Internet Explorer, you can disable this feature in the "Advanced" options panel. As a web author, your only recourse is to make your 404 Not Found message longer.', 'Y', 44, 'N'),
	(13, 'How do I take control of my domain ?', '', 'Y', 44, 'N'),
	(14, 'How do I take control of my domain ?', '', 'Y', 44, 'Y'),
	(15, 'this is another question', 'This is the answer and it should go live straight after this!!!', 'Y', 44, 'Y'),
	(16, 'Example 21 ?', 'dfdsfdsfsdfdsfdsf', 'Y', 44, 'Y');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;


-- Dumping structure for table my.company.follow-ups
DROP TABLE IF EXISTS `follow-ups`;
CREATE TABLE IF NOT EXISTS `follow-ups` (
  `Followup_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Casestudy_ID` int(10) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tissue_Status` int(255) DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci,
  `Images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Followup_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.follow-ups: ~21 rows (approximately)
DELETE FROM `follow-ups`;
/*!40000 ALTER TABLE `follow-ups` DISABLE KEYS */;
INSERT INTO `follow-ups` (`Followup_ID`, `Casestudy_ID`, `Date`, `Status`, `Tissue_Status`, `Description`, `Images`) VALUES
	(1, 6, '2012-11-22', 'Improved', 0, 'lorem ipsummmmm', 'me.jpg|inflatable-bilboards.jpg'),
	(2, 6, '2012-11-22', '', 0, 'lorem ipsummmmm', 'me1.jpg|inflatable-bilboards1.jpg'),
	(3, 6, '2012-11-22', 'got a lot better', 0, 'lorem ', 'business-banner.png|T_M_Homepage_Image.jpg'),
	(4, 1, '2012-11-08', 'sgfdhjk', 0, 'shdgjfk,gghjfhrahjgm,jgfshfhm,jhfdgj', 'T_M_Homepage_Image1.jpg|me2.jpg'),
	(5, 1, '2012-11-29', 'sdfhgj', 0, 'dsgfhgjhmgdfsadgfhgjk,', 'me3.jpg'),
	(6, 1, '2012-11-03', 'afsdghj,', 0, 'sdfhgjk,.kgdfgfhnjm,j.', 'inflatable-bilboards2.jpg|me4.jpg'),
	(7, 1, '2012-11-23', 'trtjryretyrtere', 0, 'rytykuli;o/.k,jmhtgrefwdefgrdhfgkhkl', ''),
	(8, 6, '2012-11-17', 'asfdghjk,', 0, 'fdhgjfhklk/lhgfdgjhfklgkh;/l', ''),
	(9, 6, '2012-11-14', 'Hello Status', 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', ''),
	(10, 6, '2012-11-14', 'Hello Status', 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', ''),
	(11, 6, '2012-11-14', 'Hello Status', 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', ''),
	(12, 6, '2012-11-14', 'Hello Status', 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', ''),
	(13, 6, '2012-11-22', 'This is a new status', 2, '	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'me5.jpg|clever-banner.png'),
	(14, 6, '2012-11-29', 'sdgfhj', 1, 'sdagfhjkjl;\'ljhgfdsadfghjkl;', ''),
	(15, 7, '2012-11-27', 'sdfhgjk', 2, 'sdgfhjkl;', ''),
	(16, 7, '2012-11-24', 'esdfghjkl', 3, 'dfghjkl;\'#\r\n', ''),
	(17, 6, '2012-11-22', 'sadsfghjk', 1, 'afdsghjkl', ''),
	(18, 6, '2012-11-22', 'sadsfghjk', 1, 'afdsghjkl', ''),
	(19, 6, '2012-11-16', 'esdrfghbkjnm,.', 2, 'eztdxfcyguhvbjnkml;', ''),
	(20, 6, '2012-11-16', 'esdrfghbkjnm,.', 2, 'eztdxfcyguhvbjnkml;', ''),
	(21, 7, '2012-11-29', 'opikujh', 1, 'o9jpik', '');
/*!40000 ALTER TABLE `follow-ups` ENABLE KEYS */;


-- Dumping structure for table my.company.meetings
DROP TABLE IF EXISTS `meetings`;
CREATE TABLE IF NOT EXISTS `meetings` (
  `meeting_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business` int(11) DEFAULT NULL,
  `start` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `who` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `all_day` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`meeting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.meetings: ~26 rows (approximately)
DELETE FROM `meetings`;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
INSERT INTO `meetings` (`meeting_id`, `name`, `notes`, `business`, `start`, `end`, `who`, `updated_by`, `color`, `all_day`) VALUES
	(1, 'Darren Meeting With ART MODIALE', 'ben boon', 12, '2012-11-06 00:00:00', '2012-11-06 00:00:00', 1, NULL, '#FF9244', 1),
	(3, 'IPIC Meeting', 'Sign Off Meeting', 1, '2012-11-08 00:00:00', '2012-11-08 00:00:00', 1, NULL, '#FF9244', 1),
	(4, 'IPIC Meeting', 'Sign Off Meeting', 1, '2012-11-14 00:00:00', '2012-11-14 00:00:00', 1, NULL, '#FF9244', 1),
	(5, 'Reason Marketing', 'notes notes notes', 1, '2012-09-30 00:00:00', '2012-10-30 00:00:00', 1, 1, NULL, 1),
	(6, 'helloeoeoeoee', '', 0, '2012-11-22 00:00:00', '2012-11-22 00:00:00', 1, NULL, NULL, 1),
	(8, 'huzzarrrrrrrrr', '', 0, '2012-11-20 00:00:00', '2012-11-20 00:00:00', 1, NULL, NULL, 1),
	(9, 'bla bla bla', '', 0, '2012-11-15 00:00:00', '2012-11-15 00:00:00', 1, NULL, NULL, 1),
	(10, 'bla bla bla', '', 0, '2012-11-15 00:00:00', '2012-11-15 00:00:00', 1, NULL, NULL, 1),
	(11, 'bla bla bla', '', 0, '2012-11-07 00:00:00', '2012-11-07 00:00:00', 1, NULL, NULL, 1),
	(12, 'jenwkernewr', '', 0, '2012-11-09 00:00:00', '2012-11-09 00:00:00', 1, NULL, NULL, 1),
	(13, 'example 1', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 1),
	(14, 'example45', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 1),
	(16, 'example21', '', 0, '2012-11-21 11:30:00', '2012-11-21 16:00:00', 1, 1, NULL, 0),
	(17, 'dsfdfdsfsdf', '', 0, '2012-10-31 09:00:00', '2012-10-31 09:00:00', 1, NULL, NULL, 0),
	(18, 'dsffsdfdsfsd', '', 0, '2012-11-23 09:00:00', '2012-11-23 14:30:00', 1, NULL, NULL, 0),
	(19, 'dsfdsfdsfdsfd', '', 0, '2012-11-20 12:00:00', '2012-11-20 15:30:00', 1, 1, NULL, 0),
	(20, 'Darren Meeting', '', 0, '2012-11-27 09:00:00', '2012-11-27 13:00:00', 1, NULL, NULL, 0),
	(21, 'dsfdsfdsdsf', '', 0, '2012-11-28 09:00:00', '2012-11-28 11:00:00', 1, NULL, NULL, 0),
	(22, 'dsfdsfdsdsf', '', 0, '2012-11-29 09:00:00', '2012-11-29 16:00:00', 1, NULL, NULL, 0),
	(23, 'dsfdsfdsdsf', '', 0, '2012-11-29 11:30:00', '2012-11-29 18:30:00', 1, 1, NULL, 0),
	(24, 'Example Complete', 'these are the notes', 1, '2012-12-12 14:00:00', '2012-12-12 15:30:00', 1, NULL, '#FF9244', 0),
	(25, 'Example Complete', 'these are the notes', 1, '2012-12-12 14:00:00', '2012-12-12 15:30:00', 1, NULL, '#FF9244', 0),
	(26, 'Example Complete', 'these are the notes', 1, '2012-12-12 14:00:00', '2012-12-12 15:30:00', 1, NULL, '#FF9244', 0),
	(28, 'hello', 'notes', 0, '2012-11-01 09:00:00', '2012-11-01 09:00:00', 1, NULL, NULL, 1),
	(30, 'name', '', 0, '2012-11-13 09:00:00', '2012-11-13 09:30:00', 1, 1, NULL, 0),
	(31, 'example24', 'jhbgfvds', 0, '2012-11-16 09:00:00', '2012-11-16 09:30:00', 1, NULL, NULL, 0);
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;


-- Dumping structure for table my.company.meetings_to_people
DROP TABLE IF EXISTS `meetings_to_people`;
CREATE TABLE IF NOT EXISTS `meetings_to_people` (
  `meeting_to_people_id` int(10) NOT NULL AUTO_INCREMENT,
  `meeting_id` int(10) DEFAULT '0',
  `people_id` int(10) DEFAULT '0',
  PRIMARY KEY (`meeting_to_people_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.meetings_to_people: ~9 rows (approximately)
DELETE FROM `meetings_to_people`;
/*!40000 ALTER TABLE `meetings_to_people` DISABLE KEYS */;
INSERT INTO `meetings_to_people` (`meeting_to_people_id`, `meeting_id`, `people_id`) VALUES
	(1, 1, 58),
	(2, 2, 51),
	(3, 3, 58),
	(4, 4, 58),
	(5, 5, 51),
	(6, 24, 51),
	(7, 25, 51),
	(8, 26, 51),
	(9, 27, 51);
/*!40000 ALTER TABLE `meetings_to_people` ENABLE KEYS */;


-- Dumping structure for table my.company.meetings_to_users
DROP TABLE IF EXISTS `meetings_to_users`;
CREATE TABLE IF NOT EXISTS `meetings_to_users` (
  `meetings_to_users_id` int(10) NOT NULL AUTO_INCREMENT,
  `meeting_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`meetings_to_users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.meetings_to_users: ~31 rows (approximately)
DELETE FROM `meetings_to_users`;
/*!40000 ALTER TABLE `meetings_to_users` DISABLE KEYS */;
INSERT INTO `meetings_to_users` (`meetings_to_users_id`, `meeting_id`, `user_id`) VALUES
	(1, 1, 1),
	(2, 1, 2),
	(3, 1, 5),
	(4, 2, 6),
	(5, 2, 1),
	(6, 3, 1),
	(7, 3, 6),
	(8, 4, 1),
	(9, 4, 6),
	(10, 5, 2),
	(11, 5, 1),
	(12, 24, 1),
	(13, 24, 4),
	(14, 24, 2),
	(15, 24, 3),
	(16, 24, 5),
	(17, 25, 1),
	(18, 25, 4),
	(19, 25, 2),
	(20, 25, 3),
	(21, 25, 5),
	(22, 26, 1),
	(23, 26, 4),
	(24, 26, 2),
	(25, 26, 3),
	(26, 26, 5),
	(27, 27, 1),
	(28, 27, 2),
	(29, 27, 4),
	(30, 27, 3),
	(31, 27, 5);
/*!40000 ALTER TABLE `meetings_to_users` ENABLE KEYS */;


-- Dumping structure for table my.company.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `Order_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Casestudy_ID` int(10) DEFAULT NULL,
  `Follow_Up_ID` int(10) DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` enum('N','C') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.orders: ~9 rows (approximately)
DELETE FROM `orders`;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`Order_ID`, `Casestudy_ID`, `Follow_Up_ID`, `Date`, `Status`) VALUES
	(1, 6, 12, '2012-11-13 18:41:17', 'C'),
	(2, 6, 13, '2012-11-14 12:24:28', 'N'),
	(3, 6, 14, '2012-11-14 12:41:46', 'N'),
	(4, 7, 15, '2012-11-14 13:15:47', 'N'),
	(5, 7, 16, '2012-11-14 13:16:14', 'N'),
	(6, 6, 17, '2012-11-14 13:20:34', 'N'),
	(7, 6, 18, '2012-11-14 13:20:47', 'N'),
	(8, 6, 19, '2012-11-14 13:52:22', 'N'),
	(9, 7, 0, '2012-11-14 14:23:22', 'N');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


-- Dumping structure for table my.company.people
DROP TABLE IF EXISTS `people`;
CREATE TABLE IF NOT EXISTS `people` (
  `people_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `is_primary_contact` enum('Y','N') DEFAULT 'N',
  `notes` text,
  `disabled` enum('Y','N') DEFAULT 'N',
  `password` varchar(255) DEFAULT NULL,
  `has_login_access` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_logged_in` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`people_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- Dumping data for table my.company.people: ~14 rows (approximately)
DELETE FROM `people`;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` (`people_id`, `name`, `role`, `email`, `phone`, `is_primary_contact`, `notes`, `disabled`, `password`, `has_login_access`, `is_logged_in`) VALUES
	(44, 'Simon Mulley', 'Website Developer', 'simon@logicdesign.co.uk', '10', 'N', 'sdfsgdhg', 'N', '041529ab9a34a072fe9ac57db4e088ff2602a83d', 'Y', 'Y'),
	(48, 'Charlie Robinson', 'Website Developer', 'david@williams.co.uk', '01284 345345', 'N', '', 'Y', NULL, '', ''),
	(49, 'Finn Johnson', 'Website Designer / Studio Manager', 'finn@logicdesign.co.uk', '', 'N', 'Finn is the senior designer and studio manager', 'Y', NULL, '', ''),
	(50, 'Keith Bradley', 'Website Developer', 'keith@logicdesign.co.uk', '', 'N', 'Keith is the senior web developer and Managing Director at logic design you are looking here ', 'Y', NULL, '', ''),
	(51, 'Howie', 'Media Consultant', 'howie@logicdesign.co.uk', '01284 706842', 'N', 'Media Consultant here at logic design', 'N', NULL, '', ''),
	(52, 'Howie', 'Managing DIrector', 'howie@logicdesign.co.uk', '01284 706842', 'N', 'He is a hardd working individual', 'Y', NULL, '', ''),
	(53, 'Simon Fletcher', 'Managing Director', 'simon@logicdesign.co.uk', '01284 345 345 ', 'N', 'This is the same as any other contact being added into the system.', 'Y', NULL, '', ''),
	(54, 'Keith Bradley', 'Managing Director / Web Developer', 'keith@logicdesign.co.uk', '01284 706842', 'N', 'Great employer and good web developer grewat person', 'Y', NULL, '', ''),
	(55, 'Shaun Palfrey', 'Medrecs Officer', 'shaun@NHS.co.uk', '01284 345 345', 'N', 'this is the notes', 'Y', NULL, '', ''),
	(56, 'Darren Smith', 'Managing Director / Web Developer', 'darren@logicdesign.co.uk', '01284 345 345', 'N', 'this is the the best thing to do...', 'Y', NULL, '', ''),
	(57, 'David Fletcher', 'Web Developer', 'david@logicdesign.co.uk', '01284 706842', 'N', 'this is a great person...', 'N', NULL, '', ''),
	(58, 'Charlie Robinson', 'MD', 'charlie@displayworld.co.uk', '01284 345 345', 'N', 'fdgsfdgsfg', 'N', '041529ab9a34a072fe9ac57db4e088ff2602a83d', 'Y', 'Y'),
	(59, 'David Williams', 'Website Developer', 'david@logicdesign.co.uk', '01284 706842', 'N', 'Great guy', 'Y', NULL, '', ''),
	(60, 'Keith Bradley', 'Web Developer', 'keith.bradley@logicdesign.co.uk', '10', 'N', 'These are the notes to be taken by the system for a new user.', 'N', 'aad1285fa6881af30d3de4ea4d82078299a15e93', 'Y', 'Y');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;


-- Dumping structure for table my.company.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `Product_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci,
  `Minimum_Order` int(100) DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.products: ~5 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`Product_ID`, `Name`, `Image`, `Description`, `Minimum_Order`) VALUES
	(2, 'Melolin', 'product_1.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 3),
	(3, 'Self Adhering Bandage', 'product_2.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 3),
	(4, 'Veterinary Absorbent Foam Dressing', 'product_3.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 2),
	(5, 'Sterile Equine Absorbent Foam Dressing', 'product_4.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 1),
	(6, 'Sterile Equine Absorbent Foam Dressing', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;


-- Dumping structure for table my.company.products_to_categories
DROP TABLE IF EXISTS `products_to_categories`;
CREATE TABLE IF NOT EXISTS `products_to_categories` (
  `Products_To_Categories_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Product_ID` int(10) DEFAULT NULL,
  `Category_ID` int(10) DEFAULT NULL,
  PRIMARY KEY (`Products_To_Categories_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.products_to_categories: ~6 rows (approximately)
DELETE FROM `products_to_categories`;
/*!40000 ALTER TABLE `products_to_categories` DISABLE KEYS */;
INSERT INTO `products_to_categories` (`Products_To_Categories_ID`, `Product_ID`, `Category_ID`) VALUES
	(1, 1, 2),
	(2, 2, 2),
	(3, 3, 2),
	(4, 4, 2),
	(5, 5, 2),
	(6, 6, 2);
/*!40000 ALTER TABLE `products_to_categories` ENABLE KEYS */;


-- Dumping structure for table my.company.product_to_orders
DROP TABLE IF EXISTS `product_to_orders`;
CREATE TABLE IF NOT EXISTS `product_to_orders` (
  `Product_To_Orders_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Order_ID` int(10) DEFAULT NULL,
  `Product_ID` int(10) DEFAULT NULL,
  `Quantity` int(10) DEFAULT NULL,
  PRIMARY KEY (`Product_To_Orders_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.product_to_orders: ~40 rows (approximately)
DELETE FROM `product_to_orders`;
/*!40000 ALTER TABLE `product_to_orders` DISABLE KEYS */;
INSERT INTO `product_to_orders` (`Product_To_Orders_ID`, `Order_ID`, `Product_ID`, `Quantity`) VALUES
	(1, 1, 2, 3),
	(2, 1, 3, 0),
	(3, 1, 4, 2),
	(4, 1, 5, 1),
	(5, 1, 6, 1),
	(6, 2, 2, 3),
	(7, 2, 3, 0),
	(8, 2, 4, 2),
	(9, 2, 5, 1),
	(10, 2, 6, 1),
	(11, 3, 2, 3),
	(12, 3, 3, 3),
	(13, 3, 4, 2),
	(14, 3, 5, 1),
	(15, 3, 6, 1),
	(16, 5, 2, 3),
	(17, 5, 3, 3),
	(18, 5, 4, 2),
	(19, 5, 5, 1),
	(20, 5, 6, 1),
	(21, 6, 2, 3),
	(22, 6, 3, 3),
	(23, 6, 4, 2),
	(24, 6, 5, 1),
	(25, 6, 6, 1),
	(26, 7, 2, 3),
	(27, 7, 3, 3),
	(28, 7, 4, 2),
	(29, 7, 5, 1),
	(30, 7, 6, 1),
	(31, 8, 2, 3),
	(32, 8, 3, 3),
	(33, 8, 4, 2),
	(34, 8, 5, 1),
	(35, 8, 6, 1),
	(36, 9, 2, 3),
	(37, 9, 3, 3),
	(38, 9, 4, 2),
	(39, 9, 5, 1),
	(40, 9, 6, 1);
/*!40000 ALTER TABLE `product_to_orders` ENABLE KEYS */;


-- Dumping structure for table my.company.projects
DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `project_id` int(10) NOT NULL AUTO_INCREMENT,
  `business_id` varchar(255) DEFAULT NULL,
  `concept_no` int(11) DEFAULT NULL,
  `sales_id` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `manager_id` int(10) DEFAULT NULL,
  `project_type_id` varchar(255) DEFAULT NULL,
  `status_id` int(10) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `internal_deadline` datetime DEFAULT NULL,
  `client_deadline` datetime DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `task_template_id` varchar(255) DEFAULT NULL,
  `complete` enum('Y','N') DEFAULT 'N',
  `completion_date` datetime DEFAULT NULL,
  `on_hold` enum('Y','N') DEFAULT 'N',
  `hold_id` int(10) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table my.company.projects: ~10 rows (approximately)
DELETE FROM `projects`;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` (`project_id`, `business_id`, `concept_no`, `sales_id`, `project_name`, `manager_id`, `project_type_id`, `status_id`, `start_date`, `internal_deadline`, `client_deadline`, `budget`, `notes`, `task_template_id`, `complete`, `completion_date`, `on_hold`, `hold_id`, `updated_by`) VALUES
	(5, '1', 5, '5', 'Reason Marketing', 4, '3', 0, '2012-09-30 00:00:00', '2012-11-02 00:00:00', '2012-10-29 00:00:00', '3500', 'This is the notes section ', NULL, 'N', NULL, 'N', NULL, '1'),
	(6, '1', 5, '5', 'Reason Marketing', 4, '3', 4, '2012-09-30 00:00:00', '2012-10-02 00:00:00', '2012-10-02 00:00:00', '4000', 'Project notes go in here', NULL, 'N', NULL, 'N', NULL, NULL),
	(7, '12', 5, '3', 'Animal DNA Diagnostics', 4, '5', 2, '2012-10-29 00:00:00', '2012-11-28 00:00:00', '2012-11-27 00:00:00', '12000', 'This is a bespoke development project make sure you spend time testing.', NULL, 'N', NULL, 'Y', 39, '1'),
	(8, '', 5, '', 'hello', 0, '1', 1, '2012-09-30 00:00:00', '2012-09-17 00:00:00', '2012-09-17 00:00:00', '', '', NULL, 'N', NULL, 'N', NULL, NULL),
	(9, '1', 5, '5', 'Hello Project', 4, '2', 3, '2012-09-30 00:00:00', '2012-09-17 00:00:00', '2012-09-17 00:00:00', '4000', 'dsfdsfds', NULL, 'N', NULL, 'N', NULL, NULL),
	(10, '2', 5, '3', 'Ta Shain (ebay like site)', 4, '4', 3, '2012-10-26 00:00:00', '2013-01-17 00:00:00', '2013-01-31 00:00:00', '20000', 'This is a shop like ebay for uni student books check this out it really is working check it out', NULL, 'Y', '2012-11-01 00:00:00', 'N', NULL, '1'),
	(11, '1', 5, '5', 'Animal DNA Diagnostics', 4, '3', 1, '2012-10-03 00:00:00', '2012-10-18 00:00:00', '2012-10-18 00:00:00', '4000', 'These are the project notes check them out here y\'all', NULL, 'N', NULL, 'Y', 38, NULL),
	(12, '', 5, '', 'Example Project', 0, '', 0, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '', '', NULL, 'N', NULL, 'N', NULL, NULL),
	(13, '', 10, '', 'example 21', 0, '1', 1, '2012-11-27 00:00:00', '2012-11-27 00:00:00', '2012-11-27 00:00:00', '', '', NULL, 'N', NULL, 'N', NULL, NULL),
	(14, '', 5, '', 'example 21', 0, '1', 1, '2012-11-27 00:00:00', '2012-11-27 00:00:00', '2012-11-27 00:00:00', '', '', NULL, 'N', NULL, 'N', NULL, NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;


-- Dumping structure for table my.company.projects_comments
DROP TABLE IF EXISTS `projects_comments`;
CREATE TABLE IF NOT EXISTS `projects_comments` (
  `project_comment_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `user_id` int(10) DEFAULT NULL,
  `comment_date_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`project_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.projects_comments: ~9 rows (approximately)
DELETE FROM `projects_comments`;
/*!40000 ALTER TABLE `projects_comments` DISABLE KEYS */;
INSERT INTO `projects_comments` (`project_comment_id`, `project_id`, `comment`, `user_id`, `comment_date_time`) VALUES
	(10, 10, 'this is the data', 1, NULL),
	(22, 9, 'you are making a comment, but does it stand correctly ?', 1, NULL),
	(27, 9, 'and another ', 1, NULL),
	(30, 9, 'I want to add another comment is that alright ?', 1, NULL),
	(31, 10, 'Comment 21', 1, NULL),
	(32, 10, 'this is another comment you may want to check out', 1, NULL),
	(34, 11, 'another one', 1, NULL),
	(36, 11, 'herllore', 1, NULL),
	(40, 11, 'kpk', 1, NULL);
/*!40000 ALTER TABLE `projects_comments` ENABLE KEYS */;


-- Dumping structure for table my.company.projects_on_hold
DROP TABLE IF EXISTS `projects_on_hold`;
CREATE TABLE IF NOT EXISTS `projects_on_hold` (
  `project_hold_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL,
  `hold_date` datetime NOT NULL,
  `unhold_date` datetime DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `done_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`project_hold_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.projects_on_hold: ~12 rows (approximately)
DELETE FROM `projects_on_hold`;
/*!40000 ALTER TABLE `projects_on_hold` DISABLE KEYS */;
INSERT INTO `projects_on_hold` (`project_hold_id`, `project_id`, `hold_date`, `unhold_date`, `reason`, `done_by`) VALUES
	(28, 11, '2012-10-14 13:10:35', '2012-10-14 14:27:52', NULL, 1),
	(29, 10, '2012-10-14 13:13:34', '2012-10-14 13:14:01', NULL, 1),
	(30, 10, '2012-10-14 13:14:33', '2012-10-14 13:14:38', NULL, 1),
	(31, 10, '2012-10-14 13:14:48', '2012-10-14 13:16:09', NULL, 1),
	(32, 10, '2012-10-14 13:16:13', '2012-10-14 16:17:34', NULL, 1),
	(33, 10, '2012-10-14 13:17:35', '2012-10-14 13:23:44', NULL, 1),
	(34, 10, '2012-10-14 13:23:48', '2012-10-14 14:27:56', NULL, 1),
	(35, 11, '2012-10-14 16:38:58', '2012-10-14 18:30:54', NULL, 1),
	(36, 11, '2012-10-26 23:01:47', '2012-11-01 20:54:50', NULL, 1),
	(37, 11, '2012-11-01 21:25:58', '2012-11-17 22:49:22', NULL, 1),
	(38, 11, '2012-11-17 22:49:32', NULL, NULL, 1),
	(39, 7, '2012-11-17 22:50:42', NULL, NULL, 1);
/*!40000 ALTER TABLE `projects_on_hold` ENABLE KEYS */;


-- Dumping structure for table my.company.project_to_users
DROP TABLE IF EXISTS `project_to_users`;
CREATE TABLE IF NOT EXISTS `project_to_users` (
  `users_to_project_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `project_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`users_to_project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.project_to_users: ~25 rows (approximately)
DELETE FROM `project_to_users`;
/*!40000 ALTER TABLE `project_to_users` DISABLE KEYS */;
INSERT INTO `project_to_users` (`users_to_project_id`, `user_id`, `project_id`) VALUES
	(1, 1, 4),
	(2, 2, 4),
	(3, 6, 4),
	(4, 6, 5),
	(5, 2, 5),
	(6, 2, 5),
	(7, 7, 5),
	(11, 1, 7),
	(12, 2, 7),
	(13, 6, 7),
	(14, 0, 8),
	(15, 1, 9),
	(16, 6, 9),
	(17, 2, 9),
	(46, 1, 6),
	(47, 2, 6),
	(48, 7, 6),
	(49, 1, 11),
	(50, 6, 11),
	(52, 0, 0),
	(53, 0, 0),
	(58, 2, 10),
	(59, 1, 10),
	(60, 0, 0),
	(61, 0, 0);
/*!40000 ALTER TABLE `project_to_users` ENABLE KEYS */;


-- Dumping structure for table my.company.project_type
DROP TABLE IF EXISTS `project_type`;
CREATE TABLE IF NOT EXISTS `project_type` (
  `project_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`project_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.project_type: ~5 rows (approximately)
DELETE FROM `project_type`;
/*!40000 ALTER TABLE `project_type` DISABLE KEYS */;
INSERT INTO `project_type` (`project_type_id`, `name`) VALUES
	(1, 'Logo Design'),
	(2, 'Wordpress Design &amp; Development'),
	(3, 'Wordpress Development'),
	(4, 'Opencart E-commerce'),
	(5, 'Bespoke Web Development');
/*!40000 ALTER TABLE `project_type` ENABLE KEYS */;


-- Dumping structure for table my.company.reminders
DROP TABLE IF EXISTS `reminders`;
CREATE TABLE IF NOT EXISTS `reminders` (
  `reminder_id` int(11) NOT NULL AUTO_INCREMENT,
  `reminder_time` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `remindee` int(10) DEFAULT NULL,
  PRIMARY KEY (`reminder_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.reminders: 12 rows
DELETE FROM `reminders`;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
INSERT INTO `reminders` (`reminder_id`, `reminder_time`, `name`, `text`, `remindee`) VALUES
	(1, '0000-00-00 00:00:00', 'Task Reminder 1', 'this is a texting reminder', 0),
	(2, '0000-00-00 00:00:00', 'This is a task with a date', 'dated', 0),
	(3, '0000-00-00 00:00:00', 'This is a task with a date', 'reminder text goes here buddy', 0),
	(4, '2012-10-25 07:00:00', 'This is a task with a date', 'check this out then...', 0),
	(5, '2012-10-24 12:00:00', 'reminder task', 'this is the reminder text. PLease make sure you you do your reminder stuff', 0),
	(6, '2012-10-24 12:00:00', 'reminder task', 'this is the reminder text. PLease make sure you you do your reminder stuff', 0),
	(7, '2012-10-19 08:30:00', 'Task Reminder 1', 'this is a reminder for everyone to do their work today', 1),
	(8, '2012-10-19 08:30:00', 'Task Reminder 1', 'this is a reminder for everyone to do their work today', 2),
	(9, '2012-10-19 09:00:00', 'THis is a reminder to be set.', 'You have got a meeting in 24 hours with animal DNA', 1),
	(10, '2012-10-19 09:00:00', 'THis is a reminder to be set.', 'You have got a meeting in 24 hours with animal DNA', 4),
	(11, '2013-02-01 00:00:00', 'Project Follow Up', 'Please follow up on project number 10', NULL),
	(12, '2013-02-01 00:00:00', 'Project Follow Up', 'Please follow up on project number 10', 1);
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;


-- Dumping structure for table my.company.schedules
DROP TABLE IF EXISTS `schedules`;
CREATE TABLE IF NOT EXISTS `schedules` (
  `schedule_id` int(10) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `all_day` enum('true','false') COLLATE utf8_unicode_ci DEFAULT 'true',
  `type` enum('DES','DEV') COLLATE utf8_unicode_ci DEFAULT 'DEV'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.schedules: ~0 rows (approximately)
DELETE FROM `schedules`;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;


-- Dumping structure for table my.company.schema_info
DROP TABLE IF EXISTS `schema_info`;
CREATE TABLE IF NOT EXISTS `schema_info` (
  `version_date` datetime NOT NULL,
  PRIMARY KEY (`version_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.schema_info: 1 rows
DELETE FROM `schema_info`;
/*!40000 ALTER TABLE `schema_info` DISABLE KEYS */;
INSERT INTO `schema_info` (`version_date`) VALUES
	('2012-10-27 13:42:00');
/*!40000 ALTER TABLE `schema_info` ENABLE KEYS */;


-- Dumping structure for table my.company.settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(225) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table my.company.settings: 1 rows
DELETE FROM `settings`;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`settings_id`, `name`, `message`) VALUES
	(1, 'project_follow_up_email', 'This is a project follow up email, please follow up this project and make sure that everything is working okay. Could they be on support etc etc etc ');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;


-- Dumping structure for table my.company.status_table
DROP TABLE IF EXISTS `status_table`;
CREATE TABLE IF NOT EXISTS `status_table` (
  `status_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.status_table: ~5 rows (approximately)
DELETE FROM `status_table`;
/*!40000 ALTER TABLE `status_table` DISABLE KEYS */;
INSERT INTO `status_table` (`status_id`, `name`, `color`) VALUES
	(1, 'urgent', 'red'),
	(2, 'Quite-Fucking-Urgent', '#d5d5d5'),
	(3, 'normal', '#f2f2f2'),
	(4, 'bellow normal', '#000'),
	(80, 'Here is another one!!', '#f2f2f2');
/*!40000 ALTER TABLE `status_table` ENABLE KEYS */;


-- Dumping structure for table my.company.support_packs
DROP TABLE IF EXISTS `support_packs`;
CREATE TABLE IF NOT EXISTS `support_packs` (
  `support_packs_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(4) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `includes` text,
  `time_allowed_pm` int(255) DEFAULT NULL,
  `is_live` enum('Y','N') DEFAULT 'Y',
  `client_description` text,
  PRIMARY KEY (`support_packs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table my.company.support_packs: ~3 rows (approximately)
DELETE FROM `support_packs`;
/*!40000 ALTER TABLE `support_packs` DISABLE KEYS */;
INSERT INTO `support_packs` (`support_packs_id`, `name`, `price`, `description`, `includes`, `time_allowed_pm`, `is_live`, `client_description`) VALUES
	(5, 'Support Pack 2', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Lorem ipsum dolor sit amet, consectetur', 2700, 'Y', 'Free setup|1 Website|2 Projects|1GB Storage|$15 Google Adwords Credit'),
	(6, 'Support Task Level 1', 150, 'This is a basic level task', 'dffdgijidfsg', 3600, 'Y', 'Free setup|1 Website|2 Projects|1GB Storage|$15 Google Adwords Credit'),
	(7, 'Another Support Pack', 60, 'Lorem ipsum dolor sit amet, consectetur adipisicin', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 36000, 'Y', 'Free setup|1 Website|2 Projects|1GB Storage|$15 Google Adwords Credit|8 Hour Support'),
	(8, 'Support Pack 3', 154, 'lorm', 'example 1|example 2|example 3|example 4|example 5', 36000, 'Y', 'This is the description');
/*!40000 ALTER TABLE `support_packs` ENABLE KEYS */;


-- Dumping structure for table my.company.support_packs_to_businesses
DROP TABLE IF EXISTS `support_packs_to_businesses`;
CREATE TABLE IF NOT EXISTS `support_packs_to_businesses` (
  `sptb_id` int(10) NOT NULL AUTO_INCREMENT,
  `business_id` int(10) DEFAULT NULL,
  `support_pack_id` int(10) DEFAULT NULL,
  `reminder` enum('Y','N') NOT NULL DEFAULT 'N',
  `reminder_when` datetime DEFAULT NULL,
  `renewal_date` datetime DEFAULT NULL,
  `is_live` enum('Y','N') DEFAULT 'Y',
  `notes` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`sptb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

-- Dumping data for table my.company.support_packs_to_businesses: ~53 rows (approximately)
DELETE FROM `support_packs_to_businesses`;
/*!40000 ALTER TABLE `support_packs_to_businesses` DISABLE KEYS */;
INSERT INTO `support_packs_to_businesses` (`sptb_id`, `business_id`, `support_pack_id`, `reminder`, `reminder_when`, `renewal_date`, `is_live`, `notes`) VALUES
	(3, 24, 6, 'N', NULL, '2022-10-28 13:55:29', 'N', NULL),
	(5, 2, 6, 'N', NULL, '2014-10-28 13:57:39', 'N', NULL),
	(6, 2, 5, 'N', NULL, '2015-10-28 13:58:15', 'Y', NULL),
	(7, 24, 5, 'N', NULL, '2024-10-28 13:59:00', 'Y', NULL),
	(8, 24, 5, 'N', NULL, '2013-10-28 13:59:53', 'N', NULL),
	(9, 6, 5, 'N', NULL, '2015-10-28 14:00:50', 'Y', NULL),
	(10, 25, 5, 'N', NULL, '2013-10-28 14:01:47', 'Y', NULL),
	(11, 25, 6, 'N', NULL, '2013-11-04 00:27:54', 'Y', NULL),
	(12, 2, 5, 'N', NULL, '2013-11-04 00:46:13', 'Y', NULL),
	(13, 2, 5, 'N', NULL, '2013-11-04 00:46:33', 'Y', NULL),
	(14, 2, 5, 'N', NULL, '2013-11-04 00:47:02', 'Y', NULL),
	(15, 2, 5, 'N', NULL, '2013-11-04 00:47:40', 'Y', NULL),
	(16, 2, 6, 'N', NULL, '2013-11-04 00:48:14', 'Y', NULL),
	(17, 2, 5, 'N', NULL, '2013-11-04 00:51:20', 'Y', NULL),
	(18, 2, 5, 'N', NULL, '2013-11-04 00:51:54', 'Y', NULL),
	(19, 2, 5, 'N', NULL, '2013-11-04 00:53:09', 'Y', NULL),
	(20, 2, 6, 'N', NULL, '2013-11-04 00:53:40', 'Y', NULL),
	(21, 2, 5, 'N', NULL, '2013-11-04 00:54:22', 'Y', NULL),
	(22, 2, 5, 'N', NULL, '2013-11-04 00:55:13', 'Y', NULL),
	(23, 2, 5, 'N', NULL, '2013-11-04 00:56:19', 'Y', NULL),
	(24, 2, 6, 'N', NULL, '2013-11-04 00:56:54', 'Y', NULL),
	(25, 2, 5, 'N', NULL, '2013-11-04 00:58:49', 'Y', NULL),
	(26, 2, 5, 'N', NULL, '2013-11-04 00:59:13', 'Y', NULL),
	(27, 2, 5, 'N', NULL, '2013-11-04 00:59:57', 'Y', NULL),
	(28, 2, 5, 'N', NULL, '2013-11-04 01:00:59', 'Y', NULL),
	(29, 2, 6, 'N', NULL, '2013-11-04 01:01:40', 'Y', NULL),
	(30, 24, 6, 'N', NULL, '2013-11-04 01:02:34', 'Y', NULL),
	(31, 2, 6, 'N', NULL, '2013-11-20 22:17:39', 'Y', NULL),
	(32, 2, 5, 'N', NULL, '2013-11-20 22:17:43', 'Y', NULL),
	(33, 0, 0, 'N', NULL, '2013-11-20 22:54:49', 'Y', 'these are the notes '),
	(34, 2, 5, 'N', NULL, '2013-11-20 22:55:42', 'Y', 'these are the notes'),
	(35, 2, 0, 'N', NULL, '2013-11-20 22:57:22', 'Y', 'dsfdsfdsfdsds'),
	(36, 25, 5, 'N', NULL, '2013-11-20 22:58:18', 'Y', 'another support pack'),
	(37, 24, 6, 'N', NULL, '2013-11-20 22:59:21', 'Y', 'another one'),
	(38, 24, 6, 'N', NULL, '2013-11-20 22:59:33', 'Y', 'and another'),
	(39, 25, 5, 'N', NULL, '2013-11-20 22:59:57', 'Y', 'here'),
	(40, 25, 5, 'N', NULL, '2013-11-20 23:00:07', 'Y', 'here we are\n'),
	(41, 24, 5, 'N', NULL, '2013-11-20 23:00:58', 'Y', 'here we go'),
	(42, 6, 6, 'N', NULL, '2013-11-20 23:01:21', 'Y', 'here we fucking go'),
	(43, 2, 6, 'N', NULL, '2013-11-20 23:04:06', 'Y', 'nnn'),
	(44, 6, 7, 'N', NULL, '2013-12-02 00:33:43', 'Y', 'This is an example support pack that I am adding to business - display world'),
	(45, 2, 7, 'N', NULL, '2013-12-02 00:36:09', 'Y', 'This is another support pack going against big earth'),
	(46, 2, 7, 'N', NULL, '2013-12-02 00:36:52', 'Y', 'dgfhfdgdsgdf'),
	(47, 2, 7, 'N', NULL, '2013-12-02 00:40:06', 'Y', 'And another one'),
	(48, 2, 6, 'N', NULL, '2013-12-02 00:40:36', 'Y', 'dsfdsfdsf'),
	(49, 6, 7, 'N', NULL, '2013-12-02 00:41:31', 'Y', 'dsfsdgfdgfdgfdgdf'),
	(50, 21, 7, 'Y', '2012-12-26 00:00:00', '2013-12-02 00:50:58', 'Y', 'This is a task against john lewis check it out'),
	(51, 30, 7, 'Y', '2012-12-04 00:00:00', '2013-12-02 00:53:28', 'Y', 'dsafdsfdsfs'),
	(52, 30, 5, 'Y', '2012-12-24 00:00:00', '2013-12-02 01:00:15', 'Y', 'dsfsfdsfdsfdsfsd'),
	(53, 22, 7, 'Y', '2012-12-26 00:00:00', '2013-12-02 01:06:50', 'Y', 'sdfdsfdsfsd'),
	(54, 22, 5, 'Y', '2012-12-26 00:00:00', '2013-12-02 01:07:38', 'Y', 'zxczxcxzczxc'),
	(55, 21, 7, 'Y', '2012-12-19 00:00:00', '2013-12-02 01:08:59', 'Y', 'This is another one'),
	(56, 30, 6, 'Y', '2012-12-19 00:00:00', '2013-12-02 01:19:36', 'Y', 'This is a recurring event check it out...');
/*!40000 ALTER TABLE `support_packs_to_businesses` ENABLE KEYS */;


-- Dumping structure for table my.company.tasks
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `task_id` int(10) NOT NULL AUTO_INCREMENT,
  `lft` int(10) DEFAULT '0',
  `parent_task_id` int(10) DEFAULT '0',
  `rgt` int(10) DEFAULT '0',
  `business_id` int(10) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `task_type_id` varchar(255) DEFAULT NULL,
  `status_id` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `internal_deadline` datetime DEFAULT NULL,
  `client_deadline` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `notes` tinytext,
  `status_notes` varchar(255) DEFAULT NULL,
  `task_created_by` int(10) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  `complete` enum('Y','N') DEFAULT 'N',
  `actual_completion_date` datetime DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

-- Dumping data for table my.company.tasks: ~62 rows (approximately)
DELETE FROM `tasks`;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` (`task_id`, `lft`, `parent_task_id`, `rgt`, `business_id`, `project_id`, `task_type_id`, `status_id`, `start_date`, `internal_deadline`, `client_deadline`, `name`, `notes`, `status_notes`, `task_created_by`, `last_updated`, `updated_by`, `sort`, `complete`, `actual_completion_date`) VALUES
	(5, 1, 0, 152, 0, 11, '2', '2', '2012-10-05 00:00:00', '2012-10-05 00:00:00', '2012-10-05 00:00:00', 'Very Top Level Task', '', NULL, 1, '2012-10-12 00:00:00', 2, 14, 'N', NULL),
	(38, 4, 5, 7, 0, 11, '2', '2', '2012-10-05 00:00:00', '2012-10-05 00:00:00', '2012-10-05 00:00:00', 'hosting 1', 'hosting 1', NULL, 1, '2012-10-12 00:00:00', 2, 15, 'N', NULL),
	(39, 72, 5, 137, 0, 11, '2', '2', '2012-10-05 00:00:00', '2012-10-05 00:00:00', '2012-10-05 00:00:00', 'hosting 2', 'hosting 2', NULL, 1, '2012-10-12 00:00:00', 2, 12, 'Y', '2012-10-27 00:00:00'),
	(40, 146, 5, 151, 0, 11, '2', '2', '2012-10-05 00:00:00', '2012-10-05 00:00:00', '2012-10-05 00:00:00', 'hosting 3', 'hosting 3', NULL, 1, '2012-10-12 00:00:00', 2, 16, 'N', NULL),
	(41, 5, 38, 6, 0, 11, '2', '2', '2012-10-05 00:00:00', '2012-10-05 00:00:00', '2012-10-05 00:00:00', 't1', 't1', NULL, 1, '2012-10-12 00:00:00', 2, 1, 'Y', '2012-10-22 00:00:00'),
	(43, 135, 39, 136, 0, 11, '2', '2', '2012-10-05 00:00:00', '2012-10-05 00:00:00', '2012-10-05 00:00:00', 't2', 't2', NULL, 1, '2012-10-12 00:00:00', 2, 13, 'N', '2012-10-22 00:00:00'),
	(44, 149, 40, 150, 0, 11, '2', '2', '2012-10-05 00:00:00', '2012-10-05 00:00:00', '2012-10-05 00:00:00', 't3', 't3', NULL, 1, '2012-10-12 00:00:00', 2, 15, 'Y', '2012-10-22 00:00:00'),
	(49, 147, 5, 148, 0, 11, NULL, NULL, NULL, NULL, NULL, 'Get at the top level please', NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL),
	(51, 68, 5, 69, 0, 11, NULL, NULL, NULL, NULL, NULL, 'Hosting working', NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL),
	(52, 111, 0, 112, 0, 11, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'Subing a task right here', '', NULL, 1, NULL, NULL, NULL, 'Y', '2012-10-16 00:00:00'),
	(53, 105, 2, 106, 0, 11, '0', '0', '2012-10-31 00:00:00', '2012-10-31 00:00:00', '2012-10-31 00:00:00', 'hello', '', NULL, 1, NULL, NULL, 0, 'Y', '2012-10-22 00:00:00'),
	(56, 64, 0, 67, 0, 11, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'This is a top level task check it out', '', NULL, 1, NULL, NULL, 1, 'Y', '2012-10-26 00:00:00'),
	(57, 101, 39, 104, 1, 11, '2', '3', '2012-10-24 00:00:00', '2012-10-22 00:00:00', '2012-10-23 00:00:00', 'This sub tasking', 'this is a new sub task check it outt...', 'these are the notes to be made by me and no1 else', 1, NULL, NULL, 7, 'N', '2012-10-23 00:00:00'),
	(58, 97, 39, 98, 0, 11, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'adding a sub task in here', '', NULL, 1, NULL, NULL, 8, 'N', NULL),
	(59, 83, 39, 94, 0, 11, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'another sub tree adding', '', NULL, 1, NULL, NULL, 3, 'Y', '2012-10-27 00:00:00'),
	(60, 144, 0, 145, 0, 11, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'tasking 243', '', NULL, 1, NULL, NULL, 9, 'N', NULL),
	(61, 81, 39, 82, 6, 11, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'sub tasking 24', '', NULL, 1, '2012-10-22 00:00:00', 1, NULL, 'Y', '2012-10-16 00:00:00'),
	(62, 142, 0, 143, 6, 11, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'sub tasking 24999', '', NULL, 1, '2012-10-22 00:00:00', 1, 10, 'N', NULL),
	(64, 77, 39, 78, 2, 11, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'This is a testing sub task check it out...', '', NULL, 1, '2012-10-22 00:00:00', 1, NULL, 'Y', '2012-10-16 00:00:00'),
	(65, 73, 39, 76, 0, 11, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'checking', '', NULL, 1, NULL, NULL, 11, 'N', NULL),
	(66, 74, 65, 75, 0, 11, '0', '0', '2012-10-25 00:00:00', '2012-10-24 00:00:00', '2012-10-22 00:00:00', 'checking sub class man', '', NULL, 1, NULL, NULL, 7, 'Y', '2012-10-27 00:00:00'),
	(67, 138, 0, 141, 0, 11, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'a top level task', '', NULL, 1, NULL, NULL, 8, 'Y', '2012-10-27 00:00:00'),
	(68, 139, 67, 140, 0, 11, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'another sub task within this task ?', '', NULL, 1, NULL, NULL, 12, 'N', NULL),
	(69, 65, 56, 66, 0, 11, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'subtask of the top level task', '', NULL, 1, NULL, NULL, 10, 'Y', '2012-10-23 00:00:00'),
	(70, 102, 57, 103, 0, 11, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'this is a sub task of the containing task if you would like to see it!!', '', NULL, 1, NULL, NULL, NULL, 'Y', '2012-10-22 00:00:00'),
	(71, 2, 5, 3, 0, 11, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'another top level task this is annoying i know', '', NULL, 1, NULL, NULL, 5, 'N', NULL),
	(72, 90, 59, 93, 0, 0, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'another another subtree', '', NULL, 1, NULL, NULL, NULL, 'Y', '2012-10-27 00:00:00'),
	(73, 91, 72, 92, 0, 0, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'another another another subtree', '', NULL, 1, NULL, NULL, NULL, 'Y', '2012-10-27 00:00:00'),
	(74, 88, 59, 89, 0, 0, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'sdfsdfs', '', NULL, 1, NULL, NULL, NULL, 'Y', '2012-10-27 00:00:00'),
	(75, 86, 59, 87, 0, 0, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'ftgtg', '', NULL, 1, NULL, NULL, NULL, 'Y', '2012-10-27 00:00:00'),
	(76, 84, 59, 85, 0, 0, '0', '0', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'gfdghgf', '', NULL, 1, NULL, NULL, NULL, 'Y', '2012-10-27 00:00:00'),
	(77, 62, 0, 63, 1, 5, '0', '1', '2012-11-20 00:00:00', '2012-11-27 00:00:00', '2012-11-27 00:00:00', 'This is a great task', 'dfsgdfsgfgsdg', NULL, 1, NULL, NULL, 3, 'Y', '2012-11-20 00:00:00'),
	(78, 0, 0, 0, 1, NULL, NULL, '3', NULL, NULL, NULL, 'tasking one', NULL, 'notes!', NULL, NULL, NULL, NULL, 'N', NULL),
	(79, 0, 0, 0, 2, NULL, NULL, '1', NULL, NULL, NULL, 'Name', NULL, 'Notes', NULL, NULL, NULL, NULL, 'N', NULL),
	(80, 0, 0, 0, 2, NULL, NULL, '1', NULL, NULL, NULL, 'Name', NULL, 'Notes', NULL, NULL, NULL, NULL, 'N', NULL),
	(81, 60, 0, 61, 25, 0, '0', '3', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '', '', NULL, 1, NULL, NULL, NULL, 'Y', '2012-11-08 00:00:00'),
	(82, 58, 0, 59, 25, 0, '0', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', NULL, 1, NULL, NULL, NULL, 'Y', '2012-11-08 00:00:00'),
	(83, 56, 0, 57, 15, 0, '0', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', NULL, 1, NULL, NULL, NULL, 'Y', '2012-11-08 00:00:00'),
	(84, 54, 0, 55, 24, 0, '0', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'czxvcxvzxc', 'zcxvzcxvcx', NULL, 1, NULL, NULL, 7, 'N', NULL),
	(85, 52, 0, 53, 29, 0, '0', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'asdasd', 'asdfdfdf', NULL, 1, NULL, NULL, 4, 'N', NULL),
	(86, 50, 0, 51, 1, 0, '0', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Add sagepay to animal dna', 'wating for sage details', NULL, 1, NULL, NULL, 6, 'N', NULL),
	(87, 44, 0, 49, 9, 0, '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'adding another task here', 'these are the notes', NULL, 1, NULL, NULL, 8, 'N', NULL),
	(88, 42, 0, 43, 2, 0, '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'another one', 'and another', NULL, 1, NULL, NULL, 9, 'N', NULL),
	(89, 40, 0, 41, 6, 0, '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'vfsvName', 'Notesfdgfdgsd', NULL, 1, NULL, NULL, 1, 'N', NULL),
	(90, 38, 0, 39, 2, 0, '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'dsfgfsfsg', '', '', 1, NULL, NULL, 2, 'N', NULL),
	(91, 36, 0, 37, 2, 0, '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'dsfgfsfsg', '', '', 1, NULL, NULL, 3, 'N', NULL),
	(92, 34, 0, 35, 1, 0, '0', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'I am testing this', '', '', 1, NULL, NULL, 4, 'N', NULL),
	(93, 32, 0, 33, 1, 0, '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'testing this out', '', 'and so am i', 1, NULL, NULL, 5, 'N', NULL),
	(94, 45, 87, 48, 0, 0, '0', '0', '2012-10-31 00:00:00', '2012-11-02 00:00:00', '2012-11-15 00:00:00', 'hello', '', NULL, 1, NULL, 1, 6, 'N', NULL),
	(95, 46, 94, 47, 0, 0, '0', '0', '2012-11-15 00:00:00', '2012-11-15 00:00:00', '2012-11-15 00:00:00', 'hi there ', '', NULL, 1, NULL, NULL, NULL, 'N', '2012-11-15 00:00:00'),
	(96, 30, 0, 31, 2, 0, '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'simons task', '', 'do this noq', 1, NULL, NULL, 0, 'N', NULL),
	(97, 28, 0, 29, 1, 5, '7', '2', '2012-11-16 00:00:00', '2012-11-21 00:00:00', '2012-11-26 00:00:00', 'this is a task name', 'these are the task notes', '', 1, NULL, 1, NULL, 'N', NULL),
	(98, 26, 0, 27, 1, 0, '7', '2', '2012-11-05 00:00:00', '2012-11-29 00:00:00', '2012-11-29 00:00:00', 'this is a new tasking that needs to get added properly', 'hello there', '', 1, NULL, NULL, NULL, 'Y', '2012-11-18 00:00:00'),
	(99, 24, 0, 25, 0, 0, '0', '0', '2012-10-30 00:00:00', '2012-11-23 00:00:00', '2012-11-06 00:00:00', 'example task', '', '', 1, NULL, 1, NULL, 'N', NULL),
	(100, 22, 0, 23, 6, 0, '0', '0', '2012-11-09 00:00:00', '2012-11-09 00:00:00', '2012-11-09 00:00:00', 'example tasking', '', '', 1, NULL, NULL, NULL, 'N', NULL),
	(101, 20, 0, 21, 0, 0, '0', '0', '2012-11-13 00:00:00', '2012-11-13 00:00:00', '2012-11-13 00:00:00', 'hello this is a task', '', '', 1, NULL, NULL, NULL, 'N', NULL),
	(102, 18, 0, 19, 1, 0, '9', '1', '2012-11-13 00:00:00', '2012-11-28 00:00:00', '2012-11-28 00:00:00', 'this is a new task', 'theses are the notes', '', 1, NULL, NULL, NULL, 'Y', '2012-11-20 00:00:00'),
	(103, 16, 0, 17, 1, 0, '0', '0', '2012-11-14 00:00:00', '2012-11-14 00:00:00', '2012-11-14 00:00:00', 'this is a new tasking that needs to get added properly', '', '', 1, NULL, NULL, NULL, 'N', NULL),
	(104, 14, 0, 15, 0, 0, '0', '0', '2012-10-30 00:00:00', '2012-11-16 00:00:00', '2012-10-30 00:00:00', 'hello  testing now', '', '', 1, NULL, 1, NULL, 'N', NULL),
	(105, 12, 0, 13, 0, 0, '4', '2', '2012-10-29 00:00:00', '2012-11-01 00:00:00', '2012-10-30 00:00:00', 'herer is an example', '', '', 1, NULL, 1, NULL, 'N', NULL),
	(106, 10, 0, 11, 0, 0, '0', '2', '2012-11-07 00:00:00', '0000-00-00 00:00:00', '2012-10-31 00:00:00', 'there is another example123', '', '', 1, NULL, 1, NULL, 'N', NULL),
	(107, 8, 0, 9, 0, 0, '0', '2', '2012-11-01 00:00:00', '2012-11-01 00:00:00', '2012-11-01 00:00:00', 'there is an example right here y\'all', 'another fucking task...', '', 1, NULL, NULL, NULL, 'N', NULL);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;


-- Dumping structure for table my.company.tasks_to_customers
DROP TABLE IF EXISTS `tasks_to_customers`;
CREATE TABLE IF NOT EXISTS `tasks_to_customers` (
  `people_task_id` int(10) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `assign_to` int(11) DEFAULT NULL,
  `task_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `task_set_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `task_due_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `task_description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`people_task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.tasks_to_customers: ~0 rows (approximately)
DELETE FROM `tasks_to_customers`;
/*!40000 ALTER TABLE `tasks_to_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks_to_customers` ENABLE KEYS */;


-- Dumping structure for table my.company.tasks_to_users
DROP TABLE IF EXISTS `tasks_to_users`;
CREATE TABLE IF NOT EXISTS `tasks_to_users` (
  `task_to_user_id` int(10) NOT NULL AUTO_INCREMENT,
  `task_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  UNIQUE KEY `task_to_user_id` (`task_to_user_id`),
  KEY `task_to_user_id_2` (`task_to_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.tasks_to_users: ~83 rows (approximately)
DELETE FROM `tasks_to_users`;
/*!40000 ALTER TABLE `tasks_to_users` DISABLE KEYS */;
INSERT INTO `tasks_to_users` (`task_to_user_id`, `task_id`, `user_id`, `sort`) VALUES
	(10, 12, 1, 8),
	(11, 12, 1, 8),
	(12, 13, 0, NULL),
	(14, 6, 1, 8),
	(15, 14, 2, 1),
	(16, 15, 0, NULL),
	(17, 16, 1, 2),
	(18, 16, 2, NULL),
	(19, 17, 1, 1),
	(20, 17, 2, NULL),
	(21, 18, 1, 8),
	(22, 18, 2, 2),
	(23, 19, 1, 9),
	(24, 19, 2, 0),
	(27, 21, 1, 2),
	(28, 21, 2, NULL),
	(29, 22, 1, 3),
	(30, 22, 2, NULL),
	(31, 23, 1, 1),
	(32, 23, 2, NULL),
	(33, 24, 1, 5),
	(34, 24, 2, NULL),
	(35, 25, 1, 3),
	(36, 25, 2, NULL),
	(68, 20, 1, 0),
	(69, 20, 2, 0),
	(71, 27, 1, 5),
	(72, 28, 1, 3),
	(73, 29, 1, 7),
	(75, 31, 1, 3),
	(76, 31, 2, 1),
	(77, 32, 1, NULL),
	(78, 32, 6, NULL),
	(83, 33, 2, 4),
	(84, 35, 1, NULL),
	(85, 35, 6, NULL),
	(86, 35, 2, 3),
	(87, 35, 7, NULL),
	(88, 5, 1, 0),
	(89, 34, 1, 4),
	(90, 34, 6, 0),
	(91, 36, 0, NULL),
	(100, 30, 2, 5),
	(101, 30, 1, 1),
	(103, 26, 1, 2),
	(104, 37, 1, 0),
	(105, 52, 1, NULL),
	(106, 66, 0, NULL),
	(107, 67, 0, NULL),
	(108, 68, 0, NULL),
	(109, 69, 0, NULL),
	(110, 64, 0, 0),
	(111, 61, 0, 0),
	(114, 62, 0, 0),
	(115, 70, 0, NULL),
	(116, 71, 0, NULL),
	(118, 0, 1, 0),
	(119, 72, 0, NULL),
	(120, 73, 0, NULL),
	(121, 74, 0, NULL),
	(122, 75, 0, NULL),
	(123, 76, 0, NULL),
	(124, 77, 1, NULL),
	(125, 77, 2, NULL),
	(126, 94, 0, NULL),
	(127, 95, 0, NULL),
	(128, 97, 1, NULL),
	(129, 97, 6, NULL),
	(130, 98, 1, NULL),
	(131, 98, 2, NULL),
	(132, 99, 0, NULL),
	(133, 100, 1, NULL),
	(134, 100, 2, NULL),
	(135, 101, 0, NULL),
	(136, 102, 1, NULL),
	(137, 102, 2, NULL),
	(138, 103, 1, NULL),
	(139, 103, 6, NULL),
	(140, 104, 0, NULL),
	(141, 105, 0, NULL),
	(142, 106, 1, NULL),
	(143, 106, 2, NULL),
	(144, 107, 0, NULL);
/*!40000 ALTER TABLE `tasks_to_users` ENABLE KEYS */;


-- Dumping structure for table my.company.task_comments
DROP TABLE IF EXISTS `task_comments`;
CREATE TABLE IF NOT EXISTS `task_comments` (
  `task_comment_id` int(10) NOT NULL AUTO_INCREMENT,
  `task_id` int(10) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `comment_date_time` datetime DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`task_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.task_comments: ~49 rows (approximately)
DELETE FROM `task_comments`;
/*!40000 ALTER TABLE `task_comments` DISABLE KEYS */;
INSERT INTO `task_comments` (`task_comment_id`, `task_id`, `comment`, `comment_date_time`, `user_id`) VALUES
	(1, 27, 'adding a comment', NULL, 1),
	(2, 27, 'hello ', NULL, 1),
	(6, 26, 'this is another task comemnt', NULL, 1),
	(7, 26, 'and another', NULL, 1),
	(15, 31, 'This is a comment against the top level task if you would to comment back please', NULL, 1),
	(16, 32, 'this is the first comment agains the task by me', NULL, 1),
	(17, 31, 'this is a comment back simon', NULL, 1),
	(18, 31, 'His this is a comment back simon do some more work please. K', NULL, 2),
	(21, 5, 'this is a comment against a achieved tasks', NULL, 2),
	(22, 5, 'this is a comment after it has been archived', NULL, 2),
	(23, 28, ' this is the first comment against this project', NULL, 2),
	(25, 37, 'FIrst comment ', NULL, 1),
	(26, 37, 'check it out ', NULL, 1),
	(27, 67, 'this is a comment ', NULL, 1),
	(28, 67, 'and another one#', NULL, 1),
	(29, 67, 'check all this out y\'alll', NULL, 1),
	(30, 41, 'this is done!', NULL, 1),
	(31, 41, 'and this is!', NULL, 1),
	(32, 41, 'so is this ', NULL, 1),
	(33, 41, 'adding a comment', NULL, 1),
	(34, 61, 'this has not been completed guys sort it out!!', NULL, 1),
	(35, 57, 'adding a comment here if thats okay ?', NULL, 1),
	(37, 57, 'here we go again on my ownnnnn', NULL, 1),
	(38, 56, 'this is a comment ', NULL, 1),
	(40, 56, 'another comment ', NULL, 1),
	(45, 5, 'another comment ', NULL, 1),
	(46, 5, 'check this comment out ', NULL, 1),
	(47, 5, 'another comment check it out', NULL, 1),
	(48, 5, 'and another one', NULL, 1),
	(49, 5, 'you are here', NULL, 1),
	(50, 5, 'yalll', NULL, 1),
	(51, 5, 'another comment ', NULL, 1),
	(52, 5, 'uhjkjklm', NULL, 1),
	(53, 5, 'km', NULL, 1),
	(54, 71, 'time added ', NULL, 1),
	(55, 52, 'this is a comment against this task!', NULL, 1),
	(56, 52, 'and another one', NULL, 1),
	(58, 71, 'another comment ', NULL, 1),
	(59, 98, 'hello', NULL, 1),
	(60, 98, 'ther', NULL, 1),
	(61, 98, 'how ', NULL, 1),
	(62, 98, 'are', NULL, 1),
	(63, 98, 'you', NULL, 1),
	(64, 77, 'this is a comment please work ', NULL, 1),
	(65, 77, 'yeah it does seem to work', NULL, 1),
	(66, 77, 'yeah boy!!', NULL, 1),
	(67, 97, 'one comment', NULL, 1),
	(68, 97, 'antoher one', NULL, 1),
	(69, 97, 'dfsghjkl', NULL, 1);
/*!40000 ALTER TABLE `task_comments` ENABLE KEYS */;


-- Dumping structure for table my.company.task_timesheets
DROP TABLE IF EXISTS `task_timesheets`;
CREATE TABLE IF NOT EXISTS `task_timesheets` (
  `task_timesheet_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `task_id` int(10) DEFAULT NULL,
  `time_start` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `task_total_time` int(255) DEFAULT NULL,
  `status` enum('C','P','T','IC') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'IC',
  `completion_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`task_timesheet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.task_timesheets: ~100 rows (approximately)
DELETE FROM `task_timesheets`;
/*!40000 ALTER TABLE `task_timesheets` DISABLE KEYS */;
INSERT INTO `task_timesheets` (`task_timesheet_id`, `user_id`, `task_id`, `time_start`, `task_total_time`, `status`, `completion_date`) VALUES
	(6, 1, 39, '2012-10-18 21:52:18', 72000, 'P', '2012-11-03 23:40:45'),
	(7, 1, 43, '2012-10-18 22:02:37', 72000, 'C', '2012-11-03 23:40:45'),
	(8, 1, 44, '2012-10-18 22:21:07', 72000, 'P', '2012-11-03 23:40:45'),
	(9, 1, 44, '2012-10-18 22:21:52', 72000, 'P', '2012-11-03 23:40:45'),
	(10, 2, 44, '2012-10-18 22:38:12', 72000, 'C', '2012-11-03 23:40:45'),
	(11, 2, 44, '2012-10-18 22:40:55', 72000, 'C', '2012-11-03 23:40:45'),
	(12, 2, 44, '2012-10-18 22:41:18', 72000, 'C', '2012-11-03 23:40:45'),
	(13, 1, 44, '2012-10-18 22:43:42', 72000, 'P', '2012-11-03 23:40:45'),
	(14, 1, 44, '2012-10-18 22:55:08', 72000, 'P', '2012-11-03 23:40:45'),
	(15, 1, 44, '2012-10-18 22:59:54', 72000, 'P', '2012-11-03 23:40:45'),
	(16, 1, 44, '2012-10-18 23:00:58', 72000, 'P', '2012-11-03 23:40:45'),
	(17, 1, 40, '2012-10-18 23:01:15', 72000, 'IC', '2012-11-03 23:40:45'),
	(18, 1, 38, '2012-10-18 23:01:28', 72000, 'IC', '2012-11-03 23:40:45'),
	(19, 1, 5, '2012-10-18 23:01:58', 72000, 'C', '2012-11-03 23:40:45'),
	(20, 1, 40, '2012-10-18 23:02:33', 72000, 'IC', '2012-11-03 23:40:45'),
	(21, 1, 44, '2012-10-18 23:12:56', 72000, 'P', '2012-11-03 23:40:45'),
	(22, 1, 44, '2012-10-18 23:13:11', 72000, 'P', '2012-11-03 23:40:45'),
	(23, 1, 44, '2012-10-18 23:13:25', 72000, 'P', '2012-11-03 23:40:45'),
	(24, 1, 56, '2012-10-22 19:29:59', 72000, 'C', '2012-11-03 23:40:45'),
	(25, 1, 56, '2012-10-22 19:32:14', 72000, 'C', '2012-11-03 23:40:45'),
	(26, 1, 56, '2012-10-22 19:35:22', 72000, 'C', '2012-11-03 23:40:45'),
	(27, 1, 56, '2012-10-22 19:35:35', 72000, 'C', '2012-11-03 23:40:45'),
	(28, 1, 56, '2012-10-22 19:35:35', 72000, 'C', '2012-11-03 23:40:45'),
	(29, 1, 56, '2012-10-22 19:35:49', 72000, 'C', '2012-11-03 23:40:45'),
	(30, 1, 68, '2012-10-22 19:39:31', 72000, 'P', '2012-11-03 23:40:45'),
	(31, 1, 68, '2012-10-22 19:39:56', 72000, 'P', '2012-11-03 23:40:45'),
	(32, 1, 68, '2012-10-22 19:39:58', 72000, 'P', '2012-11-03 23:40:45'),
	(33, 1, 68, '2012-10-22 19:40:00', 72000, 'P', '2012-11-03 23:40:45'),
	(34, 1, 62, '2012-10-22 19:41:20', 72000, 'P', '2012-11-03 23:40:45'),
	(35, 1, 62, '2012-10-22 19:42:40', 72000, 'P', '2012-11-03 23:40:45'),
	(36, 1, 62, '2012-10-22 19:42:49', 72000, 'P', '2012-11-03 23:40:45'),
	(37, 1, 66, '2012-10-22 19:46:57', 72000, 'P', '2012-11-03 23:40:45'),
	(38, 1, 66, '2012-10-22 19:48:36', 72000, 'P', '2012-11-03 23:40:45'),
	(39, 1, 66, '2012-10-22 19:49:01', 72000, 'P', '2012-11-03 23:40:45'),
	(40, 1, 66, '2012-10-22 19:49:11', 72000, 'P', '2012-11-03 23:40:45'),
	(41, 1, 68, '2012-10-22 19:52:50', 72000, 'IC', '2012-11-03 23:40:45'),
	(42, 1, 68, '2012-10-22 20:01:44', 72000, 'IC', '2012-11-03 23:40:45'),
	(43, 1, 62, '2012-10-22 20:02:57', 72000, 'P', '2012-11-03 23:40:45'),
	(44, 1, 62, '2012-10-22 20:03:18', 72000, 'P', '2012-11-03 23:40:45'),
	(45, 1, 68, '2012-10-22 20:03:44', 72000, 'IC', '2012-11-03 23:40:45'),
	(46, 1, 69, '2012-10-22 20:04:23', 72000, 'IC', '2012-11-03 23:40:45'),
	(47, 1, 66, '2012-10-22 20:04:56', 72000, 'IC', '2012-11-03 23:40:45'),
	(48, 1, 5, '2012-10-22 20:05:27', 72000, 'C', '2012-11-03 23:40:45'),
	(49, 1, 5, '2012-10-22 20:05:48', 72000, 'C', '2012-11-03 23:40:45'),
	(50, 1, 56, '2012-10-22 20:26:25', 72000, 'C', '2012-11-03 23:40:45'),
	(51, 1, 56, '2012-10-22 21:14:59', 72000, 'C', '2012-11-03 23:40:45'),
	(52, 1, 57, '2012-10-22 21:15:52', 72000, 'C', '2012-11-03 23:40:45'),
	(53, 1, 57, '2012-10-22 21:16:03', 72000, 'C', '2012-11-03 23:40:45'),
	(54, 1, 57, '2012-10-22 21:19:43', 72000, 'C', '2012-11-03 23:40:45'),
	(55, 1, 57, '2012-10-22 21:21:13', 72000, 'C', '2012-11-03 23:40:45'),
	(56, 1, 57, '2012-10-22 21:21:18', 72000, 'C', '2012-11-03 23:40:45'),
	(57, 1, 66, '2012-10-22 21:29:51', 72000, 'C', '2012-11-03 23:40:45'),
	(58, 1, 43, '2012-10-22 21:30:11', 72000, 'C', '2012-11-03 23:40:45'),
	(59, 1, 43, '2012-10-22 21:30:26', 72000, 'C', '2012-11-03 23:40:45'),
	(60, 1, 56, '2012-10-22 23:09:24', 72000, 'C', '2012-11-03 23:40:45'),
	(61, 1, 5, '2012-10-22 23:44:51', 72000, 'C', '2012-11-03 23:40:45'),
	(62, 1, 5, '2012-10-23 23:28:59', 72000, 'C', '2012-11-03 23:40:45'),
	(63, 1, 5, '2012-10-23 23:38:14', 72000, 'C', '2012-11-03 23:40:45'),
	(64, 1, 71, '2012-10-23 23:42:48', 72000, 'C', '2012-11-03 23:40:45'),
	(65, 1, 5, '2012-10-24 23:21:10', 72000, 'C', '2012-11-03 23:40:45'),
	(66, 1, 5, '2012-10-24 23:22:51', 72000, 'C', '2012-11-03 23:40:45'),
	(67, 1, 62, '2012-10-24 23:23:52', 72000, 'P', '2012-11-03 23:40:45'),
	(68, 1, 5, '2012-10-24 23:24:30', 72000, 'C', '2012-11-03 23:40:45'),
	(69, 1, 5, '2012-10-24 23:25:00', 72000, 'C', '2012-11-03 23:40:45'),
	(70, 1, 5, '2012-10-24 23:25:51', 72000, 'C', '2012-11-03 23:40:45'),
	(71, 1, 5, '2012-10-24 23:26:22', 72000, 'C', '2012-11-03 23:40:45'),
	(72, 1, 5, '2012-10-24 23:28:48', 72000, 'C', '2012-11-03 23:40:45'),
	(73, 1, 65, '2012-10-24 23:36:30', 72000, 'IC', '2012-11-03 23:40:45'),
	(74, 1, 67, '2012-10-24 23:47:04', 72000, 'P', '2012-11-03 23:40:45'),
	(75, 1, 5, '2012-10-24 23:52:51', 72000, 'C', '2012-11-03 23:40:45'),
	(76, 1, 5, '2012-10-24 23:53:06', 72000, 'C', '2012-11-03 23:40:45'),
	(77, 1, 5, '2012-10-24 23:53:35', 72000, 'C', '2012-11-03 23:40:45'),
	(78, 1, 5, '2012-10-24 23:53:49', 72000, 'C', '2012-11-03 23:40:45'),
	(79, 1, 5, '2012-10-25 19:25:57', 72000, 'C', '2012-11-03 23:40:45'),
	(80, 1, 5, '2012-10-25 19:49:26', 72000, 'C', '2012-11-03 23:40:45'),
	(81, 1, 5, '2012-10-25 19:49:39', 72000, 'C', '2012-11-03 23:40:45'),
	(83, 1, 5, '2012-10-26 23:19:23', 72000, 'C', '2012-11-03 23:40:45'),
	(85, 1, 5, '2012-10-26 23:19:36', 72000, 'C', '2012-11-03 23:40:45'),
	(86, 1, 5, '2012-10-26 23:19:37', 72000, 'C', '2012-11-03 23:40:45'),
	(87, 1, 5, '2012-10-26 23:19:41', 86400, 'C', '2012-11-01 23:43:41'),
	(88, 1, 5, '2012-10-26 23:19:51', 72000, 'C', '2012-11-05 23:43:18'),
	(89, 1, 5, '2012-10-26 23:20:01', 72000, 'C', '2012-11-03 23:40:45'),
	(90, 1, 5, '2012-10-26 23:28:38', 72000, 'C', '2012-11-03 23:40:45'),
	(91, 1, 5, '2012-10-26 23:45:20', 72000, 'C', '2012-11-03 23:40:45'),
	(92, 1, 5, '2012-10-26 23:45:21', 72000, 'C', '2012-11-03 23:40:45'),
	(93, 1, 71, '2012-10-27 00:02:32', 72000, 'C', '2012-11-03 23:40:45'),
	(94, 1, 52, '2012-10-27 10:47:36', 72000, 'C', '2012-11-03 23:40:45'),
	(95, 1, 71, '2012-10-30 22:30:51', 72000, 'C', '2012-11-03 23:40:45'),
	(96, 1, 71, '2012-10-30 22:30:56', 72000, 'C', '2012-11-03 23:40:45'),
	(97, 1, 71, '2012-10-30 22:30:59', 72000, 'C', '2012-11-03 23:40:45'),
	(98, 1, 71, '2012-11-03 11:29:38', 72000, 'C', '2012-11-03 23:40:45'),
	(99, 1, 71, '2012-11-03 11:36:54', 72000, 'C', '2012-11-03 23:40:45'),
	(104, 1, 0, '2012-11-03 12:04:11', 72000, 'C', '2012-11-03 23:40:45'),
	(105, 1, 0, '2012-11-03 12:12:39', 72000, 'C', '2012-11-03 23:40:45'),
	(106, 1, 58, '2012-11-03 20:39:12', 72000, 'C', '2012-11-03 23:40:45'),
	(107, 1, 0, '2012-11-03 23:41:50', 7200, 'C', '2012-11-03 23:41:50'),
	(108, 1, 98, '2012-11-18 00:55:20', 7200, 'C', '2012-11-18 00:55:20'),
	(109, 1, 98, '2012-11-18 00:55:23', 30, 'C', '2012-11-18 00:55:23'),
	(110, 1, 98, '2012-11-18 00:55:25', 30, 'C', '2012-11-18 00:55:25'),
	(111, 1, 98, '2012-11-18 00:55:28', 63, 'C', NULL);
/*!40000 ALTER TABLE `task_timesheets` ENABLE KEYS */;


-- Dumping structure for table my.company.task_type
DROP TABLE IF EXISTS `task_type`;
CREATE TABLE IF NOT EXISTS `task_type` (
  `task_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`task_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.task_type: ~13 rows (approximately)
DELETE FROM `task_type`;
/*!40000 ALTER TABLE `task_type` DISABLE KEYS */;
INSERT INTO `task_type` (`task_type_id`, `name`) VALUES
	(2, 'development'),
	(3, 'Wordpress Plugin Installation'),
	(4, 'Wordpress Plugin Installation'),
	(5, 'Wordpress Plugin Installation'),
	(6, 'new task type'),
	(7, 'new task type'),
	(8, 'new task type 2'),
	(9, 'new task types'),
	(10, 'new task type - simon'),
	(11, 'sagepay'),
	(12, 'Simons Top level task type'),
	(13, 'a new task type just for this'),
	(14, 'a new tasking');
/*!40000 ALTER TABLE `task_type` ENABLE KEYS */;


-- Dumping structure for table my.company.task_types
DROP TABLE IF EXISTS `task_types`;
CREATE TABLE IF NOT EXISTS `task_types` (
  `task_type_id` int(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.task_types: ~3 rows (approximately)
DELETE FROM `task_types`;
/*!40000 ALTER TABLE `task_types` DISABLE KEYS */;
INSERT INTO `task_types` (`task_type_id`, `name`) VALUES
	(NULL, 'logo'),
	(NULL, 'development'),
	(NULL, 'hosting');
/*!40000 ALTER TABLE `task_types` ENABLE KEYS */;


-- Dumping structure for table my.company.tissue_categories
DROP TABLE IF EXISTS `tissue_categories`;
CREATE TABLE IF NOT EXISTS `tissue_categories` (
  `Tissue_Category_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Tissue_Category_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.tissue_categories: ~3 rows (approximately)
DELETE FROM `tissue_categories`;
/*!40000 ALTER TABLE `tissue_categories` DISABLE KEYS */;
INSERT INTO `tissue_categories` (`Tissue_Category_ID`, `Name`, `Description`) VALUES
	(1, 'Necrotic', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed '),
	(2, 'Granulating', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed '),
	(3, 'Third Type', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed ');
/*!40000 ALTER TABLE `tissue_categories` ENABLE KEYS */;


-- Dumping structure for table my.company.tissue_status
DROP TABLE IF EXISTS `tissue_status`;
CREATE TABLE IF NOT EXISTS `tissue_status` (
  `tissue_status_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tissue_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.tissue_status: ~2 rows (approximately)
DELETE FROM `tissue_status`;
/*!40000 ALTER TABLE `tissue_status` DISABLE KEYS */;
INSERT INTO `tissue_status` (`tissue_status_id`, `name`) VALUES
	(1, 'new'),
	(2, 'old');
/*!40000 ALTER TABLE `tissue_status` ENABLE KEYS */;


-- Dumping structure for table my.company.tissue_subcategories
DROP TABLE IF EXISTS `tissue_subcategories`;
CREATE TABLE IF NOT EXISTS `tissue_subcategories` (
  `Tissue_Subcategory_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Tissue_Category_ID` int(10) DEFAULT NULL,
  `Exuldate_Level` enum('high','medium','low') COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Tissue_Subcategory_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.tissue_subcategories: ~9 rows (approximately)
DELETE FROM `tissue_subcategories`;
/*!40000 ALTER TABLE `tissue_subcategories` DISABLE KEYS */;
INSERT INTO `tissue_subcategories` (`Tissue_Subcategory_ID`, `Tissue_Category_ID`, `Exuldate_Level`, `Image`) VALUES
	(1, 1, 'high', 'example_1_1.png'),
	(2, 1, 'medium', 'example_2_1.png'),
	(3, 1, 'low', 'example_3_1.png'),
	(4, 2, 'high', 'example_1_2.png'),
	(5, 2, 'medium', 'example_2_2.png'),
	(6, 2, 'low', 'example_3_2.png'),
	(7, 3, 'high', 'example_1_3.png'),
	(8, 3, 'medium', 'example_2_3.png'),
	(9, 3, 'low', 'example_3_3.png');
/*!40000 ALTER TABLE `tissue_subcategories` ENABLE KEYS */;


-- Dumping structure for table my.company.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `is_logged_in` enum('Y','N') DEFAULT 'N',
  `privilage` int(10) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table my.company.users: ~10 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_id`, `name`, `email`, `display_name`, `password`, `phone`, `bio`, `twitter`, `is_logged_in`, `privilage`, `color`, `image`) VALUES
	(1, 'Simon Fletcher', 'simon@logicdesign.co.uk', 'SFletcher', '041529ab9a34a072fe9ac57db4e088ff2602a83d', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', NULL, 'Y', 4, '#000', '300x200.gif'),
	(2, 'Keith Bradley', 'keith@logicdesign.co.uk', 'KBradley', 'a5feda985b8fafe7fad17aca9c4265a9bab6113d', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', NULL, 'N', 5, '#FFF', '300x200.gif'),
	(3, 'Howie Connelberry', 'howie@logicdesign.co.uk', 'HConnelberry', 'a5feda985b8fafe7fad17aca9c4265a9bab6113d', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', NULL, 'Y', 5, '#a5a5a5', '300x200.gif'),
	(4, 'Sam Hunt', 'sam@logicdesign.co.uk', 'SHunt', 'b12a426afd2940f0b5020f2784a0a186de7e0069', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', NULL, 'N', 1, '#a5a5a5', ''),
	(5, 'Darren Smith', 'darren@logicdesign.co.uk', 'D.Smith', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', NULL, 'N', 2, '#rrr', ''),
	(6, 'Finn Johnston', 'finn@logicdesign.co.uk', 'F.Johnston', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', NULL, 'N', 3, '#a5a5a5', ''),
	(7, 'Adam Howson', 'adam@logicdesign.co.uk', 'A.Howson', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', NULL, 'N', 5, '#d5d5d5', '300x200.gif'),
	(8, 'Charlie Robinson', 'charlie@logicdesign.co.uk', 'charlRob', 'logicdesign123', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', NULL, 'N', NULL, '#a7a7a7', '300x200.gif'),
	(9, 'Shaun Palfrey', 'shaun@logicdesign.co.uk', 'shaunpalfrey', 'logicdesign.co.uk', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', NULL, 'N', NULL, '#f2f2f2', '300x200.gif'),
	(10, 's Fletcher', 'simon@logicdesign.co.uk', 'sfletcher', '7d91b5a937dd80bd82cabd4db77d6f0c0fe4a82a', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', NULL, 'N', NULL, 'red', '300x200.gif');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table my.company.users_to_group
DROP TABLE IF EXISTS `users_to_group`;
CREATE TABLE IF NOT EXISTS `users_to_group` (
  `user_to_group_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `group_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`user_to_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.users_to_group: ~7 rows (approximately)
DELETE FROM `users_to_group`;
/*!40000 ALTER TABLE `users_to_group` DISABLE KEYS */;
INSERT INTO `users_to_group` (`user_to_group_id`, `user_id`, `group_id`) VALUES
	(1, 1, 4),
	(2, 2, 4),
	(3, 3, 2),
	(4, 4, 1),
	(5, 5, 2),
	(6, 6, 3),
	(7, 7, 3);
/*!40000 ALTER TABLE `users_to_group` ENABLE KEYS */;


-- Dumping structure for table my.company.user_groups
DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE IF NOT EXISTS `user_groups` (
  `group_id` int(10) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table my.company.user_groups: ~5 rows (approximately)
DELETE FROM `user_groups`;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` (`group_id`, `group_name`) VALUES
	(1, 'Account Manager'),
	(2, 'Media Consultant'),
	(3, 'Designer'),
	(4, 'Developer'),
	(5, 'Manager');
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;


-- Dumping structure for table my.company.websites
DROP TABLE IF EXISTS `websites`;
CREATE TABLE IF NOT EXISTS `websites` (
  `website_id` int(10) NOT NULL AUTO_INCREMENT,
  `business_id` int(10) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table my.company.websites: ~0 rows (approximately)
DELETE FROM `websites`;
/*!40000 ALTER TABLE `websites` DISABLE KEYS */;
/*!40000 ALTER TABLE `websites` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
