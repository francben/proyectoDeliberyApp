using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DeliverYApp.Models;

namespace DeliverYApp.Controllers
{
    public class NavegacionesController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Navegaciones
        public ActionResult Index()
        {
            return View(db.Navegacions.ToList());
        }

        [ChildActionOnly]
        public ActionResult MenuPrincipal()
        {
            List<Navegacion> menuItems = db.Navegacions.Where(b => b.PadreId == 0).Where(b => b.Activo == true).ToList();

            //Get the menuItems collection from somewhere
            if (menuItems != null || menuItems.Count > 0)
            {
                return View(menuItems);
            }
            TempData["notice"] = "Listado de menús vacíos";
            return View();
        }


        // GET: Navegaciones/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Navegacion navegacion = db.Navegacions.Find(id);
            if (navegacion == null)
            {
                return HttpNotFound();
            }
            return View(navegacion);
        }

        // GET: Navegaciones/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Navegaciones/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,PadreId,Nombre,Descripcion,Accion,Controlador,Activo")] Navegacion navegacion)
        {
            if (ModelState.IsValid)
            {
                db.Navegacions.Add(navegacion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(navegacion);
        }

        // GET: Navegaciones/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Navegacion navegacion = db.Navegacions.Find(id);
            if (navegacion == null)
            {
                return HttpNotFound();
            }
            return View(navegacion);
        }

        // POST: Navegaciones/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,PadreId,Nombre,Descripcion,Accion,Controlador,Activo")] Navegacion navegacion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(navegacion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(navegacion);
        }

        // GET: Navegaciones/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Navegacion navegacion = db.Navegacions.Find(id);
            if (navegacion == null)
            {
                return HttpNotFound();
            }
            return View(navegacion);
        }

        // POST: Navegaciones/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Navegacion navegacion = db.Navegacions.Find(id);
            db.Navegacions.Remove(navegacion);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
