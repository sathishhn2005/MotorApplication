using System;
using System.Configuration;
using System.Data;
using MotorApp.BusinessEntities;
namespace MotorApp.Utilities
{

    public class Utility
    {
        public string GetConnectionString()
        {
            string conStr = ConfigurationManager.ConnectionStrings["MotorApp"].ConnectionString.ToString();
            return conStr;
        }
        public string GetOLEDBConnectionString(string Extension)
        {
            string OLEDBContstr = string.Empty;
            if (Extension.Equals(".xls"))
            {
                OLEDBContstr = ConfigurationManager.ConnectionStrings["Excel03ConString"].ConnectionString;
            }
            else if (Extension.Equals(".xlsx"))
            {
                OLEDBContstr = ConfigurationManager.ConnectionStrings["Excel07ConString"].ConnectionString;
            }

            return OLEDBContstr;
        }
        public DataTable ConvertToInvidual(IndividualModel _objIndIns)
        {
            try
            {
                DataTable _dt = new DataTable();

                _dt.Columns.Add("QuotationNo", typeof(string));
                _dt.Columns.Add("PolicyNo", typeof(string));
                _dt.Columns.Add("IssueDate", typeof(DateTime));
                _dt.Columns.Add("Branch", typeof(string));
                _dt.Columns.Add("PolicyStartDate", typeof(DateTime));
                _dt.Columns.Add("PolicyEndDate", typeof(DateTime));
                _dt.Columns.Add("NameofthePlan", typeof(string));
                _dt.Columns.Add("SumAssured", typeof(long));
                _dt.Columns.Add("DateofBirth", typeof(DateTime));
                _dt.Columns.Add("Age", typeof(int));
                _dt.Columns.Add("Gender", typeof(string));
                _dt.Columns.Add("Broker_AgentCode", typeof(string));
                _dt.Columns.Add("LifeAssuredName", typeof(string));
                _dt.Columns.Add("LifeAssuredName_Arabic", typeof(string));
                _dt.Columns.Add("AssuredGender", typeof(string));
                _dt.Columns.Add("AssuredDateofBirth", typeof(DateTime));
                _dt.Columns.Add("AssuredCountryofBirth", typeof(string));
                _dt.Columns.Add("AssuredCivilID", typeof(string));
                _dt.Columns.Add("AssuredBldgNo_Street", typeof(string));
                _dt.Columns.Add("AssuredPostBox", typeof(string));
                _dt.Columns.Add("AssuredPostalCode", typeof(string));
                _dt.Columns.Add("AssuredCity", typeof(string));
                _dt.Columns.Add("AssuredResPhoneNo", typeof(string));
                _dt.Columns.Add("AssuredMobileNo", typeof(string));
                _dt.Columns.Add("AssuredEMail", typeof(string));
                _dt.Columns.Add("Marketer", typeof(string));
                _dt.Columns.Add("IssueFrom", typeof(string));
                _dt.Columns.Add("Referral", typeof(string));
                _dt.Columns.Add("ReferralRemarks", typeof(string));
                _dt.Columns.Add("NomineeName", typeof(string));
                _dt.Columns.Add("NomineeName_Arabic", typeof(string));
                _dt.Columns.Add("NomineeGender", typeof(string));
                _dt.Columns.Add("NomineeDOB", typeof(DateTime));
                _dt.Columns.Add("NomineeCountryofBirth", typeof(string));
                _dt.Columns.Add("NomineeCivilID", typeof(string));
                _dt.Columns.Add("NomineeBldgNo_Street", typeof(string));
                _dt.Columns.Add("NomineePostBox", typeof(string));
                _dt.Columns.Add("NomineePostalCode", typeof(string));
                _dt.Columns.Add("NomineeCity", typeof(string));
                _dt.Columns.Add("NomineeResPhoneNo", typeof(string));
                _dt.Columns.Add("NomineeOfficePhoneNo", typeof(string));
                _dt.Columns.Add("NomineeMobileNo", typeof(string));
                _dt.Columns.Add("NomineeEMail", typeof(string));
                _dt.Columns.Add("AppointeeName", typeof(string));
                _dt.Columns.Add("AppointeeAge", typeof(int));
                _dt.Columns.Add("AppointeeContactNo", typeof(string));
                _dt.Columns.Add("RelationshiptotheNominee", typeof(string));
                _dt.Columns.Add("AppointeeCivilIDNo", typeof(string));


                DataRow _dr;
                _dr = _dt.NewRow();

                _dr["QuotationNo"] = _objIndIns.QuotationNo;
                _dr["PolicyNo"] = _objIndIns.PolicyNo;
                _dr["IssueDate"] = _objIndIns.IssueDate;
                _dr["Branch"] = _objIndIns.Branch;
                _dr["PolicyStartDate"] = _objIndIns.PolicyStartDate;
                _dr["PolicyEndDate"] = _objIndIns.PolicyEndDate;
                _dr["NameofthePlan"] = _objIndIns.NameofthePlan;
                _dr["SumAssured"] = _objIndIns.SumAssured;
                _dr["DateofBirth"] = _objIndIns.DateofBirth;
                _dr["Age"] = _objIndIns.Age;
                _dr["Gender"] = _objIndIns.Gender;
                _dr["Broker_AgentCode"] = _objIndIns.Broker_AgentCode;
                _dr["LifeAssuredName"] = _objIndIns.LifeAssuredName;
                _dr["LifeAssuredName_Arabic"] = _objIndIns.LifeAssuredName_Arabic;
                _dr["AssuredGender"] = _objIndIns.AssuredGender;
                _dr["AssuredDateofBirth"] = _objIndIns.AssuredDateofBirth;
                _dr["AssuredCountryofBirth"] = _objIndIns.AssuredCountryofBirth;
                _dr["AssuredCivilID"] = _objIndIns.AssuredCivilID;
                _dr["AssuredBldgNo_Street"] = _objIndIns.AssuredBldgNo_Street;
                _dr["AssuredPostBox"] = _objIndIns.AssuredPostBox;
                _dr["AssuredPostalCode"] = _objIndIns.AssuredPostalCode;
                _dr["AssuredCity"] = _objIndIns.AssuredCity;
                _dr["AssuredResPhoneNo"] = _objIndIns.AssuredResPhoneNo;
                _dr["AssuredMobileNo"] = _objIndIns.AssuredMobileNo;
                _dr["AssuredEMail"] = _objIndIns.AssuredEMail;
                _dr["Marketer"] = _objIndIns.Marketer;
                _dr["IssueFrom"] = _objIndIns.IssueFrom;
                _dr["Referral"] = _objIndIns.Referral;
                _dr["ReferralRemarks"] = _objIndIns.ReferralRemarks;
                _dr["NomineeName"] = _objIndIns.NomineeName;
                _dr["NomineeName_Arabic"] = _objIndIns.NomineeName_Arabic;
                _dr["NomineeGender"] = _objIndIns.NomineeGender;
                _dr["NomineeDOB"] = _objIndIns.NomineeDOB;
                _dr["NomineeCountryofBirth"] = _objIndIns.NomineeCountryofBirth;
                _dr["NomineeCivilID"] = _objIndIns.NomineeCivilID;
                _dr["NomineeBldgNo_Street"] = _objIndIns.NomineeBldgNo_Street;
                _dr["NomineePostBox"] = _objIndIns.NomineePostBox;
                _dr["NomineePostalCode"] = _objIndIns.NomineePostalCode;
                _dr["NomineeCity"] = _objIndIns.NomineeCity;
                _dr["NomineeResPhoneNo"] = _objIndIns.NomineeResPhoneNo;
                _dr["NomineeOfficePhoneNo"] = _objIndIns.NomineeOfficePhoneNo;
                _dr["NomineeMobileNo"] = _objIndIns.NomineeMobileNo;
                _dr["NomineeEMail"] = _objIndIns.NomineeEMail;
                _dr["AppointeeName"] = _objIndIns.AppointeeName;
                _dr["AppointeeAge"] = _objIndIns.AppointeeAge;
                _dr["AppointeeContactNo"] = _objIndIns.AppointeeContactNo;
                _dr["RelationshiptotheNominee"] = _objIndIns.RelationshiptotheNominee;
                _dr["AppointeeCivilIDNo"] = _objIndIns.AppointeeCivilIDNo;
                _dt.Rows.Add(_dr);

                return _dt;

            }
            catch (Exception ex)
            {

                throw;
            }
        }
        public DataTable ConvertTravelIns(TravelModel _objMotorIns)
        {
            try
            {

                //sql string-string
                //sql long -long
                // sql int -int
                DataTable _dt = new DataTable();

                _dt.Columns.Add("IssueDate", typeof(DateTime));
                _dt.Columns.Add("PolicyNo", typeof(string));
                _dt.Columns.Add("Branch", typeof(string));
                _dt.Columns.Add("Planning", typeof(string));
                _dt.Columns.Add("NoOfDays", typeof(int));
                _dt.Columns.Add("CoverageType", typeof(string));
                _dt.Columns.Add("DepartureDate", typeof(DateTime));
                _dt.Columns.Add("DateOfReturn", typeof(DateTime));
                _dt.Columns.Add("DateOfBirth", typeof(DateTime));
                _dt.Columns.Add("TravelDestination", typeof(string));
                _dt.Columns.Add("PurposeOfVisit", typeof(string));
                _dt.Columns.Add("Marketer", typeof(string));
                _dt.Columns.Add("Broker_AgentCode", typeof(string));
                _dt.Columns.Add("IssueFrom", typeof(string));
                _dt.Columns.Add("AssuredName", typeof(string));
                _dt.Columns.Add("Gender", typeof(string));
                _dt.Columns.Add("CivilID", typeof(string));
                _dt.Columns.Add("Mobile", typeof(long));
                _dt.Columns.Add("PostBox", typeof(string));
                _dt.Columns.Add("PostalCode", typeof(string));
                _dt.Columns.Add("City", typeof(string));
                _dt.Columns.Add("Email", typeof(string));
                _dt.Columns.Add("LocalPersonName", typeof(string));
                _dt.Columns.Add("LocalPersonNo", typeof(string));
                _dt.Columns.Add("Nationality", typeof(string));
                _dt.Columns.Add("PassportNo", typeof(string));
                _dt.Columns.Add("Extension", typeof(string));
                _dt.Columns.Add("VipCustomer", typeof(string));
                _dt.Columns.Add("Remarks", typeof(string));
                _dt.Columns.Add("PolicyIsForOmanNationals_LegalResidentsOfOman", typeof(string));
                _dt.Columns.Add("SpecialDiscount", typeof(string));
                _dt.Columns.Add("AdditionalConditions", typeof(string));
                _dt.Columns.Add("MazayaCard", typeof(string));
                _dt.Columns.Add("AssuredNameFamilyMember", typeof(string));
                _dt.Columns.Add("DateOfBirthFamilyMember", typeof(DateTime));
                _dt.Columns.Add("Age", typeof(int));
                _dt.Columns.Add("Relationship", typeof(string));
                _dt.Columns.Add("Sex", typeof(string));
                _dt.Columns.Add("PassportNoFamilyMember", typeof(string));
                _dt.Columns.Add("ExtensionFamilyMember", typeof(string));
                ;

                DataRow _dr;
                _dr = _dt.NewRow();
                _dr["IssueDate"] = _objMotorIns.IssueDate;
                _dr["PolicyNo"] = _objMotorIns.PolicyNo;
                _dr["Branch"] = _objMotorIns.Branch;
                _dr["Planning"] = _objMotorIns.Planning;
                _dr["NoOfDays"] = _objMotorIns.NoOfDays;
                _dr["CoverageType"] = _objMotorIns.CoverageType;
                _dr["DepartureDate"] = _objMotorIns.DepartureDate;
                _dr["DateOfReturn"] = _objMotorIns.DateOfReturn;
                _dr["DateOfBirth"] = _objMotorIns.DateOfBirth;
                _dr["TravelDestination"] = _objMotorIns.TravelDestination;
                _dr["PurposeOfVisit"] = _objMotorIns.PurposeOfVisit;
                _dr["Marketer"] = _objMotorIns.Marketer;
                _dr["Broker_AgentCode"] = _objMotorIns.Broker_AgentCode;
                _dr["IssueFrom"] = _objMotorIns.IssueFrom;
                _dr["AssuredName"] = _objMotorIns.AssuredName;
                _dr["Gender"] = _objMotorIns.Gender;
                _dr["CivilID"] = _objMotorIns.CivilID;
                _dr["Mobile"] = _objMotorIns.Mobile;
                _dr["PostBox"] = _objMotorIns.PostBox;
                _dr["PostalCode"] = _objMotorIns.PostalCode;
                _dr["City"] = _objMotorIns.City;
                _dr["Email"] = _objMotorIns.Email;
                _dr["LocalPersonName"] = _objMotorIns.LocalPersonName;
                _dr["LocalPersonNo"] = _objMotorIns.LocalPersonNo;
                _dr["Nationality"] = _objMotorIns.Nationality;
                _dr["PassportNo"] = _objMotorIns.PassportNo;
                _dr["Extension"] = _objMotorIns.Extension;
                _dr["VipCustomer"] = _objMotorIns.VipCustomer;
                _dr["Remarks"] = _objMotorIns.Remarks;
                _dr["PolicyIsForOmanNationals_LegalResidentsOfOman"] = _objMotorIns.PolicyIsForOmanNationals_LegalResidentsOfOman;
                _dr["SpecialDiscount"] = _objMotorIns.SpecialDiscount;
                _dr["AdditionalConditions"] = _objMotorIns.AdditionalConditions;
                _dr["MazayaCard"] = _objMotorIns.MazayaCard;
                _dr["AssuredNameFamilyMember"] = _objMotorIns.AssuredNameFamilyMember;
                _dr["DateOfBirthFamilyMember"] = _objMotorIns.DateOfBirthFamilyMember;
                _dr["Age"] = _objMotorIns.Age;
                _dr["Relationship"] = _objMotorIns.Relationship;
                _dr["Sex"] = _objMotorIns.Sex;
                _dr["PassportNoFamilyMember"] = _objMotorIns.PassportNoFamilyMember;
                _dr["ExtensionFamilyMember"] = _objMotorIns.ExtensionFamilyMember;
                _dt.Rows.Add(_dr);

                return _dt;

            }
            catch (Exception ex)
            {

                throw;
            }
        }
        public DataTable ConvertMotorIns(MotorModel _objMotorIns)
        {
            try
            {
                DataTable _dt = new DataTable();
                //Screen 1:
                _dt.Columns.Add("IssueDate", typeof(DateTime));
                _dt.Columns.Add("PolicyNo", typeof(string));
                _dt.Columns.Add("TypeofTransaction", typeof(string));
                _dt.Columns.Add("PolicyNumberifRenewal", typeof(string));
                _dt.Columns.Add("Branch", typeof(string));
                _dt.Columns.Add("PolicyStartDate", typeof(DateTime));
                _dt.Columns.Add("PolicyEndDate", typeof(DateTime));
                _dt.Columns.Add("AgentCode_BrokerCode", typeof(string));
                _dt.Columns.Add("UAEExtensionNilPremiaum", typeof(string));
                _dt.Columns.Add("MazayaCard", typeof(string));

                //Screen 2:

                _dt.Columns.Add("Make_Model", typeof(string));
                _dt.Columns.Add("BodyType", typeof(string));
                _dt.Columns.Add("VehicleType", typeof(string));
                _dt.Columns.Add("YearofManufacture", typeof(string));
                _dt.Columns.Add("VehicleAge", typeof(string));

                _dt.Columns.Add("Tonnage", typeof(string));
                _dt.Columns.Add("DriverAge", typeof(string));
                _dt.Columns.Add("GeographicalArea", typeof(string));
                _dt.Columns.Add("FirstRegDate", typeof(DateTime));
                _dt.Columns.Add("SeatingCapacity", typeof(int));

                _dt.Columns.Add("RoadAssistance", typeof(string));
                _dt.Columns.Add("SumInsured_RO", typeof(long));
                _dt.Columns.Add("Voluntaryexcess", typeof(string));
                _dt.Columns.Add("NoClaimsDiscount", typeof(string));
                _dt.Columns.Add("LicenceFirstIssued", typeof(DateTime));

                _dt.Columns.Add("SpecialDiscount", typeof(string));
                _dt.Columns.Add("PurchaseType", typeof(string));
                _dt.Columns.Add("AgencyRepair", typeof(string));

                //Screen 3:
                _dt.Columns.Add("RegistrationNo", typeof(string));
                _dt.Columns.Add("MakeModel", typeof(string));
                _dt.Columns.Add("EngineNo", typeof(string));
                _dt.Columns.Add("ChassisNo", typeof(string));
                _dt.Columns.Add("VehicleCC", typeof(string));


                _dt.Columns.Add("PlateColor", typeof(string));
                _dt.Columns.Add("Color", typeof(string));
                _dt.Columns.Add("Cylinder", typeof(string));
                _dt.Columns.Add("Hirepurchase_BankName", typeof(string));
                //Screen 4:

                _dt.Columns.Add("AssuredName", typeof(string));
                _dt.Columns.Add("AssuredName_Arabic", typeof(string));
                _dt.Columns.Add("CivilID_CRNo", typeof(string));
                _dt.Columns.Add("PostBox", typeof(string));
                _dt.Columns.Add("PostalCode", typeof(string));

                _dt.Columns.Add("City", typeof(string));
                _dt.Columns.Add("ResPhoneNo", typeof(string));
                _dt.Columns.Add("Nationality", typeof(string));
                _dt.Columns.Add("MobileNo", typeof(string));
                _dt.Columns.Add("EmailId", typeof(string));

                _dt.Columns.Add("NillAdditionalDriver", typeof(string));
                _dt.Columns.Add("Marketer", typeof(string));
                _dt.Columns.Add("IssueFrom", typeof(string));
                _dt.Columns.Add("VIPCustomer", typeof(string));

                DataRow _dr;
                _dr = _dt.NewRow();
                _dr["IssueDate"] = _objMotorIns.IssueDate;
                _dr["PolicyNo"] = _objMotorIns.PolicyNo;
                _dr["TypeofTransaction"] = _objMotorIns.TypeofTransaction;
                _dr["PolicyNumberifRenewal"] = _objMotorIns.PolicyNumberifRenewal;
                _dr["Branch"] = _objMotorIns.Branch;
                _dr["PolicyStartDate"] = _objMotorIns.PolicyStartDate;
                _dr["PolicyEndDate"] = _objMotorIns.PolicyEndDate;
                _dr["AgentCode_BrokerCode"] = _objMotorIns.AgentCode_BrokerCode;
                _dr["UAEExtensionNilPremiaum"] = _objMotorIns.UAEExtensionNilPremiaum;
                _dr["MazayaCard"] = _objMotorIns.MazayaCard;
                _dr["Make_Model"] = _objMotorIns.Make_Model;
                _dr["BodyType"] = _objMotorIns.BodyType;
                _dr["VehicleType"] = _objMotorIns.VehicleType;
                _dr["YearofManufacture"] = _objMotorIns.YearofManufacture;
                _dr["VehicleAge"] = _objMotorIns.VehicleAge;
                _dr["Tonnage"] = _objMotorIns.Tonnage;
                _dr["DriverAge"] = _objMotorIns.DriverAge;
                _dr["GeographicalArea"] = _objMotorIns.GeographicalArea;
                _dr["FirstRegDate"] = _objMotorIns.FirstRegDate;
                _dr["SeatingCapacity"] = _objMotorIns.SeatingCapacity;
                _dr["RoadAssistance"] = _objMotorIns.RoadAssistance;
                _dr["SumInsured_RO"] = _objMotorIns.SumInsured_RO;
                _dr["Voluntaryexcess"] = _objMotorIns.Voluntaryexcess;
                _dr["NoClaimsDiscount"] = _objMotorIns.NoClaimsDiscount;
                _dr["LicenceFirstIssued"] = _objMotorIns.LicenceFirstIssued;
                _dr["SpecialDiscount"] = _objMotorIns.SpecialDiscount;
                _dr["PurchaseType"] = _objMotorIns.PurchaseType;
                _dr["AgencyRepair"] = _objMotorIns.AgencyRepair;
                _dr["RegistrationNo"] = _objMotorIns.RegistrationNo;
                _dr["MakeModel"] = _objMotorIns.MakeModel;
                _dr["EngineNo"] = _objMotorIns.EngineNo;
                _dr["ChassisNo"] = _objMotorIns.ChassisNo;
                _dr["VehicleCC"] = _objMotorIns.VehicleCC;
                _dr["PlateColor"] = _objMotorIns.PlateColor;
                _dr["Color"] = _objMotorIns.Color;
                _dr["Cylinder"] = _objMotorIns.Cylinder;
                _dr["Hirepurchase_BankName"] = _objMotorIns.Hirepurchase_BankName;
                _dr["AssuredName"] = _objMotorIns.AssuredName;
                _dr["AssuredName_Arabic"] = _objMotorIns.AssuredName_Arabic;
                _dr["CivilID_CRNo"] = _objMotorIns.CivilID_CRNo;
                _dr["PostBox"] = _objMotorIns.PostBox;
                _dr["PostalCode"] = _objMotorIns.PostalCode;
                _dr["City"] = _objMotorIns.City;
                _dr["ResPhoneNo"] = _objMotorIns.ResPhoneNo;
                _dr["Nationality"] = _objMotorIns.Nationality;
                _dr["MobileNo"] = _objMotorIns.MobileNo;
                _dr["EmailId"] = _objMotorIns.EmailId;
                _dr["NillAdditionalDriver"] = _objMotorIns.NillAdditionalDriver;
                _dr["Marketer"] = _objMotorIns.Marketer;
                _dr["IssueFrom"] = _objMotorIns.IssueFrom;
                _dr["VIPCustomer"] = _objMotorIns.VIPCustomer;


                _dt.Rows.Add(_dr);

                return _dt;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable ConvertToDomestic(DomesticModel _objDomesticIns)
        {
            try
            {
                DataTable _dt = new DataTable();
                _dt.Columns.Add("DraftNo", typeof(string));
                _dt.Columns.Add("PolicyNo", typeof(string));
                _dt.Columns.Add("IssueDate", typeof(DateTime));
                _dt.Columns.Add("Branch", typeof(string));
                _dt.Columns.Add("PolicyStartDate", typeof(DateTime));
                _dt.Columns.Add("PolicyEndDate", typeof(DateTime));
                _dt.Columns.Add("NoofYears", typeof(int));
                _dt.Columns.Add("Marketer", typeof(string));
                _dt.Columns.Add("Broker_AgentCode", typeof(string));
                _dt.Columns.Add("IssueFrom", typeof(string));
                _dt.Columns.Add("SpecialDiscount", typeof(string));
                _dt.Columns.Add("Amount", typeof(long));
                _dt.Columns.Add("AssuredName", typeof(string));
                _dt.Columns.Add("AssuredName_Arabic", typeof(string));
                _dt.Columns.Add("CivilID", typeof(long));
                _dt.Columns.Add("PostBox", typeof(long));
                _dt.Columns.Add("PostalCode", typeof(long));
                _dt.Columns.Add("City", typeof(string));
                _dt.Columns.Add("ResPhoneNo", typeof(long));
                _dt.Columns.Add("OfficePhoneNo", typeof(long));
                _dt.Columns.Add("MobileNo", typeof(long));
                _dt.Columns.Add("HelperProfession", typeof(string));
                _dt.Columns.Add("Gender", typeof(string));
                _dt.Columns.Add("DateofBirth", typeof(DateTime));
                _dt.Columns.Add("Age", typeof(int));
                _dt.Columns.Add("PassportNo", typeof(long));
                _dt.Columns.Add("Nationality", typeof(string));
                _dt.Columns.Add("MazayaCard", typeof(string));
                _dt.Columns.Add("SameasHouseMaidAddress", typeof(string));
                _dt.Columns.Add("Sponsor_ProposerName", typeof(string));
                _dt.Columns.Add("SponsorPostBox", typeof(long));
                _dt.Columns.Add("SponsorPostalCode", typeof(long));
                _dt.Columns.Add("SponsorCity", typeof(string));
                _dt.Columns.Add("SponsorMobileNo", typeof(long));
                _dt.Columns.Add("SponsorOfficePhone", typeof(long));
                _dt.Columns.Add("SponsorNationality", typeof(string));
                _dt.Columns.Add("VIPCustomer", typeof(string));
                _dt.Columns.Add("Email", typeof(string));

                DataRow _dr;
                _dr = _dt.NewRow();

                _dr["DraftNo"] = _objDomesticIns.DraftNo;
                _dr["PolicyNo"] = _objDomesticIns.PolicyNo;
                _dr["IssueDate"] = _objDomesticIns.IssueDate;
                _dr["Branch"] = _objDomesticIns.Branch;
                _dr["PolicyStartDate"] = _objDomesticIns.PolicyStartDate;
                _dr["PolicyEndDate"] = _objDomesticIns.PolicyEndDate;
                _dr["NoofYears"] = _objDomesticIns.NoofYears;
                _dr["Marketer"] = _objDomesticIns.Marketer;
                _dr["Broker_AgentCode"] = _objDomesticIns.Broker_AgentCode;
                _dr["IssueFrom"] = _objDomesticIns.IssueFrom;
                _dr["SpecialDiscount"] = _objDomesticIns.SpecialDiscount;
                _dr["Amount"] = _objDomesticIns.Amount;
                _dr["AssuredName"] = _objDomesticIns.AssuredName;
                _dr["AssuredName_Arabic"] = _objDomesticIns.AssuredName_Arabic;
                _dr["CivilID"] = _objDomesticIns.CivilID;
                _dr["PostBox"] = _objDomesticIns.PostBox;
                _dr["PostalCode"] = _objDomesticIns.PostalCode;
                _dr["City"] = _objDomesticIns.City;
                _dr["ResPhoneNo"] = _objDomesticIns.ResPhoneNo;
                _dr["OfficePhoneNo"] = _objDomesticIns.OfficePhoneNo;
                _dr["MobileNo"] = _objDomesticIns.MobileNo;
                _dr["HelperProfession"] = _objDomesticIns.HelperProfession;
                _dr["Gender"] = _objDomesticIns.Gender;
                _dr["DateofBirth"] = _objDomesticIns.DateofBirth;
                _dr["Age"] = _objDomesticIns.Age;
                _dr["PassportNo"] = _objDomesticIns.PassportNo;
                _dr["Nationality"] = _objDomesticIns.Nationality;
                _dr["MazayaCard"] = _objDomesticIns.MazayaCard;
                _dr["SameasHouseMaidAddress"] = _objDomesticIns.SameasHouseMaidAddress;
                _dr["Sponsor_ProposerName"] = _objDomesticIns.Sponsor_ProposerName;
                _dr["SponsorPostBox"] = _objDomesticIns.SponsorPostBox;
                _dr["SponsorPostalCode"] = _objDomesticIns.SponsorPostalCode;
                _dr["SponsorCity"] = _objDomesticIns.SponsorCity;
                _dr["SponsorMobileNo"] = _objDomesticIns.SponsorMobileNo;
                _dr["SponsorOfficePhone"] = _objDomesticIns.SponsorOfficePhone;
                _dr["SponsorNationality"] = _objDomesticIns.SponsorNationality;
                _dr["VIPCustomer"] = _objDomesticIns.VIPCustomer;
                _dr["Email"] = _objDomesticIns.Email;



                _dt.Rows.Add(_dr);
                return _dt;

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public DataTable ConvertIns(Insurance _objMotorIns)
        {
            try
            {
                DataTable _dt = new DataTable();
                _dt.Columns.Add("DivisionCode", typeof(string));
                _dt.Columns.Add("DivisionName", typeof(string));
                _dt.Columns.Add("ProductCode", typeof(string));
                _dt.Columns.Add("ProductName", typeof(string));
                _dt.Columns.Add("BusinessType", typeof(string));

                _dt.Columns.Add("PolicyNo", typeof(string));
                _dt.Columns.Add("AssuredName", typeof(string));
                _dt.Columns.Add("AssuredMobile", typeof(string));
                _dt.Columns.Add("CustomerName", typeof(string));
                _dt.Columns.Add("SourceCode", typeof(string));

                _dt.Columns.Add("SourceName", typeof(string));
                _dt.Columns.Add("CustomerCategory", typeof(string));
                _dt.Columns.Add("PolicyFromDate", typeof(DateTime));
                _dt.Columns.Add("PolicyToDate", typeof(DateTime));

                _dt.Columns.Add("MarketingExecutive", typeof(string));
                _dt.Columns.Add("Remarks", typeof(string));
                _dt.Columns.Add("Status", typeof(string));

                _dt.Columns.Add("CustomerCode", typeof(string));
                _dt.Columns.Add("Charges", typeof(long));
                _dt.Columns.Add("InsType", typeof(string));
                _dt.Columns.Add("ProducerName", typeof(string));

                _dt.Columns.Add("SumInsured", typeof(decimal));
                _dt.Columns.Add("RevisedSumInsured", typeof(decimal));
                _dt.Columns.Add("GrossPremium", typeof(decimal));
                _dt.Columns.Add("RevisedGrossPremium", typeof(decimal));


                DataRow _dr;
                _dr = _dt.NewRow();
                _dr["DivisionCode"] = _objMotorIns.DivisionCode;
                _dr["DivisionName"] = _objMotorIns.DivisionName;
                _dr["ProductCode"] = _objMotorIns.ProductCode;
                _dr["ProductName"] = _objMotorIns.ProductName;
                _dr["BusinessType"] = _objMotorIns.BusinessType;

                _dr["PolicyNo"] = _objMotorIns.PolicyNo;
                _dr["AssuredName"] = _objMotorIns.AssuredName;
                _dr["AssuredMobile"] = _objMotorIns.AssuredMobile;
                _dr["CustomerName"] = _objMotorIns.CustomerName;
                _dr["SourceCode"] = _objMotorIns.SourceCode;

                _dr["SourceName"] = _objMotorIns.SourceName;
                _dr["CustomerCategory"] = _objMotorIns.CustomerCategory;
                _dr["PolicyFromDate"] = _objMotorIns.PolicyFromDate;
                _dr["PolicyToDate"] = _objMotorIns.PolicyToDate;
                _dr["MarketingExecutive"] = _objMotorIns.MarketingExecutive;
                
                _dr["Remarks"] = _objMotorIns.Remarks;
                _dr["Status"] = _objMotorIns.Status;
                _dr["CustomerCode"] = _objMotorIns.CustomerCode;
                _dr["Charges"] = _objMotorIns.Charges;
                _dr["InsType"] = _objMotorIns.InsType;
                _dr["ProducerName"] = _objMotorIns.ProducerName;
                
                _dr["SumInsured"] = _objMotorIns.SumInsured;
                _dr["RevisedSumInsured"] = _objMotorIns.RevisedSumInsured;
                _dr["GrossPremium"] = _objMotorIns.GrossPremium;
                _dr["RevisedGrossPremium"] = _objMotorIns.RevisedGrossPremium;

                _dt.Rows.Add(_dr);

                return _dt;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        //public DataTable ConvertNewInsBulkUpload( lstIns)
        //{
        //    DataTable _dt = new DataTable();
        //    _dt.Columns.Add("UserId", typeof(int));
        //    _dt.Columns.Add("ProductId", typeof(long));
        //    _dt.Columns.Add("ProductName", typeof(string));
        //    _dt.Columns.Add("ProductPrice", typeof(long));
        //    _dt.Columns.Add("Quantity", typeof(int));
        //    _dt.Columns.Add("StartDate", typeof(DateTime));
        //    _dt.Columns.Add("EndDate", typeof(DateTime));
        //    _dt.Columns.Add("TotalAmount", typeof(long));
        //    _dt.Columns.Add("AmountPaid", typeof(long));
        //    _dt.Columns.Add("SubscriptionType", typeof(string));

        //    DataRow _dr;
        //    foreach (ProductSubscription item in _lstProdSubscription)
        //    {
        //        _dr = _dt.NewRow();
        //        _dr["UserId"] = item.UserId;
        //        _dr["ProductId"] = item.ProductId;
        //        _dr["ProductName"] = item.ProductName;
        //        _dr["ProductPrice"] = item.ProductPrice;
        //        _dr["Quantity"] = item.Quantity;
        //        _dr["StartDate"] = item.StartDate.ToString("yyyy/MM/dd");
        //        _dr["EndDate"] = item.EndDate.ToString("yyyy/MM/dd");
        //        _dr["TotalAmount"] = item.TotalAmount;
        //        _dr["AmountPaid"] = item.AmountPaid;
        //        _dr["SubscriptionType"] = item.SubscriptionType;
        //        _dt.Rows.Add(_dr);
        //    }
        //    return _dt;
        //}
    }
}
