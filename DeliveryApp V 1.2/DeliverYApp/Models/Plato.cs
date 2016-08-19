using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DeliverYApp.Models
{
    public class Plato
    {
        [HiddenInput(DisplayValue = true)]
        public int Id { get; set; }

        [Required(ErrorMessage = "El nombre es requerido")]
        [StringLength(30, MinimumLength = 3)]
        public String Nombre { get; set; }

        [Required(ErrorMessage = "El tiempo estimado es requerido")]
        [DataType(DataType.Time)]
        [Display(Name = "Tiempo estimado")]
        [DisplayFormat(DataFormatString = "{0:HH:mm:ss}", ApplyFormatInEditMode = true)]
        public DateTime Tiempo { get; set; }

        [DataType(DataType.ImageUrl)]
        public String Imagen { get; set; }

        public bool Estado { get; set; }

        public virtual ICollection<Precio> Precio { get; set; }
    }
}