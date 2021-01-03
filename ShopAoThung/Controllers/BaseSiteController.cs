using ShopAoThung.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace ShopAoThung.Controllers
{
    public class BaseSiteController : Controller
    {
        // GET: BaseSite
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
            Muser sessionUser = (Muser)Session[Common.CommonConstants.CUSTOMER_SESSION];
            if (sessionUser == null)
            {
                RouteValueDictionary route = new RouteValueDictionary(new { Controller = "Home", Action = "Index" });
                Message.set_flash("Bạn phải đăng nhập", "danger");
                filterContext.Result = new RedirectToRouteResult(route);
                return;
            }
        }
    }
}