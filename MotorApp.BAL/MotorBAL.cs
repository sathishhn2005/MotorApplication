using System;
using System.Transactions;
using MotorApp.DAL;
using MotorApp.BusinessEntities;
using MotorApp.Utilities;
using System.Collections.Generic;

namespace MotorApp.BAL
{
    public class MotorBAL
    {
        MotorDAL objMotorAppDAL = new MotorDAL();
        public long BulkUploadMotor(string Extension, string filePath, int reqFrom,out int rowsCnt,out string fileMismatchErr)
        {
            long returnCode = -1;
            rowsCnt = 0;
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                   
                    returnCode = objMotorAppDAL.BulkUploadMotor(Extension, filePath, reqFrom,out rowsCnt,out fileMismatchErr);
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
            out List<DomesticModel> lstDomesticModel)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.GetMasterViews(out lstMotorModel, out lstTravelModel, out lstIndividualModel, out lstDomesticModel);
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

    }
}
