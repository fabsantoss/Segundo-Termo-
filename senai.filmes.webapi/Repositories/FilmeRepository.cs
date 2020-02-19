using senai.filmes.webapi.Interfaces;
using senai.Filmes.WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace senai.filmes.webapi.Repositories
{
    public class FilmeRepository : IFilmeRepository
    {
        private string stringConexao = "Data Source=DEV13\\SQLEXPRESS; initial catalog=Filmes_tarde; user Id=sa; pwd=sa@132";


        public void AtualizarIdCorpo(FilmeDomain Filme)
        {
            
            using (SqlConnection con = new SqlConnection(stringConexao))
            {
                
                string queryUpdate = "UPDATE Filmes SET Titulo = @Titulo WHERE IdFilme = @ID";

                
                using (SqlCommand cmd = new SqlCommand(queryUpdate, con))
                {
                   
                    cmd.Parameters.AddWithValue("@ID", Filme.IdFilme);
                    cmd.Parameters.AddWithValue("@Titulo", Filme.Titulo);

                    
                    con.Open();

                   
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void AtualizarIdUrl(int id, FilmeDomain filme)
        {
            throw new NotImplementedException();
        }

        public FilmeDomain BuscarPorId(int id)
        {
            
            using (SqlConnection con = new SqlConnection(stringConexao))
            {
                
                string querySelectById = "SELECT IdFilme, Titulo FROM Filmes WHERE  IdFilme = @ID";

               
                con.Open();

                
                SqlDataReader rdr;

                
                using (SqlCommand cmd = new SqlCommand(querySelectById, con))
                {
                    // Passa o valor do parâmetro
                    cmd.Parameters.AddWithValue("@ID", id);

                    // Executa a query
                    rdr = cmd.ExecuteReader();

                    // Caso a o resultado da query possua registro
                    if (rdr.Read())
                    {
                      
                        FilmeDomain filme = new FilmeDomain
                        {
                           
                            IdFilme = Convert.ToInt32(rdr["IdFilme"]),

                            

                            Titulo = rdr["Titulo"].ToString()
                        };

                        // Retorna o genero com os dados obtidos
                        return filme;
                    }

                    // Caso o resultado da query não possua registros, retorna null
                    return null;
                }
            }
        }

        public void Cadastrar(FilmeDomain filme)
        {
            // Declara a conexão passando a string de conexão
            using (SqlConnection con = new SqlConnection(stringConexao))
            {
           
                // Declara a query que será executada passando o valor como parâmetro, evitando assim os problemas acima
                string queryInsert = "INSERT INTO Filmes(Titulo) VALUES (@Titulo)";

                // Declara o comando passando a query e a conexão
                SqlCommand cmd = new SqlCommand(queryInsert, con);

                // Passa o valor do parâmetro
                cmd.Parameters.AddWithValue("@Titulo", filme.Titulo);

                // Abre a conexão com o banco de dados
                con.Open();

                // Executa o comando
                cmd.ExecuteNonQuery();
            }
        }

        public void Deletar(int id)
        {
      
            using (SqlConnection con = new SqlConnection(stringConexao))
            {
            
                string queryDelete = "DELETE FROM Filmes WHERE IdFilme = @ID";

                // Declara o comando passando a query e a conexão
                using (SqlCommand cmd = new SqlCommand(queryDelete, con))
                {
                    // Passa o valor do parâmetro
                    cmd.Parameters.AddWithValue("@ID", id);

                    // Abre a conexão com o banco de dados
                    con.Open();

                    // Executa o comando
                    cmd.ExecuteNonQuery();
                }
            }
        }


        // lista todos os filmes//
        public List<FilmeDomain> Listar()
        {
            
            List<FilmeDomain> filmes = new List<FilmeDomain>();

           
            using (SqlConnection con = new SqlConnection(stringConexao))
            {
               
                string querySelectAll = "SELECT IdFilme, Titulo from Filmes";

               
                con.Open();

               
                SqlDataReader rdr;

                
                using (SqlCommand cmd = new SqlCommand(querySelectAll, con))
                {
                   
                    rdr = cmd.ExecuteReader();

                    
                    while (rdr.Read())
                    {
                        
                        FilmeDomain filme = new FilmeDomain
                        {
                           
                            IdFilme = Convert.ToInt32(rdr[0]),

                            
                            Titulo = rdr["Titulo"].ToString()
                        };

                        
                        filmes.Add(filme);
                    }
                }
            }
          return filmes;
        }

    }
}
