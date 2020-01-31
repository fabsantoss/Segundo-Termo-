--CRIAR BANCO DE DADOS
CREATE DATABASE Biblioteca_Tarde;

-- Apontar para o banco que quero usar
USE Biblioteca_Tarde;

-- CRIAR TABELAS 

CREATE TABLE Autores (
    IdAutor     INT PRIMARY KEY IDENTITY,
	NomeAutor   VARCHAR(200) NOT NULL
);

CREATE TABLE Generos ( 
    IdGenero    INT PRIMARY KEY IDENTITY,
	Nome        VARCHAR(200) NOT NULL 
);

CREATE TABLE Livros (
    IdLivro     INT PRIMARY KEY IDENTITY,
	Titulo      Varchar(255),
	IdAutor     INT FOREIGN KEY  REFERENCES Autores (IdAutor),
	IdGenero    INT FOREIGN KEY  REFERENCES Generos (IdGenero)
);

SELECT * FROM  Generos;
SELECT * FROM  Autores;
SELECT * FROM  Livros;

-- ALTERAR ADICIONAR UMA NOVA COLUNA
ALTER TABLE Generos
ADD Descricao VARCHAR(255);


-- ALTERAR TIPO DE DADO 
ALTER TABLE   Generos
ALTER COLUMN  Descricao CHAR(100);

--ALTERAR EXCLUIR COLUNA
ALTER TABLE   Generos
DROP  COLUMN  Descricao;

-- EXCLUIR 
DROP TABLE    Generos;
DROP TABLE    Livros;

-- EXCLUIR BANDO DE DADOS
DROP DATABASE Biblioteca_Tarde;


INSERT INTO Autores (NomeAutor)
VALUES ('Jojo Moyes'),('John Green'),('Jeff Kinney'),('George Martin'),('J.K Rowling');


INSERT INTO Generos (Nome)
VALUES ('Romance'),('Terror'),('Ficçao'),('Humor'),('Suspense');

INSERT INTO livros (Titulo,IdAutor,IdGenero)
VALUES ('Aculpa e das Estrelas',2,1),
       ('Depois de voce',1,3),
	   ('Diario de um banana',3,4),
	   ('A guerra dos tronos',5,5);

UPDATE Generos
SET Nome = 'Ficção Cientifica'
WHERE IdGenero = 2

DELETE FROM Livros
WHERE IdLivro = 3;

DELETE FROM Autores
WHERE IdAutor = 3;

--DQL

SELECT NomeAutor FROM Autores


SELECT Nome FROM Generos


SELECT Titulo FROM Livros

SELECT Titulo,IdAutor FROM Livros


SELECT Titulo,IdGenero FROM Livros


SELECT Titulo,IdAutor, IdGenero FROM Livros