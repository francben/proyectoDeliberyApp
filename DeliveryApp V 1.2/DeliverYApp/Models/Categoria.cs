using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DeliverYApp.Models
{
    public class Categoria
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

        [Required(ErrorMessage = "Debe seleccionar un menu")]
        [Display(Name = "Menu")]
        public int MenuId { get; set; }
        [ForeignKey("MenuId")]
        public virtual Menu Menu { get; set; }

        public virtual ICollection<Precio> Precio { get; set; }
    }
}