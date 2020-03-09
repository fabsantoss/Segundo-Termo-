using Microsoft.EntityFrameworkCore;
using Senai.InLock.WebApi.DataBaseFirst.Domains;
using Senai.InLock.WebApi.DataBaseFirst.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.InLock.WebApi.DataBaseFirst.Repositories
{
    public class JogoRepository : IJogoRepository
    {
        InLockContext ctx = new InLockContext();

        public void Cadastrar(Jogos novoJogo)
        {
            ctx.Jogos.Add(novoJogo);
            ctx.SaveChanges();
        }

        public List<Jogos> Listar()
        {
            return ctx.Jogos.ToList();

        }

        public Jogos BuscarPorId(int id)
        {
            return ctx.Jogos.FirstOrDefault(e => e.IdJogo == id);
        }


        public void Deletar(int id)
        {
            ctx.Jogos.Remove(BuscarPorId(id));
            ctx.SaveChanges();
        }

        public void Atualizar(int id, Jogos jogoAtualizado)
        {

            Jogos jogoBuscado = ctx.Jogos.Find(id);

            // Atribui os novos valores ao campos existentes
            jogoBuscado.NomeJogo = jogoAtualizado.NomeJogo;
            jogoBuscado.Descricao = jogoAtualizado.Descricao;
            jogoBuscado.DataLancamento = jogoAtualizado.DataLancamento;
            jogoBuscado.Valor = jogoAtualizado.Valor;
            jogoBuscado.IdEstudio = jogoAtualizado.IdEstudio;

            // Atualiza o jogo que foi buscado
            ctx.Jogos.Update(jogoBuscado);

            // Salva as informações para serem gravadas no banco
            ctx.SaveChanges();
        }

        public List<Jogos> ListarComEstudios()
        {
            // Retorna uma lista com todas as informações dos jogos e estúdios
            return ctx.Jogos.Include(e => e.IdEstudioNavigation).ToList();
            // return ctx.Jogos.Include("IdEstudioNavigation").ToList();
        }

        public List<Jogos> ListarUmEstudio(int id)
        {
            return ctx.Jogos.ToList().FindAll(j => j.IdEstudio == id);
        }
    }
}
