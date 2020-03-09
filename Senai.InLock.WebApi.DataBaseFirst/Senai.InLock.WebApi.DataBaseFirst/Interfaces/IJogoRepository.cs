using Senai.InLock.WebApi.DataBaseFirst.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.InLock.WebApi.DataBaseFirst.Interfaces
{
    interface IJogoRepository
    {
        List<Jogos> Listar();

        Jogos BuscarPorId(int id);

        void Cadastrar(Jogos novoJogo);

        void Atualizar(int id, Jogos jogoAtualizado);

        void Deletar(int id);

        List<Jogos> ListarComEstudios();

        List<Jogos> ListarUmEstudio(int id);
    }
}
