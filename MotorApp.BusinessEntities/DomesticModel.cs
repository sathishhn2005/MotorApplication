using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MotorApp.BusinessEntities
{
    public class DomesticModel
    {
        public long DomesticId { get; set; }
        [Display(Name = "Draft No ")]
        public string DraftNo { get; set; }
        [Display(Name = "Policy No ")]
        public string PolicyNo { get; set; }
        [Display(Name = "Issue Date ")]
        public DateTime? IssueDate { get; set; }
        [Display(Name = "Branch ")]
        public string Branch { get; set; }
        [Display(Name = " Policy Start Date")]
        public DateTime? PolicyStartDate { get; set; }
        [Display(Name = "Policy End Date ")]
        public DateTime? PolicyEndDate { get; set; }
        [Display(Name = "No of Years ")]
        public int NoofYears { get; set; }
        [Display(Name = " Marketer")]
        public string Marketer { get; set; }
        [Display(Name = "Broker_Agent Code ")]
        public string Broker_AgentCode { get; set; }
        [Display(Name = "IssueFrom ")]
        public string IssueFrom { get; set; }
        [Display(Name = "Special Discount ")]
        public string SpecialDiscount { get; set; }
        [Display(Name = "Amount ")]
        public long? Amount { get; set; }
        [Display(Name = "Assured Name ")]
        public string AssuredName { get; set; }
        [Display(Name = " Assured Name_Arabic")]
        public string AssuredName_Arabic { get; set; }
        [Display(Name = "Civil ID ")]
        public long? CivilID { get; set; }
        [Display(Name = "Post Box ")]
        public long? PostBox { get; set; }
        [Display(Name = "Postal Code ")]
        public long? PostalCode { get; set; }
        [Display(Name = "City ")]

        public string City { get; set; }
        [Display(Name = " Res Phone No")]
        public long? ResPhoneNo { get; set; }
        [Display(Name = "Office Phone No ")]
        public long? OfficePhoneNo { get; set; }
        [Display(Name = "Mobile No ")]
        public long? MobileNo { get; set; }
        [Display(Name = "Helper Profession ")]
        public string HelperProfession { get; set; }
        [Display(Name = " Gender")]
        public string Gender { get; set; }
        [Display(Name = "Date of Birth ")]
        public DateTime? DateofBirth { get; set; }
        [Display(Name = "Age ")]
        public int? Age { get; set; }
        [Display(Name = "Passport No ")]
        public long? PassportNo { get; set; }
        [Display(Name = " Nationality")]
        public string Nationality { get; set; }
        [Display(Name = "Mazaya Card ")]
        public string MazayaCard { get; set; }
        [Display(Name = "Sameas House Maid Address ")]
        public string SameasHouseMaidAddress { get; set; }
        [Display(Name = "Sponsor_Proposer Name ")]
        public string Sponsor_ProposerName { get; set; }
        [Display(Name = "Sponsor Post Box ")]
        public long? SponsorPostBox { get; set; }
        [Display(Name = "Sponsor Postal Code ")]
        public long? SponsorPostalCode { get; set; }
        [Display(Name = "Sponsor City ")]
        public string SponsorCity { get; set; }
        [Display(Name = " Sponsor Mobile No")]
        public long? SponsorMobileNo { get; set; }
        [Display(Name = " Sponsor Office Phone")]
        public long? SponsorOfficePhone { get; set; }
        [Display(Name = "Sponsor Nationality ")]
        public string SponsorNationality { get; set; }
        [Display(Name = "VIP Customer ")]
        public string VIPCustomer { get; set; }
        [Display(Name = "Email ")]
        public string Email { get; set; }

        

        public DateTime? CreatedAt { get; set; }

        public string CreatedBy { get; set; }

        public DateTime? UpdatedAt { get; set; }

        public string UpdatedBy { get; set; }


    }
}
