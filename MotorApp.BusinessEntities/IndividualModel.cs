using System;


namespace MotorApp.BusinessEntities
{
    public class IndividualModel
    {
        public long IndividualId { get; set; }

        public string QuotationNo { get; set; }

        public string PolicyNo { get; set; }

        public DateTime? IssueDate { get; set; }

        public string Branch { get; set; }

        public DateTime? PolicyStartDate { get; set; }

        public DateTime? PolicyEndDate { get; set; }

        public string NameofthePlan { get; set; }

        public long? SumAssured { get; set; }

        public DateTime? DateofBirth { get; set; }

        public int? Age { get; set; }

        public string Gender { get; set; }

        public string Broker_AgentCode { get; set; }

        public string LifeAssuredName { get; set; }

        public string LifeAssuredName_Arabic { get; set; }

        public string AssuredGender { get; set; }

        public DateTime? AssuredDateofBirth { get; set; }

        public string AssuredCountryofBirth { get; set; }

        public string AssuredCivilID { get; set; }

        public string AssuredBldgNo_Street { get; set; }

        public string AssuredPostBox { get; set; }

        public string AssuredPostalCode { get; set; }

        public string AssuredCity { get; set; }

        public string AssuredResPhoneNo { get; set; }

        public string AssuredMobileNo { get; set; }

        public string AssuredEMail { get; set; }

        public string Marketer { get; set; }

        public string IssueFrom { get; set; }

        public string Referral { get; set; }

        public string ReferralRemarks { get; set; }

        public string NomineeName { get; set; }

        public string NomineeName_Arabic { get; set; }

        public string NomineeGender { get; set; }

        public DateTime? NomineeDOB { get; set; }

        public string NomineeCountryofBirth { get; set; }

        public string NomineeCivilID { get; set; }

        public string NomineeBldgNo_Street { get; set; }

        public string NomineePostBox { get; set; }

        public string NomineePostalCode { get; set; }

        public string NomineeCity { get; set; }

        public string NomineeResPhoneNo { get; set; }

        public string NomineeOfficePhoneNo { get; set; }

        public string NomineeMobileNo { get; set; }

        public string NomineeEMail { get; set; }

        public string AppointeeName { get; set; }

        public int? AppointeeAge { get; set; }

        public string AppointeeContactNo { get; set; }

        public string RelationshiptotheNominee { get; set; }

        public string AppointeeCivilIDNo { get; set; }

        public DateTime? CreatedAt { get; set; }

        public string CreatedBy { get; set; }

        public DateTime? UpdatedAt { get; set; }

        public string UpdatedBy { get; set; }


    }
}
