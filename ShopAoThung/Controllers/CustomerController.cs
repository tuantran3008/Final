using ShopAoThung.Common;
using ShopAoThung.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopAoThung.Controllers
{
    public class CustomerController : Controller
    {
        private BookstoreDbContext db = new BookstoreDbContext();
        public ActionResult Index()
        {
            Muser sessionUser = (Muser)Session[Common.CommonConstants.CUSTOMER_SESSION];
            if (sessionUser == null)
            {
                Message.set_flash("Bạn cần đăng nhập", "danger");
                return Redirect("~/dang-nhap");
            }
            ViewBag.listOrder = db.Orders.Where(m => m.updated_by == sessionUser.ID).ToList();
            return View("Index", sessionUser);
        }
        public ActionResult logout()
        {         
            Session[Common.CommonConstants.CUSTOMER_SESSION] = null;
            Message.set_flash("Đăng xuất thành công", "success");
            return Redirect("~/dang-nhap");
        }

        public ActionResult formEditCustomer()
        {
            Muser user = (Muser)Session[Common.CommonConstants.CUSTOMER_SESSION];
            return View("_formEditCustomer", user);

        }
        public JsonResult Edit(Muser muser)
        {
            string new_pass = Mystring.ToMD5(muser.password);
            var pass_account = db.Users.Where(m => m.password == new_pass).ToList().Count();
            var uname_account = db.Users.Where(m => m.username == muser.username && m.ID != muser.ID).ToList().Count();
            if (pass_account == 0)
            {
                Message.set_flash("Mật khẩu không đúng", "danger");
                return Json(new { statuss = 1 }, JsonRequestBehavior.AllowGet);
            }
            else if (uname_account > 0)
            {
                Message.set_flash("Tên đăng nhập đã tồn tại", "danger");
                return Json(new { statuss = 2 }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                if (ModelState.IsValid)
                {
                    Muser muser1 = db.Users.Find(muser.ID);
                    muser.access = muser1.access;
                    muser.img = muser1.img;
                    muser.status = muser1.status;
                    muser.password = new_pass;
                    muser.created_at = muser1.created_at;
                    muser.updated_at = DateTime.Now;
                    muser.created_by = muser1.created_by;
                    muser.updated_by = muser1.ID;
                    db.Entry(muser1).CurrentValues.SetValues(muser);
                    db.SaveChanges();
                    Session[Common.CommonConstants.CUSTOMER_SESSION] = null;
                    Session.Add(CommonConstants.CUSTOMER_SESSION, muser);
                    Message.set_flash("Cập nhật thành công", "success");
                    return Json(muser, JsonRequestBehavior.AllowGet);
                }
            }
            return Json(new { statuss = 3 }, JsonRequestBehavior.AllowGet);

        }
    }
}