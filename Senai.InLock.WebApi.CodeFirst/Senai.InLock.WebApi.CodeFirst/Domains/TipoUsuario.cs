using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.InLock.WebApi.CodeFirst.Domains
{
    public class TipoUsuario
    {
       [Key]

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdTipoUsuario { get; set; }

        [Column(TypeName = "VARCHAR (255)")]
        [Required(ErrorMessage = "O título de usúario é obrigatorio")]
        public string Titulo { get; set; }

        
    }
}
