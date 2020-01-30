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

