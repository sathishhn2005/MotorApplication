using System;
using System.IO;
using System.Web;
using System.Web.Mvc;
using MotorApp.Models;
using MotorApp.BAL;
using MotorApp.Utilities;
using MotorApp.BusinessEntities;
using System.Collections.Generic;

namespace MotorApp.Controllers
{

    public class HomeController : Controller
    {
        private List<MotorModel> motorModel;
        private List<TravelModel> travelModel;
        private List<IndividualModel> indiviModel;
        private List<DomesticModel> domesModel;
        public HomeController()
        {
            long returnCode = objMotorBAL.GetMasterViews(out motorModel, out travelModel, out indiviModel, out domesModel);
        }

        MotorBAL objMotorBAL = new MotorBAL();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult MasterDatabase()
        {
            return View(motorModel);
        }
        public ActionResult MasterTravel()
        {
            return View(travelModel);
        }
        public ActionResult MasterIndividual()
        {
            return View(indiviModel);
        }
        public ActionResult MasterDomestic()
        {
            return View(domesModel);
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
        [HttpPost]
        public ActionResult BulkUpload(HttpPostedFileBase postedFile)
        {
            string filePath = string.Empty;
            int reqFrom = Convert.ToInt32(Request["txtMotorMaster"]);


            if (postedFile != null)
            {
                try
                {
                    string path = Server.MapPath("~/Uploads/");
                    if (!Directory.Exists(path))
                    {
                        Directory.CreateDirectory(path);
                    }

                    filePath = path + Path.GetFileName(postedFile.FileName);
                    string extension = Path.GetExtension(postedFile.FileName);
                    postedFile.SaveAs(filePath);
                    long returnCode = objMotorBAL.BulkUploadMotor(extension, filePath, reqFrom);
                    if (returnCode > 0)
                    {
                        ViewBag.BulkUpload = "Data has been uploaded Successfully.!";
                    }
                }
                catch (Exception ex)
                {


                }

            }
            if(reqFrom.Equals(1))
                return View("MasterDatabase");
            else if (reqFrom.Equals(2))
                return View("MasterTravel");
            else if (reqFrom.Equals(3))
                return View("MasterIndividual");
            else
                return View("MasterDomestic");
            
            
            
           
        }


    }
}
