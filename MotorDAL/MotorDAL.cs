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

        public long BulkUploadMotor(string Extension, string filePath, int reqFrom, out int rowsCnt, out string fileMismatchErr,string UserName)
        {
            long returnCode = -1;
            reqFrom = 0;
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
            else
            {
                sp_name = "SP_InsBulkUpload";
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
                //if (IsFileMatch)
                //{
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
                            //ParameterName = "@UDT_MotorBulkUpload",
                            ParameterName = "@UDT_NewInsSave",
                            Size = -1,
                            Value = dt
                        };
                        cmd.Parameters.AddWithValue("@UserName", UserName);
                        cmd.Parameters.Add(UDTparam);
                        returnCode = cmd.ExecuteNonQuery();
                    }

                }
                //}
                //else
                //{
                //    fileMismatchErr = "File which you trying to upload is incorrect.!";
                //}

            }
            catch (Exception ex)
            {

                throw ex;
            }

            return returnCode;
        }
        public long GetMasterViews(out List<MotorModel> lstMotorModel, out List<TravelModel> lstTravelModel, out List<IndividualModel> lstIndividualModel,
            out List<DomesticModel> lstDomesticModel, out List<ProducerCodeMaster> lstProducerCodeMaster, out List<Insurance> lstNewIns)
        {
            long returnCode = -1;
            lstMotorModel = new List<MotorModel>();
            lstTravelModel = new List<TravelModel>();
            lstIndividualModel = new List<IndividualModel>();
            lstDomesticModel = new List<DomesticModel>();
            lstProducerCodeMaster = new List<ProducerCodeMaster>();
            lstNewIns = new List<Insurance>();

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
                                             CustomerName = dr["CustomerName"].ToString(),
                                             Status = dr["Status"].ToString(),
                                             AgentCode = dr["AgentCode"].ToString()

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
                                              AgentCode = dr["AgentCode"].ToString(),
                                              SumInsured = Convert.ToInt64(dr["SumInsured"]),
                                              PremiumAmount = Convert.ToInt64(dr["PremiumAmount"]),
                                              RivisedSI = Convert.ToInt64(dr["RivisedSI"]),
                                              CustomerCode = dr["CustomerCode"].ToString(),
                                              CustomerName = dr["CustomerName"].ToString(),
                                              Status = dr["Status"].ToString()

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
                                                  NomineeOfficePhoneNo = dr["NomineeOfficePhoneNo"].ToString(),
                                                  AgentCode = dr["AgentCode"].ToString(),
                                                  SumInsured = Convert.ToInt64(dr["SumInsured"]),
                                                  PremiumAmount = Convert.ToInt64(dr["PremiumAmount"]),
                                                  RivisedSI = Convert.ToInt64(dr["RivisedSI"]),
                                                  CustomerCode = dr["CustomerCode"].ToString(),
                                                  CustomerName = dr["CustomerName"].ToString(),
                                                  Status = dr["Status"].ToString()

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
                                                AgentCode = dr["AgentCode"].ToString(),
                                                SumInsured = Convert.ToInt64(dr["SumInsured"]),
                                                PremiumAmount = Convert.ToInt64(dr["PremiumAmount"]),
                                                RivisedSI = Convert.ToInt64(dr["RivisedSI"]),
                                                CustomerCode = dr["CustomerCode"].ToString(),
                                                CustomerName = dr["CustomerName"].ToString(),
                                                Status = dr["Status"].ToString()


                                            }).ToList();
                    }
                    if (ds.Tables[4].Rows.Count > 0)
                    {
                        lstProducerCodeMaster = (from DataRow dr in ds.Tables[4].Rows
                                                 select new ProducerCodeMaster()
                                                 {

                                                     ProducerCodeId = (long)dr["ProducerCodeId"],
                                                     ProducerCode = dr["ProducerCode"].ToString(),
                                                     ProducerName = dr["ProducerName"].ToString(),
                                                 }).ToList();
                    }
                    if (ds.Tables[5].Rows.Count > 0)
                    {
                        //DTtoListConverter.ConvertTo(ds.Tables[5], out lstNewIns);
                        lstNewIns = (from DataRow dr in ds.Tables[5].Rows
                                     select new Insurance()
                                     {
                                         InsuranceID = Convert.ToInt64(dr["InsuranceID"]),
                                         DivisionName = dr["DivisionName"].ToString(),
                                         ProductCode = dr["ProductCode"].ToString(),
                                         ProductName = dr["ProductName"].ToString(),
                                         BusinessType = dr["BusinessType"].ToString(),

                                         PolicyNo = dr["PolicyNo"].ToString(),
                                         AssuredName = dr["AssuredName"].ToString(),
                                         AssuredMobile = dr["AssuredMobile"].ToString(),
                                         CustomerName = dr["CustomerName"].ToString(),
                                         SourceCode = dr["SourceCode"].ToString(),

                                         SourceName = dr["SourceName"].ToString(),
                                         CustomerCategory = dr["CustomerCategory"].ToString(),
                                         PolicyFromDate = Convert.ToDateTime(dr["PolicyFromDate"]),
                                         PolicyToDate = Convert.ToDateTime(dr["PolicyToDate"]),
                                         GrossPremium = Convert.ToInt64(dr["GrossPremium"]),

                                         DivisionCode = dr["DivnCode"].ToString(),
                                         CustomerCode = dr["CustomerCode"].ToString(),
                                         Charges = Convert.ToInt64(dr["Charges"]),
                                         Status = dr["Status"].ToString(),
                                         InsType = dr["InsType"].ToString(),

                                         RevisedSumInsured = Convert.ToInt64(dr["RevisedSumInsured"]),
                                         RenewalPremium = Convert.ToInt64(dr["RenewalPremium"]),
                                         MarketingExecutive = dr["MarketingExecutive"].ToString(),
                                         Remarks = dr["Remarks"].ToString(),
<<<<<<< Updated upstream
                                         ProducerName = dr["ProducerName"].ToString(),
=======
                                         ProducerName = dr["ProducerName"].ToString()
>>>>>>> Stashed changes

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
                    cmd.Parameters.AddWithValue("@Status", objMotorModel.Status);

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

        public long GetNewMIDashBoard(dynamic lstInput, out DashBoard lstInfo)
        {
            long returnCode = -1;
            lstInfo = new DashBoard();
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetMIDashBoard"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@UserName", lstInput.UserName);
                    //cmd.Parameters.AddWithValue("@Password", lstInput.Password);
                    //cmd.Parameters.AddWithValue("@RoleId", lstInput.Role);

                    SqlDataReader reader;
                    reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        lstInfo.TNPYear = (long)reader.GetValue(0);
                        lstInfo.TNPUnderProcessYear = (long)reader.GetValue(1);
                        lstInfo.TNPLostYear = (long)reader.GetValue(2);
                        lstInfo.TNPRenewedYear = (long)reader.GetValue(3);
                        lstInfo.PercentageRenewedYear = (decimal)reader.GetValue(4);
                        lstInfo.TNPMonth = (long)reader.GetValue(5);
                        lstInfo.TNPLostMonth = (long)reader.GetValue(6);
                        lstInfo.TNPUnderProcessMonth = (long)reader.GetValue(7);
                        lstInfo.TNPRenewedMonth = (long)reader.GetValue(8);
                        lstInfo.PercentageRenewedMonth = (decimal)reader.GetValue(9);
                        lstInfo.TNPYearPremium = (long)reader.GetValue(10);
                        lstInfo.TNPUPYearPremium = (long)reader.GetValue(11);
                        lstInfo.TNPLostYearPremium = (long)reader.GetValue(12);
                        lstInfo.TNPRenewedYearPremium = (long)reader.GetValue(13);
                        lstInfo.PercentPremiumRenewedYear = (decimal)reader.GetValue(14);
                        lstInfo.TNPMonthPremium = (long)reader.GetValue(15);
                        lstInfo.TNPLostMonthPremium = (long)reader.GetValue(16);
                        lstInfo.TNPUPMonthPremium = (long)reader.GetValue(17);
                        lstInfo.TNPRenewedMonthPremium = (long)reader.GetValue(18);
                        lstInfo.PercentPremiumRenewedMonth = (decimal)reader.GetValue(19);
                        lstInfo.UserName = (string)reader.GetValue(20);

                        lstInfo.TotPoltoBeRenewed = 0;
                        lstInfo.TotPolforRenewal = 0;
                        lstInfo.NoOfPoRenewed = 0;
                        lstInfo.PolicyLost = 0;

                        lstInfo.TotPoltoBeRenewedCM = 0;
                        lstInfo.TotPolforRenewalCM = 0;

                        lstInfo.NoOfPoRenewedCM = 0;
                        lstInfo.PolicyLostCM = 0;

                        returnCode = 1;
                    }
                    reader.Close();
                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long GetUserInsuranceInfo(dynamic lstInput, out DashBoard lstInfo)
        {
            long returnCode = -1;
            lstInfo = new DashBoard();
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetUserInsInfo"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@UserName", lstInput.UserName);
                    cmd.Parameters.AddWithValue("@Password", lstInput.Password);
                    cmd.Parameters.AddWithValue("@RoleId", lstInput.Role);

                    SqlDataReader reader;
                    reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        lstInfo.TNPYear = (long)reader.GetValue(0);
                        lstInfo.TNPUnderProcessYear = (long)reader.GetValue(1);
                        lstInfo.TNPLostYear = (long)reader.GetValue(2);
                        lstInfo.TNPRenewedYear = (long)reader.GetValue(3);
                        lstInfo.PercentageRenewedYear = (decimal)reader.GetValue(4);
                        lstInfo.TNPMonth = (long)reader.GetValue(5);
                        lstInfo.TNPLostMonth = (long)reader.GetValue(6);
                        lstInfo.TNPUnderProcessMonth = (long)reader.GetValue(7);
                        lstInfo.TNPRenewedMonth = (long)reader.GetValue(8);
                        lstInfo.PercentageRenewedMonth = (decimal)reader.GetValue(9);
                        lstInfo.TNPYearPremium = (long)reader.GetValue(10);
                        lstInfo.TNPUPYearPremium = (long)reader.GetValue(11);
                        lstInfo.TNPLostYearPremium = (long)reader.GetValue(12);
                        lstInfo.TNPRenewedYearPremium = (long)reader.GetValue(13);
                        lstInfo.PercentPremiumRenewedYear = (decimal)reader.GetValue(14);
                        lstInfo.TNPMonthPremium = (long)reader.GetValue(15);
                        lstInfo.TNPLostMonthPremium = (long)reader.GetValue(16);
                        lstInfo.TNPUPMonthPremium = (long)reader.GetValue(17);
                        lstInfo.TNPRenewedMonthPremium = (long)reader.GetValue(18);
                        lstInfo.PercentPremiumRenewedMonth = (decimal)reader.GetValue(19);
                        lstInfo.UserName = (string)reader.GetValue(20);

                        lstInfo.TotPoltoBeRenewed = 0;
                        lstInfo.TotPolforRenewal = 0;
                        lstInfo.NoOfPoRenewed = 0;
                        lstInfo.PolicyLost = 0;

                        lstInfo.TotPoltoBeRenewedCM = 0;
                        lstInfo.TotPolforRenewalCM = 0;

                        lstInfo.NoOfPoRenewedCM = 0;
                        lstInfo.PolicyLostCM = 0;

                        returnCode = 1;
                    }
                    reader.Close();
                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long GetUserwiseReport(string U_name, out DashBoard lstInfo)
        {
            long returnCode = -1;
            lstInfo = new DashBoard();
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetUserwiseReport"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@UserName", U_name);


                    SqlDataReader reader;
                    reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        lstInfo.TotPoltoBeRenewed = (int)reader.GetValue(0);
                        lstInfo.TotPolforRenewal = (int)reader.GetValue(1);
                        lstInfo.NoOfPoRenewed = (int)reader.GetValue(2);
                        lstInfo.PolicyLost = (int)reader.GetValue(3);
                        lstInfo.UserName = reader.GetValue(4).ToString();
                        returnCode = 1;
                    }
                    reader.Close();
                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long RegisterUser(dynamic obj)
        {
            long returnCode = -1;

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd;
                    cmd = new SqlCommand
                    {
                        CommandText = "SP_RegisterUser",
                        CommandTimeout = 180,
                        Connection = con,
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.AddWithValue("@Password", obj.Password);
                    cmd.Parameters.AddWithValue("@RoleId", obj.Role);
                    cmd.Parameters.AddWithValue("@UserName", obj.UserName);

                    SqlParameter param = new SqlParameter
                    {
                        ParameterName = "@Return",
                        Direction = ParameterDirection.Output,
                        SqlDbType = SqlDbType.Int
                    };
                    //cmd.Parameters.Add(UDTparam);
                    cmd.Parameters.Add(param);

                    cmd.ExecuteNonQuery();
                    if (cmd.Parameters["@Return"].Value != DBNull.Value)
                    {
                        returnCode = Convert.ToInt64(cmd.Parameters["@Return"].Value);
                    }
                    else
                        // returnCode = 0;
                        returnCode = 0;// cmd.ExecuteNonQuery();


                }
            }
            catch (Exception ex)
            {

                throw;
            }
            return returnCode;
        }
        public long IsUserExistsMotorIns(dynamic obj)
        {
            long returnCode = -1;
            long RoleId = 0;
            SqlCommand cmd;
            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();

                    string query = "Select count(*) Count,RoleId from TB_Users where UserName='" + obj.UserName + "' and Password='" + obj.Password + "'  and roleid=(select roleid from TB_RoleMaster where RoleName='" + obj.Role + "' ) group by RoleId";
                    cmd = new SqlCommand(query, con);
                    SqlDataReader reader;
                    reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        returnCode = (int)reader.GetValue(0);
                        RoleId = Convert.ToInt64(reader.GetValue(1));

                    }
                    reader.Close();
                    cmd.Dispose();
                    // returnCode = Convert.ToInt64(cmd.ExecuteScalar());
                    //cmd.Dispose();
                    if (returnCode > 0)
                    {
                        returnCode = RoleId;
                    }
                }
            }
            catch (Exception ex)
            {

                throw;
            }
            return returnCode;
        }
        public long GetUserDBoard(string u_name, int flag, out DashBoard lstInfo)
        {
            long returnCode = -1;
            string sp_name = string.Empty;
            lstInfo = new DashBoard();
            if (flag.Equals(1))
                sp_name = "SP_GetUserMDB";
            if (flag.Equals(2))
                sp_name = "SP_GetUserTravelDB";
            if (flag.Equals(3))
                sp_name = "SP_GetUserIndividualDB";
            if (flag.Equals(4))
                sp_name = "SP_GetUserDomesticDB";
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = sp_name
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@UserName", u_name);

                    SqlDataReader reader;
                    reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        lstInfo.TNPYear = (long)reader.GetValue(0);
                        lstInfo.TNPUnderProcessYear = (long)reader.GetValue(1);
                        lstInfo.TNPLostYear = (long)reader.GetValue(2);
                        lstInfo.TNPRenewedYear = (long)reader.GetValue(3);
                        lstInfo.PercentageRenewedYear = (decimal)reader.GetValue(4);
                        lstInfo.TNPMonth = (long)reader.GetValue(5);
                        lstInfo.TNPLostMonth = (long)reader.GetValue(6);
                        lstInfo.TNPUnderProcessMonth = (long)reader.GetValue(7);
                        lstInfo.TNPRenewedMonth = (long)reader.GetValue(8);
                        lstInfo.PercentageRenewedMonth = (decimal)reader.GetValue(9);
                        lstInfo.TNPYearPremium = (long)reader.GetValue(10);
                        lstInfo.TNPUPYearPremium = (long)reader.GetValue(11);
                        lstInfo.TNPLostYearPremium = (long)reader.GetValue(12);
                        lstInfo.TNPRenewedYearPremium = (long)reader.GetValue(13);
                        lstInfo.PercentPremiumRenewedYear = (decimal)reader.GetValue(14);
                        lstInfo.TNPMonthPremium = (long)reader.GetValue(15);
                        lstInfo.TNPLostMonthPremium = (long)reader.GetValue(16);
                        lstInfo.TNPUPMonthPremium = (long)reader.GetValue(17);
                        lstInfo.TNPRenewedMonthPremium = (long)reader.GetValue(18);
                        lstInfo.PercentPremiumRenewedMonth = (decimal)reader.GetValue(19);
                        lstInfo.UserName = (string)reader.GetValue(20);

                        lstInfo.TotPoltoBeRenewed = 0;
                        lstInfo.TotPolforRenewal = 0;
                        lstInfo.NoOfPoRenewed = 0;
                        lstInfo.PolicyLost = 0;

                        lstInfo.TotPoltoBeRenewedCM = 0;
                        lstInfo.TotPolforRenewalCM = 0;

                        lstInfo.NoOfPoRenewedCM = 0;
                        lstInfo.PolicyLostCM = 0;

                        returnCode = 1;
                    }
                    reader.Close();
                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public List<ProducerCodeMaster> GetProducerMaster(string u_name)
        {
            List<ProducerCodeMaster> lst = new List<ProducerCodeMaster>();
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetProducerMaster"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@AgentCodeBrokerCode", u_name);

                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        lst = (from DataRow dr in ds.Tables[0].Rows
                               select new ProducerCodeMaster()
                               {

                                   ProducerCodeId = (long)dr["ProducerCodeId"],
                                   ProducerCode = dr["ProducerCode"].ToString(),
                                   ProducerName = dr["ProducerName"].ToString(),
                               }).ToList();
                    }
                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return lst;
        }
        public List<ProducerCodeMaster> GetPMDDB(string RoleId)
        {
            List<ProducerCodeMaster> lst = new List<ProducerCodeMaster>();
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetPMDashBoard"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@RoleName", RoleId);

                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        lst = (from DataRow dr in ds.Tables[0].Rows
                               select new ProducerCodeMaster()
                               {

                                   ProducerCodeId = (long)dr["ProducerCodeId"],
                                   ProducerName = dr["ProducerName"].ToString(),
                                   UserName = dr["UserName"].ToString(),
                               }).ToList();
                    }
                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return lst;
        }
        public List<DataPoint> GetDBBarchart(int flag)
        {
            List<DataPoint> lst = new List<DataPoint>();
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetBarChart"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@flag", flag);

                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        lst = (from DataRow dr in ds.Tables[0].Rows
                               select new DataPoint()
                               {

                                   y = dr["MonthName"].ToString(),
                                   a = (int)dr["Lost"],
                                   b = (int)dr["Renewed"],
                                   c = (int)dr["Under process"],

                               }).ToList();
                    }
                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return lst;
        }
        public long SaveInsu(Insurance obj,string Uname,out string U)
        {
            long returnCode = -1;
            DataTable dt = new DataTable();
            U = Uname;
            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();

                    dt = objUtility.ConvertIns(obj);
                    if (dt.Rows.Count > 0)
                    {
                        SqlCommand cmd;
                        if (obj.InsuranceID.Equals(0))
                        {
                            cmd = new SqlCommand
                            {
                                CommandText = "SP_NewInsSave",
                                CommandTimeout = 180,
                                Connection = con,
                                CommandType = CommandType.StoredProcedure
                            };
                            SqlParameter UDTparam = new SqlParameter
                            {
                                ParameterName = "@UDT_NewInsSave",
                                Size = -1,
                                Value = dt
                            };
                            SqlParameter param = new SqlParameter
                            {
                                ParameterName = "@Return",
                                Direction = ParameterDirection.Output,
                                SqlDbType = SqlDbType.Int
                            };
                            cmd.Parameters.AddWithValue("@UserName", Uname);
                            cmd.Parameters.Add(UDTparam);
                            cmd.Parameters.Add(param);

                            cmd.ExecuteNonQuery();
                            if (cmd.Parameters["@Return"].Value != DBNull.Value)
                            {
                                returnCode = Convert.ToInt64(cmd.Parameters["@Return"].Value);
                            }
                            else
                                returnCode = 0;
                        }
                        else if (obj.InsuranceID > 0)
                        {
                            cmd = new SqlCommand
                            {
                                CommandText = "SP_NewInsUpdate",
                                CommandTimeout = 180,
                                Connection = con,
                                CommandType = CommandType.StoredProcedure
                            };
                            SqlParameter UDTparam = new SqlParameter
                            {
                                ParameterName = "@UDT_NewInsSave",
                                Size = -1,
                                Value = dt
                            };
                            SqlParameter param = new SqlParameter
                            {
                                ParameterName = "@Return",
                                Direction = ParameterDirection.Output,
                                SqlDbType = SqlDbType.Int
                            };
                            cmd.Parameters.AddWithValue("@UserName", Uname);
                            cmd.Parameters.Add(UDTparam);
                            cmd.Parameters.Add(param);

                            cmd.ExecuteNonQuery();
                            if (cmd.Parameters["@Return"].Value != DBNull.Value)
                            {
                                returnCode = Convert.ToInt64(cmd.Parameters["@Return"].Value);
                            }
                            else
                                returnCode = 0;
                        }
                        
                    }

                }
            }
            catch (Exception ex)
            {

                throw;
            }
            return returnCode;
        }
        public long NewInsUpdate(Insurance objMotorModel)
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
                        CommandText = "SP_InsUpdate",
                        CommandTimeout = 180,
                        Connection = con,
                        CommandType = CommandType.StoredProcedure
                    };

                    cmd.Parameters.AddWithValue("@CustomerCode", objMotorModel.CustomerCode ?? "");
                    cmd.Parameters.AddWithValue("@CustomerName", objMotorModel.CustomerName ?? "");
                    cmd.Parameters.AddWithValue("@PremiumAmount", objMotorModel.RenewalPremium);
                    cmd.Parameters.AddWithValue("@RivisedSI", objMotorModel.RevisedSumInsured);
                    cmd.Parameters.AddWithValue("@InsId", objMotorModel.InsuranceID);
                    cmd.Parameters.AddWithValue("@GrossPremium", objMotorModel.GrossPremium);
                    cmd.Parameters.AddWithValue("@Status", objMotorModel.Status ?? "");

                    returnCode = cmd.ExecuteNonQuery();


                }
            }
            catch (Exception ex)
            {

                throw;
            }
            return returnCode;
        }
        public long GetBIDasbBoard(out List<BIDashBoard> lstBIDashBoard)
        {
            long returnCode = -1;
            lstBIDashBoard = new List<BIDashBoard>();
            try
            {
                DataSet ds = new DataSet();
                string[] strBussType = { "Broker", "Direct", "Branch", "Agent" };
                foreach (var item in strBussType)
                {
                    using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand
                        {
                            CommandText = "SP_GetBIDashBoard"
                        };

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@BusinessType", item);

                        SqlDataAdapter sdaAdapter = new SqlDataAdapter
                        {
                            SelectCommand = cmd
                        };
                        sdaAdapter.Fill(ds);
                        //ds.Tables[0].Rows.Count;

                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            lstBIDashBoard = (from DataRow dr in ds.Tables[0].Rows
                                              select new BIDashBoard()
                                              {
                                                  CalenderId = Convert.ToInt32(dr["CalenderId"]),
                                                  Renewed = Convert.ToInt32(dr["Renewed"]),
                                                  Available = Convert.ToInt32(dr["Available"]),
                                                  MonthName = dr["MonthName"].ToString(),
                                                  BusinessType = dr["BusinessType"].ToString(),
                                              }).ToList();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                throw;
            }
            return returnCode;
        }
        public long GetBIDasbBoardPF(out List<BIDashBoard> lstBIDashBoard)
        {
            long returnCode = -1;
            lstBIDashBoard = new List<BIDashBoard>();
            try
            {
                DataSet ds = new DataSet();
                string[] strBussType = { "Broker", "Direct", "Branch", "Agent" };
                foreach (var item in strBussType)
                {
                    using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand
                        {
                            CommandText = "SP_GetBIDBProducerPerformance"
                        };

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@BusinessType", item);

                        SqlDataAdapter sdaAdapter = new SqlDataAdapter
                        {
                            SelectCommand = cmd
                        };
                        sdaAdapter.Fill(ds);
                        //ds.Tables[0].Rows.Count;

                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            lstBIDashBoard = (from DataRow dr in ds.Tables[0].Rows
                                              select new BIDashBoard()
                                              {
                                                  CalenderId = Convert.ToInt32(dr["CalenderId"]),
                                                  Renewed = Convert.ToInt32(dr["Renewed"]),
                                                  Available = Convert.ToInt32(dr["Available"]),
                                                  MonthName = dr["MonthName"].ToString(),
                                                  BusinessType = dr["BusinessType"].ToString(),
                                              }).ToList();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                throw;
            }
            return returnCode;
        }
        public DataSet GetBIDasbBoardYearWise(string BusinessType)
        {
            DataSet ds = new DataSet();
            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetBIDashBoardYearWise"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@BusinessType", BusinessType);

                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(ds);
                }

            }
            catch (Exception ex)
            {
                throw;
            }
            return ds;
        }
        public long GetSProducerDB(out List<BIDashBoard> lstBIDashBoard, string BusinessType, string ProducerName)
        {
            long returnCode = -1;
            lstBIDashBoard = new List<BIDashBoard>();
            try
            {
                DataSet ds = new DataSet();

                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetSpecificBIDB"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@BusinessType", BusinessType);
                    cmd.Parameters.AddWithValue("@ProducerName", ProducerName);

                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(ds);
                    //ds.Tables[0].Rows.Count;

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        lstBIDashBoard = (from DataRow dr in ds.Tables[0].Rows
                                          select new BIDashBoard()
                                          {
                                              CalenderId = Convert.ToInt32(dr["CalenderId"]),
                                              Renewed = Convert.ToInt32(dr["Renewed"]),
                                              Available = Convert.ToInt32(dr["Available"]),
                                              MonthName = dr["MonthName"].ToString(),

                                          }).ToList();
                    }
                }

            }
            catch (Exception ex)
            {

                throw;
            }
            return returnCode;
        }
        public long GetSearchIns(long RoleId, string PolicyNo, string DivisionName, string AssuredName, string ProductName, string Status, out List<Insurance> lstNewIns)
        {
            long returnCode = -1;

            lstNewIns = new List<Insurance>();

            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetSearch"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@RoleId", RoleId);
                    cmd.Parameters.AddWithValue("@PolicyNo", PolicyNo);
                    cmd.Parameters.AddWithValue("@DivisionName", DivisionName);
                    cmd.Parameters.AddWithValue("@AssuredName", AssuredName);
                    cmd.Parameters.AddWithValue("@ProductName", ProductName);
                    cmd.Parameters.AddWithValue("@Status", Status);


                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        lstNewIns = (from DataRow dr in ds.Tables[0].Rows
                                     select new Insurance()
                                     {
                                         InsuranceID = Convert.ToInt64(dr["InsuranceID"]),
                                         DivisionName = dr["DivisionName"].ToString(),
                                         ProductCode = dr["ProductCode"].ToString(),
                                         ProductName = dr["ProductName"].ToString(),
                                         BusinessType = dr["BusinessType"].ToString(),

                                         PolicyNo = dr["PolicyNo"].ToString(),
                                         AssuredName = dr["AssuredName"].ToString(),
                                         AssuredMobile = dr["AssuredMobile"].ToString(),
                                         CustomerName = dr["CustomerName"].ToString(),
                                         SourceCode = dr["SourceCode"].ToString(),

                                         SourceName = dr["SourceName"].ToString(),
                                         CustomerCategory = dr["CustomerCategory"].ToString(),
                                         PolicyFromDate = Convert.ToDateTime(dr["PolicyFromDate"]),
                                         PolicyToDate = Convert.ToDateTime(dr["PolicyToDate"]),
                                         GrossPremium = Convert.ToInt64(dr["GrossPremium"]),

                                         DivisionCode = dr["DivnCode"].ToString(),
                                         CustomerCode = dr["CustomerCode"].ToString(),
                                         Charges = Convert.ToInt64(dr["Charges"]),
                                         Status = dr["Status"].ToString(),
                                         InsType = dr["InsType"].ToString(),

                                         RevisedSumInsured = Convert.ToInt64(dr["RevisedSumInsured"]),
                                         RenewalPremium = Convert.ToInt64(dr["RenewalPremium"]),
                                         MarketingExecutive = dr["MarketingExecutive"].ToString(),
                                         Remarks = dr["Remarks"].ToString(),

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
        public List<Users> GetUserList(string BussType)
        {
            List<Users> lst = new List<Users>();
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetUserList"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@BusinessType", BussType);

                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        lst = (from DataRow dr in ds.Tables[0].Rows
                               select new Users()
                               {
                                   UserId = (long)dr["UserId"],
                                   UserName = dr["UserName"].ToString(),
                                   Password = dr["Password"].ToString(),
                                   RoleId = (long)dr["RoleId"],
                                   RoleName = dr["RoleName"].ToString(),
                               }).ToList();
                    }
                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return lst;
        }
    }
}
