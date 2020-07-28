using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MotorApp.BusinessEntities
{
    public class DomesticModel
    {
        public long DomesticId { get; set; }

        public string DraftNo { get; set; }

        public string PolicyNo { get; set; }

        public DateTime? IssueDate { get; set; }

        public string Branch { get; set; }

        public DateTime? PolicyStartDate { get; set; }

        public DateTime? PolicyEndDate { get; set; }

        public DateTime? NoofYears { get; set; }

        public string Marketer { get; set; }

        public string Broker_AgentCode { get; set; }

        public string IssueFrom { get; set; }

        public string SpecialDiscount { get; set; }

        public long? Amount { get; set; }

        public string AssuredName { get; set; }

        public string AssuredName_Arabic { get; set; }

        public long? CivilID { get; set; }

        public long? PostBox { get; set; }

        public long? PostalCode { get; set; }

        public string City { get; set; }

        public long? ResPhoneNo { get; set; }

        public long? OfficePhoneNo { get; set; }

        public long? MobileNo { get; set; }

        public string HelperProfession { get; set; }

        public string Gender { get; set; }

        public DateTime? DateofBirth { get; set; }

        public int? Age { get; set; }

        public long? PassportNo { get; set; }

        public string Nationality { get; set; }

        public string MazayaCard { get; set; }

        public string SameasHouseMaidAddress { get; set; }

        public string Sponsor_ProposerName { get; set; }

        public long? SponsorPostBox { get; set; }

        public long? SponsorPostalCode { get; set; }

        public string SponsorCity { get; set; }

        public long? SponsorMobileNo { get; set; }

        public long? SponsorOfficePhone { get; set; }

        public string SponsorNationality { get; set; }

        public string VIPCustomer { get; set; }

        public string Email { get; set; }

        public DateTime? CreatedAt { get; set; }

        public string CreatedBy { get; set; }

        public DateTime? UpdatedAt { get; set; }

        public string UpdatedBy { get; set; }


    }
}
