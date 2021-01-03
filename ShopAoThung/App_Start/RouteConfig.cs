using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace ShopAoThung
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {   
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
              name: "detail Order",
              url: "thong-tin-don-hang/{id}",
              defaults: new { controller = "TrackOrder", action = "DetailOrder", id = UrlParameter.Optional }
              );

            routes.MapRoute(
          name: "login",
          url: "dang-nhap",
          defaults: new { controller = "AuthSite", action = "login", id = UrlParameter.Optional }
          );

            routes.MapRoute(
          name: "register",
          url: "dang-ky",
          defaults: new { controller = "AuthSite", action = "register", id = UrlParameter.Optional }
          );


            routes.MapRoute(
        name: "thanh-toan",
        url: "thanh-toan",
        defaults: new { controller = "Checkout", action = "Index", id = UrlParameter.Optional }
        );
            routes.MapRoute(
      name: "huy thanh toan online",
      url: "cancel-order",
      defaults: new { controller = "Checkout", action = "cancel_order", id = UrlParameter.Optional }
      );
            routes.MapRoute(
           name: "thanh toan thanh cong",
           url: "confirm-orderPaymentOnline",
           defaults: new { controller = "Checkout", action = "confirm_orderPaymentOnline", id = UrlParameter.Optional }
           );
            routes.MapRoute(
           name: "huy thanh toan online momo",
           url: "cancel-order-momo",
           defaults: new { controller = "Checkout", action = "cancel_order_momo", id = UrlParameter.Optional }
           );

            routes.MapRoute(
           name: "thanh toan thanh cong momo",
           url: "confirm-orderPaymentOnline-momo",
           defaults: new { controller = "Checkout", action = "confirm_orderPaymentOnline_momo", id = UrlParameter.Optional }
           );
            routes.MapRoute(
        name: "Searchs",
        url: "tim-kiem",
        defaults: new { controller = "Search", action = "Searchs", id = UrlParameter.Optional }
        );
            routes.MapRoute(
          name: "theo doi don hang",
          url: "theo-doi-don-hang",
          defaults: new { controller = "TrackOrder", action = "index", id = UrlParameter.Optional }
          );
        
                    routes.MapRoute(
        name: "SanphamDetail",
        url: "chi-tiet-san-pham/{slug}",
        defaults: new { controller = "Detail", action = "Details", id = UrlParameter.Optional }
        );
                    routes.MapRoute(
         name: "SanphamCat",
         url: "san-pham/{slug}",
         defaults: new { controller = "Productcategory", action = "Category", id = UrlParameter.Optional }
        );
            routes.MapRoute(
        name: "giohang",
        url: "giohang",
        defaults: new { controller = "Cart", action = "Index", id = UrlParameter.Optional }
        );
            routes.MapRoute(
             name: "lienhe",
             url: "lien-he",
             defaults: new { controller = "Contact", action = "Index", id = UrlParameter.Optional }
             );
            routes.MapRoute(
        name: "Gioithieu",
        url: "gioi-thieu",
        defaults: new { controller = "Introduce", action = "Index", id = UrlParameter.Optional }
        );

            routes.MapRoute(
        name: "Default",
        url: "{controller}/{action}/{id}",
        defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
        );
        }
    }
}
