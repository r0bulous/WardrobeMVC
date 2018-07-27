using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WardrobeMVC;

namespace WardrobeMVC.Controllers
{
    public class ShirtsController : Controller
    {
        private WardrobeDbEntities db = new WardrobeDbEntities();

        // GET: Shirts
        public ActionResult Index()
        {
            var shirts = db.Shirts.Include(s => s.ShirtColor).Include(s => s.ShirtOccasion).Include(s => s.ShirtSeason).Include(s => s.ShirtType);
            return View(shirts.ToList());
        }

        // GET: Shirts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Shirt shirt = db.Shirts.Find(id);
            if (shirt == null)
            {
                return HttpNotFound();
            }
            return View(shirt);
        }

        // GET: Shirts/Create
        public ActionResult Create()
        {
            ViewBag.ShirtColorId = new SelectList(db.ShirtColors, "ShirtColorId", "ShirtColor1");
            ViewBag.ShirtSeasonId = new SelectList(db.ShirtOccasions, "ShirtOccasionId", "ShirtOccasion1");
            ViewBag.ShirtSeasonId = new SelectList(db.ShirtSeasons, "ShirtSeasonId", "ShirtSeason1");
            ViewBag.ShirtTypeId = new SelectList(db.ShirtTypes, "ShirtTypeId", "ShirtType1");
            return View();
        }

        // POST: Shirts/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ShirtId,ShirtName,ShirtImage,ShirtTypeId,ShirtColorId,ShirtOccasionId,ShirtSeasonId,ShirtNotes")] Shirt shirt)
        {
            if (ModelState.IsValid)
            {
                db.Shirts.Add(shirt);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ShirtColorId = new SelectList(db.ShirtColors, "ShirtColorId", "ShirtColor1", shirt.ShirtColorId);
            ViewBag.ShirtSeasonId = new SelectList(db.ShirtOccasions, "ShirtOccasionId", "ShirtOccasion1", shirt.ShirtSeasonId);
            ViewBag.ShirtSeasonId = new SelectList(db.ShirtSeasons, "ShirtSeasonId", "ShirtSeason1", shirt.ShirtSeasonId);
            ViewBag.ShirtTypeId = new SelectList(db.ShirtTypes, "ShirtTypeId", "ShirtType1", shirt.ShirtTypeId);
            return View(shirt);
        }

        // GET: Shirts/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Shirt shirt = db.Shirts.Find(id);
            if (shirt == null)
            {
                return HttpNotFound();
            }
            ViewBag.ShirtColorId = new SelectList(db.ShirtColors, "ShirtColorId", "ShirtColor1", shirt.ShirtColorId);
            ViewBag.ShirtSeasonId = new SelectList(db.ShirtOccasions, "ShirtOccasionId", "ShirtOccasion1", shirt.ShirtSeasonId);
            ViewBag.ShirtSeasonId = new SelectList(db.ShirtSeasons, "ShirtSeasonId", "ShirtSeason1", shirt.ShirtSeasonId);
            ViewBag.ShirtTypeId = new SelectList(db.ShirtTypes, "ShirtTypeId", "ShirtType1", shirt.ShirtTypeId);
            return View(shirt);
        }

        // POST: Shirts/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ShirtId,ShirtName,ShirtImage,ShirtTypeId,ShirtColorId,ShirtOccasionId,ShirtSeasonId,ShirtNotes")] Shirt shirt)
        {
            if (ModelState.IsValid)
            {
                db.Entry(shirt).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ShirtColorId = new SelectList(db.ShirtColors, "ShirtColorId", "ShirtColor1", shirt.ShirtColorId);
            ViewBag.ShirtSeasonId = new SelectList(db.ShirtOccasions, "ShirtOccasionId", "ShirtOccasion1", shirt.ShirtSeasonId);
            ViewBag.ShirtSeasonId = new SelectList(db.ShirtSeasons, "ShirtSeasonId", "ShirtSeason1", shirt.ShirtSeasonId);
            ViewBag.ShirtTypeId = new SelectList(db.ShirtTypes, "ShirtTypeId", "ShirtType1", shirt.ShirtTypeId);
            return View(shirt);
        }

        // GET: Shirts/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Shirt shirt = db.Shirts.Find(id);
            if (shirt == null)
            {
                return HttpNotFound();
            }
            return View(shirt);
        }

        // POST: Shirts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Shirt shirt = db.Shirts.Find(id);
            db.Shirts.Remove(shirt);
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
