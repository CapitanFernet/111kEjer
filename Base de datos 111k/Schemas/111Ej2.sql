--
-- Create schema ej2plan111K
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ ej2plan111K;
USE ej2plan111K;

--
-- Table structure for table `ej2plan111K`.`pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
CREATE TABLE `pelicula` (
  `nro_pelicula` int(10) unsigned NOT NULL auto_increment,
  `titulo` varchar(45) NOT NULL default '',
  `estilo` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`nro_pelicula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ej2plan111K`.`pelicula`
--

/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` (`nro_pelicula`,`titulo`,`estilo`) VALUES 
 (1,'EL SECRETO DE TUS OJOS','DRAMA'),
 (2,'EL REY LEON','DIBUJOS ANIMADOS'),
 (3,'LA FAMILIA DE MI NOVIA','COMEDIA');
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;


--
-- Table structure for table `ej2plan111K`.`proyeccion`
--

DROP TABLE IF EXISTS `proyeccion`;
CREATE TABLE `proyeccion` (
  `nro_sala` int(10) unsigned NOT NULL default '0',
  `nro_pelicula` int(10) unsigned NOT NULL default '0',
  `fecha_proyeccion` date NOT NULL default '1111-11-11',
  PRIMARY KEY  (`nro_sala`,`nro_pelicula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ej2plan111K`.`proyeccion`
--

/*!40000 ALTER TABLE `proyeccion` DISABLE KEYS */;
INSERT INTO `proyeccion` (`nro_sala`,`nro_pelicula`,`fecha_proyeccion`) VALUES 
 (1,1,'2008-12-11'),
 (1,2,'2007-12-11'),
 (2,1,'2009-12-10');
/*!40000 ALTER TABLE `proyeccion` ENABLE KEYS */;


--
-- Table structure for table `ej2plan111K`.`sala`
--

DROP TABLE IF EXISTS `sala`;
CREATE TABLE `sala` (
  `nro_sala` int(10) unsigned NOT NULL auto_increment,
  `piso` int(10) unsigned NOT NULL default '0',
  `capacidad` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`nro_sala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ej2plan111K`.`sala`
--

/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` (`nro_sala`,`piso`,`capacidad`) VALUES
 (1,1,19),
 (2,1,50),
 (3,3,60);
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
