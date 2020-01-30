CREATE DATABASE EstilosMusical_Tarde;

USE EstilosMusical_Tarde;

CREATE TABLE EstilosMusical (
  IdEstiloMusical INT PRIMARY KEY IDENTITY,
  Nome             VARCHAR(200)NOT NULL,
  );



CREATE TABLE Artistas (
 IdArtista       INT PRIMARY KEY IDENTITY,
 NomeArtista     VARCHAR(200)NOT NULL,
 IdEstiloMusical INT FOREIGN  KEY REFERENCES EstilosMusical (IdEstiloMusical),
 ); 

 SELECT * FROM EstilosMusical;
 SELECT * FROM Artistas;