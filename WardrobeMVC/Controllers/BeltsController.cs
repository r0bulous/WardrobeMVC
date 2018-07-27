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
    public class BeltsController : Controller
    {
        private WardrobeDbEntities db = new WardrobeDbEntities();

        // GET: Belts
        public ActionResult Index()
        {
            var belts = db.Belts.Include(b => b.BeltColor).Include(b => b.BeltOccasion).Include(b => b.BeltSeason).Include(b => b.BeltType);
            return View(belts.ToList());
        }

        // GET: Belts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Belt belt = db.Belts.Find(id);
            if (belt == null)
            {
                return HttpNotFound();
            }
            return View(belt);
        }

        // GET: Belts/Create
        public ActionResult Create()
        {
            ViewBag.BeltColorId = new SelectList(db.BeltColors, "BeltColorId", "BeltColor1");
            ViewBag.BeltOccasionId = new SelectList(db.BeltOccasions, "BeltOccasionId", "BeltOccasion1");
            ViewBag.BeltSeasonId = new SelectList(db.BeltSeasons, "BeltSeasonId", "BeltSeason1");
            ViewBag.BeltTypeId = new SelectList(db.BeltTypes, "BeltTypeId", "BeltType1");
            return View();
        }

        // POST: Belts/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "BeltId,BeltName,BeltImage,BeltTypeId,BeltColorId,BeltOccasionId,BeltSeasonId,BeltNotes")] Belt belt)
        {
            if (ModelState.IsValid)
            {
                db.Belts.Add(belt);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.BeltColorId = new SelectList(db.BeltColors, "BeltColorId", "BeltColor1", belt.BeltColorId);
            ViewBag.BeltOccasionId = new SelectList(db.BeltOccasions, "BeltOccasionId", "BeltOccasion1", belt.BeltOccasionId);
            ViewBag.BeltSeasonId = new SelectList(db.BeltSeasons, "BeltSeasonId", "BeltSeason1", belt.BeltSeasonId);
            ViewBag.BeltTypeId = new SelectList(db.BeltTypes, "BeltTypeId", "BeltType1", belt.BeltTypeId);
            return View(belt);
        }

        // GET: Belts/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Belt belt = db.Belts.Find(id);
            if (belt == null)
            {
                return HttpNotFound();
            }
            ViewBag.BeltColorId = new SelectList(db.BeltColors, "BeltColorId", "BeltColor1", belt.BeltColorId);
            ViewBag.BeltOccasionId = new SelectList(db.BeltOccasions, "BeltOccasionId", "BeltOccasion1", belt.BeltOccasionId);
            ViewBag.BeltSeasonId = new SelectList(db.BeltSeasons, "BeltSeasonId", "BeltSeason1", belt.BeltSeasonId);
            ViewBag.BeltTypeId = new SelectList(db.BeltTypes, "BeltTypeId", "BeltType1", belt.BeltTypeId);
            return View(belt);
        }

        // POST: Belts/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "BeltId,BeltName,BeltImage,BeltTypeId,BeltColorId,BeltOccasionId,BeltSeasonId,BeltNotes")] Belt belt)
        {
            if (ModelState.IsValid)
            {
                db.Entry(belt).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.BeltColorId = new SelectList(db.BeltColors, "BeltColorId", "BeltColor1", belt.BeltColorId);
            ViewBag.BeltOccasionId = new SelectList(db.BeltOccasions, "BeltOccasionId", "BeltOccasion1", belt.BeltOccasionId);
            ViewBag.BeltSeasonId = new SelectList(db.BeltSeasons, "BeltSeasonId", "BeltSeason1", belt.BeltSeasonId);
            ViewBag.BeltTypeId = new SelectList(db.BeltTypes, "BeltTypeId", "BeltType1", belt.BeltTypeId);
            return View(belt);
        }

        // GET: Belts/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Belt belt = db.Belts.Find(id);
            if (belt == null)
            {
                return HttpNotFound();
            }
            return View(belt);
        }

        // POST: Belts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Belt belt = db.Belts.Find(id);
            db.Belts.Remove(belt);
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
