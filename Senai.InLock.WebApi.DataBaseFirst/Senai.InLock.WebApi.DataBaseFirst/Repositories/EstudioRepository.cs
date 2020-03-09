using Microsoft.EntityFrameworkCore;
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


        public void Atualizar(int id, Estudios estudioAtualizado)
        {
            Estudios estudioBuscado = ctx.Estudios.Find(id);

            // Atribui os novos valores ao campos existentes
            estudioBuscado.NomeEstudio = estudioAtualizado.NomeEstudio;

            // Atualiza o estúdio que foi buscado
            ctx.Estudios.Update(estudioBuscado);

            // Salva as informações para serem gravadas no banco
            ctx.SaveChanges();
        }

        public List<Estudios> ListarJogos()
        {
            return ctx.Estudios.Include(e => e.Jogos).ToList();
        }
    }
}
