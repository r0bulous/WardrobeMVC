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
    public class OutfitsController : Controller
    {
        private WardrobeDbEntities db = new WardrobeDbEntities();

        // GET: Outfits
        public ActionResult Index()
        {
            var outfits = db.Outfits.Include(o => o.Belt).Include(o => o.Pant).Include(o => o.Shirt).Include(o => o.Sho);
            return View(outfits.ToList());
        }

        // GET: Outfits/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Outfit outfit = db.Outfits.Find(id);
            if (outfit == null)
            {
                return HttpNotFound();
            }
            return View(outfit);
        }

        // GET: Outfits/Create
        public ActionResult Create()
        {
            ViewBag.BeltId = new SelectList(db.Belts, "BeltId", "BeltName");
            ViewBag.PantId = new SelectList(db.Pants, "PantId", "PantName");
            ViewBag.ShirtId = new SelectList(db.Shirts, "ShirtId", "ShirtName");
            ViewBag.ShoeId = new SelectList(db.Shoes, "ShoeId", "ShoeName");
            return View();
        }

        // POST: Outfits/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "OutfitId,OutfitName,ShirtId,PantId,ShoeId,BeltId,OutfitNotes")] Outfit outfit)
        {
            if (ModelState.IsValid)
            {
                db.Outfits.Add(outfit);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.BeltId = new SelectList(db.Belts, "BeltId", "BeltName", outfit.BeltId);
            ViewBag.PantId = new SelectList(db.Pants, "PantId", "PantName", outfit.PantId);
            ViewBag.ShirtId = new SelectList(db.Shirts, "ShirtId", "ShirtName", outfit.ShirtId);
            ViewBag.ShoeId = new SelectList(db.Shoes, "ShoeId", "ShoeName", outfit.ShoeId);
            return View(outfit);
        }

        // GET: Outfits/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Outfit outfit = db.Outfits.Find(id);
            if (outfit == null)
            {
                return HttpNotFound();
            }
            ViewBag.BeltId = new SelectList(db.Belts, "BeltId", "BeltName", outfit.BeltId);
            ViewBag.PantId = new SelectList(db.Pants, "PantId", "PantName", outfit.PantId);
            ViewBag.ShirtId = new SelectList(db.Shirts, "ShirtId", "ShirtName", outfit.ShirtId);
            ViewBag.ShoeId = new SelectList(db.Shoes, "ShoeId", "ShoeName", outfit.ShoeId);
            return View(outfit);
        }

        // POST: Outfits/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "OutfitId,OutfitName,ShirtId,PantId,ShoeId,BeltId,OutfitNotes")] Outfit outfit)
        {
            if (ModelState.IsValid)
            {
                db.Entry(outfit).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.BeltId = new SelectList(db.Belts, "BeltId", "BeltName", outfit.BeltId);
            ViewBag.PantId = new SelectList(db.Pants, "PantId", "PantName", outfit.PantId);
            ViewBag.ShirtId = new SelectList(db.Shirts, "ShirtId", "ShirtName", outfit.ShirtId);
            ViewBag.ShoeId = new SelectList(db.Shoes, "ShoeId", "ShoeName", outfit.ShoeId);
            return View(outfit);
        }

        // GET: Outfits/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Outfit outfit = db.Outfits.Find(id);
            if (outfit == null)
            {
                return HttpNotFound();
            }
            return View(outfit);
        }

        // POST: Outfits/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Outfit outfit = db.Outfits.Find(id);
            db.Outfits.Remove(outfit);
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
