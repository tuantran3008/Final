using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopAoThung.Models;   

namespace ShopAoThung.Controllers
{
    public class SearchController : Controller
    {
        BookstoreDbContext db = new BookstoreDbContext();
        // GET: Search
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Searchs(string keyword)
        {
            var model = db.Products.Where(m => m.name.Contains(keyword)).ToList();
            ViewBag.Keyword = keyword;
            return View(model);
        }
    }
}