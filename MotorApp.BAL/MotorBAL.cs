using System;
using System.Transactions;
using MotorApp.DAL;
using MotorApp.BusinessEntities;
using MotorApp.Utilities;
using System.Collections.Generic;
using System.Web;
using System.Web.Caching;

namespace MotorApp.BAL
{
    public class MotorBAL
    {
        MotorDAL objMotorAppDAL = new MotorDAL();
        public long BulkUploadMotor(string Extension, string filePath, int reqFrom, out int rowsCnt, out string fileMismatchErr)
        {
            long returnCode = -1;
            rowsCnt = 0;
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {

                    returnCode = objMotorAppDAL.BulkUploadMotor(Extension, filePath, reqFrom, out rowsCnt, out fileMismatchErr);
                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    throw ex;
                }

                return returnCode;
            }

        }
        public long GetMasterViews(out List<MotorModel> lstMotorModel,
            out List<TravelModel> lstTravelModel,
            out List<IndividualModel> lstIndividualModel,
            out List<DomesticModel> lstDomesticModel, out List<ProducerCodeMaster> lstProducerCodeMaster)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.GetMasterViews(out lstMotorModel, out lstTravelModel, out lstIndividualModel, out lstDomesticModel, out lstProducerCodeMaster);
                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    throw ex;
                }

                return returnCode;
            }
        }
        public long SaveMotorIns(MotorModel objMotorModal)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.SaveMotorIns(objMotorModal);
                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    throw ex;
                }

                return returnCode;
            }
        }
        public long UpdateMotorIns(MotorModel objMotorModal)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.UpdateMotorIns(objMotorModal);
                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    throw ex;
                }

                return returnCode;
            }
        }
        public long SaveIndIns(IndividualModel objIndModel)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.SaveIndIns(objIndModel);
                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    throw ex;
                }

                return returnCode;
            }
        }
        public long SaveTravelIns(TravelModel objTravelIns)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.SaveTravelIns(objTravelIns);
                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    throw ex;
                }

                return returnCode;
            }
        }
        public long SaveDomesticIns(DomesticModel objDomesticIns)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.SaveDomesticIns(objDomesticIns);
                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    throw ex;
                }

                return returnCode;
            }
        }
        public long GetUserInsInfo(dynamic lstInput, out DashBoard lstInfo)
        {
            long returnCode = -1;
            lstInfo = new DashBoard();
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    // returnCode = objMotorAppDAL.GetUserInsuranceInfo(lstInput, out lstInfo);
                    if (HttpContext.Current.Cache["InputData"].ToString() != "" && HttpContext.Current.Cache["InputData"] != null)
                    {
                        if (lstInput == null)
                            lstInput = (dynamic)HttpContext.Current.Cache["InputData"];
                        returnCode = objMotorAppDAL.GetUserInsuranceInfo(lstInput, out lstInfo);
                    }
                    else
                    {
                        returnCode = objMotorAppDAL.GetUserInsuranceInfo(lstInput, out lstInfo);
                        HttpContext.Current.Cache.Insert("InputData", lstInput);
                    }

                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    //  throw ex;
                }

                return returnCode;
            }
        }
        public long RegisterUser(dynamic obj)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.RegisterUser(obj);
                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    throw ex;
                }

                return returnCode;
            }
        }
        public long IsUserExists(dynamic obj)
        {
            long returnCode = -1;
            HttpContext.Current.Cache["InputData"] = "";
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.IsUserExistsMotorIns(obj);
                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    throw ex;
                }

                return returnCode;
            }
        }
        public long UserMDB(string uname, int flag, out DashBoard lstInfo)
        {
            long returnCode = -1;
            lstInfo = new DashBoard();
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {

                    returnCode = objMotorAppDAL.GetUserDBoard(uname, flag, out lstInfo);
                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    throw ex;
                }

                return returnCode;
            }
        }
        public List<ProducerCodeMaster> GetProducerMaster(string uname)
        {
            List<ProducerCodeMaster> lst = new List<ProducerCodeMaster>();
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {

                    lst = objMotorAppDAL.GetProducerMaster(uname);
                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    throw ex;
                }

                return lst;
            }
        }
        public List<ProducerCodeMaster> GetProducerMasterDashBoard(string RoleId)
        {
            List<ProducerCodeMaster> lst = new List<ProducerCodeMaster>();
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {

                    lst = objMotorAppDAL.GetPMDDB(RoleId);
                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    throw ex;
                }

                return lst;
            }
        }
        public long GetUserReport(string name,out DashBoard lstInfo)
        {
            long returnCode = -1;
            lstInfo = new DashBoard();
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.GetUserwiseReport(name, out lstInfo);

                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    //  throw ex;
                }

                return returnCode;
            }
        }
        public List<DataPoint> GetBarChart(int flag)
        {
            
            List<DataPoint> lst = new List<DataPoint>();
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    lst = objMotorAppDAL.GetDBBarchart(flag);

                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    //  throw ex;
                }

                return lst;
            }
        }
        
    }
}
