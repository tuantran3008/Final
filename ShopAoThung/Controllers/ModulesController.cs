using ShopAoThung.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopAoThung.Controllers
{
    public class ModulesController : Controller
    {
        // GET: Modules

        private BookstoreDbContext db = new BookstoreDbContext();
        public ActionResult _header()
        {
            Muser sessionUser = (Muser)Session[Common.CommonConstants.CUSTOMER_SESSION];
            if (sessionUser != null)
            {
                ViewBag.fullname = sessionUser.fullname;
            }
            else
            {

                ViewBag.fullname = null;
            }

            return View("_header");
        }
        public ActionResult _mainmenu()
        {
            var list = db.Menus.Where(m => m.parentid == 0 && m.status == 1)
             .Where(m => m.position == "mainmenu").ToList();
            ViewBag.category = db.Categorys.Where(m => m.status == 1).ToList();
            return View("_mainmenu", list);
        }
        

              public ActionResult _subMancategory(int parentid)
                {
                ViewBag.category = db.Categorys.Find(parentid);
                var list = db.Categorys.Where(m => m.parentid == parentid && m.status == 1);
                if (list.Count() != 0)
                {
                    return View("_SUBcategory1", list.ToList());
                }
                else
                {
                    return View("_SUBcategory2", list);
                }

        }
        public ActionResult _Category()
        {
            var list = db.Categorys.Where(m => m.status == 1 && m.parentid ==0).ToList();
            return View("_Categories", list);
        }
        
        public ActionResult SubMainMenu(int parentid)
        {
            int i = 1;
            ViewBag.i = i;
            ViewBag.menuitem = db.Menus.Find(parentid);
            var list = db.Menus.Where(m => m.parentid == parentid && m.status == 1)
                .Where(m => m.position == "mainmenu");
            if (list.Count() != 0)
            {
                return View("_SubMainMenu2", list.ToList());
            }
            else
            {
             
                return View("_SubMainMenu1", list);
                i++;
            }

        }
        public ActionResult _slider()
        {
            var list = db.Sliders.Where(m => m.status == 1 && m.position == "SliderShow").OrderByDescending(m => m.orders).ToList();
            return View("_slider", list);
        }
        public ActionResult _footer()
        {
            return View("_footer");
        }
    }
}