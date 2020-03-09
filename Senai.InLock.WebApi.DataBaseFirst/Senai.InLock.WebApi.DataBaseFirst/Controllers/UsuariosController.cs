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
    [Route("api/[controller]")]
    [ApiController]
    public class UsuariosController : ControllerBase
    {
        private IUsuarioRepository _usuarioRepository;

        public UsuariosController()
        {
            _usuarioRepository = new UsuarioRepository();
        }

        [HttpGet]
        public List<Usuarios> Get()
        {
            return _usuarioRepository.Listar();
        }

        [HttpGet("{id}")]
        public IActionResult GetById(int id)
        {
            return Ok(_usuarioRepository.BuscarPorId(id));
        }

        [HttpPost]
        public IActionResult Post(Usuarios novoUsuario)
        {
            _usuarioRepository.Cadastrar(novoUsuario);

            return StatusCode(201);
        }

        [HttpPut]
        public IActionResult PutIdCorpo(int id,Usuarios UsuarioAtualizado)
        {
            Usuarios UsuarioBuscado = _usuarioRepository.BuscarPorId(UsuarioAtualizado.IdUsuario);

            if (UsuarioBuscado != null)
            {
                try
                {
                    _usuarioRepository.Atualizar(id,UsuarioAtualizado);

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
                mensagem = "Usuario não encontrado",
                erro = true
            }

            );
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            // Faz a chamada para o método .Deletar();
            _usuarioRepository.Deletar(id);

            // Retorna um status code com uma mensagem personalizada
            return Ok("Usuario deletado");
        }
    }
 }