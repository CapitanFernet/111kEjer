-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.19-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ej3plan111K
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ ej3plan111K;
USE ej3plan111K;

--
-- Table structure for table `ej3plan111K`.`frecuenta`
--

DROP TABLE IF EXISTS `frecuenta`;
CREATE TABLE `frecuenta` (
  `bebedor` varchar(45) NOT NULL,
  `bar` varchar(45) NOT NULL,
  PRIMARY KEY  (`bebedor`,`bar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ej3plan111K`.`frecuenta`
--

/*!40000 ALTER TABLE `frecuenta` DISABLE KEYS */;
INSERT INTO `frecuenta` (`bebedor`,`bar`) VALUES 
 ('ariel','elvis'),
 ('ariel','mil demonios'),
 ('juan','elvis'),
 ('juan','la barraca'),
 ('pedro','mil demonios'),
 ('pepe','la barraca');
/*!40000 ALTER TABLE `frecuenta` ENABLE KEYS */;


--
-- Table structure for table `ej3plan111K`.`legusta`
--

DROP TABLE IF EXISTS `legusta`;
CREATE TABLE `legusta` (
  `bebedor` varchar(45) NOT NULL,
  `cerveza` varchar(45) NOT NULL,
  PRIMARY KEY  (`bebedor`,`cerveza`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ej3plan111K`.`legusta`
--

/*!40000 ALTER TABLE `legusta` DISABLE KEYS */;
INSERT INTO `legusta` (`bebedor`,`cerveza`) VALUES 
 ('ariel','guines'),
 ('juan','iguana'),
 ('juan','quilmes'),
 ('pedro','brahma'),
 ('pedro','quilmes'),
 ('pepe','stella');
/*!40000 ALTER TABLE `legusta` ENABLE KEYS */;


--
-- Table structure for table `ej3plan111K`.`sirve`
--

DROP TABLE IF EXISTS `sirve`;
CREATE TABLE `sirve` (
  `bar` varchar(45) NOT NULL,
  `cerveza` varchar(45) NOT NULL,
  PRIMARY KEY  (`bar`,`cerveza`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ej3plan111K`.`sirve`
--

/*!40000 ALTER TABLE `sirve` DISABLE KEYS */;
INSERT INTO `sirve` (`bar`,`cerveza`) VALUES 
 ('elvis','iguana'),
 ('elvis','quilmes'),
 ('elvis','stella'),
 ('la barraca','quilmes'),
 ('mil demonios','guines');
/*!40000 ALTER TABLE `sirve` ENABLE KEYS */;

