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
    public class PantsController : Controller
    {
        private WardrobeDbEntities db = new WardrobeDbEntities();

        // GET: Pants
        public ActionResult Index()
        {
            var pants = db.Pants.Include(p => p.PantColor).Include(p => p.PantOccasion).Include(p => p.PantSeason).Include(p => p.PantType);
            return View(pants.ToList());
        }

        // GET: Pants/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pant pant = db.Pants.Find(id);
            if (pant == null)
            {
                return HttpNotFound();
            }
            return View(pant);
        }

        // GET: Pants/Create
        public ActionResult Create()
        {
            ViewBag.PantColorId = new SelectList(db.PantColors, "PantColorId", "PantColor1");
            ViewBag.PantOccasionId = new SelectList(db.PantOccasions, "PantOccasionId", "PantOccasions");
            ViewBag.PantSeasonId = new SelectList(db.PantSeasons, "PantSeasonId", "PantSeason1");
            ViewBag.PantTypeId = new SelectList(db.PantTypes, "PantTypeId", "PantType1");
            return View();
        }

        // POST: Pants/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PantId,PantName,PantPhoto,PantTypeId,PantColorId,PantSeasonId,PantOccasionId,PantNotes")] Pant pant)
        {
            if (ModelState.IsValid)
            {
                db.Pants.Add(pant);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.PantColorId = new SelectList(db.PantColors, "PantColorId", "PantColor1", pant.PantColorId);
            ViewBag.PantOccasionId = new SelectList(db.PantOccasions, "PantOccasionId", "PantOccasions", pant.PantOccasionId);
            ViewBag.PantSeasonId = new SelectList(db.PantSeasons, "PantSeasonId", "PantSeason1", pant.PantSeasonId);
            ViewBag.PantTypeId = new SelectList(db.PantTypes, "PantTypeId", "PantType1", pant.PantTypeId);
            return View(pant);
        }

        // GET: Pants/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pant pant = db.Pants.Find(id);
            if (pant == null)
            {
                return HttpNotFound();
            }
            ViewBag.PantColorId = new SelectList(db.PantColors, "PantColorId", "PantColor1", pant.PantColorId);
            ViewBag.PantOccasionId = new SelectList(db.PantOccasions, "PantOccasionId", "PantOccasions", pant.PantOccasionId);
            ViewBag.PantSeasonId = new SelectList(db.PantSeasons, "PantSeasonId", "PantSeason1", pant.PantSeasonId);
            ViewBag.PantTypeId = new SelectList(db.PantTypes, "PantTypeId", "PantType1", pant.PantTypeId);
            return View(pant);
        }

        // POST: Pants/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PantId,PantName,PantPhoto,PantTypeId,PantColorId,PantSeasonId,PantOccasionId,PantNotes")] Pant pant)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pant).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PantColorId = new SelectList(db.PantColors, "PantColorId", "PantColor1", pant.PantColorId);
            ViewBag.PantOccasionId = new SelectList(db.PantOccasions, "PantOccasionId", "PantOccasions", pant.PantOccasionId);
            ViewBag.PantSeasonId = new SelectList(db.PantSeasons, "PantSeasonId", "PantSeason1", pant.PantSeasonId);
            ViewBag.PantTypeId = new SelectList(db.PantTypes, "PantTypeId", "PantType1", pant.PantTypeId);
            return View(pant);
        }

        // GET: Pants/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pant pant = db.Pants.Find(id);
            if (pant == null)
            {
                return HttpNotFound();
            }
            return View(pant);
        }

        // POST: Pants/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Pant pant = db.Pants.Find(id);
            db.Pants.Remove(pant);
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
