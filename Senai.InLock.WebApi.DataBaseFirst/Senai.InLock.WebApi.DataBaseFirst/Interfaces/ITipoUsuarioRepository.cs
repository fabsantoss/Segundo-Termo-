using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Senai.InLock.WebApi.DataBaseFirst.Domains;

namespace Senai.InLock.WebApi.DataBaseFirst.Interfaces
{
    interface ITipoUsuarioRepository
    {
        TiposUsuario BuscarPorId(int IdTipoUsuario);

        List<TiposUsuario> Listar();

        void Cadastrar(TiposUsuario novoTipoUsuario);

        void AtualizarIdCorpo(int id,TiposUsuario TipoUsuarioAtualizado);

        void Deletar(int id);
       
    }
}
