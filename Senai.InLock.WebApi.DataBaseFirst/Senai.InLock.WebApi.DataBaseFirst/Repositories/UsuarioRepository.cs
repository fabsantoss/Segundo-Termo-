using Senai.InLock.WebApi.DataBaseFirst.Domains;
using Senai.InLock.WebApi.DataBaseFirst.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.InLock.WebApi.DataBaseFirst.Repositories
{
    public class UsuarioRepository : IUsuarioRepository
    {
        InLockContext ctx = new InLockContext();

        public void Cadastrar(Usuarios novoUsuario)
        {
            ctx.Usuarios.Add(novoUsuario);
            ctx.SaveChanges();
        }

        public List<Usuarios> Listar()
        {
            return ctx.Usuarios.ToList();

        }

        public Usuarios BuscarPorId(int id)
        {
            return ctx.Usuarios.FirstOrDefault(e => e.IdUsuario == id);
        }


        public void Deletar(int id)
        {
            ctx.Usuarios.Remove(BuscarPorId(id));
            ctx.SaveChanges();
        }

        public void Atualizar(int id, Usuarios usuarioAtualizado)
        {
            // Busca um usuário através do id
            Usuarios usuarioBuscado = ctx.Usuarios.Find(id);

            // Atribui os novos valores ao campos existentes
            usuarioBuscado.Email = usuarioAtualizado.Email;
            usuarioBuscado.Senha = usuarioAtualizado.Senha;
            usuarioBuscado.IdTipoUsuario = usuarioAtualizado.IdTipoUsuario;

            // Atualiza o usuário que foi buscado
            ctx.Usuarios.Update(usuarioBuscado);

            // Salva as informações para serem gravadas no banco
            ctx.SaveChanges();
        }
    }
}
