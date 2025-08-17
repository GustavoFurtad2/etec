CREATE DATABASE IF NOT EXISTS Biblioteca;
USE Biblioteca;

CREATE TABLE Filial (

	codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    enderecoLogradouro VARCHAR(100) NOT NULL,
	enderecoNumero VARCHAR(10) NOT NULL,
    enderecoBairo VARCHAR(50) NOT NULL,
    enderecoCidade VARCHAR(50) NOT NULL,
    enderecoUf CHAR(2) NOT NULL,
    enderecoCep CHAR(8) NOT NULL,
    telefone VARCHAR(15) 
);

CREATE TABLE Livro (
 
    ISBN CHAR(13) PRIMARY KEY,
  	titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao YEAR NOT NULL,
    editora VARCHAR(100) NOT NULL,
    numero_exemplares INT NOT NULL DEFAULT 1,
    genero_literario VARCHAR(50) NOT NULL,
    filial_codigo INT NOT NULL,
    FOREIGN KEY (filial_codigo) REFERENCES Filial(codigo)
);