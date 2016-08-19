using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DeliverYApp.Models
{
    public class Detalles
    {
        [HiddenInput(DisplayValue = true)]
        public int Id { get; set; }


        [Required(ErrorMessage = "Debe seleccionar un pedido")]
        [Display(Name = "Pedido")]
        public int PedidoId { get; set; }
        [ForeignKey("PedidoId")]
        public virtual Pedido Pedido { get; set; }

        [Required(ErrorMessage = "Debe seleccionar un plato")]
        [Display(Name = "Plato")]
        public int PlatoId { get; set; }
        [ForeignKey("PlatoId")]
        public virtual Plato Plato { get; set; }

        [Required(ErrorMessage = "Debe ingresar la cantidad")]
        public int Cantidad { get; set; }

        [Required(ErrorMessage = "Debe ingresar el precio")]
        public int Precio { get; set; }
    }
}