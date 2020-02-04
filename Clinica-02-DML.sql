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
  VALUES ('Siamês',








