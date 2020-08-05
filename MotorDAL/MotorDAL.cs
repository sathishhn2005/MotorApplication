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

        public long BulkUploadMotor(string Extension, string filePath, int reqFrom, out int rowsCnt, out string fileMismatchErr)
        {
            long returnCode = -1;
            string conString = string.Empty;
            string sheetName = string.Empty;
            string sp_name = string.Empty;
            fileMismatchErr = string.Empty;
            bool IsFileMatch = false;
            rowsCnt = 0;

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
                if (sheetName.Contains("$"))
                    sheetName = sheetName.Replace("$", "");

                if (reqFrom.Equals(1) && sheetName.Contains("MotorUpload"))
                {
                    IsFileMatch = true;
                }
                else if (reqFrom.Equals(2) && sheetName.Equals("TravelBulkUpload"))
                {
                    IsFileMatch = true;
                }
                else if (reqFrom.Equals(3) && sheetName.Equals("IndividualBulkUpload"))
                {
                    IsFileMatch = true;
                }
                else if (reqFrom.Equals(4) && sheetName.Equals("DomesticBulkUpload"))
                {
                    IsFileMatch = true;
                }
                if (IsFileMatch)
                {
                    using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                    {
                        con.Open();
                        if (dt.Rows.Count > 0)
                        {
                            rowsCnt = dt.Rows.Count;
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
                else
                {
                    fileMismatchErr = "File which you trying to upload is incorrect.!";
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
                                             MotorId = Convert.ToInt64(dr["MotorId"]),
                                             //   IssueDate = Convert.ToDateTime(dr["IssueDate"]),
                                             PolicyNo = dr["PolicyNo"].ToString(),
                                             TypeofTransaction = dr["TypeofTransaction"].ToString(),
                                             PolicyNumberifRenewal = dr["PolicyNumberifRenewal"].ToString(),
                                             Branch = dr["Branch"].ToString(),

                                             IssueDate = Convert.ToDateTime(dr["IssueDate"]),
                                             UAEExtensionNilPremiaum = dr["UAEExtensionNilPremiaum"].ToString(),
                                             GeographicalArea = dr["GeographicalArea"].ToString(),
                                             SpecialDiscount = dr["SpecialDiscount"].ToString(),
                                             Hirepurchase_BankName = dr["Hirepurchase_BankName"].ToString(),
                                             EmailId = dr["EmailId"].ToString(),
                                             MazayaCard = dr["MazayaCard"].ToString(),
                                             FirstRegDate = Convert.ToDateTime(dr["FirstRegDate"].ToString()),
                                             PurchaseType = dr["PurchaseType"].ToString(),
                                             AssuredName = dr["AssuredName"].ToString(),
                                             NillAdditionalDriver = dr["NillAdditionalDriver"].ToString(),
                                             Make_Model = dr["Make_Model"].ToString(),
                                             SeatingCapacity = Convert.ToInt32(dr["SeatingCapacity"].ToString()),
                                             AgencyRepair = dr["AgencyRepair"].ToString(),
                                             AssuredName_Arabic = dr["AssuredName_Arabic"].ToString(),
                                             Marketer = dr["Marketer"].ToString(),
                                             BodyType = dr["BodyType"].ToString(),
                                             RoadAssistance = dr["RoadAssistance"].ToString(),
                                             RegistrationNo = dr["RegistrationNo"].ToString(),
                                             CivilID_CRNo = dr["CivilID_CRNo"].ToString(),
                                             IssueFrom = dr["IssueFrom"].ToString(),
                                             VehicleType = dr["VehicleType"].ToString(),
                                             SumInsured_RO = Convert.ToInt64(dr["SumInsured_RO"]),
                                             MakeModel = dr["MakeModel"].ToString(),
                                             PostBox = dr["PostBox"].ToString(),
                                             VIPCustomer = dr["VIPCustomer"].ToString(),
                                             PolicyStartDate = Convert.ToDateTime(dr["PolicyStartDate"]),
                                             YearofManufacture = Convert.ToInt32(dr["YearofManufacture"]),
                                             Voluntaryexcess = dr["Voluntaryexcess"].ToString(),
                                             EngineNo = dr["EngineNo"].ToString(),
                                             PostalCode = dr["PostalCode"].ToString(),
                                             PolicyEndDate = Convert.ToDateTime(dr["PolicyEndDate"]),
                                             VehicleAge = dr["VehicleAge"].ToString(),
                                             NoClaimsDiscount = dr["NoClaimsDiscount"].ToString(),
                                             ChassisNo = dr["ChassisNo"].ToString(),
                                             City = dr["City"].ToString(),
                                             AgentCode_BrokerCode = dr["AgentCode_BrokerCode"].ToString(),
                                             Tonnage = dr["Tonnage"].ToString(),
                                             LicenceFirstIssued = Convert.ToDateTime(dr["LicenceFirstIssued"]),
                                             VehicleCC = dr["VehicleCC"].ToString(),
                                             ResPhoneNo = dr["ResPhoneNo"].ToString(),
                                             PlateColor = dr["PlateColor"].ToString(),
                                             Nationality = dr["Nationality"].ToString(),
                                             Cylinder = dr["Cylinder"].ToString(),
                                             Color = dr["Color"].ToString(),
                                             MobileNo = dr["MobileNo"].ToString(),
                                             DriverAge = dr["DriverAge"].ToString(),
                                             SumInsured = Convert.ToInt64(dr["SumInsured"]),
                                             PremiumAmount = Convert.ToInt64(dr["PremiumAmount"]),
                                             RivisedSI = Convert.ToInt64(dr["RivisedSI"]),
                                             CustomerCode = dr["CustomerCode"].ToString(),
                                             CustomerName = dr["CustomerName"].ToString()

                                         }).ToList();
                    }
                    if (ds.Tables[1].Rows.Count > 0)
                    {
                        lstTravelModel = (from DataRow dr in ds.Tables[1].Rows
                                          select new TravelModel()
                                          {
                                              TravelId = (long)dr["TravelId"],
                                              IssueDate = Convert.ToDateTime(dr["IssueDate"]),
                                              PolicyNo = dr["PolicyNo"].ToString(),
                                              Branch = dr["Branch"].ToString(),
                                              Planning = dr["Planning"].ToString(),
                                              NoOfDays = (int)dr["NoOfDays"],
                                              CoverageType = dr["CoverageType"].ToString(),
                                              DepartureDate = Convert.ToDateTime(dr["DepartureDate"]),
                                              DateOfReturn = Convert.ToDateTime(dr["DateOfReturn"]),
                                              DateOfBirth = Convert.ToDateTime(dr["DateOfBirth"]),
                                              TravelDestination = dr["TravelDestination"].ToString(),
                                              PurposeOfVisit = dr["PurposeOfVisit"].ToString(),
                                              Marketer = dr["Marketer"].ToString(),
                                              Broker_AgentCode = dr["Broker_AgentCode"].ToString(),
                                              IssueFrom = dr["IssueFrom"].ToString(),
                                              AssuredName = dr["AssuredName"].ToString(),
                                              Gender = dr["Gender"].ToString(),
                                              CivilID = dr["CivilID"].ToString(),
                                              Mobile = (long)dr["Mobile"],
                                              PostBox = dr["PostBox"].ToString(),
                                              PostalCode = dr["PostalCode"].ToString(),
                                              City = dr["City"].ToString(),
                                              Email = dr["Email"].ToString(),
                                              LocalPersonName = dr["LocalPersonName"].ToString(),
                                              LocalPersonNo = dr["LocalPersonNo"].ToString(),
                                              Nationality = dr["Nationality"].ToString(),
                                              PassportNo = dr["PassportNo"].ToString(),
                                              Extension = dr["Extension"].ToString(),
                                              VipCustomer = dr["VipCustomer"].ToString(),
                                              Remarks = dr["Remarks"].ToString(),
                                              PolicyIsForOmanNationals_LegalResidentsOfOman = dr["PolicyIsForOmanNationals_LegalResidentsOfOman"].ToString(),
                                              SpecialDiscount = dr["SpecialDiscount"].ToString(),
                                              AdditionalConditions = dr["AdditionalConditions"].ToString(),
                                              MazayaCard = dr["MazayaCard"].ToString(),
                                              AssuredNameFamilyMember = dr["AssuredNameFamilyMember"].ToString(),
                                              DateOfBirthFamilyMember = Convert.ToDateTime(dr["DateOfBirthFamilyMember"]),
                                              Age = (int)dr["Age"],
                                              Relationship = dr["Relationship"].ToString(),
                                              Sex = dr["Sex"].ToString(),
                                              PassportNoFamilyMember = dr["PassportNoFamilyMember"].ToString(),
                                              ExtensionFamilyMember = dr["ExtensionFamilyMember"].ToString(),


                                          }).ToList();
                    }
                    if (ds.Tables[2].Rows.Count > 0)
                    {
                        lstIndividualModel = (from DataRow dr in ds.Tables[2].Rows
                                              select new IndividualModel()
                                              {
                                                  IndividualId = (long)dr["IndividualId"],
                                                  QuotationNo = dr["QuotationNo"].ToString(),
                                                  PolicyNo = dr["PolicyNo"].ToString(),
                                                  IssueDate = Convert.ToDateTime(dr["IssueDate"]),
                                                  Branch = dr["Branch"].ToString(),
                                                  PolicyStartDate = Convert.ToDateTime(dr["PolicyStartDate"]),
                                                  PolicyEndDate = Convert.ToDateTime(dr["PolicyEndDate"]),
                                                  NameofthePlan = dr["NameofthePlan"].ToString(),
                                                  SumAssured = (long)dr["SumAssured"],
                                                  DateofBirth = Convert.ToDateTime(dr["DateofBirth"]),
                                                  Age = (int)dr["Age"],
                                                  Gender = dr["Gender"].ToString(),
                                                  Broker_AgentCode = dr["Broker_AgentCode"].ToString(),
                                                  LifeAssuredName = dr["LifeAssuredName"].ToString(),
                                                  LifeAssuredName_Arabic = dr["LifeAssuredName_Arabic"].ToString(),
                                                  AssuredGender = dr["AssuredGender"].ToString(),
                                                  AssuredDateofBirth = Convert.ToDateTime(dr["AssuredDateofBirth"]),
                                                  AssuredCountryofBirth = dr["AssuredCountryofBirth"].ToString(),
                                                  AssuredCivilID = dr["AssuredCivilID"].ToString(),
                                                  AssuredBldgNo_Street = dr["AssuredBldgNo_Street"].ToString(),
                                                  AssuredPostBox = dr["AssuredPostBox"].ToString(),
                                                  AssuredPostalCode = dr["AssuredPostalCode"].ToString(),
                                                  AssuredCity = dr["AssuredCity"].ToString(),
                                                  AssuredResPhoneNo = dr["AssuredResPhoneNo"].ToString(),
                                                  AssuredMobileNo = dr["AssuredMobileNo"].ToString(),
                                                  AssuredEMail = dr["AssuredEMail"].ToString(),
                                                  Marketer = dr["Marketer"].ToString(),
                                                  IssueFrom = dr["IssueFrom"].ToString(),
                                                  Referral = dr["Referral"].ToString(),
                                                  ReferralRemarks = dr["ReferralRemarks"].ToString(),
                                                  NomineeName = dr["NomineeName"].ToString(),
                                                  NomineeName_Arabic = dr["NomineeName_Arabic"].ToString(),
                                                  NomineeGender = dr["NomineeGender"].ToString(),
                                                  NomineeDOB = Convert.ToDateTime(dr["NomineeDOB"]),
                                                  NomineeCountryofBirth = dr["NomineeCountryofBirth"].ToString(),
                                                  NomineeCivilID = dr["NomineeCivilID"].ToString(),
                                                  NomineeBldgNo_Street = dr["NomineeBldgNo_Street"].ToString(),
                                                  NomineePostBox = dr["NomineePostBox"].ToString(),
                                                  NomineePostalCode = dr["NomineePostalCode"].ToString(),
                                                  NomineeCity = dr["NomineeCity"].ToString(),
                                                  NomineeResPhoneNo = dr["NomineeResPhoneNo"].ToString(),
                                                  NomineeMobileNo = dr["NomineeMobileNo"].ToString(),
                                                  NomineeEMail = dr["NomineeEMail"].ToString(),

                                                  AppointeeName = dr["AppointeeName"].ToString(),
                                                  AppointeeAge = Convert.ToInt32(dr["AppointeeAge"]),
                                                  AppointeeContactNo = dr["AppointeeContactNo"].ToString(),
                                                  RelationshiptotheNominee = dr["RelationshiptotheNominee"].ToString(),

                                                  AppointeeCivilIDNo = dr["AppointeeCivilIDNo"].ToString(),
                                                  NomineeOfficePhoneNo = dr["NomineeOfficePhoneNo"].ToString()


                                              }).ToList();
                    }
                    if (ds.Tables[3].Rows.Count > 0)
                    {
                        lstDomesticModel = (from DataRow dr in ds.Tables[3].Rows
                                            select new DomesticModel()
                                            {

                                                DomesticId = (long)dr["DomesticId"],
                                                DraftNo = dr["DraftNo"].ToString(),
                                                PolicyNo = dr["PolicyNo"].ToString(),
                                                IssueDate = Convert.ToDateTime(dr["IssueDate"].ToString()),
                                                Branch = dr["Branch"].ToString(),
                                                PolicyStartDate = Convert.ToDateTime(dr["PolicyStartDate"].ToString()),
                                                PolicyEndDate = Convert.ToDateTime(dr["PolicyEndDate"].ToString()),
                                                NoofYears = (int)dr["NoofYears"],
                                                Marketer = dr["Marketer"].ToString(),
                                                Broker_AgentCode = dr["Broker_AgentCode"].ToString(),
                                                IssueFrom = dr["IssueFrom"].ToString(),
                                                SpecialDiscount = dr["SpecialDiscount"].ToString(),
                                                Amount = (long)dr["Amount"],
                                                AssuredName = dr["AssuredName"].ToString(),
                                                AssuredName_Arabic = dr["AssuredName_Arabic"].ToString(),
                                                CivilID = (long)dr["CivilID"],
                                                PostBox = (long)dr["PostBox"],
                                                PostalCode = (long)dr["PostalCode"],
                                                City = dr["City"].ToString(),
                                                ResPhoneNo = (long)dr["ResPhoneNo"],
                                                OfficePhoneNo = (long)dr["OfficePhoneNo"],
                                                MobileNo = (long)dr["MobileNo"],
                                                HelperProfession = dr["HelperProfession"].ToString(),
                                                Gender = dr["Gender"].ToString(),
                                                DateofBirth = Convert.ToDateTime(dr["DateofBirth"]),
                                                Age = (int)dr["Age"],
                                                PassportNo = (long)dr["PassportNo"],
                                                Nationality = dr["Nationality"].ToString(),
                                                MazayaCard = dr["MazayaCard"].ToString(),
                                                SameasHouseMaidAddress = dr["SameasHouseMaidAddress"].ToString(),
                                                Sponsor_ProposerName = dr["Sponsor_ProposerName"].ToString(),
                                                SponsorPostBox = (long)dr["SponsorPostBox"],
                                                SponsorPostalCode = (long)dr["SponsorPostalCode"],
                                                SponsorCity = dr["SponsorCity"].ToString(),
                                                SponsorMobileNo = (long)dr["SponsorMobileNo"],
                                                SponsorOfficePhone = (long)dr["SponsorOfficePhone"],
                                                SponsorNationality = dr["SponsorNationality"].ToString(),
                                                VIPCustomer = dr["VIPCustomer"].ToString(),
                                                Email = dr["Email"].ToString(),


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
        public long SaveMotorIns(MotorModel objMotorModel)
        {
            long returnCode = -1;
            DataTable dt = new DataTable();

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    dt = objUtility.ConvertMotorIns(objMotorModel);
                    if (dt.Rows.Count > 0)
                    {
                        SqlCommand cmd;
                        cmd = new SqlCommand
                        {
                            CommandText = "SP_MotorInsSave",
                            CommandTimeout = 180,
                            Connection = con,
                            CommandType = CommandType.StoredProcedure
                        };
                        SqlParameter UDTparam = new SqlParameter
                        {
                            ParameterName = "@UDT_MotorInsSave",
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

                throw;
            }
            return returnCode;
        }
        public long UpdateMotorIns(MotorModel objMotorModel)
        {
            long returnCode = -1;
            DataTable dt = new DataTable();

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd;
                    cmd = new SqlCommand
                    {
                        CommandText = "SP_MotorInsUpdate",
                        CommandTimeout = 180,
                        Connection = con,
                        CommandType = CommandType.StoredProcedure
                    };

                    cmd.Parameters.AddWithValue("@CustomerCode", objMotorModel.CustomerCode);
                    cmd.Parameters.AddWithValue("@CustomerName", objMotorModel.CustomerName);
                    cmd.Parameters.AddWithValue("@SumInsured", objMotorModel.SumInsured);
                    cmd.Parameters.AddWithValue("@PremiumAmount", objMotorModel.PremiumAmount);
                    cmd.Parameters.AddWithValue("@RivisedSI", objMotorModel.RivisedSI);
                    cmd.Parameters.AddWithValue("@MotorId", objMotorModel.MotorId);

                    returnCode = cmd.ExecuteNonQuery();


                }
            }
            catch (Exception ex)
            {

                throw;
            }
            return returnCode;
        }
        public long SaveIndIns(IndividualModel objIndIns)
        {
            long returnCode = -1;
            DataTable dt = new DataTable();

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    dt = objUtility.ConvertToInvidual(objIndIns);
                    if (dt.Rows.Count > 0)
                    {
                        SqlCommand cmd;
                        cmd = new SqlCommand
                        {
                            CommandText = "SP_MotorIndividualSave",
                            CommandTimeout = 180,
                            Connection = con,
                            CommandType = CommandType.StoredProcedure
                        };
                        SqlParameter UDTparam = new SqlParameter
                        {
                            ParameterName = "@UDT_MotorIndividualInsert",
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

                throw;
            }
            return returnCode;
        }
        public long SaveTravelIns(TravelModel objTravelIns)
        {
            long returnCode = -1;
            DataTable dt = new DataTable();

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    dt = objUtility.ConvertTravelIns(objTravelIns);
                    if (dt.Rows.Count > 0)
                    {
                        SqlCommand cmd;
                        cmd = new SqlCommand
                        {
                            CommandText = "SP_MotorTravelSave",
                            CommandTimeout = 180,
                            Connection = con,
                            CommandType = CommandType.StoredProcedure
                        };
                        SqlParameter UDTparam = new SqlParameter
                        {
                            ParameterName = "@UDT_MotorTravelInsert",
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

                throw;
            }
            return returnCode;
        }
        public long SaveDomesticIns(DomesticModel objDomestic)
        {
            long returnCode = -1;
            DataTable dt = new DataTable();

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    dt = objUtility.ConvertToDomestic(objDomestic);
                    if (dt.Rows.Count > 0)
                    {
                        SqlCommand cmd;
                        cmd = new SqlCommand
                        {
                            CommandText = "SP_MotorDomesticSave",
                            CommandTimeout = 180,
                            Connection = con,
                            CommandType = CommandType.StoredProcedure
                        };
                        SqlParameter UDTparam = new SqlParameter
                        {
                            ParameterName = "@UDT_MotorDomesticInsert",
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

                throw;
            }
            return returnCode;
        }

    }
}
