CREATE DATABASE Clinica 

USE Clinica 

 CREATE TABLE Clinica (
IdClinica INT PRIMARY KEY IDENTITY,
RazaoSocial      VARCHAR (200)NOT NULL,
Endereco        Varchar (200) NOT NULL
);

CREATE TABLE Dono (
IdDono      INT PRIMARY KEY IDENTITY,
Nome      VARCHAR (200)NOT NULL
)

 CREATE TABLE TipoPet (
IdTipoPet    INT PRIMARY KEY IDENTITY,
Titulo      VARCHAR (200)NOT NULL
);

 CREATE TABLE Veterinario (
IdVet          INT PRIMARY KEY IDENTITY,
Nome           VARCHAR (200)NOT NULL,
CRMV           Varchar (200) NOT NULL,
IdClinica      INT FOREIGN KEY REFERENCES Clinica (IdClinica)
);

CREATE TABLE Pet (
IdPet         INT PRIMARY KEY IDENTITY,
Nome           VARCHAR (200)NOT NULL,
Telefone       Varchar (200) NOT NULL,
IdDono         INT FOREIGN KEY REFERENCES Dono (IdDono),
IdRaca         INT FOREIGN KEY REFERENCES Raca (IdRaca)
);

CREATE TABLE Raca (
IdRaca         INT PRIMARY KEY IDENTITY,
Titulo         VARCHAR (200)NOT NULL,
IdTipoPet      INT FOREIGN KEY REFERENCES TipoPet (IdTipoPet)
);

CREATE TABLE Atendimento (
IdAtendimento     INT PRIMARY KEY IDENTITY,
DataAtendimento   DATE,
Descricao         Varchar (200) ,
IdVet             INT FOREIGN KEY REFERENCES Veterinario (IdVet),
IdPet             INT FOREIGN KEY REFERENCES Pet (IdPet)
);

DROP TABLE Atendimento;
 
 


SELECT * FROM Clinica;
SELECT * FROM Dono;
SELECT * FROM TipoPet;
SELECT * FROM Veterinario;
SELECT * FROM Pet;
SELECT * FROM Raca;
SELECT * FROM Atendimento;