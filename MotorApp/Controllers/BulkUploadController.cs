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
using System.Configuration;

namespace MotorApp.Controllers
{
    public class BulkUploadController : Controller
    {
        MotorBAL objMotorBAL = new MotorBAL();

        public ActionResult Index()
        {
            long returnCode = objMotorBAL.GetDelegateData(out List<Insurance> lstNewIns);
            return View(lstNewIns);
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
                returnCode = new MotorBAL().BulkUpdateInsuranceStatus(InsuranceStatusJson, -1, "UserName", UploadType, out ErrorMsg);
            }
            catch (Exception ex)
            {
                throw;
            }

            return Json(ErrorMsg);
        }
        //private int IsUserLoggedIn()
        //{
        //    int i = 0;
        //    try
        //    {
        //        if (IsUserLogin)
        //        {
        //            i = 1;
        //        }
        //    }
        //    catch (Exception ex)
        //    {

        //        throw ex;
        //    }
        //    return i;
        //}
    }
}
