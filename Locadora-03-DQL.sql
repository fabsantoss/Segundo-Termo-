USE Locadora 

-- DQL LINGUAGEM DE CONSULTA DE DADOS

SELECT * FROM Aluguel;

SELECT  DataInicio,DataFim FROM Aluguel

SELECT DataInicio,DataFim,Cliente.Nome as NomeCliente, Veiculo.Placa
FROM Aluguel -- pegar uma tabela
INNER JOIN Cliente on Cliente.IdCliente = Aluguel.IdCliente  -- pegar uma outra tabela
INNER JOIN Veiculo on Veiculo.IdVeiculo = Aluguel.IdVeiculo -- pegar uma outra tabela