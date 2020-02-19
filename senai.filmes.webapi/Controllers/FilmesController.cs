using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using senai.filmes.webapi.Interfaces;
using senai.filmes.webapi.Repositories;
using senai.Filmes.WebApi.Domains;

namespace senai.filmes.webapi.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    [ApiController]
    public class FilmesController : ControllerBase
    {
        private IFilmeRepository _filmeRepository { get; set; }

        public FilmesController()
        {
            _filmeRepository = new FilmeRepository();
        }

        [HttpGet]
        public IEnumerable<FilmeDomain> Get()
        {
            // Faz a chamada para o método .Listar();

            return _filmeRepository.Listar();
        }

        [HttpPost]
        public IActionResult Post(FilmeDomain novoGenero)
        {
            // Faz a chamada para o método .Cadastrar();
            _filmeRepository.Cadastrar(novoGenero);

            // Retorna um status code 201 - Created
            return StatusCode(201);
        }

        [HttpGet("{id}")]
        public IActionResult GetById(int id)
        {

            FilmeDomain generoBuscado = _filmeRepository.BuscarPorId(id);


            if (generoBuscado == null)
            {

                return NotFound("Nenhum gênero encontrado");
            }


            return Ok(generoBuscado);
        }

        [HttpPut]
        public IActionResult PutIdCorpo(FilmeDomain filmeAtualizado)
        {
           
            FilmeDomain generoBuscado = _filmeRepository.BuscarPorId(filmeAtualizado.IdFilme);

            
            if (generoBuscado != null)
            {
                
                try
                {
                    
                    _filmeRepository.AtualizarIdCorpo(filmeAtualizado);

                
                    return NoContent();
                }
            
                catch (Exception erro)
                {
              
                    return BadRequest(erro);
                }

            }
            
            return NotFound
                (
                    new
                    {
                        mensagem = "Filme não encontrado",
                        erro = true
                    }
                );
        }

        [HttpPut("{id}")]
        public IActionResult PutIdUrl(int id, FilmeDomain filmeAtualizado)
        {
           
            FilmeDomain filmeBuscado = _filmeRepository.BuscarPorId(id);

           
            if (filmeBuscado == null)
            {
                
                return NotFound
                    (
                        new
                        {
                            mensagem = "Gênero não encontrado",
                            erro = true
                        }
                    );
            }

            
            try
            {
               
                _filmeRepository.AtualizarIdUrl(id, filmeAtualizado);

             
                return NoContent();
            }

            catch (Exception erro)
            {
             
                return BadRequest(erro);
            }
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            
            _filmeRepository.Deletar(id);

           
            return Ok("Filme deletado");
        }
    }
    }