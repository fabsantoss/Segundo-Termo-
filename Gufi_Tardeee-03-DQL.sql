USE Gufi_Tardeee;

-- DQL LINGUAGEM DE CONSULTA DE DADOS

--listar todos os usuarios cadastrados
SELECT Usuario.NomeUsuario ,Usuario.Email, Usuario.Senha, Usuario.Genero, Usuario.DataNascimento, TipoUsuario.TituloTipoUsuario
FROM Usuario -- pegar uma tabela
INNER JOIN TipoUsuario on Usuario.IdUsuario = TipoUsuario.IdTipoUsuario  -- pegar uma outra tabela


--listar toda as instituicoes cadastradas
SELECT Instituicao.CNPJ ,Instituicao.NomeFantasia, Instituicao.Endereco
FROM Instituicao -- pegar uma tabela

--LISTAR TODOS OS TIPOS DE EVENTOS
SELECT TipoEvento.TituloTipoEvento 
FROM TipoEvento ;

--listar apeenas os eventos que sao publicos
SELECT Evento.NomeEvento , Evento.DataEvento, Evento.Descricao, Evento.AcessoLivre, Instituicao.CNPJ, Instituicao.NomeFantasia, TipoEvento.TituloTipoEvento
FROM Evento -- pegar uma tabela
INNER JOIN Instituicao on Evento.IdInstituicao= Instituicao.IdInstituicao  -- pegar uma outra tabela
INNER JOIN TipoEvento on Evento.IdTipoEvento = TipoEvento.IdTipoEvento  -- pegar uma outra tabela
WHERE Evento.AcessoLivre=1;

--listar todos os eventos que um determinado usuario participa 
SELECT Evento.NomeEvento , Evento.DataEvento, Evento.Descricao, Evento.AcessoLivre, Instituicao.CNPJ,Instituicao.NomeFantasia, Presenca.Situacao,Usuario.NomeUsuario
,Usuario.DataNascimento, Usuario.Email, Usuario.Genero, TipoEvento.TituloTipoEvento,TipoUsuario.TituloTipoUsuario
FROM Presenca
INNER JOIN  Evento      on Evento.IdEvento = Presenca.IdEvento
INNER JOIN  TipoEvento  on TipoEvento.IdTipoEvento = Evento.IdTipoEvento
INNER JOIN	Instituicao on Instituicao.IdInstituicao = Evento.IdInstituicao
INNER JOIN  Usuario     on Usuario.IdUsuario = Presenca.IdUsuario
INNER JOIN  TipoUsuario on TipoUsuario.IdTipoUsuario = Usuario.IdTipoUsuario
WHERE Usuario.IdUsuario = 2;


---listar os eventos na coluna aAcessolivre o valor 'publico quando for 1 e 'privado' quando for 0
SELECT Evento.NomeEvento,Evento.DataEvento,Evento.Descricao, Evento.IdEvento,
 CASE
  WHEN AcessoLivre = '1' THEN 'Publico'
  WHEN AcessoLivre = '0' THEN 'Privado'
  END AS TipoAcesso
  FROM Evento;



SELECT Evento.NomeEvento , Evento.DataEvento, Evento.Descricao, Evento.AcessoLivre, Instituicao.CNPJ,Instituicao.NomeFantasia, Presenca.Situacao,Usuario.NomeUsuario
,Usuario.DataNascimento, Usuario.Email, Usuario.Genero, TipoEvento.TituloTipoEvento,TipoUsuario.TituloTipoUsuario
FROM Presenca
INNER JOIN  Evento      on Evento.IdEvento = Presenca.IdEvento
INNER JOIN  TipoEvento  on TipoEvento.IdTipoEvento = Evento.IdTipoEvento
INNER JOIN	Instituicao on Instituicao.IdInstituicao = Evento.IdInstituicao
INNER JOIN  Usuario     on Usuario.IdUsuario = Presenca.IdUsuario
INNER JOIN  TipoUsuario on TipoUsuario.IdTipoUsuario = Usuario.IdTipoUsuario
WHERE Usuario.IdTipoUsuario = 2
AND Presenca.Situacao = 'Confimada';





