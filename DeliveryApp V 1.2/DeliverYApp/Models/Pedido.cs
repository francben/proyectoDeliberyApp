using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DeliverYApp.Models
{
    public class Pedido
    {
        [HiddenInput(DisplayValue = true)]
        public int Id { get; set; }


        [Required(ErrorMessage = "Debe seleccionar un restaurante")]
        [Display(Name = "Restaurante")]
        public int RestauranteId { get; set; }
        [ForeignKey("RestauranteId")]
        public virtual Restaurante Restaurante { get; set; }


        [Required(ErrorMessage = "Debe seleccionar un cliente")]
        [Display(Name = "Cliente")]
        public int ClienteId { get; set; }
        [ForeignKey("ClienteId")]
        public virtual Cliente Cliente { get; set; }

        [Display(Name = "Creado")]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        [DataType(DataType.Date)]
        [Column(TypeName = "Date")]
        public DateTime Creado { get; set; }

        [Display(Name = "Fecha")]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        [DataType(DataType.Date)]
        [Column(TypeName = "Date")]
        public DateTime Fecha { get; set; }


        [Required(ErrorMessage = "La dirección es requerido")]
        [StringLength(30, MinimumLength = 3)]
        public String Direccion { get; set; }

        [Required(ErrorMessage = "El total es requerido")]
        public int Total { get; set; }

        public bool Recepcionado { get; set; }

        public bool Procesando { get; set; }

        public bool Enviado { get; set; }

        public bool Cobrado { get; set; }

        public virtual ICollection<Detalles> detalles { get; set; }

    }
}