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
    public class ShoesController : Controller
    {
        private WardrobeDbEntities db = new WardrobeDbEntities();

        // GET: Shoes
        public ActionResult Index()
        {
            var shoes = db.Shoes.Include(s => s.ShoeColor).Include(s => s.ShoeOccasion).Include(s => s.ShoeSeason).Include(s => s.ShoeType);
            return View(shoes.ToList());
        }

        // GET: Shoes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sho sho = db.Shoes.Find(id);
            if (sho == null)
            {
                return HttpNotFound();
            }
            return View(sho);
        }

        // GET: Shoes/Create
        public ActionResult Create()
        {
            ViewBag.ShoeColorId = new SelectList(db.ShoeColors, "ShoeColorId", "ShoeColorName");
            ViewBag.ShoeOccasionId = new SelectList(db.ShoeOccasions, "ShoeOccasionId", "ShoeOccasion1");
            ViewBag.ShoeSeasonId = new SelectList(db.ShoeSeasons, "ShoeSeasonId", "ShoeSeason1");
            ViewBag.ShoeTypeId = new SelectList(db.ShoeTypes, "ShoeTypeId", "ShoeType1");
            return View();
        }

        // POST: Shoes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ShoeId,ShoeName,ShoePhoto,ShoeTypeId,ShoeColorId,ShoeSeasonId,ShoeOccasionId,ShoeNotes")] Sho sho)
        {
            if (ModelState.IsValid)
            {
                db.Shoes.Add(sho);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ShoeColorId = new SelectList(db.ShoeColors, "ShoeColorId", "ShoeColorName", sho.ShoeColorId);
            ViewBag.ShoeOccasionId = new SelectList(db.ShoeOccasions, "ShoeOccasionId", "ShoeOccasion1", sho.ShoeOccasionId);
            ViewBag.ShoeSeasonId = new SelectList(db.ShoeSeasons, "ShoeSeasonId", "ShoeSeason1", sho.ShoeSeasonId);
            ViewBag.ShoeTypeId = new SelectList(db.ShoeTypes, "ShoeTypeId", "ShoeType1", sho.ShoeTypeId);
            return View(sho);
        }

        // GET: Shoes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sho sho = db.Shoes.Find(id);
            if (sho == null)
            {
                return HttpNotFound();
            }
            ViewBag.ShoeColorId = new SelectList(db.ShoeColors, "ShoeColorId", "ShoeColorName", sho.ShoeColorId);
            ViewBag.ShoeOccasionId = new SelectList(db.ShoeOccasions, "ShoeOccasionId", "ShoeOccasion1", sho.ShoeOccasionId);
            ViewBag.ShoeSeasonId = new SelectList(db.ShoeSeasons, "ShoeSeasonId", "ShoeSeason1", sho.ShoeSeasonId);
            ViewBag.ShoeTypeId = new SelectList(db.ShoeTypes, "ShoeTypeId", "ShoeType1", sho.ShoeTypeId);
            return View(sho);
        }

        // POST: Shoes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ShoeId,ShoeName,ShoePhoto,ShoeTypeId,ShoeColorId,ShoeSeasonId,ShoeOccasionId,ShoeNotes")] Sho sho)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sho).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ShoeColorId = new SelectList(db.ShoeColors, "ShoeColorId", "ShoeColorName", sho.ShoeColorId);
            ViewBag.ShoeOccasionId = new SelectList(db.ShoeOccasions, "ShoeOccasionId", "ShoeOccasion1", sho.ShoeOccasionId);
            ViewBag.ShoeSeasonId = new SelectList(db.ShoeSeasons, "ShoeSeasonId", "ShoeSeason1", sho.ShoeSeasonId);
            ViewBag.ShoeTypeId = new SelectList(db.ShoeTypes, "ShoeTypeId", "ShoeType1", sho.ShoeTypeId);
            return View(sho);
        }

        // GET: Shoes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sho sho = db.Shoes.Find(id);
            if (sho == null)
            {
                return HttpNotFound();
            }
            return View(sho);
        }

        // POST: Shoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Sho sho = db.Shoes.Find(id);
            db.Shoes.Remove(sho);
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
