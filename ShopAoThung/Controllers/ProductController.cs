using ShopAoThung.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopAoThung.Controllers
{
    public class ProductController : Controller
    {
        private BookstoreDbContext db = new BookstoreDbContext();
        // GET: Product
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult _thoiTrangNam()
        {
            var list = db.Products.Where(m => m.status == 1 && m.catid == 10).Take(4).ToList();
            return View("_thoitrangnam", list);
        }
        public ActionResult _thoiTrangNu()
        {
            var list = db.Products.Where(m => m.status == 1 && m.catid == 6).Take(4).ToList();
            return View("_thoitrangnu",list);
        }
      
        public ActionResult _thoiTrangTreEm()
        {
            var list = db.Products.Where(m => m.status == 1 && m.catid == 24).Take(4).ToList();
            return View("_thoitrangtreem", list);
        }
        public ActionResult _SanphamBanchay()
        {
            var list = db.Products.Where(m => m.status == 1).OrderByDescending(m=>m.sold).Take(6).ToList();
            return View("_banchay", list);
        }
    }
}