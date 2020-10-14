﻿using System;
using System.IO;
using System.Web;
using System.Web.Mvc;
using MotorApp.Models;
using MotorApp.BAL;
using MotorApp.Utilities;
using MotorApp.BusinessEntities;
using System.Collections.Generic;
using System.Linq;
using System.Web.Caching;
using System.Web.Routing;
using System.Web.Services;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using System.Data;

namespace MotorApp.Controllers
{

    public class HomeController : Controller
    {

        private List<MotorModel> motorModel;
        private List<TravelModel> travelModel;
        private List<IndividualModel> indiviModel;
        private List<DomesticModel> domesModel;
        private List<ProducerCodeMaster> lstProducerCodeMaster;
        private List<Insurance> lstNewIns;
        private DashBoard lstInfo;
        string IsExists = string.Empty;
        static string U_Name = string.Empty;
        static long RoleId = 0;
        static int TypeId = 0;
        dynamic lstInput;

        public HomeController()
        {
            if (!string.IsNullOrEmpty(U_Name))
            {
                long returnCode = objMotorBAL.GetMasterViews(out motorModel, out travelModel, out indiviModel, out domesModel, out lstProducerCodeMaster, out lstNewIns);
            }


        }

        public IEnumerable<SelectListItem> lstProItems
        {
            get { return new SelectList(lstProducerCodeMaster, "ProducerCodeId", "ProducerName"); }
        }

        MotorBAL objMotorBAL = new MotorBAL();
        public ActionResult Index()
        {

            string uname = Request.Form["ddlProducer"];
            TypeId = 1;
            if (string.IsNullOrEmpty(uname) || uname.Equals("Admin"))
            {
                if (TempData["Input"] != null)
                {
                    lstInput = TempData["Input"];
                }
                long returnCode = objMotorBAL.GetUserInsInfo(lstInput, out lstInfo);
                //long returnCode = objMotorBAL.GetMIDashBoard(lstInput, out lstInfo);
                ViewBag.RoleId = RoleId;

                ViewBag.TNPYear = lstInfo.TNPYear;
                ViewBag.TNPUnderProcessYear = lstInfo.TNPUnderProcessYear;
                ViewBag.TNPLostYear = lstInfo.TNPLostYear;
                ViewBag.TNPRenewedYear = lstInfo.TNPRenewedYear;
                ViewBag.PercentageRenewedYear = lstInfo.PercentageRenewedYear;

                ViewBag.TNPMonth = lstInfo.TNPMonth;
                ViewBag.TNPLostMonth = lstInfo.TNPLostMonth;
                ViewBag.TNPUnderProcessMonth = lstInfo.TNPUnderProcessMonth;
                ViewBag.TNPRenewedMonth = lstInfo.TNPRenewedMonth;
                ViewBag.PercentageRenewedMonth = lstInfo.PercentageRenewedMonth;

                ViewBag.TNPYearPremium = lstInfo.TNPYearPremium;
                ViewBag.TNPUPYearPremium = lstInfo.TNPUPYearPremium;
                ViewBag.TNPLostYearPremium = lstInfo.TNPLostYearPremium;
                ViewBag.TNPRenewedYearPremium = lstInfo.TNPRenewedYearPremium;
                ViewBag.PercentPremiumRenewedYear = lstInfo.PercentPremiumRenewedYear;

                ViewBag.TNPMonthPremium = lstInfo.TNPMonthPremium;
                ViewBag.TNPLostMonthPremium = lstInfo.TNPLostMonthPremium;
                ViewBag.TNPUPMonthPremium = lstInfo.TNPUPMonthPremium;
                ViewBag.TNPRenewedMonthPremium = lstInfo.TNPRenewedMonthPremium;
                ViewBag.PercentPremiumRenewedMonth = lstInfo.PercentPremiumRenewedMonth;


                //ViewBag.TotPoltoBeRenewed =  lstInfo.TotPoltoBeRenewed;
                //ViewBag.TotPolforRenewal = lstInfo.TotPolforRenewal;
                //ViewBag.NoOfPoRenewed = lstInfo.NoOfPoRenewed;
                //ViewBag.PolicyLost = lstInfo.PolicyLost;
                ViewBag.UserName = "";

                if (lstInfo != null)
                {
                    U_Name = lstInfo.UserName;
                    //    ViewBag.UserName = U_Name;
                }
                if (!returnCode.Equals(1))
                {

                    return RedirectToAction("Login");
                }
                return View(lstInfo);
            }
            else
            {
                long returnCode = objMotorBAL.GetUserReport(uname, out lstInfo);
                ViewBag.RoleId = RoleId;

                ViewBag.TotPoltoBeRenewed = lstInfo.TotPoltoBeRenewed;
                ViewBag.TotPolforRenewal = lstInfo.TotPolforRenewal;
                ViewBag.NoOfPoRenewed = lstInfo.NoOfPoRenewed;
                ViewBag.PolicyLost = lstInfo.PolicyLost;
                return View(lstInfo);
            }
        }
        public ActionResult IndexBI()
        {
            //List<BIDashBoard> lstBIDB = new List<BIDashBoard>();
            //try
            //{
            //    long returnCode = objMotorBAL.GetBIDB(out lstBIDB);
            //}
            //catch (Exception ex)
            //{

            //    throw;
            //}
            return View();
        }

        [HttpGet]
        public JsonResult GetRevenueByYear()
        {
            List<DashBoard> lst = new List<DashBoard>();
            List<DataPoint> dataPoints = new List<DataPoint>();
            dataPoints = objMotorBAL.GetBarChart(TypeId);

            ViewBag.DataPoints = JsonConvert.SerializeObject(dataPoints);

            if (TempData["Input"] != null)
            {
                lstInput = TempData["Input"];
            }
            long returnCode = objMotorBAL.GetUserInsInfo(lstInput, out lstInfo);
            if (lstInfo != null)
                U_Name = lstInfo.UserName;
            if (!returnCode.Equals(1))
            {

                //  return dataPoints;
                return Json(new
                {
                    list = dataPoints
                }, JsonRequestBehavior.AllowGet);
            }
            return Json(new
            {
                list = dataPoints
            }, JsonRequestBehavior.AllowGet);

        }
        [HttpGet]
        public ActionResult MasterDatabase(Insurance objMotorModel)
        {
            ViewBag.RoleId = RoleId;

            string PolicyNo = objMotorModel.PolicyNo ?? "";
            string divisionName = objMotorModel.DivisionName ?? "";
            string AssuredName = objMotorModel.AssuredName ?? "";
            string productName = objMotorModel.ProductName ?? "";
            string instype = objMotorModel.InsType ?? "";

            List<Insurance> lst = new List<Insurance>();

            if (!string.IsNullOrEmpty(PolicyNo) || !string.IsNullOrEmpty(divisionName) || !string.IsNullOrEmpty(productName) || !string.IsNullOrEmpty(AssuredName))

            {
                if (RoleId.Equals(1))
                    lst = lstNewIns.Where(x => x.PolicyNo == PolicyNo || x.DivisionName == divisionName ||
                                      x.AssuredName == AssuredName || x.ProductName == productName || x.InsType == instype).OrderBy(x => x.InsuranceID).ToList();
                else
                    lst = lstNewIns.Where(x => x.PolicyNo == PolicyNo || x.DivisionName == divisionName ||
                                  x.ProductName == productName || x.AssuredName == AssuredName || x.InsType == instype).OrderBy(x => x.InsuranceID).ToList();

                return View(lst);
            }
            else if (RoleId.Equals(1))
                return View(lstNewIns);

            else
                return View(lstNewIns.Where(x => x.InsType == "Motor").OrderBy(x => x.InsuranceID));


            //return View(lstNewIns.Where(x => x.InsType == "Motor").OrderBy(x => x.InsuranceID));

        }
        public ActionResult MasterDatabase()
        {

            ViewBag.RoleId = RoleId;
            if (RoleId.Equals(1))
                return View(motorModel);
            //query.Where(s => s.AgentCode_BrokerCode == lstInfo.UserName).FirstOrDefault();
            //return View(motorModel);
            if (!string.IsNullOrEmpty(U_Name))
                return View(motorModel.Where(x => x.AgentCode == U_Name).OrderBy(x => x.MotorId));
            else
                return View(motorModel);
        }
        [HttpGet]
        public ActionResult MasterTravel(TravelModel objTravelModel)
        {
            ViewBag.RoleId = RoleId;

            string PolicyNo = objTravelModel.PolicyNo ?? "";
            string AgentCode_BrokerCode = objTravelModel.Broker_AgentCode ?? "";
            string Branch = objTravelModel.Branch ?? "";

            string AssuredName = objTravelModel.AssuredName ?? "";
            string Status = objTravelModel.Status ?? "";

            List<TravelModel> lst = new List<TravelModel>();

            if (!string.IsNullOrEmpty(PolicyNo) || !string.IsNullOrEmpty(AgentCode_BrokerCode) || !string.IsNullOrEmpty(Branch) || !string.IsNullOrEmpty(AssuredName)
                || !string.IsNullOrEmpty(Status))
            {
                if (RoleId.Equals(1))
                    lst = travelModel.Where(x => x.PolicyNo == PolicyNo || x.Broker_AgentCode == AgentCode_BrokerCode ||
                                      x.Branch == Branch || x.AssuredName == AssuredName && x.Status == Status).OrderBy(x => x.TravelId).ToList();
                else
                    lst = travelModel.Where(x => x.PolicyNo == PolicyNo || x.Broker_AgentCode == AgentCode_BrokerCode ||
                                  x.Branch == Branch || x.AssuredName == AssuredName || x.Status == Status && x.AgentCode == U_Name).OrderBy(x => x.TravelId).ToList();

                return View(lst);
            }
            else if (RoleId.Equals(1))
                return View(travelModel);

            else
                return View(travelModel.Where(x => x.AgentCode == U_Name).OrderBy(x => x.TravelId));



        }
        /* public ActionResult MasterTravel()
         {
             ViewBag.RoleId = RoleId;
             if (RoleId.Equals(1))
                 return View(travelModel);
             if (!string.IsNullOrEmpty(U_Name))
                 return View(travelModel.Where(x => x.AgentCode == U_Name).OrderBy(x => x.TravelId));
             else
                 return View(travelModel);
         }*/
        /* public ActionResult MasterIndividual()
         {
             ViewBag.RoleId = RoleId;
             if (RoleId.Equals(1))
                 return View(indiviModel);
             if (!string.IsNullOrEmpty(U_Name))
                 return View(indiviModel.Where(x => x.AgentCode == U_Name).OrderBy(x => x.IndividualId));
             else
                 return View(indiviModel);
         }*/
        [HttpGet]
        public ActionResult MasterIndividual(IndividualModel objInd)
        {
            ViewBag.RoleId = RoleId;

            string PolicyNo = objInd.PolicyNo ?? "";
            string AgentCode_BrokerCode = objInd.Broker_AgentCode ?? "";
            string Branch = objInd.Branch ?? "";

            string AssuredName = objInd.LifeAssuredName ?? "";
            string Status = objInd.Status ?? "";

            List<IndividualModel> lst = new List<IndividualModel>();

            if (!string.IsNullOrEmpty(PolicyNo) || !string.IsNullOrEmpty(AgentCode_BrokerCode) || !string.IsNullOrEmpty(Branch) || !string.IsNullOrEmpty(AssuredName)
                || !string.IsNullOrEmpty(Status))
            {
                if (RoleId.Equals(1))
                    lst = indiviModel.Where(x => x.PolicyNo == PolicyNo || x.Broker_AgentCode == AgentCode_BrokerCode ||
                                      x.Branch == Branch || x.LifeAssuredName == AssuredName && x.Status == Status).OrderBy(x => x.IndividualId).ToList();
                else
                    lst = indiviModel.Where(x => x.PolicyNo == PolicyNo || x.Broker_AgentCode == AgentCode_BrokerCode ||
                                  x.Branch == Branch || x.LifeAssuredName == AssuredName || x.Status == Status && x.AgentCode == U_Name).OrderBy(x => x.IndividualId).ToList();

                return View(lst);
            }
            else if (RoleId.Equals(1))
                return View(indiviModel);

            else
                return View(indiviModel.Where(x => x.AgentCode == U_Name).OrderBy(x => x.IndividualId));



        }
        /*   public ActionResult MasterDomestic()
           {
               ViewBag.RoleId = RoleId;
               if (RoleId.Equals(1))
                   return View(domesModel);
               if (!string.IsNullOrEmpty(U_Name))
                   return View(domesModel.Where(x => x.AgentCode == U_Name).OrderBy(x => x.DomesticId));
               else
                   return View(domesModel);

           }*/
        [HttpGet]
        public ActionResult MasterDomestic(DomesticModel objDom)
        {
            ViewBag.RoleId = RoleId;

            string PolicyNo = objDom.PolicyNo ?? "";
            string AgentCode_BrokerCode = objDom.Broker_AgentCode ?? "";
            string Branch = objDom.Branch ?? "";

            string AssuredName = objDom.AssuredName ?? "";
            string Status = objDom.Status ?? "";

            List<DomesticModel> lst = new List<DomesticModel>();

            if (!string.IsNullOrEmpty(PolicyNo) || !string.IsNullOrEmpty(AgentCode_BrokerCode) || !string.IsNullOrEmpty(Branch) || !string.IsNullOrEmpty(AssuredName)
                || !string.IsNullOrEmpty(Status))
            {
                if (RoleId.Equals(1))
                    lst = domesModel.Where(x => x.PolicyNo == PolicyNo || x.Broker_AgentCode == AgentCode_BrokerCode ||
                                      x.Branch == Branch || x.AssuredName == AssuredName && x.Status == Status).OrderBy(x => x.DomesticId).ToList();
                else
                    lst = domesModel.Where(x => x.PolicyNo == PolicyNo || x.Broker_AgentCode == AgentCode_BrokerCode ||
                                  x.Branch == Branch || x.AssuredName == AssuredName || x.Status == Status && x.AgentCode == U_Name).OrderBy(x => x.DomesticId).ToList();

                return View(lst);
            }
            else if (RoleId.Equals(1))
                return View(domesModel);

            else
                return View(domesModel.Where(x => x.AgentCode == U_Name).OrderBy(x => x.DomesticId));

        }
        public ActionResult Login()
        {
            if (TempData["IsExists"] == null)
                TempData["IsExists"] = "";
            if (!string.IsNullOrEmpty(TempData["IsExists"].ToString()))
            {
                ViewBag.NotFound = TempData["IsExists"].ToString();
            }
            return View();
        }
        [HttpGet]
        public ActionResult LoginMotor(LoginViewModel objModels)
        {
            try
            {
                if (objModels.UserName != null && objModels.Password != null && objModels.Role.ToString() != null)
                {

                    long returnCode = objMotorBAL.IsUserExists(objModels);
                    if (returnCode > 0)
                    {
                        RoleId = returnCode;
                        ViewBag.RoleId = RoleId;
                        lstInput = objModels;
                        TempData["Input"] = lstInput;
                        return RedirectToAction("Index");
                    }
                    else
                    {
                        TempData["IsExists"] = "User not found";
                        return RedirectToAction("Login");
                    }
                    //lstInput = objModels;
                    //TempData["Input"] = lstInput;
                    //return RedirectToAction("Index");
                }
                else
                {
                    ViewBag.Err = "Please Provide all the mandatory fields.";
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
            string textAlert = string.Empty;
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
                        {
                            alert = "All the Records already exists. Try uploading new data.";
                            textAlert = "same";
                        }
                        else if (returnCode > 0)
                        {
                            alert = "File Uploaded Successfully!";
                            textAlert = "success";
                        }

                        if (string.IsNullOrEmpty(fileMismatchErr))
                            //return Json(alert + Environment.NewLine + "'Total No.of rows in spreadsheet: '" + rowsCnt + "''" + Environment.NewLine + "'Total No.of rows Inserted: '" + returnCode + "'");
                            return Json(textAlert);
                        else
                        {
                            if (reqFrom.Equals(1))
                                //return Json("Error.!" + Environment.NewLine + fileMismatchErr + Environment.NewLine + "File Doesn't belongs to Motor Policy");
                                return Json(reqFrom);
                            if (reqFrom.Equals(2))
                                //return Json("Error.!" + Environment.NewLine + fileMismatchErr + Environment.NewLine + "File Doesn't belongs to Travel Policy");
                                return Json(reqFrom);
                            if (reqFrom.Equals(3))
                                // return Json("Error.!" + Environment.NewLine + fileMismatchErr + Environment.NewLine + "File Doesn't belongs to Individual Policy");
                                return Json(reqFrom);
                            if (reqFrom.Equals(4))
                                //return Json("Error.!" + Environment.NewLine + fileMismatchErr + Environment.NewLine + "File Doesn't belongs to Domestic Policy");
                                return Json(reqFrom);
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
            ViewBag.UserName = U_Name;
            ViewBag.RoleId = RoleId;
            //ViewBag.lstProducerMaster = lstProducerCodeMaster;
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
        public long UpdateMotorIns(Insurance model)
        {
            long returnCode = 1;
            try
            {
                if (model.RevisedSumInsured > 0 && model.GrossPremium > 0 && model.RenewalPremium > 0 && model.InsuranceID > 0)
                {
                    returnCode = objMotorBAL.UpdateNewIns(model);
                    //  returnCode = objMotorBAL.SaveNewIns(model);
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
            ViewBag.RoleId = RoleId;
            return View();
        }
        public ActionResult InsertIndividualIns()
        {
            ViewBag.RoleId = RoleId;
            return View();
        }
        public ActionResult InsertDomesticIns()
        {
            ViewBag.RoleId = RoleId;
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
            ViewBag.RoleId = RoleId;
            IList<Insurance> motorList = new List<Insurance>();
            motorList = lstNewIns;
            var std = motorList.Where(s => s.InsuranceID == MotorId).FirstOrDefault();

            return View("MotorInsurance", std);
        }
        [HttpGet]
        public ActionResult EditModal(int InsId)
        {

            //IList<MotorModel> motorList = new List<MotorModel>();
            //motorList = motorModel;

            //var std = motorList.Where(s => s.MotorId == MotorId).FirstOrDefault();
            IList<Insurance> motorList = new List<Insurance>();
            motorList = lstNewIns;

            var std = motorList.Where(s => s.InsuranceID == InsId).FirstOrDefault();

            return Json(std, JsonRequestBehavior.AllowGet);
        }
        /*Motor Single entry Edit/Add End*/
        /*Travel Single entry Edit/Add Start*/
        [HttpGet]
        public ActionResult EditTravel(int TravelId)
        {
            ViewBag.RoleId = RoleId;

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
            ViewBag.RoleId = RoleId;
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
            ViewBag.RoleId = RoleId;
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
        [HttpGet]
        public ActionResult Search(MotorModel objMotorModel)
        {

            //List<MotorModel> lst = new List<MotorModel>();
            //string PolicyNo = Request["PolicyNo"].ToString();
            ////IList<DomesticModel> motorList = new List<DomesticModel>();
            ////motorList = domesModel;
            ////var std = motorList.Where(s => s.DomesticId == DomesticId).FirstOrDefault();

            ////return Json(std, JsonRequestBehavior.AllowGet);

            ////  motorModel = obj.ToList();
            ////return View("MasterDatabase", motorModel
            ////                    .Where(x => x.PolicyNo == objMotorModel.PolicyNo || x.AgentCode_BrokerCode == objMotorModel.AgentCode_BrokerCode ||
            ////                    x.MobileNo == objMotorModel.MobileNo || x.AssuredName == objMotorModel.AssuredName || x.Status == objMotorModel.Status)
            ////                   .OrderBy(x => x.MotorId));
            //lst = motorModel.Where(x => x.PolicyNo == PolicyNo).ToList();
            //return View(lst);
            string PolicyNo = objMotorModel.PolicyNo;
            if (!string.IsNullOrEmpty(PolicyNo))
            {
                List<MotorModel> lst = new List<MotorModel>();
                lst = motorModel.Where(x => x.PolicyNo == PolicyNo).ToList();
                return View(lst);
            }
            else
                return View(motorModel);
        }
        [HttpGet]
        public JsonResult SearchMotor(MotorModel objMotorModel)
        {
            try
            {
                ModelState.Clear();

                string PolicyNo = Request["PolicyNo"].ToString();
                List<MotorModel> lst = new List<MotorModel>();
                //IList<DomesticModel> motorList = new List<DomesticModel>();
                //motorList = domesModel;
                //var std = motorList.Where(s => s.DomesticId == DomesticId).FirstOrDefault();

                //return Json(std, JsonRequestBehavior.AllowGet);

                //  motorModel = obj.ToList();
                //return View("MasterDatabase", motorModel
                //                    .Where(x => x.PolicyNo == objMotorModel.PolicyNo || x.AgentCode_BrokerCode == objMotorModel.AgentCode_BrokerCode ||
                //                    x.MobileNo == objMotorModel.MobileNo || x.AssuredName == objMotorModel.AssuredName || x.Status == objMotorModel.Status)
                //                   .OrderBy(x => x.MotorId));

                lst = motorModel.Where(x => x.PolicyNo == PolicyNo).ToList();
                //  return View("MasterDatabase", lst);
                return Json(new
                {
                    list = lst
                }, JsonRequestBehavior.AllowGet);

            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
        public ActionResult MotorDB()
        {

            if (TempData["Input"] != null)
            {
                lstInput = TempData["Input"];
            }

            long returnCode = objMotorBAL.UserMDB(U_Name, 1, out lstInfo);
            ViewBag.RoleId = RoleId;
            TypeId = 1;
            AssignDataToViewBag(lstInfo);
            ViewBag.TotPoltoBeRenewed = lstInfo.TotPoltoBeRenewed;
            ViewBag.TotPolforRenewal = lstInfo.TotPolforRenewal;
            ViewBag.NoOfPoRenewed = lstInfo.NoOfPoRenewed;
            ViewBag.PolicyLost = lstInfo.PolicyLost;
            if (!returnCode.Equals(1))
            {

                return RedirectToAction("Login");
            }
            return View("Index", lstInfo);
        }
        public ActionResult TravelDB()
        {

            if (TempData["Input"] != null)
            {
                lstInput = TempData["Input"];
            }
            long returnCode = objMotorBAL.UserMDB(U_Name, 2, out lstInfo);
            TypeId = 2;
            AssignDataToViewBag(lstInfo);
            ViewBag.RoleId = RoleId;
            ViewBag.TotPoltoBeRenewed = lstInfo.TotPoltoBeRenewed;
            ViewBag.TotPolforRenewal = lstInfo.TotPolforRenewal;
            ViewBag.NoOfPoRenewed = lstInfo.NoOfPoRenewed;
            ViewBag.PolicyLost = lstInfo.PolicyLost;
            if (!returnCode.Equals(1))
            {

                return RedirectToAction("Login");
            }
            return View("Index", lstInfo);
        }
        public ActionResult IndividualDB()
        {

            if (TempData["Input"] != null)
            {
                lstInput = TempData["Input"];
            }
            long returnCode = objMotorBAL.UserMDB(U_Name, 3, out lstInfo);
            ViewBag.RoleId = RoleId;
            TypeId = 3;
            AssignDataToViewBag(lstInfo);
            ViewBag.TotPoltoBeRenewed = lstInfo.TotPoltoBeRenewed;
            ViewBag.TotPolforRenewal = lstInfo.TotPolforRenewal;
            ViewBag.NoOfPoRenewed = lstInfo.NoOfPoRenewed;
            ViewBag.PolicyLost = lstInfo.PolicyLost;
            if (!returnCode.Equals(1))
            {

                return RedirectToAction("Login");
            }
            return View("Index", lstInfo);
        }
        public ActionResult DomesticDB()
        {

            if (TempData["Input"] != null)
            {
                lstInput = TempData["Input"];
            }
            long returnCode = objMotorBAL.UserMDB(U_Name, 4, out lstInfo);
            ViewBag.RoleId = RoleId;
            TypeId = 4;
            AssignDataToViewBag(lstInfo);
            ViewBag.TotPoltoBeRenewed = lstInfo.TotPoltoBeRenewed;
            ViewBag.TotPolforRenewal = lstInfo.TotPolforRenewal;
            ViewBag.NoOfPoRenewed = lstInfo.NoOfPoRenewed;
            ViewBag.PolicyLost = lstInfo.PolicyLost;

            if (!returnCode.Equals(1))
            {

                return RedirectToAction("Login");
            }
            return View("Index", lstInfo);
        }
        public JsonResult GetProducerInfo(string RoleId)
        {
            List<ProducerCodeMaster> lst = new List<ProducerCodeMaster>();
            lst = objMotorBAL.GetProducerMasterDashBoard(RoleId);

            return Json(new
            {
                list = lst
            }, JsonRequestBehavior.AllowGet);
        }
        private void AssignDataToViewBag(DashBoard lstInfo)
        {

            ViewBag.TNPYear = lstInfo.TNPYear;
            ViewBag.TNPUnderProcessYear = lstInfo.TNPUnderProcessYear;
            ViewBag.TNPLostYear = lstInfo.TNPLostYear;
            ViewBag.TNPRenewedYear = lstInfo.TNPRenewedYear;
            ViewBag.PercentageRenewedYear = lstInfo.PercentageRenewedYear;

            ViewBag.TNPMonth = lstInfo.TNPMonth;
            ViewBag.TNPLostMonth = lstInfo.TNPLostMonth;
            ViewBag.TNPUnderProcessMonth = lstInfo.TNPUnderProcessMonth;
            ViewBag.TNPRenewedMonth = lstInfo.TNPRenewedMonth;
            ViewBag.PercentageRenewedMonth = lstInfo.PercentageRenewedMonth;

            ViewBag.TNPYearPremium = lstInfo.TNPYearPremium;
            ViewBag.TNPUPYearPremium = lstInfo.TNPUPYearPremium;
            ViewBag.TNPLostYearPremium = lstInfo.TNPLostYearPremium;
            ViewBag.TNPRenewedYearPremium = lstInfo.TNPRenewedYearPremium;
            ViewBag.PercentPremiumRenewedYear = lstInfo.PercentPremiumRenewedYear;

            ViewBag.TNPMonthPremium = lstInfo.TNPMonthPremium;
            ViewBag.TNPLostMonthPremium = lstInfo.TNPLostMonthPremium;
            ViewBag.TNPUPMonthPremium = lstInfo.TNPUPMonthPremium;
            ViewBag.TNPRenewedMonthPremium = lstInfo.TNPRenewedMonthPremium;
            ViewBag.PercentPremiumRenewedMonth = lstInfo.PercentPremiumRenewedMonth;


        }
        [HttpPost]
        public long InsertNewInsur(Insurance model)
        {
            long returnCode = 1;
            try
            {
                returnCode = objMotorBAL.SaveNewIns(model);
            }
            catch (Exception ex)
            {
                throw;
            }
            return returnCode;
        }
        [HttpGet]
        public JsonResult GetBIChartBoard()
        {
            List<BIDashBoard> lst = new List<BIDashBoard>();
            List<DataPoint> dataPoints = new List<DataPoint>();
            long returnCode = objMotorBAL.GetBIDB(out lst);
            if (lst.Count > 0)
            {

                dataPoints = (from item in lst

                              select new DataPoint()
                              {
                                  y = item.MonthName,
                                  a = item.Available,
                                  b = item.Renewed,
                                  BusinessType = item.BusinessType
                              }).ToList();

            }


            if (!returnCode.Equals(1))
            {
                return Json(new
                {
                    agentList = dataPoints.Where(x => x.BusinessType == "Agent"),
                    brokerList = dataPoints.Where(x => x.BusinessType == "Broker"),
                    directList = dataPoints.Where(x => x.BusinessType == "Direct"),
                    branchList = dataPoints.Where(x => x.BusinessType == "Branch")
                }, JsonRequestBehavior.AllowGet);
            }
            return Json(new
            {
                agentList = dataPoints.Where(x => x.BusinessType == "Agent"),
                brokerList = dataPoints.Where(x => x.BusinessType == "Broker"),
                directList = dataPoints.Where(x => x.BusinessType == "Direct"),
                branchList = dataPoints.Where(x => x.BusinessType == "Branch")
            }, JsonRequestBehavior.AllowGet);

        }
        [HttpGet]
        public JsonResult GetBIChartBoardProducerPerformance()
        {
            List<BIDashBoard> lst = new List<BIDashBoard>();
            List<DataPoint> dataPoints = new List<DataPoint>();
            long returnCode = objMotorBAL.GetBIDB(out lst);
            if (lst.Count > 0)
            {

                dataPoints = (from item in lst

                              select new DataPoint()
                              {
                                  y = item.MonthName,
                                  a = item.Available,
                                  b = item.Renewed,
                                  BusinessType = item.BusinessType
                              }).ToList();

            }


            if (!returnCode.Equals(1))
            {
                return Json(new
                {
                    Agent = dataPoints.Where(x => x.BusinessType == "Agent"),
                    Broker = dataPoints.Where(x => x.BusinessType == "Broker"),
                    Direct = dataPoints.Where(x => x.BusinessType == "Direct"),
                    Branch = dataPoints.Where(x => x.BusinessType == "Branch")
                }, JsonRequestBehavior.AllowGet);
            }
            return Json(new
            {
                Agent = dataPoints.Where(x => x.BusinessType == "Agent"),
                Broker = dataPoints.Where(x => x.BusinessType == "Broker"),
                Direct = dataPoints.Where(x => x.BusinessType == "Direct"),
                Branch = dataPoints.Where(x => x.BusinessType == "Branch")
            }, JsonRequestBehavior.AllowGet);

        }
    }

}
