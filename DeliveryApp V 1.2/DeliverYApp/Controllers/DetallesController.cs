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
    public class DetallesController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Detalles
        public ActionResult Index()
        {
            var detalles = db.Detalles.Include(d => d.Pedido).Include(d => d.Plato);
            return View(detalles.ToList());
        }

        // GET: Detalles/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Detalles detalles = db.Detalles.Find(id);
            if (detalles == null)
            {
                return HttpNotFound();
            }
            return View(detalles);
        }

        // GET: Detalles/Create
        public ActionResult Create()
        {
            ViewBag.PedidoId = new SelectList(db.Pedidoes, "Id", "Direccion");
            ViewBag.PlatoId = new SelectList(db.Platoes, "Id", "Nombre");
            return View();
        }

        // POST: Detalles/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,PedidoId,PlatoId,Cantidad,Precio")] Detalles detalles)
        {
            if (ModelState.IsValid)
            {
                db.Detalles.Add(detalles);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.PedidoId = new SelectList(db.Pedidoes, "Id", "Direccion", detalles.PedidoId);
            ViewBag.PlatoId = new SelectList(db.Platoes, "Id", "Nombre", detalles.PlatoId);
            return View(detalles);
        }

        // GET: Detalles/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Detalles detalles = db.Detalles.Find(id);
            if (detalles == null)
            {
                return HttpNotFound();
            }
            ViewBag.PedidoId = new SelectList(db.Pedidoes, "Id", "Direccion", detalles.PedidoId);
            ViewBag.PlatoId = new SelectList(db.Platoes, "Id", "Nombre", detalles.PlatoId);
            return View(detalles);
        }

        // POST: Detalles/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,PedidoId,PlatoId,Cantidad,Precio")] Detalles detalles)
        {
            if (ModelState.IsValid)
            {
                db.Entry(detalles).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PedidoId = new SelectList(db.Pedidoes, "Id", "Direccion", detalles.PedidoId);
            ViewBag.PlatoId = new SelectList(db.Platoes, "Id", "Nombre", detalles.PlatoId);
            return View(detalles);
        }

        // GET: Detalles/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Detalles detalles = db.Detalles.Find(id);
            if (detalles == null)
            {
                return HttpNotFound();
            }
            return View(detalles);
        }

        // POST: Detalles/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Detalles detalles = db.Detalles.Find(id);
            db.Detalles.Remove(detalles);
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
