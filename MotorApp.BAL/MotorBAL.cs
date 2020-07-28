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
        public long BulkUploadMotor(string Extension, string filePath, int reqFrom)
        {
            long returnCode = -1;

            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    returnCode = objMotorAppDAL.BulkUploadMotor(Extension, filePath, reqFrom);
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
    }
}
