USE Gufi_Tardeee;

-- DML LINGUEGEM DE MANIPULACAO DE DADOS 

  -- COMANDO DE INSERIR DADOS  
  INSERT INTO TipoUsuario(TituloTipoUsuario)
  VALUES ('Administrador'),('Comum');

  INSERT INTO TipoEvento(TituloTipoEvento)
  VALUES ('C#'),('React'),('SQL');

  INSERT INTO Instituicao (CNPJ,NomeFantasia,Endereco)
  VALUES ('11111111111111','Escola SENAI de informatica','Alameda barão de Limeira,538');

  INSERT INTO Usuario (NomeUsuario,Email,Senha,Genero,DataNascimento,IdTipoUsuario)
  VALUES ('Administrador','adm@gmail.com','adm123','Não Informado','06/02/2020',1),
		 ('Carol','carol@gmail.com','carol123','Feminino','06/02/2020',2),
		 ('Saulo','Ssaulo@gmail.com','saulo123','Masculino','06/02/2020',2);

  INSERT INTO Evento (NomeEvento,DataEvento,Descricao,AcessoLivre,IdInstituicao,IdTipoEvento)
  VALUES ('Introdução ao C#','07/02/2020','Conceitos sobre, os pilares da programação orientada a objetos',1,1,1),
		 ('Ciclo de vida','07/02/2020','Como utilizar o ciclo de vida com ReactJs',0,1,2),
		 ('Optimização de banco de dados','07/02/2020','Aplicação de índices clusterizados e não clusterizados',1,1,3);

  INSERT INTO Presenca (IdUsuario,IdEvento,Situacao)
  VALUES (2,2,'Agendada'),
		 (2,3,'Confirmada'),
		 (3,1,'Não compareceu');














