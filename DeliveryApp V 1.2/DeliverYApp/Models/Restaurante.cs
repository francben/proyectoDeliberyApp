using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DeliverYApp.Models
{
    public class Restaurante
    {
        [HiddenInput(DisplayValue = true)]
        public int Id { get; set; }

        [Required(ErrorMessage = "El nombre es requerido")]
        [StringLength(30, MinimumLength = 3)]
        public String Nombre { get; set; }

        [Required(ErrorMessage = "La direccón es requerido")]
        [StringLength(30, MinimumLength = 3)]
        public String Direccion { get; set; }

        [Required(ErrorMessage = "El teléfono es requerido")]
        [StringLength(30, MinimumLength = 3)]
        public String Telefono { get; set; }

        public bool Estado { get; set; }


        public virtual ICollection<Menu> Menu { get; set; }
    }
}