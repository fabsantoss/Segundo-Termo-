--CRIAR BANCO DE DADOS
CREATE DATABASE Pessoas_Tardee

-- Apontar para o banco que quero usar
 USE Pessoas_Tardee


 -- CRIAR TABELAS 

CREATE TABLE Pessoas (
IdPessoa   INT PRIMARY KEY IDENTITY,
Nome       VARCHAR(200) NOT NULL
);


CREATE TABLE Emails (
IdEmail		INT PRIMARY KEY IDENTITY,
Descricao	VARCHAR(200) NOT NULL,
IdPessoa	INT FOREIGN KEY  REFERENCES Pessoas (IdPessoa)
);

CREATE TABLE Telefones (
IdTelefone INT PRIMARY KEY IDENTITY,
Descricao	VARCHAR(200) NOT NULL,
IdPessoa	INT FOREIGN KEY  REFERENCES Pessoas (IdPessoa)
);

CREATE TABLE CNHS (
IdCNH		 INT PRIMARY KEY IDENTITY,
Descricao	VARCHAR(200) NOT NULL,
IdPessoa	INT FOREIGN KEY  REFERENCES Pessoas (IdPessoa)
);

SELECT * FROM Pessoas
SELECT * FROM Emails
SELECT * FROM Telefones
SELECT * FROM CNHS


-- DML LINGUEGEM DE MANIPULACAO DE DADOS 

-- COMANDO DE INSERIR DADOS 
  INSERT INTO Pessoas(Nome) 
  VALUES ('Andre'),('Maria'),('Fernando'),('Alessandra'),('Felipe');

  INSERT INTO Emails(Descricao,IdPessoa) 
  VALUES ('Andre@gmail.com', 1),
		 ('M.Santos@gmail.com', 2),
		 ('Fernado20@gmail.com', 3),
		 ('Alle@gmail.com', 4),
		 ('FehDS@gmail.com', 5);

INSERT INTO Emails(Descricao,IdPessoa) 
  VALUES ('Andre.santos20@gmail.com', 1);

 INSERT INTO Telefones (Descricao,IdPessoa) 
  VALUES ('9992-77223',1),
		 ('9782-28924',2),
		 ('9876-55496',3),
		 ('9992-88229',4),
		 ('9567-56478',5);

  INSERT INTO Telefones (Descricao,IdPessoa) 
  VALUES ('9245-67758',1);

INSERT INTO CNHS () 
  VALUES ('897652-09752',1),
		 ('987622-86547',2),
		 ('762717-98762',3),
		 ('682681-28686',4),
		 ('599790-98992',5);

--UPDATE ALTERAR DADOS

UPDATE Telefones 
SET Descricao = '9966-55448'
WHERE IdTelefone = 5

-- DELETE APAGAR DADOS 
DELETE FROM Pessoas 
WHERE IdPessoa  = 2;

--DQL LINGUAGUEM DE CONSULTA DE DADOS

SELECT Descricao FROM Emails WHERE IdPessoa = 1;

SELECT Descricao,IdPessoa FROM Telefones WHERE IdPessoa =1;

SELECT Descricao,IdPessoa FROM CNHS
ORDER BY Descricao,IdPessoa DESC 
