using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DeliverYApp.Models
{
    public class Precio
    {
        [HiddenInput(DisplayValue = true)]
        public int Id { get; set; }

        [Required(ErrorMessage = "Debe seleccionar una categoria")]
        [Display(Name = "Restaurante")]
        public int CategoriaId { get; set; }
        [ForeignKey("CategoriaId")]
        public virtual Categoria Categoria { get; set; }

        [Required(ErrorMessage = "Debe seleccionar un menñu")]
        [Display(Name = "Menu")]
        public int MenuId { get; set; }
        [ForeignKey("MenuId")]
        public virtual Menu Menu { get; set; }

        [Required(ErrorMessage = "Debe seleccionar un restaurante")]
        [Display(Name = "Restaurante")]
        public int RestauranteId { get; set; }
        [ForeignKey("RestauranteId")]
        public virtual Restaurante Restaurante { get; set; }

        [Required(ErrorMessage = "Debe seleccionar un plato")]
        [Display(Name = "Plato")]
        public int PlatoId { get; set; }
        [ForeignKey("PlatoId")]
        public virtual Plato Plato { get; set; }

        [Required(ErrorMessage = "Debe ingresar el precio")]
        public int Costo { get; set; }
    }
}