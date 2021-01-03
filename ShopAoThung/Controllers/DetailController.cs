using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopAoThung.Models;
namespace ShopAoThung.Controllers
{
    public class DetailController : Controller
    {
        BookstoreDbContext db = new BookstoreDbContext();
        // GET: Detail
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Details(string slug)
        {
            var product = db.Products.Where(m => m.slug == slug && m.status == 1)
                .First();

            return View(product);
        }
    }
}