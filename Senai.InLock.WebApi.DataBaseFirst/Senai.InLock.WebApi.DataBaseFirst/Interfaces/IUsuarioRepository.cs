using Senai.InLock.WebApi.DataBaseFirst.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.InLock.WebApi.DataBaseFirst.Interfaces
{
    interface IUsuarioRepository
    {
        Usuarios BuscarPorId(int IdUsuario);

        List<Usuarios> Listar();

        void Cadastrar(Usuarios novoUsuario);

        void AtualizarIdCorpo(int id,Usuarios UsuarioAtualizado);

        void Deletar(int id);
    }
}
