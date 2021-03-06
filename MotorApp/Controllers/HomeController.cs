﻿using MotorApp.BAL;
using MotorApp.BusinessEntities;
using MotorApp.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Configuration;
using MotorApp.Utilities;

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
        private DashBoard lstInfo = new DashBoard();
        string IsExists = string.Empty;
        //string U_Name = string.Empty;
        static List<int> Year;
        long RoleId = 0;
        static int TypeId = 0;
        dynamic lstInput;
        bool IsUserLogin = false;

        public HomeController()
        {
            //if (!string.IsNullOrEmpty(U_Name))
            //{
            //    long returnCode = objMotorBAL.GetMasterViews(out motorModel, out travelModel, out indiviModel, out domesModel, out lstProducerCodeMaster, out lstNewIns);
            //    if (lstNewIns != null)
            //    {
            //        lstInfo.lstYears = lstNewIns.Where(p => p.PolicyToDate != null).Select(p => p.PolicyToDate.Year).Distinct().
            //            AsEnumerable().Select(x => new DateTime(x, 1, 1).Year).ToList();
            //    }

            //}
            // Session["Input"] = lstInfo;
            //if (Session["Input"] != null)
            //{
            //    lstInput = Session["Input"];
            //}

        }
        // GET: Default  


        //[ValidateAntiForgeryToken]  

        //[HttpPost]
        //[AllowAnonymous]
        //public ActionResult LoginMotor()
        //{
        //    string u = Request["UserName"];
        //    string p = Request["Password"];
        //    long r = 5;// Request["Role"];
        //    LoginViewModel objVM = AuthUser(u, p, r);
        //    if (objVM != null)
        //    {
        //        Session["Input"] = objVM;
        //        IsUserLogin = true;
        //        return RedirectToAction("Index", "Home");
        //    }
        //    return RedirectToAction("Login", "Home");
        //}

        public LoginViewModel AuthUser(string username, string password, long RoleId)
        {
            //if (password.Equals("123") && username.Equals("user"))
            //    return "User";
            //else
            //    return null;
            LoginViewModel objMod = new LoginViewModel();
            try
            {
                if (username != null && password != null)
                {

                    objMod.UserName = username;
                    objMod.Password = password;
                    objMod.RoleId = RoleId;
                    long returnCode = objMotorBAL.IsUserExists(objMod);
                    if (returnCode > 0)
                    {
                        RoleId = returnCode;
                        ViewBag.RoleId = RoleId;
                        lstInput = objMod;
                        TempData["Input"] = lstInput;
                        Session["Input"] = lstInput;
                        IsUserLogin = true;
                        Session["IsUserLogin"] = true;
                        Session["RoleId"] = RoleId;
                        return objMod;
                        //return RedirectToAction("Index");
                    }
                    else
                    {
                        TempData["IsExists"] = "User not found";
                        return objMod;
                    }

                }
                else
                {
                    ViewBag.Err = "Please Provide all the mandatory fields.";
                    return objMod;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public IEnumerable<SelectListItem> lstProItems
        {
            get { return new SelectList(lstProducerCodeMaster, "ProducerCodeId", "ProducerName"); }
        }

        MotorBAL objMotorBAL = new MotorBAL();
        [HttpGet]
        [AllowAnonymous]
        public ActionResult Index()
        {
            //  IsUserLogin = true;
            long returnCode = -1;
            int IsLoggedIn = IsUserLoggedIn();
            if (IsLoggedIn > 0)
            {
                string uname = Request.Form["ddlProducer"];
                TypeId = 5;
                ViewBag.TypeId = TypeId;
                if (string.IsNullOrEmpty(uname) || uname.Equals("Admin"))
                {
                    if (Session["Input"] != null)
                    {
                        lstInput = Session["Input"];
                        returnCode = objMotorBAL.GetUserInsInfo(lstInput, out lstInfo);
                    }

                    //long returnCode = objMotorBAL.GetMIDashBoard(lstInput, out lstInfo);
                    ViewBag.RoleId = Session["RoleId"];

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

                    if (lstNewIns != null)
                    {
                        lstInfo.lstYears = lstNewIns.Where(p => p.PolicyToDate != null).Select(p => p.PolicyToDate.Year).Distinct().
                            AsEnumerable().Select(x => new DateTime(x, 1, 1).Year).ToList();

                        Year = lstInfo.lstYears;
                    }
                    else
                    {
                        returnCode = objMotorBAL.GetMasterViews(out motorModel, out travelModel, out indiviModel, out domesModel, out lstProducerCodeMaster, out lstNewIns);
                        if (lstNewIns != null)
                        {
                            lstInfo.lstYears = lstNewIns.Where(p => p.PolicyToDate != null).Select(p => p.PolicyToDate.Year).Distinct().
                                AsEnumerable().Select(x => new DateTime(x, 1, 1).Year).ToList();
                            Year = lstInfo.lstYears;
                        }

                    }
                    //ViewBag.TotPoltoBeRenewed =  lstInfo.TotPoltoBeRenewed;
                    //ViewBag.TotPolforRenewal = lstInfo.TotPolforRenewal;
                    //ViewBag.NoOfPoRenewed = lstInfo.NoOfPoRenewed;
                    //ViewBag.PolicyLost = lstInfo.PolicyLost;
                    ViewBag.UserName = lstInfo.UserName;
                    TempData["un"] = lstInfo.UserName;
                    if (lstInfo != null)
                    {
                        Session["UserName"] = lstInfo.UserName;
                        ViewBag.UserName = lstInput.UserName;
                    }
                    if (!returnCode.Equals(1))
                    {

                        return RedirectToAction("Login");
                    }
                    return View(lstInfo);
                }
                else
                {
                    returnCode = objMotorBAL.GetUserReport(uname, out lstInfo);
                    ViewBag.RoleId = Session["RoleId"];

                    ViewBag.TotPoltoBeRenewed = lstInfo.TotPoltoBeRenewed;
                    ViewBag.TotPolforRenewal = lstInfo.TotPolforRenewal;
                    ViewBag.NoOfPoRenewed = lstInfo.NoOfPoRenewed;
                    ViewBag.PolicyLost = lstInfo.PolicyLost;
                    return View(lstInfo);
                }
            }
            else
            {
                return RedirectToAction("Login");
            }
        }
        public ActionResult IndexBI()
        {
            int IsLoggedIn = IsUserLoggedIn();
            if (IsLoggedIn > 0)
            {
                ViewBag.RoleId = Session["RoleId"];
                ViewBag.UserName = Session["UserName"].ToString();
                return View();
            }
            else
            {
                return RedirectToAction("Login");
            }

        }

        [HttpGet]
        public JsonResult GetRevenueByYear()
        {
            List<DashBoard> lst = new List<DashBoard>();
            List<DataPoint> dataPoints = new List<DataPoint>();
            dataPoints = objMotorBAL.GetBarChart(TypeId, Session["UserName"].ToString());

            ViewBag.DataPoints = JsonConvert.SerializeObject(dataPoints);

            if (Session["UserName"] != null)
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
            string ProducerName = string.Empty;

            int IsLoggedIn = IsUserLoggedIn();
            if (IsLoggedIn > 0)
            {

                ViewBag.RoleId = Session["RoleId"];
                RoleId = Convert.ToInt64(Session["RoleId"]);

                string PolicyNo = objMotorModel.PolicyNo ?? "";
                string divisionName = objMotorModel.DivisionName ?? "";
                string AssuredName = objMotorModel.AssuredName ?? "";
                string productName = objMotorModel.ProductName ?? "";
                string instype = objMotorModel.InsType ?? "";
                string Status = objMotorModel.Status ?? "";

                DateTime PolicyFDate = objMotorModel.PolicyFromDate == Convert.ToDateTime("01-01-0001 12.00.00 AM") ? Convert.ToDateTime("01-01-1753 12.00.00 AM") : objMotorModel.PolicyFromDate;
                DateTime PolicyTDate = objMotorModel.PolicyToDate == Convert.ToDateTime("01-01-0001 12.00.00 AM") ? Convert.ToDateTime("01-01-1753 12.00.00 AM") : objMotorModel.PolicyToDate;
                ViewBag.UserName = Session["UserName"].ToString();
                List<Insurance> lst = new List<Insurance>();

                ProducerName = RoleId.Equals(1) ? objMotorModel.UserName : Session["UserName"].ToString();

                if (ProducerName == null)
                {
                    ProducerName = Session["UserName"].ToString();
                }
                if (!string.IsNullOrEmpty(PolicyNo) || DateValidation.isValidDate(PolicyFDate.Day, PolicyFDate.Month, PolicyFDate.Year) || !string.IsNullOrEmpty(Status)
                    || !string.IsNullOrEmpty(ProducerName) || !string.IsNullOrEmpty(divisionName))

                {
                    RoleId = Convert.ToInt64(Session["RoleId"]);
                    long returnCode = objMotorBAL.GetSearchData(RoleId, PolicyNo, divisionName, AssuredName, productName, Status, ProducerName, PolicyFDate, PolicyTDate, out lst, 0, "");
                }

                return View(lst);


            }
            else
            {
                return RedirectToAction("Login");
            }


        }

        [HttpGet]
        public ActionResult CallBack(Insurance objMotorModel)
        {
            int IsLoggedIn = IsUserLoggedIn();
            if (IsLoggedIn > 0)
            {
                ViewBag.UserName = Session["UserName"];
                List<Insurance> lst = new List<Insurance>();
                RoleId = Convert.ToInt64(Session["RoleId"]);
                long returnCode = objMotorBAL.GetCallBackDetails(RoleId, Session["UserName"].ToString(), out lst);
                return View(lst);
            }
            else
            {
                return RedirectToAction("Login");
            }

        }
        public ActionResult MasterDatabase()
        {
            int IsLoggedIn = IsUserLoggedIn();
            if (IsLoggedIn > 0)
            {
                ViewBag.RoleId = Session["RoleId"];
                if (RoleId.Equals(1))
                    return View(motorModel);
                //query.Where(s => s.AgentCode_BrokerCode == lstInfo.UserName).FirstOrDefault();
                //return View(motorModel);
                if (!string.IsNullOrEmpty(Session["UserName"].ToString()))
                    return View(motorModel.Where(x => x.AgentCode == Session["UserName"].ToString()).OrderBy(x => x.MotorId));
                else
                    return View(motorModel);
            }
            else
            {
                return RedirectToAction("Login");
            }

        }
        [HttpGet]
        public ActionResult MasterTravel(TravelModel objTravelModel)
        {
            ViewBag.RoleId = Session["RoleId"];

            string PolicyNo = objTravelModel.PolicyNo ?? "";
            string AgentCode_BrokerCode = objTravelModel.Broker_AgentCode ?? "";
            string Branch = objTravelModel.Branch ?? "";

            string AssuredName = objTravelModel.AssuredName ?? "";
            string Status = objTravelModel.Status ?? "";

            List<TravelModel> lst = new List<TravelModel>();
            RoleId = Convert.ToInt64(Session["RoleId"]);
            if (!string.IsNullOrEmpty(PolicyNo) || !string.IsNullOrEmpty(AgentCode_BrokerCode) || !string.IsNullOrEmpty(Branch) || !string.IsNullOrEmpty(AssuredName)
                || !string.IsNullOrEmpty(Status))
            {

                if (RoleId.Equals(1))
                    lst = travelModel.Where(x => x.PolicyNo == PolicyNo || x.Broker_AgentCode == AgentCode_BrokerCode ||
                                      x.Branch == Branch || x.AssuredName == AssuredName && x.Status == Status).OrderBy(x => x.TravelId).ToList();
                else
                    lst = travelModel.Where(x => x.PolicyNo == PolicyNo || x.Broker_AgentCode == AgentCode_BrokerCode ||
                                  x.Branch == Branch || x.AssuredName == AssuredName || x.Status == Status && x.AgentCode == Session["UserName"].ToString()).OrderBy(x => x.TravelId).ToList();

                return View(lst);
            }
            else if (RoleId.Equals(1))
                return View(travelModel);

            else
                return View(travelModel.Where(x => x.AgentCode == Session["UserName"].ToString()).OrderBy(x => x.TravelId));



        }
        /* public ActionResult MasterTravel()
         {
             ViewBag.RoleId = RoleId;
             if (RoleId.Equals(1))
                 return View(travelModel);
             if (!string.IsNullOrEmpty(Session["UserName"]))
                 return View(travelModel.Where(x => x.AgentCode == Session["UserName"]).OrderBy(x => x.TravelId));
             else
                 return View(travelModel);
         }*/
        /* public ActionResult MasterIndividual()
         {
             ViewBag.RoleId = RoleId;
             if (RoleId.Equals(1))
                 return View(indiviModel);
             if (!string.IsNullOrEmpty(Session["UserName"]))
                 return View(indiviModel.Where(x => x.AgentCode == Session["UserName"]).OrderBy(x => x.IndividualId));
             else
                 return View(indiviModel);
         }*/
        [HttpGet]
        public ActionResult MasterIndividual(IndividualModel objInd)
        {
            ViewBag.RoleId = Session["RoleId"];

            string PolicyNo = objInd.PolicyNo ?? "";
            string AgentCode_BrokerCode = objInd.Broker_AgentCode ?? "";
            string Branch = objInd.Branch ?? "";

            string AssuredName = objInd.LifeAssuredName ?? "";
            string Status = objInd.Status ?? "";

            List<IndividualModel> lst = new List<IndividualModel>();
            RoleId = Convert.ToInt64(Session["RoleId"]);
            if (!string.IsNullOrEmpty(PolicyNo) || !string.IsNullOrEmpty(AgentCode_BrokerCode) || !string.IsNullOrEmpty(Branch) || !string.IsNullOrEmpty(AssuredName)
                || !string.IsNullOrEmpty(Status))
            {
                if (RoleId.Equals(1))
                    lst = indiviModel.Where(x => x.PolicyNo == PolicyNo || x.Broker_AgentCode == AgentCode_BrokerCode ||
                                      x.Branch == Branch || x.LifeAssuredName == AssuredName && x.Status == Status).OrderBy(x => x.IndividualId).ToList();
                else
                    lst = indiviModel.Where(x => x.PolicyNo == PolicyNo || x.Broker_AgentCode == AgentCode_BrokerCode ||
                                  x.Branch == Branch || x.LifeAssuredName == AssuredName || x.Status == Status && x.AgentCode == Session["UserName"].ToString()).OrderBy(x => x.IndividualId).ToList();

                return View(lst);
            }
            else if (RoleId.Equals(1))
                return View(indiviModel);

            else
                return View(indiviModel.Where(x => x.AgentCode == Session["UserName"].ToString()).OrderBy(x => x.IndividualId));



        }
        /*   public ActionResult MasterDomestic()
           {
               ViewBag.RoleId = RoleId;
               if (RoleId.Equals(1))
                   return View(domesModel);
               if (!string.IsNullOrEmpty(Session["UserName"]))
                   return View(domesModel.Where(x => x.AgentCode == Session["UserName"]).OrderBy(x => x.DomesticId));
               else
                   return View(domesModel);

           }*/
        [HttpGet]
        public ActionResult MasterDomestic(DomesticModel objDom)
        {
            ViewBag.RoleId = Session["RoleId"];

            string PolicyNo = objDom.PolicyNo ?? "";
            string AgentCode_BrokerCode = objDom.Broker_AgentCode ?? "";
            string Branch = objDom.Branch ?? "";

            string AssuredName = objDom.AssuredName ?? "";
            string Status = objDom.Status ?? "";

            List<DomesticModel> lst = new List<DomesticModel>();
            RoleId = Convert.ToInt64(Session["RoleId"]);
            if (!string.IsNullOrEmpty(PolicyNo) || !string.IsNullOrEmpty(AgentCode_BrokerCode) || !string.IsNullOrEmpty(Branch) || !string.IsNullOrEmpty(AssuredName)
                || !string.IsNullOrEmpty(Status))
            {
                if (RoleId.Equals(1))
                    lst = domesModel.Where(x => x.PolicyNo == PolicyNo || x.Broker_AgentCode == AgentCode_BrokerCode ||
                                      x.Branch == Branch || x.AssuredName == AssuredName && x.Status == Status).OrderBy(x => x.DomesticId).ToList();
                else
                    lst = domesModel.Where(x => x.PolicyNo == PolicyNo || x.Broker_AgentCode == AgentCode_BrokerCode ||
                                  x.Branch == Branch || x.AssuredName == AssuredName || x.Status == Status && x.AgentCode == Session["UserName"].ToString()).OrderBy(x => x.DomesticId).ToList();

                return View(lst);
            }
            else if (RoleId.Equals(1))
                return View(domesModel);

            else
                return View(domesModel.Where(x => x.AgentCode == Session["UserName"].ToString()).OrderBy(x => x.DomesticId));

        }
        public ActionResult Login()
        {
            // Session["Input"] = null;
            Session["IsUserLogin"] = true;
            IsUserLogin = false;
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
                        // TempData["Input"] = lstInput;
                        // Session["UserName"] = objModels.UserName;
                        Session["Input"] = lstInput;
                        Session["UserName"] = objModels.UserName;
                        Session["IsUserLogin"] = true;
                        IsUserLogin = true;
                        Session["RoleId"] = RoleId;
                        return RedirectToAction("Index");
                    }
                    else
                    {
                        TempData["IsExists"] = "User not found";
                        return RedirectToAction("Login");
                    }

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
                    // string fileMismatchErr = string.Empty ;
                    fname = file.FileName;
                    if (fname.Equals("NewBulkUpload.xlsx"))
                    {

                        string path = Server.MapPath("~/Uploads/");
                        filePath = path + Path.GetFileName(file.FileName);
                        string extension = Path.GetExtension(file.FileName);
                        file.SaveAs(filePath);
                        // Returns message that successfully uploaded  
                        if (extension.Equals(".xls") || extension.Equals(".xlsx"))
                        {
                            string UN = string.Empty;
                            if (TempData["un"] == null)
                            {
                                UN = "Admin";
                            }
                            else
                            {
                                UN = TempData["un"].ToString() ?? "";
                            }
                            if (string.IsNullOrEmpty(UN))
                            {
                                UN = "Admin";
                            }
                            long returnCode = objMotorBAL.BulkUploadMotor(extension, filePath, reqFrom, out rowsCnt, out string fileMismatchErr, UN);
                            if (returnCode.Equals(0))
                            {
                                alert = "All the Records already exists. Try uploading new data.";
                                textAlert = "same";
                                TempData["un"] = UN;
                            }
                            else if (returnCode > 0)
                            {
                                alert = "File Uploaded Successfully!";
                                textAlert = "success";
                                TempData["un"] = UN;
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
                    else
                    {
                        reqFrom = -3;
                        return Json(reqFrom);
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
            int IsLoggedIn = IsUserLoggedIn();
            if (IsLoggedIn > 0)
            {

                ViewBag.UserName = Session["UserName"];
                ViewBag.RoleId = Session["RoleId"];
                //ViewBag.lstProducerMaster = lstProducerCodeMaster;
                return View();
            }
            else
            {
                return RedirectToAction("Login");
            }

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
                //if (model.RevisedSumInsured > 0 && model.GrossPremium > 0 && model.RenewalPremium > 0 && model.InsuranceID > 0)
                //{
                returnCode = objMotorBAL.UpdateNewIns(model, Session["UserName"].ToString());
                //  returnCode = objMotorBAL.SaveNewIns(model);
                // }
                //else
                //{
                //    returnCode = -2;
                //}

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
            int IsLoggedIn = IsUserLoggedIn();
            if (IsLoggedIn > 0)
            {
                ViewBag.UserName = Session["UserName"];
                ViewBag.RoleId = Session["RoleId"];
                IList<Insurance> motorList = new List<Insurance>();

                if (lstNewIns != null)
                {
                    motorList = lstNewIns;
                }
                else
                {
                    long returnCode = objMotorBAL.GetMasterViews(out motorModel, out travelModel, out indiviModel, out domesModel, out lstProducerCodeMaster, out lstNewIns);
                    if (lstNewIns != null)
                    {
                        motorList = lstNewIns;
                    }

                }
                var std = motorList.Where(s => s.InsuranceID == MotorId).FirstOrDefault();
                string BT = string.Empty;
                BT = std.BusinessType;
                string usr = std.ProducerName;
                List<Users> lstUsers = objMotorBAL.GetListOfUsers(BT);
                List<SelectListItem> lstUserList = new List<SelectListItem>();
                foreach (var item in lstUsers)
                {
                    if (usr.Equals(item.UserName))
                    {
                        lstUserList.Add(
                             new SelectListItem
                             {
                                 Text = item.UserName,
                                 Value = item.UserName,
                                 Selected = true
                             });

                    }
                    else
                    {
                        lstUserList.Add(
                         new SelectListItem
                         {
                             Text = item.UserName,
                             Value = item.UserName,

                         });
                    }
                }
                ViewBag.ListOfUsers = lstUserList;

                return View("MotorInsurance", std);
            }
            else
            {
                return RedirectToAction("Login");
            }

        }
        [HttpGet]
        public ActionResult EditModal(int InsId)
        {


            IList<Insurance> motorList = new List<Insurance>();

            long returnCode = objMotorBAL.GetMasterViews(out motorModel, out travelModel, out indiviModel, out domesModel, out lstProducerCodeMaster, out lstNewIns);
            if (lstNewIns != null)
            {
                motorList = lstNewIns;
                var std = motorList.Where(s => s.InsuranceID == InsId).FirstOrDefault();
                return Json(std, JsonRequestBehavior.AllowGet);
            }

            return Json(null, JsonRequestBehavior.AllowGet);

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
                // ModelState.Clear();

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
            int IsLoggedIn = IsUserLoggedIn();
            if (IsLoggedIn > 0)
            {


                long returnCode = objMotorBAL.UserMDB(Session["UserName"].ToString(), 1, out lstInfo);
                ViewBag.RoleId = RoleId;
                TypeId = 1;
                AssignDataToViewBag(lstInfo);
                ViewBag.TotPoltoBeRenewed = lstInfo.TotPoltoBeRenewed;
                ViewBag.TotPolforRenewal = lstInfo.TotPolforRenewal;
                ViewBag.NoOfPoRenewed = lstInfo.NoOfPoRenewed;
                ViewBag.PolicyLost = lstInfo.PolicyLost;
                ViewBag.UserName = lstInfo.UserName;
                lstInfo.lstYears = Year;


                if (!returnCode.Equals(1))
                {

                    return RedirectToAction("Login");
                }
                return View("Index", lstInfo);
            }
            else
            {
                return RedirectToAction("Login");
            }

        }
        public ActionResult TravelDB()
        {
            int IsLoggedIn = IsUserLoggedIn();
            if (IsLoggedIn > 0)
            {

                long returnCode = objMotorBAL.UserMDB(Session["UserName"].ToString(), 2, out lstInfo);
                TypeId = 2;
                AssignDataToViewBag(lstInfo);
                ViewBag.RoleId = RoleId;
                ViewBag.TotPoltoBeRenewed = lstInfo.TotPoltoBeRenewed;
                ViewBag.TotPolforRenewal = lstInfo.TotPolforRenewal;
                ViewBag.NoOfPoRenewed = lstInfo.NoOfPoRenewed;
                ViewBag.PolicyLost = lstInfo.PolicyLost;
                ViewBag.UserName = lstInfo.UserName;
                lstInfo.lstYears = Year;

                if (!returnCode.Equals(1))
                {

                    return RedirectToAction("Login");
                }
                return View("Index", lstInfo);
            }
            else
            {
                return RedirectToAction("Login");
            }


        }
        public JsonResult GetSpecificYearWiseReport(int Years)
        {
            try
            {
                int IsLoggedIn = IsUserLoggedIn();
                //if (IsLoggedIn > 0)
                //{

                lstInput = Session["Input"];
                long returnCode = objMotorBAL.GetInfoYearWise(lstInput, Years, out lstInfo);

                AssignDataToViewBag(lstInfo);
                ViewBag.RoleId = RoleId;
                ViewBag.TotPoltoBeRenewed = lstInfo.TotPoltoBeRenewed;
                ViewBag.TotPolforRenewal = lstInfo.TotPolforRenewal;
                ViewBag.NoOfPoRenewed = lstInfo.NoOfPoRenewed;
                ViewBag.PolicyLost = lstInfo.PolicyLost;
                ViewBag.UserName = lstInfo.UserName;

                return Json(new
                {
                    list = lstInfo
                }, JsonRequestBehavior.AllowGet);

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public ActionResult IndividualDB()
        {
            int IsLoggedIn = IsUserLoggedIn();
            if (IsLoggedIn > 0)
            {

                long returnCode = objMotorBAL.UserMDB(Session["UserName"].ToString(), 3, out lstInfo);
                ViewBag.RoleId = RoleId;
                TypeId = 3;
                AssignDataToViewBag(lstInfo);
                ViewBag.TotPoltoBeRenewed = lstInfo.TotPoltoBeRenewed;
                ViewBag.TotPolforRenewal = lstInfo.TotPolforRenewal;
                ViewBag.NoOfPoRenewed = lstInfo.NoOfPoRenewed;
                ViewBag.PolicyLost = lstInfo.PolicyLost;
                ViewBag.UserName = lstInfo.UserName;
                lstInfo.lstYears = Year;
                if (!returnCode.Equals(1))
                {

                    return RedirectToAction("Login");
                }
                return View("Index", lstInfo);
            }
            else
            {
                return RedirectToAction("Login");
            }

        }
        public ActionResult DomesticDB()
        {
            int IsLoggedIn = IsUserLoggedIn();
            if (IsLoggedIn > 0)
            {

                long returnCode = objMotorBAL.UserMDB(Session["UserName"].ToString(), 4, out lstInfo);
                ViewBag.RoleId = RoleId;
                TypeId = 4;
                AssignDataToViewBag(lstInfo);
                ViewBag.TotPoltoBeRenewed = lstInfo.TotPoltoBeRenewed;
                ViewBag.TotPolforRenewal = lstInfo.TotPolforRenewal;
                ViewBag.NoOfPoRenewed = lstInfo.NoOfPoRenewed;
                ViewBag.PolicyLost = lstInfo.PolicyLost;
                ViewBag.UserName = lstInfo.UserName;
                lstInfo.lstYears = Year;
                if (!returnCode.Equals(1))
                {

                    return RedirectToAction("Login");
                }
                return View("Index", lstInfo);
            }
            else
            {
                return RedirectToAction("Login");
            }

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
            long returnCode = -1;
            try
            {
                string UN = string.Empty;


                if (TempData["un"] == null)
                {
                    UN = "Admin";
                    //UN = lstInfo.UserName;
                }
                else
                {
                    UN = TempData["un"].ToString() ?? "";

                }
                returnCode = objMotorBAL.SaveNewIns(model, UN, out string u);
                if (model.InsuranceID > 0 && returnCode > 0)
                {
                    returnCode = 2;
                    TempData["un"] = u;
                }
                if (model.InsuranceID.Equals(0) && returnCode > 0)
                {
                    returnCode = 1;
                    TempData["un"] = u;
                }
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
                                  a = item.Renewed,
                                  b = item.Available,
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
                    branchList = dataPoints.Where(x => x.BusinessType == "Branches")
                }, JsonRequestBehavior.AllowGet);
            }
            return Json(new
            {
                agentList = dataPoints.Where(x => x.BusinessType == "Agent"),
                brokerList = dataPoints.Where(x => x.BusinessType == "Broker"),
                directList = dataPoints.Where(x => x.BusinessType == "Direct"),
                branchList = dataPoints.Where(x => x.BusinessType == "Branches")
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
                                  a = item.Renewed,
                                  b = item.Available,
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
                    Branch = dataPoints.Where(x => x.BusinessType == "Branches")
                }, JsonRequestBehavior.AllowGet);
            }
            return Json(new
            {
                Agent = dataPoints.Where(x => x.BusinessType == "Agent"),
                Broker = dataPoints.Where(x => x.BusinessType == "Broker"),
                Direct = dataPoints.Where(x => x.BusinessType == "Direct"),
                Branch = dataPoints.Where(x => x.BusinessType == "Branches")
            }, JsonRequestBehavior.AllowGet);

        }
        [HttpGet]
        public JsonResult GetYearWiseReportMIDB(string BusinessType)
        {

            DataSet ds = objMotorBAL.GetYearWiseDashBoard(BusinessType);
            JsonConvert.SerializeObject(new { item = ds.Tables[0] });

            return Json(new
            {
                lst = JsonConvert.SerializeObject(new { item = ds.Tables[0] }),
            }, JsonRequestBehavior.AllowGet);

        }
        [HttpGet]
        public JsonResult GetSpecificProducerDBChart(string ProducerName, string BusinessType)
        {
            List<BIDashBoard> lst = new List<BIDashBoard>();
            List<DataPoint> dataPoints = new List<DataPoint>();
            long returnCode = objMotorBAL.GetSProducerDBChart(out lst, BusinessType, ProducerName);
            if (lst.Count > 0)
            {

                dataPoints = (from item in lst

                              select new DataPoint()
                              {
                                  y = item.MonthName,
                                  a = item.Renewed,
                                  b = item.Available,

                              }).ToList();

            }
            return Json(new
            {
                lst = dataPoints
            }, JsonRequestBehavior.AllowGet);


        }
        private int IsUserLoggedIn()
        {
            int i = 0;
            try
            {
                IsUserLogin = Convert.ToBoolean(Session["IsUserLogin"]);
                if (IsUserLogin)
                {
                    i = 1;
                }
                //if (Session["Input"] != null)
                //{
                //    lstInput = Session["Input"];
                //}
                //else
                //{
                //    getContextInfo();
                //}
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return i;
        }
        public JsonResult GetUserList(string BusinessType)
        {
            try
            {
                List<Users> lst = new List<Users>();
                lst = objMotorBAL.GetListOfUsers(BusinessType);

                return Json(new
                {
                    list = lst
                }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {

                throw;
            }

        }
        public JsonResult GetUserListBIDashBoard(string BusinessType)
        {
            try
            {
                List<Users> lst = new List<Users>();
                lst = objMotorBAL.GetListOfUsers(BusinessType);
                List<SelectListItem> lstUserList = new List<SelectListItem>();
                foreach (var item in lst)
                {
                    lstUserList.Add(
                            new SelectListItem
                            {
                                Text = item.UserName,
                                Value = item.UserName,
                                Selected = true
                            });
                }
                ViewBag.ListOfUsers = lstUserList;
                return Json(new
                {
                    list = lst
                }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {

                throw;
            }

        }


        [HttpPost]
        public ActionResult BulkUpdateStatus(List<Insurance> lstMoter, string UploadType)
        {
            long returnCode = -1;
            string InsuranceStatusJson = string.Empty;
            string ErrorMsg = string.Empty;

            try
            {
                InsuranceStatusJson = JsonConvert.SerializeObject(lstMoter);
                returnCode = new MotorBAL().BulkUpdateInsuranceStatus(InsuranceStatusJson, 1, "UserName", UploadType, out ErrorMsg);
            }
            catch (Exception ex)
            {
                throw;
            }

            return Json(ErrorMsg);
        }
        public ActionResult UserRegister()
        {
            ViewBag.RoleId = RoleId;
            return View();

        }
        [HttpPost]
        public ActionResult Register(LoginViewModel obj)
        {
            try
            {
                long returnCode = -1;
                ViewBag.RoleId = RoleId;
                if (!string.IsNullOrEmpty(obj.UserName) && !string.IsNullOrEmpty(obj.Role.ToString()))
                {
                    MotorBAL objBAL = new MotorBAL();
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

        [HttpPost]
        public JsonResult SearchUser(string Prefix)
        {
            long returnCode = -1;
            MotorBAL objBAL = new MotorBAL();
            List<Users> lstUser = new List<Users>();

            returnCode = objBAL.GetAutocompleteUserList(Prefix, "", out lstUser);
            return Json(lstUser, JsonRequestBehavior.AllowGet);


        }
        [HttpPost]
        public JsonResult BranchWiseSearch(string Prefix)
        {
            long returnCode = -1;
            MotorBAL objBAL = new MotorBAL();
            List<Users> lstUser = new List<Users>();

            returnCode = objBAL.GetAutocompleteUserList(Prefix, "Branches", out lstUser);
            return Json(lstUser, JsonRequestBehavior.AllowGet);


        }
        public void getContextInfo()
        {
            dynamic tempname = TempData.Values.ToList();
            string UserName = string.Empty;
            string Password = string.Empty;
            long RoleIdd = 0;
            var getUserInfo = objMotorBAL.GetUserInfo(tempname[0], out UserName, out Password, out RoleIdd, out lstInfo);
            LoginViewModel obj = new LoginViewModel();
            obj.UserName = UserName;
            obj.Password = Password;
            obj.RoleId = RoleId;
            lstInput = obj;
            Session["Input"] = lstInput;
        }

    }


    //public class City
    //{
    //    public int Id { get; set; }
    //    public string CityName { get; set; }

    //}


}



