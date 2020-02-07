USE Clinica 

-- DML LINGUEGEM DE MANIPULACAO DE DADOS 

-- COMANDO DE INSERIR DADOS  
  INSERT INTO Clinica(RazaoSocial,Endereco) 
  VALUES ('Clinica veterinaria','Alameda Barão de Limeira, 532');
		 
  INSERT INTO Dono(Nome) 
  VALUES ('Carol'),('Saulo');

  INSERT INTO TipoPet(Titulo) 
  VALUES ('Cachorro'),('Gato');

  INSERT INTO Veterinario (Nome,CRMV,IdClinica) 
  VALUES ('Pablo',123,1);

  INSERT INTO  Pet(Nome,Telefone,IdDono,IdRaca) 
  VALUES ('Lua','9999-9999',1,2),
		 ('Jefferson','9999-9999',2,2);

  INSERT INTO  Raca(Titulo,IdTipoPet) 
  VALUES ('Siamês',2),
         ('Persa',2);


 INSERT INTO  Atendimento(DataAtendimento,Descricao,IdVet,IdPet)
  VALUES ('27/01/2020','Tudo em ordem',1,3),
         ('28/01/2020','Doença grave detectada',1,4);











