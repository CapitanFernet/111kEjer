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


DROP SCHEMA IF EXISTS ej5plan111K;
CREATE SCHEMA ej5plan111K;
USE ej5plan111K;	

--
-- Table structure for table `ejercicio3`.`afiliado`
--

DROP TABLE IF EXISTS curso;
CREATE TABLE curso (
  nombre_curso varchar(40) NOT NULL ,
  descripcion varchar(255) NOT NULL default '',
  cantidad_maxima_alumnos integer NOT NULL default 0,
  PRIMARY KEY  (nombre_curso)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ejercicio3`.`afiliado`
--

/*!40000 ALTER TABLE curso DISABLE KEYS */;
INSERT INTO curso  VALUES
 ('matematica','Matemática general',20),
 ('Ingles','Ingles general',30),
 ('Biologia','Biología Introductoria',10),
 ('Plastica','Repaso de Plastica',15);

 /*!40000 ALTER TABLE curso ENABLE KEYS */;


--
-- Table structure for table `ejercicio3`.`articulo`
--

DROP TABLE IF EXISTS alumno;
CREATE TABLE alumno (
  dni varchar(15)  NOT NULL,
  nombre_y_apellido varchar(145) NOT NULL default '',
  direccion varchar(100) NOT NULL default '',
  PRIMARY KEY  (dni)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



/*!40000 ALTER TABLE alumno DISABLE KEYS */;
INSERT INTO alumno  VALUES
 ('23545688','Carlos Gonzalez','San Martin 946'),
 ('21542382','Juan Darto','San Juan 146'),
 ('33543618','Diero Ramirez','Constitución 1200');
/*!40000 ALTER TABLE alumno ENABLE KEYS */;



DROP TABLE IF EXISTS realiza;
CREATE TABLE realiza (
  nombre_curso varchar(40) NOT NULL default '',
  dni varchar(15) NOT NULL default '',
  nota numeric(4,2) NOT NULL default '0.0',
  PRIMARY KEY  (nombre_curso,dni)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*!40000 ALTER TABLE realiza DISABLE KEYS */;
INSERT INTO realiza  VALUES
 ('matematica','23545688','4.8'),
 ('matematica','21542382','10'),
 ('Biologia','23545688','7.5'),
 ('Biologia','33543618','8.9'),
 ('Ingles','33543618','5.9'),
 ('matematica','33543618','4.8');
/*!40000 ALTER TABLE realiza ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
