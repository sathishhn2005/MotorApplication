using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MotorApp.BAL;
using MotorApp.Models;

namespace MotorApp.Controllers
{
    public class SuperAdminController : Controller
    {
        MotorBAL objBAL = new MotorBAL();
        // GET: SuperAdmin
        public ActionResult UserRegister()
        {
            if (Session["UserName"] != null)
            {
                ViewBag.UserName = Session["UserName"].ToString();
            }
            return View();
        }
        [HttpPost]
        public ActionResult Register(LoginViewModel obj)
        {
            try
            {
                long returnCode = -1;
                if (Session["UserName"] != null)
                {
                    ViewBag.UserName = Session["UserName"].ToString();
                }
                if (!string.IsNullOrEmpty(obj.UserName) && !string.IsNullOrEmpty(obj.Role.ToString()))
                {

                    returnCode = objBAL.RegisterUser(obj);

                }
                else
                {
                    returnCode = -2;
                    return Json(new { msg = returnCode });
                }
                return Json(new { msg = returnCode });
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }

}