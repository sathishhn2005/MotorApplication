using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MotorApp.Models;

namespace MotorApp.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult Login()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Login(LoginViewModel objModels)
        {
            try
            {
                if (objModels.Email != null && objModels.Password != null)
                {
                    return View("Index");
                }
                else
                {
                    return View("Login");
                }
            }
            catch (Exception ex)
            {
                return View("Login");
            }

        }
    }
}