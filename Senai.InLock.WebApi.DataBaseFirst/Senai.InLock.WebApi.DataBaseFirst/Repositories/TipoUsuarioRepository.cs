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

        public void AtualizarIdCorpo(int id,TiposUsuario TipoUsuarioAtualizado)
        {


            ctx.TiposUsuario.Update(TipoUsuarioAtualizado);
            ctx.SaveChanges();

        }

        public void Deletar (int id)
        {
            ctx.TiposUsuario.Remove(BuscarPorId(id));
            ctx.SaveChanges();
        }

      


    }
}
