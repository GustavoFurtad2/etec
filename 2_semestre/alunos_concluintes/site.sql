DROP DATABASE IF EXISTS `db`;
CREATE DATABASE `db`;

CREATE TABLE  `db`.`alunoconcluinte` (
  `idalunoconcluinte` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `nota1` FLOAT NOT NULL,
  `nota2` FLOAT NOT NULL,
  `nota3` FLOAT NOT NULL,
  `nota4` FLOAT NOT NULL,
  PRIMARY KEY (`idalunoconcluinte`)
);

USE `db`;

INSERT INTO `db`.`alunoconcluinte` (`nome`, `nota1`, `nota2`, `nota3`, `nota4`) VALUES ('Eduarda', '10', '10', '9', '10');
INSERT INTO `db`.`alunoconcluinte` (`nome`, `nota1`, `nota2`, `nota3`, `nota4`) VALUES ('Paulo', '10', '9', '8', '9');
INSERT INTO `db`.`alunoconcluinte` (`nome`, `nota1`, `nota2`, `nota3`, `nota4`) VALUES ('Igo', '10', '8', '10', '10');
INSERT INTO `db`.`alunoconcluinte` (`nome`, `nota1`, `nota2`, `nota3`, `nota4`) VALUES ('Guilherm', '10', '9', '8', '7');
INSERT INTO `db`.`alunoconcluinte` (`nome`, `nota1`, `nota2`, `nota3`, `nota4`) VALUES ('Henrique', '9', '9', '8', '7');
INSERT INTO `db`.`alunoconcluinte` (`nome`, `nota1`, `nota2`, `nota3`, `nota4`) VALUES ('Nilson', '10', '9', '10', '9');
INSERT INTO `db`.`alunoconcluinte` (`nome`, `nota1`, `nota2`, `nota3`, `nota4`) VALUES ('Ana', '9', '9', '8', '8');
INSERT INTO `db`.`alunoconcluinte` (`nome`, `nota1`, `nota2`, `nota3`, `nota4`) VALUES ('Amanda', '8', '9', '9', '8');
INSERT INTO `db`.`alunoconcluinte` (`nome`, `nota1`, `nota2`, `nota3`, `nota4`) VALUES ('Carlos', '6', '6', '5', '6');
INSERT INTO `db`.`alunoconcluinte` (`nome`, `nota1`, `nota2`, `nota3`, `nota4`) VALUES ('Pedro', '8', '8', '8', '7');

SHOW COLUMNS FROM `alunoconcluinte`; 

SELECT * FROM `alunoconcluinte`;
