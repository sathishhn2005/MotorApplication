using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using MotorApp.BusinessEntities;
using MotorApp.Utilities;
using System.Linq;

namespace MotorApp.DAL
{
    public class MotorDAL
    {
        Utility objUtility = new Utility();

        public long BulkUploadMotor(string Extension, string filePath, int reqFrom)
        {
            long returnCode = -1;
            string conString = string.Empty;
            string sheetName = string.Empty;
            string sp_name = string.Empty;

            if (reqFrom.Equals(1))
            {
                sp_name = "SP_MotorBulkUpload";
            }
            else if (reqFrom.Equals(2))
            {
                sp_name = "SP_TravelBulkUpload";

            }
            else if (reqFrom.Equals(3))
            {
                sp_name = "SP_IndividualBulkUpload";

            }
            else if (reqFrom.Equals(4))
            {
                sp_name = "SP_DomesticBulkUpload";

            }
            try
            {

                conString = objUtility.GetOLEDBConnectionString(Extension);
                DataTable dt = new DataTable();
                conString = string.Format(conString, filePath);

                using (OleDbConnection connExcel = new OleDbConnection(conString))
                {
                    using (OleDbCommand cmdExcel = new OleDbCommand())
                    {
                        using (OleDbDataAdapter odaExcel = new OleDbDataAdapter())
                        {
                            cmdExcel.Connection = connExcel;

                            //Get the name of First Sheet.
                            connExcel.Open();
                            DataTable dtExcelSchema;
                            dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
                            sheetName = dtExcelSchema.Rows[0]["TABLE_NAME"].ToString();
                            connExcel.Close();

                            //Read Data from First Sheet.
                            connExcel.Open();
                            cmdExcel.CommandText = "SELECT * From [" + sheetName + "]";
                            odaExcel.SelectCommand = cmdExcel;
                            odaExcel.Fill(dt);
                            connExcel.Close();
                        }
                    }
                }
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    if (dt.Rows.Count > 0)
                    {
                        SqlCommand cmd;
                        cmd = new SqlCommand
                        {
                            CommandText = sp_name,// "SP_MotorBulkUpload",
                            CommandTimeout = 180,
                            Connection = con,
                            CommandType = CommandType.StoredProcedure
                        };
                        SqlParameter UDTparam = new SqlParameter
                        {
                            ParameterName = "@UDT_MotorBulkUpload",
                            Size = -1,
                            Value = dt
                        };
                        cmd.Parameters.Add(UDTparam);
                        returnCode = cmd.ExecuteNonQuery();
                    }

                }


            }
            catch (Exception ex)
            {

                throw ex;
            }

            return returnCode;
        }
        public long GetMasterViews(out List<MotorModel> lstMotorModel, out List<TravelModel> lstTravelModel, out List<IndividualModel> lstIndividualModel,
            out List<DomesticModel> lstDomesticModel)
        {
            long returnCode = -1;
            lstMotorModel = new List<MotorModel>();
            lstTravelModel = new List<TravelModel>();
            lstIndividualModel = new List<IndividualModel>();
            lstDomesticModel = new List<DomesticModel>();

            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetMastersView"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    //cmd.Parameters.AddWithValue("@TicketId", objRaiseTickets.TicketId);
                    //cmd.Parameters.AddWithValue("@RaisedBy", objRaiseTickets.RaisedBy);
                    //cmd.Parameters.AddWithValue("@Newpassword", objRaiseTickets.Newpassword);

                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(ds);
                    //ds.Tables[0].Rows.Count;

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        lstMotorModel = (from DataRow dr in ds.Tables[0].Rows
                                         select new MotorModel()
                                         {
                                             PolicyDetails = dr["PolicyDetails"].ToString(),
                                             IssueDate = Convert.ToDateTime(dr["IssueDate"]),
                                             PolicyNo = dr["PolicyNo"].ToString(),
                                             TypeofTransaction = dr["TypeofTransaction"].ToString(),
                                             PolicyNumberifRenewal = dr["PolicyNumberifRenewal"].ToString(),
                                             Branch = dr["Branch"].ToString(),

                                         }).ToList();
                    }
                    if (ds.Tables[1].Rows.Count > 0)
                    {
                        lstTravelModel = (from DataRow dr in ds.Tables[1].Rows
                                          select new TravelModel()
                                          {
                                              NoOfDays = (int)dr["NoOfDays"],
                                              IssueDate = Convert.ToDateTime(dr["IssueDate"]),
                                              PolicyNo = dr["PolicyNo"].ToString(),
                                              Planning = dr["Planning"].ToString(),
                                              Branch = dr["Branch"].ToString(),

                                          }).ToList();
                    }
                    if (ds.Tables[2].Rows.Count > 0)
                    {
                        lstIndividualModel = (from DataRow dr in ds.Tables[2].Rows
                                              select new IndividualModel()
                                              {
                                                  QuotationNo = dr["QuotationNo"].ToString(),
                                                  IssueDate = Convert.ToDateTime(dr["IssueDate"]),
                                                  PolicyNo = dr["PolicyNo"].ToString(),
                                                  NameofthePlan = dr["NameofthePlan"].ToString(),
                                                  Branch = dr["Branch"].ToString(),

                                              }).ToList();
                    }
                    if (ds.Tables[3].Rows.Count > 0)
                    {
                        lstDomesticModel = (from DataRow dr in ds.Tables[3].Rows
                                            select new DomesticModel()
                                            {
                                                DraftNo = dr["DraftNo"].ToString(),
                                                IssueDate = Convert.ToDateTime(dr["IssueDate"]),
                                                PolicyNo = dr["PolicyNo"].ToString(),
                                                PostalCode = (long)dr["PostalCode"],
                                                Branch = dr["Branch"].ToString(),

                                            }).ToList();
                    }
                    returnCode = 1;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
    }
}
