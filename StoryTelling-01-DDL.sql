CREATE DATABASE StoryTelling

USE StoryTelling

CREATE TABLE Clinica (
IdClinica INT PRIMARY KEY IDENTITY,
NomeClinica      VARCHAR (200)NOT NULL,
RazaoSocial		 VARCHAR(200) NOT NULL,
Endereco         VARCHAR(200) NOT NULL,
CNPJ			 VARCHAR(200) NOT NULL UNIQUE 
);

CREATE TABLE TipoUsuario (
IdTipoUsuario INT PRIMARY KEY IDENTITY,
Titulo      VARCHAR (200)NOT NULL,
);

CREATE TABLE Especialidade (
IdEspecialidade INT PRIMARY KEY IDENTITY,
NomeEspecialidade     VARCHAR (200)NOT NULL,
);

CREATE TABLE Usuario (
  IdUsuario      INT PRIMARY KEY IDENTITY,
  Email          VARCHAR (200) NOT NULL,
  Senha			VARCHAR(200)NOT NULL UNIQUE ,
  IdTipoUsuario    INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario),
  );


 CREATE TABLE Medico (
  IdMedico      INT PRIMARY KEY IDENTITY,
  Nome          VARCHAR (200) NOT NULL,
  CRM			VARCHAR(200)NOT NULL UNIQUE ,
  IdClinica      INT FOREIGN KEY REFERENCES Clinica  (IdClinica),
  IdEspecialidade       INT FOREIGN KEY REFERENCES Especialidade (IdEspecialidade)
  );

   CREATE TABLE Consultas (
  IdConsulta        INT PRIMARY KEY IDENTITY,
  DataHora            DATE,
  Descricao			VARCHAR(200)NOT NULL UNIQUE ,
  Situacao			VARCHAR(200)NOT NULL UNIQUE ,
  IdMedico			INT FOREIGN KEY REFERENCES Medico (IdMedico  ),
  IdProntuario      INT FOREIGN KEY REFERENCES Prontuario (IdProntuario)
  );

  CREATE TABLE Prontuario(
  IdProntuario       INT PRIMARY KEY IDENTITY,
  Nome				VARCHAR,
  RG				VARCHAR(200)NOT NULL UNIQUE ,
  CPF				VARCHAR(200)NOT NULL UNIQUE ,
  DataNascimeto     VARCHAR(200) NOT NULL,
  Endereco			VARCHAR(200)NOT NULL ,
  Telefone			VARCHAR(200)NOT NULL UNIQUE,
  Email				VARCHAR(200) NOT NULL,
   IdUsuario     INT FOREIGN KEY REFERENCES Usuario ( IdUsuario  )
  );
  
  SELECT * FROM Clinica ;
  SELECT * FROM TipoUsuario ;
  SELECT * FROM Especialidade ;
  SELECT * FROM Usuario  ;
  SELECT * FROM Medico;
  SELECT * FROM Consultas;
  SELECT * FROM Prontuario;