USE Locadora

 -- DML LINGUEGEM DE MANIPULACAO DE DADOS 

  -- COMANDO DE INSERIR DADOS  
  INSERT INTO Empresa(Nome) 
  VALUES ('Unidas'),('Localiza');

  INSERT INTO Marca(Nome) 
  VALUES ('Ford'),('GM'),('Fiat');

  INSERT INTO Cliente(Nome,CPF)
  VALUES ('Fernando',23324442444),('Helena',32434554333),('Bruna',53654660893);

  INSERT INTO Modelo(Nome, IdMarca )
  VALUES ('Fiesta',1),('Onix',2),('Argo',3);

  INSERT INTO Veiculo(Placa,IdEmpresa,IdModelo )
  VALUES ('HEL1805',1,1),
		('FER1010',1,2),
		('POR1978',2,3),
		('LEM9876',2,1);

INSERT INTO Aluguel (DataInicio,DataFim,IdCliente,IdVeiculo )
  VALUES ('19/01/2019','20/01/2019',1,1),
		 ('20/01/2019','21/01/2019',1,2),
		  ('21/01/2019','21/01/2019',2,3),
		  ('22/01/2019','22/01/2019',2,2);






















  














