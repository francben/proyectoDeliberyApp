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
    public class PreciosController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Precios
        public ActionResult Index()
        {
            var precios = db.Precios.Include(p => p.Categoria).Include(p => p.Menu).Include(p => p.Plato).Include(p => p.Restaurante);
            return View(precios.ToList());
        }

        // GET: Precios/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Precio precio = db.Precios.Find(id);
            if (precio == null)
            {
                return HttpNotFound();
            }
            return View(precio);
        }

        // GET: Precios/Create
        public ActionResult Create()
        {
            ViewBag.CategoriaId = new SelectList(db.Categorias, "Id", "Nombre");
            ViewBag.MenuId = new SelectList(db.Menus, "Id", "Nombre");
            ViewBag.PlatoId = new SelectList(db.Platoes, "Id", "Nombre");
            ViewBag.RestauranteId = new SelectList(db.Restaurantes, "Id", "Nombre");
            return View();
        }

        // POST: Precios/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,CategoriaId,MenuId,RestauranteId,PlatoId,Costo")] Precio precio)
        {
            if (ModelState.IsValid)
            {
                db.Precios.Add(precio);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CategoriaId = new SelectList(db.Categorias, "Id", "Nombre", precio.CategoriaId);
            ViewBag.MenuId = new SelectList(db.Menus, "Id", "Nombre", precio.MenuId);
            ViewBag.PlatoId = new SelectList(db.Platoes, "Id", "Nombre", precio.PlatoId);
            ViewBag.RestauranteId = new SelectList(db.Restaurantes, "Id", "Nombre", precio.RestauranteId);
            return View(precio);
        }

        // GET: Precios/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Precio precio = db.Precios.Find(id);
            if (precio == null)
            {
                return HttpNotFound();
            }
            ViewBag.CategoriaId = new SelectList(db.Categorias, "Id", "Nombre", precio.CategoriaId);
            ViewBag.MenuId = new SelectList(db.Menus, "Id", "Nombre", precio.MenuId);
            ViewBag.PlatoId = new SelectList(db.Platoes, "Id", "Nombre", precio.PlatoId);
            ViewBag.RestauranteId = new SelectList(db.Restaurantes, "Id", "Nombre", precio.RestauranteId);
            return View(precio);
        }

        // POST: Precios/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,CategoriaId,MenuId,RestauranteId,PlatoId,Costo")] Precio precio)
        {
            if (ModelState.IsValid)
            {
                db.Entry(precio).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CategoriaId = new SelectList(db.Categorias, "Id", "Nombre", precio.CategoriaId);
            ViewBag.MenuId = new SelectList(db.Menus, "Id", "Nombre", precio.MenuId);
            ViewBag.PlatoId = new SelectList(db.Platoes, "Id", "Nombre", precio.PlatoId);
            ViewBag.RestauranteId = new SelectList(db.Restaurantes, "Id", "Nombre", precio.RestauranteId);
            return View(precio);
        }

        // GET: Precios/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Precio precio = db.Precios.Find(id);
            if (precio == null)
            {
                return HttpNotFound();
            }
            return View(precio);
        }

        // POST: Precios/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Precio precio = db.Precios.Find(id);
            db.Precios.Remove(precio);
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
