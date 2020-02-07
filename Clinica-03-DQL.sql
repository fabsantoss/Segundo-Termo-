USE Clinica

-- DQL LINGUAGEM DE CONSULTA DE DADOS

SELECT Atendimento.DataAtendimento ,Atendimento.Descricao, Veterinario.Nome as Veterinario, Pet.Nome as NomePet
FROM Atendimento -- pegar uma tabela
INNER JOIN Veterinario on Veterinario.IdClinica = Atendimento.IdVet  -- pegar uma outra tabela
INNER JOIN Pet on Pet.IdPet = Atendimento.IdPet -- pegar uma outra tabela

