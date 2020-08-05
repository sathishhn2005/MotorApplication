using System;
using System.IO;
using System.Web;
using System.Web.Mvc;
using MotorApp.Models;
using MotorApp.BAL;
using MotorApp.Utilities;
using MotorApp.BusinessEntities;
using System.Collections.Generic;
using System.Linq;

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
        public ActionResult UploadFiles()
        {
            string filePath = string.Empty;
            int reqFrom = Convert.ToInt32(Request.Form["txtMotorMaster"]);
            // Checking no of files injected in Request object  
            if (Request.Files.Count > 0)
            {
                try
                {
                    HttpPostedFileBase file = Request.Files[0];
                    string fname; string alert = string.Empty; ;
                    int rowsCnt = 0;
                    fname = file.FileName;


                    string path = Server.MapPath("~/Uploads/");
                    filePath = path + Path.GetFileName(file.FileName);
                    string extension = Path.GetExtension(file.FileName);
                    file.SaveAs(filePath);
                    // Returns message that successfully uploaded  
                    if (extension.Equals(".xls") || extension.Equals(".xlsx"))
                    {

                        long returnCode = objMotorBAL.BulkUploadMotor(extension, filePath, reqFrom, out rowsCnt, out string fileMismatchErr);
                        if (returnCode.Equals(0))
                            alert = "All the Records already exists. Try uploading new data.";
                        else if (returnCode > 0)
                            alert = "File Uploaded Successfully!";

                        if (string.IsNullOrEmpty(fileMismatchErr))
                            return Json(alert + Environment.NewLine + "'Total No.of rows in spreadsheet: '" + rowsCnt + "''" + Environment.NewLine + "'Total No.of rows Inserted: '" + returnCode + "'");
                        else
                        {
                            if (reqFrom.Equals(1))
                                return Json("Error.!" + Environment.NewLine + fileMismatchErr + Environment.NewLine + "File Doesn't belongs to Motor Policy");
                            if (reqFrom.Equals(2))
                                return Json("Error.!" + Environment.NewLine + fileMismatchErr + Environment.NewLine + "File Doesn't belongs to Travel Policy");
                            if (reqFrom.Equals(3))
                                return Json("Error.!" + Environment.NewLine + fileMismatchErr + Environment.NewLine + "File Doesn't belongs to Individual Policy");
                            if (reqFrom.Equals(4))
                                return Json("Error.!" + Environment.NewLine + fileMismatchErr + Environment.NewLine + "File Doesn't belongs to Domestic Policy");
                            else
                                return Json("Error occurred.");
                        }


                    }
                    else
                    {
                        return Json("Incorrect file.! Please upload the file with the extension (.xls,xlsx)");
                    }

                }
                catch (Exception ex)
                {
                    return Json("Error occurred. Error details: " + ex.Message);
                }
            }
            else
            {
                return Json("No files selected.");
            }

        }
        /*  [HttpPost]
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
              if (reqFrom.Equals(1))
                  return View("MasterDatabase", motorModel);
              else if (reqFrom.Equals(2))
                  return View("MasterTravel");
              else if (reqFrom.Equals(3))
                  return View("MasterIndividual");
              else
                  return View("MasterDomestic");

          }*/
        public ActionResult MotorInsurance()
        {
            return View();
        }
        [HttpPost]
        public long InsertMotorIns(MotorModel model)
        {
            long returnCode = 1;
            try
            {
                returnCode = objMotorBAL.SaveMotorIns(model);
            }
            catch (Exception ex)
            {

                throw;
            }
            return returnCode;
        }
        [HttpPost]
        public long UpdateMotorIns(MotorModel model)
        {
            long returnCode = 1;
            try
            {
                if (model.SumInsured > 0 && model.RivisedSI > 0 && model.PremiumAmount > 0 && model.MotorId > 0 &&
                    !string.IsNullOrEmpty(model.CustomerCode) && !string.IsNullOrEmpty(model.CustomerName))
                {
                    returnCode = objMotorBAL.UpdateMotorIns(model);
                }
                else
                {
                    returnCode = -2;
                }

            }
            catch (Exception ex)
            {

                throw;
            }
            return returnCode;
        }
        public ActionResult InsertTravelIns()
        {
            return View();
        }
        public ActionResult InsertIndividualIns()
        {
            return View();
        }
        public ActionResult InsertDomesticIns()
        {
            return View();
        }
        [HttpPost]
        public long InsertTravelIns(TravelModel model)
        {
            long returnCode = 1;
            try
            {
                returnCode = objMotorBAL.SaveTravelIns(model);
            }
            catch (Exception ex)
            {

                throw;
            }
            return returnCode;
        }
        [HttpPost]
        public long InsertIndividualIns(IndividualModel model)
        {
            long returnCode = 1;
            try
            {
                returnCode = objMotorBAL.SaveIndIns(model);
            }
            catch (Exception ex)
            {

                throw;
            }
            return returnCode;
        }
        [HttpPost]
        public long InsertDomesticIns(DomesticModel model)
        {
            long returnCode = 1;
            try
            {
                returnCode = objMotorBAL.SaveDomesticIns(model);
            }
            catch (Exception ex)
            {

                throw;
            }
            return returnCode;
        }
        /* [HttpGet]
         public ActionResult SearchMotor(MotorModel objModels)
         {
             //List<MotorModel> lstModel = new List<MotorModel>();
             try
             {
                 motorModel = motorModel.FindAll(c => c.PolicyNo.ToLower().Contains(objModels.PolicyNo));

             }
             catch (Exception ex)
             {
                 return View("MasterDatabase");
             }
             return Json(motorModel, JsonRequestBehavior.AllowGet);

         }*/
        /*Motor Single entry Edit Start*/

        [HttpGet]
        public ActionResult Edit(int MotorId)
        {
            IList<MotorModel> motorList = new List<MotorModel>();
            motorList = motorModel;
            //Get the student from studentList sample collection for demo purpose.
            //Get the student from the database in the real application
            var std = motorList.Where(s => s.MotorId == MotorId).FirstOrDefault();


            return View("MotorInsurance", std);
        }
        [HttpGet]
        public ActionResult EditModal(int MotorId)
        {

            IList<MotorModel> motorList = new List<MotorModel>();
            motorList = motorModel;

            var std = motorList.Where(s => s.MotorId == MotorId).FirstOrDefault();


            return Json(std, JsonRequestBehavior.AllowGet);
        }
        /*Motor Single entry Edit/Add End*/
        /*Travel Single entry Edit/Add Start*/
        [HttpGet]
        public ActionResult EditTravel(int TravelId)
        {
            IList<TravelModel> motorList = new List<TravelModel>();
            motorList = travelModel;
            var obj = motorList.Where(s => s.TravelId == TravelId).FirstOrDefault();
            return View("InsertTravelIns", obj);
        }

        [HttpGet]
        public ActionResult EditTravelModal(int TravelId)
        {
            IList<TravelModel> motorList = new List<TravelModel>();
            motorList = travelModel;
            var std = motorList.Where(s => s.TravelId == TravelId).FirstOrDefault();

            return Json(std, JsonRequestBehavior.AllowGet);
        }
        /*Travel Single entry Edit/Add End*/

        /*Individual Single entry Edit/Add Start*/
        [HttpGet]
        public ActionResult EditIndividualIns(int id)
        {
            IList<IndividualModel> motorList = new List<IndividualModel>();
            motorList = indiviModel;
            var obj = motorList.Where(s => s.IndividualId == id).FirstOrDefault();
            return View("InsertIndividualIns", obj);
        }

        [HttpGet]
        public ActionResult EditIndividualModal(int IndId)
        {
            IList<TravelModel> motorList = new List<TravelModel>();
            motorList = travelModel;
            var std = motorList.Where(s => s.TravelId == IndId).FirstOrDefault();

            return Json(std, JsonRequestBehavior.AllowGet);
        }
        /*Individual Single entry Edit/Add End*/

        /*Domestic Single entry Edit/Add Start*/
        [HttpGet]
        public ActionResult EditDomesticIns(int id)
        {
            IList<DomesticModel> motorList = new List<DomesticModel>();
            motorList = domesModel;
            var obj = motorList.Where(s => s.DomesticId == id).FirstOrDefault();
            return View("InsertDomesticIns", obj);
        }

        [HttpGet]
        public ActionResult EditDomesticModal(int DomesticId)
        {
            IList<DomesticModel> motorList = new List<DomesticModel>();
            motorList = domesModel;
            var std = motorList.Where(s => s.DomesticId == DomesticId).FirstOrDefault();

            return Json(std, JsonRequestBehavior.AllowGet);
        }
        /*Individual Single entry Edit/Add End*/
    }
}
