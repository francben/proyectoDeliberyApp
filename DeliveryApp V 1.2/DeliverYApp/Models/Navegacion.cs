using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DeliverYApp.Models
{
    public class Navegacion
    {
        [HiddenInput(DisplayValue = true)]
        public int Id { get; set; }

        public virtual int PadreId { get; set; }

        [Required(ErrorMessage = "El nombre del menú de navegación es requerido")]
        public string Nombre { get; set; }

        [Required(ErrorMessage = "La descripción del menú de navegación es requerida")]
        public string Descripcion { get; set; }

        public string Accion { get; set; }

        public string Controlador { get; set; }

        public bool Activo { get; set; }

        public List<Navegacion> Hijo()
        {
            ApplicationDbContext db = new ApplicationDbContext();
            return db.Navegacions.Where(b => b.PadreId == this.Id).ToList();
        }
    }
}