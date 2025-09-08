CREATE DATABASE BDLIVRARIA;
USE BDLIVRARIA;

CREATE TABLE autor (
	id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome_autor VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50)
);

CREATE TABLE editora (
	id_editora INT PRIMARY KEY AUTO_INCREMENT,
    nome_editora VARCHAR(100) NOT NULL
);

CREATE TABLE livro (
	id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    ano_publicacao INT,
    preco DECIMAL(10, 2) NOT NULL,
    id_autor INT,
    id_editora INT,
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
    FOREIGN KEY (id_editora) REFERENCES editora(id_editora)
);

CREATE TABLE venda (
	id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_livro INT,
    data_venda DATE NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

INSERT INTO autor (nome_autor, nacionalidade) VALUES
('Carlos Drummond de Andrade', 'Brasileira'),
('Clarice Lispector', 'Brasileira'),
('George Orwell', 'Britânica'),
('J.R.R Tolkien', 'Britânica'),
('Isaac Asimov', 'Russa'),
('Machado de Assis', 'Brasileira'),
('Stephen King', 'Americana'),
('Agatha Christie', 'Britânica');

INSERT INTO editora (nome_editora) VALUES
('Companhia das Letras'),
('Editora Rocco'),
('Aleph');

INSERT INTO livro (titulo, ano_publicacao, preco, id_autor, id_editora) VALUES
('A Revolução dos Bichos', 1945, 35.50, 3, 1),
('O Senhor dos Anéis', 1954, 120.00, 4, 2),
('Eu, Robô', 1950, 45.90, 5, 3),
('Dom Casmurro', 1899, 29.90, 6, 1),
('It: A Coisa', 1986, 89.90, 7, 2),
('O Assassinato no Expresso do Oriente', 1934, 39.99, 8, 1),
('A Hora da Estrela', 1977, 25.00, 2, 2),
('SQL para Iniciantes', 2023, 75.00, 1, 3),
('Fundamentos de Banco de Dados', 2024, 95.50, 3, 3),
('O Iluminado', 1977, 65.00, 7, 2);

INSERT INTO venda (id_livro, data_venda, quantidade) VALUES
(1, '2025-08-10', 2),
(3, '2025-08-10', 1),
(5, '2025-08-11', 3),
(2, '2025-08-12', 1),
(8, '2025-08-13', 5),
(9, '2025-08-14', 2),
(1, '2025-08-15', 1),
(4, '2025-08-16', 2),
(7, '2025-08-17', 1),
(10, '2025-08-18', 4),
(2, '2025-08-19', 1),
(8, '2025-08-20', 3),
(3, '2025-08-21', 2),
(6, '2025-08-22', 1),
(5, '2025-08-23', 2);

SELECT titulo, ano_publicacao
FROM livro
WHERE ano_publicacao >= 2010;

SELECT titulo, preco
FROM livro
ORDER BY preco DESC;

SELECT DISTINCT nacionalidade
FROM autor;

SELECT l.titulo, a.nome_autor
FROM livro l
JOIN autor a ON l.id_autor = a.id_autor;

SELECT v.data_venda, v.quantidade, l.titulo
FROM venda v
JOIN livro l ON v.id_livro = l.id_livro;

SELECT MAX(preco) AS maior_preco,
	   MIN(preco) AS menor_preco,
       AVG(preco) as preco_medio
FROM livro;

SELECT e.nome_editora, COUNT(l.id_livro) AS total_livros
FROM editora e
LEFT JOIN livro l ON e.id_editora = l.id_editora
GROUP BY e.nome_editora;