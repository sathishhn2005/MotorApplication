using System;
using System.Transactions;
using MotorApp.DAL;
using MotorApp.BusinessEntities;
using MotorApp.Utilities;
using System.Collections.Generic;
using System.Web;
using System.Web.Caching;
using System.Data;

namespace MotorApp.BAL
{
    public class MotorBAL
    {
        MotorDAL objMotorAppDAL = new MotorDAL();
        public long BulkUploadMotor(string Extension, string filePath, int reqFrom, out int rowsCnt, out string fileMismatchErr,string UserName)
        {
            long returnCode = -1;
            rowsCnt = 0;
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {

                    returnCode = objMotorAppDAL.BulkUploadMotor(Extension, filePath, reqFrom, out rowsCnt, out fileMismatchErr,UserName);
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
            out List<DomesticModel> lstDomesticModel, out List<ProducerCodeMaster> lstProducerCodeMaster, out List<Insurance> lstNewIns)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.GetMasterViews(out lstMotorModel, out lstTravelModel, out lstIndividualModel, out lstDomesticModel, out lstProducerCodeMaster, out lstNewIns);
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
        public long GetUserReport(string name, out DashBoard lstInfo)
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
        public List<DataPoint> GetBarChart(int flag, string uname)
        {

            List<DataPoint> lst = new List<DataPoint>();
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    lst = objMotorAppDAL.GetDBBarchart(flag, uname);

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
        public long GetMIDashBoard(dynamic lstInput, out DashBoard lstInfo)
        {
            long returnCode = -1;
            lstInfo = new DashBoard();
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {

                    returnCode = objMotorAppDAL.GetNewMIDashBoard(lstInput, out lstInfo);




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
        public long SaveNewIns(Insurance objMotorModal,string Uname,out string u)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.SaveInsu(objMotorModal, Uname,out u);
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
        public long UpdateNewIns(Insurance objMotorModal,string uname)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.NewInsUpdate(objMotorModal, uname);
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
        public long GetBIDB(out List<BIDashBoard> lstBIDashBoard)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.GetBIDasbBoard(out lstBIDashBoard);
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
        public long GetBIDBProdPerfo(out List<BIDashBoard> lstBIDashBoard)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.GetBIDasbBoardPF(out lstBIDashBoard);
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
        public DataSet GetYearWiseDashBoard(string BussType)
        {
            DataSet ds = new DataSet();
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    ds = objMotorAppDAL.GetBIDasbBoardYearWise(BussType);
                    transactionScope.Complete();
                    transactionScope.Dispose();

                }
                catch (Exception ex)
                {
                    transactionScope.Dispose();
                    throw ex;
                }

                return ds;
            }
        }
        public long GetSProducerDBChart(out List<BIDashBoard> lstBIDashBoard, string BusinessType, string ProducerName)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.GetSProducerDB(out lstBIDashBoard,BusinessType,ProducerName);
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
        public long GetSearchData(long RoleId, string PolicyNo, string DivisionName, string AssuredName, string ProductName, string Status, string Uname, out List<Insurance> lstNewIns)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.GetSearchIns(RoleId, PolicyNo, DivisionName, AssuredName, ProductName, Status, Uname, out lstNewIns);
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
        public long GetCallBackDetails(long RoleId, string Uname, out List<Insurance> lstNewIns)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    
                       returnCode = objMotorAppDAL.GetCalBackInfo(RoleId, Uname, out lstNewIns);
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
        public List<Users> GetListOfUsers(string BT)
        {
            List<Users> lst = new List<Users>();
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {

                    lst = objMotorAppDAL.GetUserList(BT);
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
    }
}
