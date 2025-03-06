CREATE DATABASE biblioteca_uirapuru;

USE biblioteca_uirapuru;

CREATE TABLE livros (
	id INT PRIMARY KEY,
    titulo VARCHAR(255),
	autor VARCHAR(255),
    preco DECIMAL(10, 2),
    editora VARCHAR (255),
    genero VARCHAR(255),
    ano_publicacao INT
);

ALTER TABLE livros DROP genero;

ALTER TABLE livros DROP editora;

ALTER TABLE livros ADD CNPJ INT;

ALTER TABLE livros MODIFY CNPJ VARCHAR(25);

ALTER TABLE livros MODIFY autor VARCHAR(255) NOT NULL;
ALTER TABLE livros MODIFY titulo VARCHAR(255) NOT NULL;

ALTER TABLE livros DROP CNPJ;

SELECT * FROM livros;

INSERT INTO livros (id, titulo, autor) value
(1, 'Quebrando a cabeça com java', 'Josefino'),
(2, 'Java 8', 'Peter Jandl'),
(3, 'Google Android', 'Ricardo Lancheta');

UPDATE livros 
SET preco = 99.99
WHERE id = 1;

truncate table livros;

DROP TABLE livros;
