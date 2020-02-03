CREATE DATABASE Locadora

USE Locadora 

 CREATE TABLE Empresa (
IdEmpresa INT PRIMARY KEY IDENTITY,
Nome      VARCHAR (200)NOT NULL
);

CREATE TABLE Marca(
IdMarca  INT PRIMARY KEY IDENTITY,
Nome      VARCHAR (200)NOT NULL
);

CREATE TABLE Cliente (
IdCliente  INT PRIMARY KEY IDENTITY,
Nome      VARCHAR (200)NOT NULL,
CPF       VARCHAR (200)NOT NULL
);


 CREATE TABLE Modelo(
  IdModelo      INT PRIMARY KEY IDENTITY,
  Nome			VARCHAR (200) NOT NULL UNIQUE, --Deixr algo ser unico
  IdMarca       INT FOREIGN KEY REFERENCES Marca (IdMarca)
  );

  CREATE TABLE Veiculo (
  IdVeiculo      INT PRIMARY KEY IDENTITY,
  Placa          VARCHAR (200) NOT NULL UNIQUE, --Deixr algo ser unico
  IdEmpresa      INT FOREIGN KEY REFERENCES Empresa  (IdEmpresa),
  IdModelo       INT FOREIGN KEY REFERENCES Modelo  (IdModelo)
  );

  CREATE TABLE Aluguel (
  IdAluguel INT PRIMARY KEY IDENTITY,
  DataInicio	 DATE NOT NULL,
  DataFim		 DATE NOT NULL,
  IdCliente      INT FOREIGN KEY REFERENCES Cliente (IdCliente),
  IdVeiculo      INT FOREIGN KEY REFERENCES Veiculo (IdVeiculo )
  );

  SELECT * FROM Empresa ;
  SELECT * FROM Marca   ;
  SELECT * FROM Cliente ;
  SELECT * FROM Modelo  ;
  SELECT * FROM Veiculo ;
  SELECT * FROM Aluguel ;