USE StoryTelling

-- DML LINGUEGEM DE MANIPULACAO DE DADOS 

 INSERT INTO Clinica(NomeClinica,RazaoSocial,Endereco,CNPJ) 
 VALUES ('Clinica Possarle','Sp Medical Group','Av. Baão de Limeira. 532. São Paulo, Sp','86.400.902/0001-30');

 INSERT INTO TipoUsuario(Titulo) 
 VALUE ('Administrador','Medico','Paciente');

 INSERT INTO Especialidade(NomeEspecialidade) 
 VALUE ('Acupuntura'),
		('Anestologia'),
         ('Angiologia'),
         ('Cardiologia'),
         ('Cirurgia Cardiovascular'),
         ('Cirurgia da Mão'),
         ('Cirurgia do Aparelho Digestivo'),
        ('Cirurgia Geral'),
		('Cirurgia Pediátrica'),
		('Cirurgia Plástica'),
		('Cirurgia Torácica'),
		('Cirurgia Vascular'),
		('Dermatologia'),
		('Radioterapia'),
		('Urologia'),
		('Pediatria'),
		('Psiquiatria');


