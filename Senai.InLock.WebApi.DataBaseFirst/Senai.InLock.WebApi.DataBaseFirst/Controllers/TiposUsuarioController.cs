using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Senai.InLock.WebApi.DataBaseFirst.Domains;
using Senai.InLock.WebApi.DataBaseFirst.Interfaces;
using Senai.InLock.WebApi.DataBaseFirst.Repositories;

namespace Senai.InLock.WebApi.DataBaseFirst.Controllers
{
    [Route("application/json")]
    [Route("api/[controller]")]
    [ApiController]
    public class TiposUsuarioController : ControllerBase
    {
        private ITipoUsuarioRepository _tipoUsuarioRepository;

        public TiposUsuarioController()
        {
            _tipoUsuarioRepository = new TipoUsuarioRepository();
        }

        [HttpGet]
        public List<TiposUsuario> Get()
        {
            return _tipoUsuarioRepository.Listar();
        }

        [HttpGet("{id}")]
        public IActionResult GetById(int id)
        {
            return Ok(_tipoUsuarioRepository.BuscarPorId(id));
        }

        [HttpPost]
        public IActionResult Post(TiposUsuario novoTipoUsuario)
        {
            _tipoUsuarioRepository.Cadastrar(novoTipoUsuario);

            return StatusCode(201);
        }

        [HttpPut]
        public IActionResult PutIdCorpo(int id,TiposUsuario TipoUsuarioAtualizado)
        {
            TiposUsuario tiposUsuarioBuscado = _tipoUsuarioRepository.BuscarPorId(TipoUsuarioAtualizado.IdTipoUsuario);

            if (tiposUsuarioBuscado != null)
            {
                try
                {
                    _tipoUsuarioRepository.Atualizar(id,TipoUsuarioAtualizado);

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
                mensagem = "TipoUsuario não encontrado",
                erro = true
            }

            );
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            // Faz a chamada para o método .Deletar();
            _tipoUsuarioRepository.Deletar(id);

            // Retorna um status code com uma mensagem personalizada
            return Ok("TipoUsuario deletado");
        }
    }

    }