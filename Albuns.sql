--DDL Linguaguem de definišao de dados

CREATE DATABASE Albuns_Tarde;

USE Albuns_Tarde;

CREATE TABLE TiposUsuario (
  IdTipoUsuario  INT PRIMARY KEY IDENTITY,
  Administrador  VARCHAR(200)NOT NULL,
  Comun          VARCHAR(200) NOT NULL
  );

  --APAGAR UMA COLUNA 
  ALTER TABLE TiposUsuario
  DROP COLUMN Administrador ;

  ALTER TABLE TiposUsuario
  DROP COLUMN Comun;

  --ADICONA EM UMA COLUNA 
  ALTER TABLE TiposUsuario
  ADD Nome VARCHAR (200);

  CREATE TABLE Estilos (
  idEstilo		INT PRIMARY KEY IDENTITY,
  Nome			VARCHAR (200) NOT NULL
  );

  CREATE TABLE Artistas (
  IdArtista		INT PRIMARY KEY IDENTITY,
  Nome			VARCHAR (200) NOT NULL
  );

  CREATE TABLE Usuarios (
  IdUsuario			INT PRIMARY KEY IDENTITY,
  Nome				VARCHAR (200) NOT NULL,
  IdTipoUsuario		INT FOREIGN  KEY REFERENCES TiposUsuario (IdTipoUsuario)
  );

  CREATE TABLE Albuns (
  IdAlbun		INT PRIMARY KEY IDENTITY,
  Nome			VARCHAR (200) NOT NULL UNIQUE, --Deixr algo ser unico
  Lancamento	DATE NOT NULL,
  IdArtista		INT FOREIGN KEY REFERENCES Artistas (IdArtista),
  IdEstilo		INT FOREIGN KEY REFERENCES Estilos  (IdEstilo )
  );

  --ADICONA EM UMA COLUNA 
  ALTER TABLE Albuns
  ADD Visualizacao VARCHAR (200);


  SELECT * FROM TiposUsuario;
  SELECT * FROM Estilos;
  SELECT * FROM Artistas;
  SELECT * FROM Usuarios;
  SELECT * FROM Albuns;

  ALTER TABLE  Albuns
  ALTER COLUMN Lancamento DATE;

  --Excluir tabela
  DROP TABLE Estilos;
e;

  --Excluir Banco de dados
  DROP DATABASE Albuns_Tarde;

  --EXCLUIR TABELA EXCLUIR COLUNA
  --EXEMPLOS


  ALTER TABLE Usuarios
  DROP COLUMN PERMISSAO

   
  USE Biblioteca_Tarde



  -- DML LINGUEGEM DE MANIPULACAO DE DADOS 

  -- COMANDO DE INSERIR DADOS 
  INSERT INTO Estilos (Nome) 
  VALUES ('Pagode'), ('Samba'), ('Rock');

  INSERT INTO Artistas (Nome)
  VALUES ('Anita'), ('Zeca Pagodinho'), ('Pitty')

  INSERT INTO Albuns (Nome,Lancamento, IdArtista,IdEstilo,Visualizacao)
  VALUES ('baladeira','20/02/2020',1,2,260),
		 ('felicidade','10/02/2020',2,3,550);

  INSERT INTO TiposUsuario (Nome)
  VALUES ('Maria'),('Andre'),('Kiara')

  INSERT INTO  (Nome)
  VALUES ('Maria'),('Andre'),('Kiara')
	
		

--UPDATE ALTERAR DADOS

UPDATE Albuns
SET Lancamento = '20/01/2020'
WHERE IdAlbun = 1

UPDATE Albuns
SET Visualizacao = '380'
WHERE IdAlbun = 1
 
UPDATE Albuns
SET Lancamento = '20/03/2020'
WHERE IdAlbun = 8


UPDATE Artistas 
SET Nome = 'Merlin'
WHERE IdArtista = 3

UPDATE TiposUsuario
SET Nome = 'Fernando'
WHERE IdTipoUsuario = 2




--DELETE APAGAR DADOS 
DELETE FROM Albuns 
WHERE IdAlbun = 8;

DELETE FROM Albuns 
WHERE IdAlbun = 2;




--LIMPAR TODOS OS DADOS DA TABELA 
TRUNCATE TABLE Albuns;
