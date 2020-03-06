using Senai.InLock.WebApi.DataBaseFirst.Domains;
using Senai.InLock.WebApi.DataBaseFirst.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.InLock.WebApi.DataBaseFirst.Repositories
{
    public class EstudioRepository : IEstudioRepository
    {
        InLockContext ctx = new InLockContext();

        public void Cadastrar (Estudios novoEstudio)
        {
            ctx.Estudios.Add(novoEstudio);
            ctx.SaveChanges();
        }


        public List<Estudios> Listar()
        {
            return ctx.Estudios.ToList();

        }

       public Estudios BuscarPorId(int id)
        {
            return ctx.Estudios.FirstOrDefault(e => e.IdEstudio == id);
        }

        public void Deletar(int id)
        {
            ctx.Estudios.Remove(BuscarPorId(id));
            ctx.SaveChanges();
        }


        public void AtualizarIdCorpo(int id, Estudios estudioAtualizado)
        {
            var estudioBuscado = BuscarPorId(id);

            if(estudioBuscado != null)
            {
                estudioBuscado.NomeEstudio = estudioAtualizado.NomeEstudio;
                //estudioBuscado.IdEstudio = estudioAtualizado.IdEstudio;
                
            }

            ctx.Estudios.Update(estudioBuscado);
            ctx.SaveChanges();

        }
    }
}
