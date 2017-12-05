
DROP SCHEMA IF EXISTS ej4plan111K;
CREATE SCHEMA ej4plan111K;
USE ej4plan111K;	

CREATE TABLE `ej4plan111K`.`deporte` (
  `cod_deporte` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `denominacion` VARCHAR(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`cod_deporte`)
)
ENGINE = InnoDB;

CREATE TABLE `ej4plan111K`.`competidor` (
  `nro_competidor` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `pais` VARCHAR(25) NOT NULL DEFAULT '',
  `anio` INTEGER(4) UNSIGNED NOT NULL,
  `nombre` VARCHAR(45) NOT NULL DEFAULT '',
  `cod_deporte` INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY (`nro_competidor`),
  CONSTRAINT `FK_competidor_1` FOREIGN KEY `FK_competidor_1` (`cod_deporte`)
    REFERENCES `deporte` (`cod_deporte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;

CREATE TABLE `ej4plan111K`.`medalla` (
  `pais` VARCHAR(25) NOT NULL DEFAULT '',
  `tipo_medalla` VARCHAR(6) NOT NULL DEFAULT '',
  `anio` INTEGER(4) UNSIGNED NOT NULL,
  `cantidad` INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY (`pais`, `tipo_medalla`, `anio`)
)
ENGINE = InnoDB;


CREATE TABLE `ej4plan111K`.`competicion` (
  `pais` VARCHAR(25) NOT NULL DEFAULT '',
  `cod_deporte` INTEGER UNSIGNED NOT NULL,
  `anio` INTEGER(4) UNSIGNED NOT NULL,
  PRIMARY KEY (`pais`, `cod_deporte`, `anio`),
  CONSTRAINT `FK_competicion_1` FOREIGN KEY `FK_competicion_1` (`cod_deporte`)
    REFERENCES `deporte` (`cod_deporte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;

INSERT INTO deporte VALUES
 (1,'SALTO EN LARGO'),
 (2,'SALTO EN ALTO'),
 (3,'CARRERA 100 MTS'),
 (4,'CARRERA 200 MTS'),
 (5,'CARRERA 100 MTS CON OBSTACULOS'),
 (6,'NATACION');

INSERT INTO competidor VALUES
 (1,'ARGENTINA',2000,'PEDRO',1),
 (2,'ARGENTINA',2000,'JUAN',1),
 (3,'ARGENTINA',2000,'JOSE',1),
 (4,'ARGENTINA',2000,'JUAN',2),
 (5,'BRASIL',2001,'MARTIN',5),
 (6,'BRASIL',2001,'PEDRO',5),
 (7,'BRASIL',2001,'ALBERTO',5),
 (8,'URUGUAY',2002,'MARTIN',5),
 (9,'URUGUAY',2002,'PEDRO',4),
 (10,'URUGUAY',2002,'PEDRO',3),
 (11,'ARGENTINA',2000,'PEDRO',2),
 (12,'ARGENTINA',2003,'JOSE',6),
 (13,'URUGUAY',2003,'MARTIN',6),
 (14,'BRASIL',2003,'PEDRO',6);

INSERT INTO competicion VALUES
 ('ARGENTINA',1,2000),
 ('ARGENTINA',2,2000),
 ('ARGENTINA',6,2003),
 ('BRASIL',5,2001),
 ('BRASIL',6,2003),
 ('URUGUAY',3,2002),
 ('URUGUAY',4,2002),
 ('URUGUAY',5,2002),
 ('URUGUAY',6,2003);

INSERT INTO medalla VALUES
 ('ARGENTINA','PLATA',2000,1),
 ('ARGENTINA','BRONCE',2000,1),
 ('URUGUAY','BRONCE',2002,1),
 ('BRASIL','ORO',2000,1),
 ('BRASIL','PLATA',2003,1);
