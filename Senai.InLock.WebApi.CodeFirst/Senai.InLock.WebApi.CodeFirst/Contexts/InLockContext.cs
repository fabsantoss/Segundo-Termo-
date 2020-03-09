using Microsoft.EntityFrameworkCore;
using Senai.InLock.WebApi.CodeFirst.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.InLock.WebApi.CodeFirst.Contexts
{
    public class InLockContext : DbContext 
    {
        public DbSet<TipoUsuario> TiposUsuarios { get; set; }

        public DbSet<Usuarios> Usuarios { get; set; }

        public DbSet<Estudios> Estudios { get; set; }

        public DbSet<Jogos> Jogos { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=;Database");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<TipoUsuario>().HasData(
            new TipoUsuario
            {
                IdTipoUsuario = 1,
                Titulo = "Administrador"
            },
            new TipoUsuario
            {
                IdTipoUsuario = 2,
                Titulo = "Cliente"
            });

            modelBuilder.Entity<Usuarios>().HasData(
                new Usuarios
                {
                    IdUsuario = 1,
                    Email = "admin@admin.com",
                    Senha = "admin",
                    IdTipoUsuario = 1
                },
                new Usuarios
                {
                    IdUsuario = 2,
                    Email = "cliente@cliente.com",
                    Senha = "cliente",
                    IdTipoUsuario = 2
                });

            modelBuilder.Entity<Estudios>().HasData(
                new Estudios
                {

                });
        }
    }
}
