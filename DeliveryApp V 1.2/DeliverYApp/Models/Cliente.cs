using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DeliverYApp.Models
{
    public class Cliente
    {
        [HiddenInput(DisplayValue = true)]
        public int Id { get; set; }

        [Required(ErrorMessage = "El nombre es requerido")]
        [StringLength(30, MinimumLength = 3)]
        public String Nombre { get; set; }

        [Required(ErrorMessage = "El apellido es requerido")]
        [StringLength(30, MinimumLength = 3)]
        public String Apellido { get; set; }

        [Required(ErrorMessage = "El documento es requerido")]
        public int Documento { get; set; }

        [Required(ErrorMessage = "La clave es requerido")]
        [DataType(DataType.Password)]
        [Display(Name = "Clave")]
        public String Clave { get; set; }

        [Required(ErrorMessage = "El Email es requerido")]
        [Display(Name = "Email")]
        [EmailAddress]
        public String Email { get; set; }

        [Required(ErrorMessage = "El teléfono es requerido")]
        [StringLength(30, MinimumLength = 3)]
        public String Telefono { get; set; }

        [Required(ErrorMessage = "La dirección es requerida")]
        [StringLength(30, MinimumLength = 3)]
        public String Direccion { get; set; }

        [Required(ErrorMessage = "El departamento o piso es requerido")]
        [StringLength(30, MinimumLength = 3)]
        public String Departamento { get; set; }

        [Required(ErrorMessage = "El barrio es requerido")]
        [StringLength(30, MinimumLength = 3)]
        public String Barrio { get; set; }

        public bool Estado { get; set; }
    }
}