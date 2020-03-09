using Senai.InLock.WebApi.DataBaseFirst.Domains;
using Senai.InLock.WebApi.DataBaseFirst.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.InLock.WebApi.DataBaseFirst.Repositories
{
    public class TipoUsuarioRepository : ITipoUsuarioRepository
    {
        InLockContext ctx = new InLockContext();

        public void Cadastrar(TiposUsuario novoJogo)
        {
            ctx.TiposUsuario.Add(novoJogo);
            ctx.SaveChanges();
        }

        public List<TiposUsuario> Listar()
        {
            return ctx.TiposUsuario.ToList();

        }

        public TiposUsuario BuscarPorId(int IdTipoUsuario)
        {
            return ctx.TiposUsuario.FirstOrDefault(e => e.IdTipoUsuario == IdTipoUsuario);
        }

        public void Deletar (int id)
        {
            ctx.TiposUsuario.Remove(BuscarPorId(id));
            ctx.SaveChanges();
        }

        public void Atualizar(int id, TiposUsuario tipoUsuarioAtualizado)
        {
            TiposUsuario tipoUsuarioBuscado = ctx.TiposUsuario.Find(id);

            // Atribui o novo valor ao campo
            tipoUsuarioBuscado.Tipo = tipoUsuarioAtualizado.Tipo;

            // Atualiza o tipo de usuário que foi buscado
            ctx.TiposUsuario.Update(tipoUsuarioBuscado);

            // Salva as informações para serem gravadas no banco
            ctx.SaveChanges();
        }
    }
}
