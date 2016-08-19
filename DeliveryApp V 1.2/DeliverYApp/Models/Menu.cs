using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DeliverYApp.Models
{
    public class Menu
    {
        [HiddenInput(DisplayValue = true)]
        public int Id { get; set; }

        [Required(ErrorMessage = "El nombre es requerido")]
        [StringLength(30, MinimumLength = 3)]
        public String Nombre { get; set; }

        [Required(ErrorMessage = "Debe seleccionar un restaurante")]
        [Display(Name = "Restaurante")]
        public int RestauranteId { get; set; }
        [ForeignKey("RestauranteId")]
        public virtual Restaurante Restaurante { get; set; }

        public bool Estado { get; set; }

        public virtual ICollection<Categoria> Categoria { get; set; }
    }
}