using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MotorApp.BusinessEntities
{
    public class TravelModel
    {
        
        public long TravelId { get; set; }

        [Display(Name = "Issue Date")]
        public DateTime? IssueDate { get; set; }

        [Display(Name = "Policy No")]
        public string PolicyNo { get; set; }

        [Display(Name = "Branch")]
        public string Branch { get; set; }

        [Display(Name = "Planning")]
        public string Planning { get; set; }

        [Display(Name = "No Of Days")]
        public int? NoOfDays { get; set; }

        [Display(Name = "Coverage Type")]
        public string CoverageType { get; set; }

        [Display(Name = "Departure Date")]
        public DateTime? DepartureDate { get; set; }

        [Display(Name = "Date Of Return")]
        public DateTime? DateOfReturn { get; set; }

        [Display(Name = "Date Of Birth")]
        public DateTime? DateOfBirth { get; set; }

        [Display(Name = "Travel Destination")]
        public string TravelDestination { get; set; }

        [Display(Name = "Purpose Of Visit")]
        public string PurposeOfVisit { get; set; }

        [Display(Name = "Marketer")]
        public string Marketer { get; set; }

        [Display(Name = "Broker_Agent Code")]
        public string Broker_AgentCode { get; set; }

        [Display(Name = "Issue From")]
        public string IssueFrom { get; set; }

        [Display(Name = "Assured Name")]
        public string AssuredName { get; set; }

        [Display(Name = "Gender")]
        public string Gender { get; set; }

        [Display(Name = "Civil ID")]
        public string CivilID { get; set; }

        [Display(Name = "Mobile")]
        public long? Mobile { get; set; }

        [Display(Name = "Post Box")]
        public string PostBox { get; set; }

        [Display(Name = "Postal Code")]
        public string PostalCode { get; set; }

        [Display(Name = "City")]
        public string City { get; set; }

        [Display(Name = "Email")]
        public string Email { get; set; }

        [Display(Name = "Local Person Name")]
        public string LocalPersonName { get; set; }

        [Display(Name = "Local Person No")]
        public string LocalPersonNo { get; set; }

        [Display(Name = "Nationality")]
        public string Nationality { get; set; }

        [Display(Name = "Passport No")]
        public string PassportNo { get; set; }

        [Display(Name = "Extension")]
        public string Extension { get; set; }

        [Display(Name = "Vip Customer")]
        public string VipCustomer { get; set; }

        [Display(Name = "Remarks")]
        public string Remarks { get; set; }

        [Display(Name = "Policy Is For Oman Nationals_Legal Residents Of Oman")]
        public string PolicyIsForOmanNationals_LegalResidentsOfOman { get; set; }

        [Display(Name = "Special Discount")]
        public string SpecialDiscount { get; set; }

        [Display(Name = "Additional Conditions")]
        public string AdditionalConditions { get; set; }

        [Display(Name = "MazayaCard")]
        public string MazayaCard { get; set; }

        [Display(Name = "Assured Name Family Member")]
        public string AssuredNameFamilyMember { get; set; }

        [Display(Name = "Date Of Birth Family Member")]
        public DateTime? DateOfBirthFamilyMember { get; set; }

        [Display(Name = "Age")]
        public int? Age { get; set; }

        [Display(Name = "Relationship")]
        public string Relationship { get; set; }

        [Display(Name = "Sex")]
        public string Sex { get; set; }

        [Display(Name = "Passport No Family Member")]
        public string PassportNoFamilyMember { get; set; }

        [Display(Name = "Extension Family Member")]
        public string ExtensionFamilyMember { get; set; }

        

        public DateTime? CreatedAt { get; set; }

        public string CreatedBy { get; set; }

        public DateTime? UpdatedAt { get; set; }

        public string UpdatedBy { get; set; }
        public int Flag { get; set; }
        public string AgentCode { get; set; }
        public string Status { get; set; }
        public List<ProducerCodeMaster> ProducerMaster { get; set; }

        public long SumInsured { get; set; }
        public long PremiumAmount { get; set; }
        public long RivisedSI { get; set; }

        public string CustomerCode { get; set; }
        public string CustomerName { get; set; }
    }
}
