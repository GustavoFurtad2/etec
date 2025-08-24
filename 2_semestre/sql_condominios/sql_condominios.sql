create database bd_agenda3;

use bd_agenda3;

create table condominio (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) not NULL,
	endereco VARCHAR(200) not NULL
);

create table sindico (
	matricula INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    telefone VARCHAR(20),
    condominio_id INT UNIQUE,
    FOREIGN KEY (condominio_id) REFERENCES condominio(id)
);

create table apartamento (
	id INT AUTO_INCREMENT PRIMARY KEY
	numero INT NOT NULL,
    tipo ENUM('PADRAO', 'COBERTURA') NOT NULL,
    apartamento_id INT UNIQUE,
    FOREIGN KEY (apartamento_id) REFERENCES apartamento(id)
);

CREATE TABLE Proprietario (
	rg VARCHAR(20) PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	telefone VARCHAR(20),
	email VARCHAR(100)
);

CREATE TABLE proprietario_apartamento (
	proprietario_rg VARCHAR(20),
    apartamento_id INT,
    PRIMARY KEY (proprietario_rg, apartamento_id),
    FOREIGN KEY (proprietario_rg) REFERENCES proprietario(rg),
    FOREIGN KEY (apartamento_id) REFERENCES apartamento(id)
);