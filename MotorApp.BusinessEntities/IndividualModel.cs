using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MotorApp.BusinessEntities
{
    public class IndividualModel
    {
        public long IndividualId { get; set; }

        [Display(Name = "Quotation No")]
        public string QuotationNo { get; set; }
        [Display(Name = "Policy No")]
        public string PolicyNo { get; set; }
        [Display(Name = "Issue Date")]
        public DateTime? IssueDate { get; set; }
        [Display(Name = "Branch")]
        public string Branch { get; set; }
        [Display(Name = "Policy Start Date")]
        public DateTime? PolicyStartDate { get; set; }
        [Display(Name = "Policy End Date ")]
        public DateTime? PolicyEndDate { get; set; }
        [Display(Name = "Name of the Plan")]
        public string NameofthePlan { get; set; }
        [Display(Name = "Sum Assured")]
        public long? SumAssured { get; set; }
        [Display(Name = "Date of Birth")]
        public DateTime? DateofBirth { get; set; }
        [Display(Name = "Age")]
        public int? Age { get; set; }
        [Display(Name = "Gender")]
        public string Gender { get; set; }
        [Display(Name = "Broker_Agent Code ")]
        public string Broker_AgentCode { get; set; }
        [Display(Name = "Life Assured Name")]
        public string LifeAssuredName { get; set; }
        [Display(Name = "Life Assured Name_Arabic")]
        public string LifeAssuredName_Arabic { get; set; }
        [Display(Name = "Assured Gender")]
        public string AssuredGender { get; set; }
        [Display(Name = "Assured Date of Birth")]
        public DateTime? AssuredDateofBirth { get; set; }
        [Display(Name = "Assured Country of Birth")]
        public string AssuredCountryofBirth { get; set; }
        [Display(Name = "Assured Civil ID")]
        public string AssuredCivilID { get; set; }
        [Display(Name = "Assured Bldg No_Street")]
        public string AssuredBldgNo_Street { get; set; }
        [Display(Name = "Assured Post Box")]
        public string AssuredPostBox { get; set; }
        [Display(Name = "Assured Postal Code")]
        public string AssuredPostalCode { get; set; }
        [Display(Name = "Assured City")]
        public string AssuredCity { get; set; }
        [Display(Name = "Assured Res Phone No")]
        public string AssuredResPhoneNo { get; set; }
        [Display(Name = "Assured Mobile No")]
        public string AssuredMobileNo { get; set; }
        [Display(Name = "Assured EMail")]
        public string AssuredEMail { get; set; }
        [Display(Name = "Marketer")]
        public string Marketer { get; set; }
        [Display(Name = "Issue From")]
        public string IssueFrom { get; set; }
        [Display(Name = "Referral")]
        public string Referral { get; set; }
        [Display(Name = "Referral Remarks")]
        public string ReferralRemarks { get; set; }
        [Display(Name = "Nominee Name")]
        public string NomineeName { get; set; }
        [Display(Name = "Nominee Name_Arabic")]
        public string NomineeName_Arabic { get; set; }
        [Display(Name = "Nominee Gender")]
        public string NomineeGender { get; set; }
        [Display(Name = "Nominee DOB")]
        public DateTime? NomineeDOB { get; set; }
        [Display(Name = "Nominee Country of Birth")]
        public string NomineeCountryofBirth { get; set; }
        [Display(Name = "Nominee Civil ID")]
        public string NomineeCivilID { get; set; }
        [Display(Name = "Nominee Bldg No_Street")]
        public string NomineeBldgNo_Street { get; set; }
        [Display(Name = "Nominee Post Box")]
        public string NomineePostBox { get; set; }
        [Display(Name = "Nominee Postal Code")]
        public string NomineePostalCode { get; set; }
        [Display(Name = "Nominee City")]
        public string NomineeCity { get; set; }
        [Display(Name = "Nominee Res Phone No")]
        public string NomineeResPhoneNo { get; set; }
        [Display(Name = "Nominee Office Phone No")]
        public string NomineeOfficePhoneNo { get; set; }
        [Display(Name = "Nominee Mobile No")]
        public string NomineeMobileNo { get; set; }
        [Display(Name = "Nominee EMail")]
        public string NomineeEMail { get; set; }
        [Display(Name = "Appointee Name")]
        public string AppointeeName { get; set; }
        [Display(Name = "Appointee Age")]
        public int? AppointeeAge { get; set; }
        [Display(Name = "Appointee Contact No")]
        public string AppointeeContactNo { get; set; }
        [Display(Name = "Relationship to the Nominee")]
        public string RelationshiptotheNominee { get; set; }
        [Display(Name = "Appointee Civil ID No")]
        public string AppointeeCivilIDNo { get; set; }

        public string Status { get; set; }
        public DateTime? CreatedAt { get; set; }

        public string CreatedBy { get; set; }

        public DateTime? UpdatedAt { get; set; }

        public string UpdatedBy { get; set; }
        public string AgentCode { get; set; }
        public List<ProducerCodeMaster> ProducerMaster { get; set; }

        public long SumInsured { get; set; }
        public long PremiumAmount { get; set; }
        public long RivisedSI { get; set; }

        public string CustomerCode { get; set; }
        public string CustomerName { get; set; }
    }
}
