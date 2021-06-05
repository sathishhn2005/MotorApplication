using MotorApp.BAL;
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
using MotorApp.Utilities;
using System.Configuration;
using System.Transactions;

namespace MotorApp.Controllers
{
    public class BulkUploadController : Controller
    {
        MotorBAL objMotorBAL = new MotorBAL();

        public ActionResult Index(Insurance objMotorModel)
        {
            string PolicyNo = objMotorModel.PolicyNo ?? "";
            string CustCode = objMotorModel.CustomerCode ?? "";
            string SourceCode = objMotorModel.SourceCode ?? "";
            if (Session["UserName"] != null)
            {
                ViewBag.UserName = Session["UserName"].ToString();
            }
            if (Session["RoleId"] != null)
            {
                ViewBag.RoleId = Session["RoleId"];
            }

            DateTime PolicyFDate = objMotorModel.PolicyFromDate == Convert.ToDateTime("01-01-0001 12.00.00 AM") ? Convert.ToDateTime("01-01-1753 12.00.00 AM") : objMotorModel.PolicyFromDate;
            DateTime PolicyTDate = objMotorModel.PolicyToDate == Convert.ToDateTime("01-01-0001 12.00.00 AM") ? Convert.ToDateTime("01-01-1753 12.00.00 AM") : objMotorModel.PolicyToDate;

            List<Insurance> lst = new List<Insurance>();

            if (!string.IsNullOrEmpty(PolicyNo) || DateValidation.isValidDate(PolicyFDate.Day, PolicyFDate.Month, PolicyFDate.Year)
                || !string.IsNullOrEmpty(CustCode) || !string.IsNullOrEmpty(SourceCode))

            {
                long returnCode = objMotorBAL.GetDelegateSearchData(PolicyNo, CustCode, SourceCode, PolicyFDate, PolicyTDate, out lst, 0, "");
            }

            return View(lst);
        }
        [HttpPost]
        public ActionResult BulkUpdateStatus(List<Insurance> lstMoter, string UploadType)
        {
            long returnCode = -1;
            string InsuranceStatusJson = string.Empty;
            string ErrorMsg = string.Empty;
            if (Session["UserName"] != null)
            {
                ViewBag.UserName = Session["UserName"].ToString();
            }
            if (Session["RoleId"] != null)
            {
                ViewBag.RoleId = Session["RoleId"];
            }

            try
            {
                InsuranceStatusJson = JsonConvert.SerializeObject(lstMoter);
                returnCode = new MotorBAL().BulkUpdateInsuranceStatus(InsuranceStatusJson, -1, "UserName", UploadType, out ErrorMsg);
            }
            catch (Exception ex)
            {
                throw;
            }

            return Json(ErrorMsg);
        }
        public ActionResult BulkUpload()
        {
            if (Session["UserName"] != null)
            {
                ViewBag.UserName = Session["UserName"].ToString();
            }
            if (Session["RoleId"] != null)
            {
                ViewBag.RoleId = Session["RoleId"];
            }
            return View();
        }

        [HttpPost]
        public ActionResult BulkUpdate(HttpPostedFileBase CSVFile, string hdnMsgStatus)
        {
            long returnCode = -1;
            if (Session["UserName"] != null)
            {
                ViewBag.UserName = Session["UserName"].ToString();
            }
            if (Session["RoleId"] != null)
            {
                ViewBag.RoleId = Session["RoleId"];
            }
            string InsuranceStatusJson = string.Empty;
            string ErrorMsg = string.Empty;
            string ErrorMssage = string.Empty;

            string _filePath = string.Empty;
            string _FileName = string.Empty;
            string _ConfigureFilePath = ConfigurationManager.AppSettings["BulkUploadCsvFilePath"].ToString();


            try
            {
                if (ModelState.IsValid && hdnMsgStatus == "Y")
                {

                    if (CSVFile.ContentLength > 0)
                    {
                        _FileName = DateTime.Now.ToString("yyyyMMddHHmmss") + "_" + Path.GetFileName(CSVFile.FileName);
                        _filePath = Path.Combine(Server.MapPath(_ConfigureFilePath), Path.GetFileName(_FileName));
                        CSVFile.SaveAs(_filePath);
                    }


                    List<CsvFileBulkUplaod> lstValues = System.IO.File.ReadAllLines(_filePath)
                                              .Skip(1)
                                              .Select(v => FromCsv(v))
                                              .ToList();

                    List<List<CsvFileBulkUplaod>> lstValueList = lstValues.Select((x, i) => new { Index = i, Value = x })
                                                                 .GroupBy(x => x.Index / 5000)
                                                                 .Select(x => x.Select(v => v.Value).ToList()).ToList();

                    using (TransactionScope transactionScope = new TransactionScope())
                    {
                        try
                        {
                            for (int i = 0; i < lstValueList.Count; i++)
                            {

                                InsuranceStatusJson = JsonConvert.SerializeObject(lstValueList[i]);
                                returnCode = new MotorBAL().BulkUpdateInsurance(InsuranceStatusJson, -1, "Admin", "Bulk", out ErrorMsg);

                                if (ErrorMsg != "Successfully")
                                {
                                    ErrorMssage = ErrorMssage + ErrorMsg;
                                }

                            }
                            transactionScope.Complete();
                            transactionScope.Dispose();
                        }
                        catch (Exception ex)
                        {
                            transactionScope.Dispose();
                            ViewBag.Message = "please contact Administrator";
                            throw ex;
                        }
                    }
                    if (returnCode != -1)
                    {
                        if (ErrorMssage == "Successfully")
                        {
                            ViewBag.Message = "Upload Successfully";
                        }
                        else
                        {
                            ViewBag.Message = "Upload Successfully, Please Check already exists Policy NOs : " + ErrorMssage;
                        }

                        //ViewBag.Message = ErrorMsg;
                        System.IO.File.Delete(_filePath);
                    }
                    else
                    {
                        ViewBag.Message = "please contact Administrator";
                    }




                }
            }
            catch (Exception ex)
            {
                ViewBag.Message = "please contact Administrator";
                throw;
            }

            return View("BulkUpload");
        }

        //[HttpPost]
        //public ActionResult Endorsement(Endorsement endorsement, HttpPostedFileBase GLpostedFileDoc, HttpPostedFileBase GLpostedFilePage, HttpPostedFileBase WLpostedFilePage)
        //{
        //}

        public static CsvFileBulkUplaod FromCsv(string csvLineData)
        {
            string[] values = csvLineData.Split(',');


            CsvFileBulkUplaod objCsvFileBulkUplaod = new CsvFileBulkUplaod();

            objCsvFileBulkUplaod.DivisionCode = values[0];
            objCsvFileBulkUplaod.ProductCode = values[1];
            objCsvFileBulkUplaod.ClassName = values[2];
            objCsvFileBulkUplaod.ProductName = values[3];
            objCsvFileBulkUplaod.PolicyNumber = values[4];
            objCsvFileBulkUplaod.InsuredName = values[5];
            objCsvFileBulkUplaod.PeriodFrom = DateValidation.ConvertDateTimeFormatter(values[6], "MM-dd-yyyy HH:mm");
            objCsvFileBulkUplaod.PeriodTo = DateValidation.ConvertDateTimeFormatter(values[7], "MM-dd-yyyy HH:mm");
            objCsvFileBulkUplaod.CustomerPhoneNo = values[8];
            objCsvFileBulkUplaod.CustomerType = values[9];
            objCsvFileBulkUplaod.CustomerCode = values[10];
            objCsvFileBulkUplaod.CustomerName = values[11];
            objCsvFileBulkUplaod.SourceCode = values[12];
            objCsvFileBulkUplaod.SourceName = values[13];
            objCsvFileBulkUplaod.VehicleType = values[14];
            objCsvFileBulkUplaod.VehicleMake = values[15];
            objCsvFileBulkUplaod.RegNo = values[16];
            objCsvFileBulkUplaod.EngineNo = values[17];
            objCsvFileBulkUplaod.ChassisNo = values[18];
            objCsvFileBulkUplaod.SumInsured = Convert.ToDecimal(values[19]);
            objCsvFileBulkUplaod.RevisedSumInsured = Convert.ToDecimal(values[20]);
            objCsvFileBulkUplaod.TotalGrossPremium = Convert.ToDecimal(values[21]);
            objCsvFileBulkUplaod.RevisedGrossPremium = Convert.ToDecimal(values[22]);
            objCsvFileBulkUplaod.Geo = values[23];
            objCsvFileBulkUplaod.RenewalStatus = values[24];
            objCsvFileBulkUplaod.MarketingCode = values[25];
            objCsvFileBulkUplaod.UserName = values[26];
            return objCsvFileBulkUplaod;
        }

    }
}
