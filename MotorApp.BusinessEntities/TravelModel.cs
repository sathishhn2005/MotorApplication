using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MotorApp.BusinessEntities
{
    public class TravelModel
    {
        public long TravelId { get; set; }

        public DateTime? IssueDate { get; set; }

        public string PolicyNo { get; set; }

        public string Branch { get; set; }

        public string Planning { get; set; }

        public int? NoOfDays { get; set; }

        public string CoverageType { get; set; }

        public DateTime? DepartureDate { get; set; }

        public DateTime? DateOfReturn { get; set; }

        public DateTime? DateOfBirth { get; set; }

        public string TravelDestination { get; set; }

        public string PurposeOfVisit { get; set; }

        public string Marketer { get; set; }

        public string Broker_AgentCode { get; set; }

        public string IssueFrom { get; set; }

        public string AssuredName { get; set; }

        public string Gender { get; set; }

        public int? CivilID { get; set; }

        public int? Mobile { get; set; }

        public int? PostBox { get; set; }

        public int? PostalCode { get; set; }

        public string City { get; set; }

        public string Email { get; set; }

        public string LocalPersonName { get; set; }

        public string LocalPersonNo { get; set; }

        public string Nationality { get; set; }

        public int? PassportNo { get; set; }

        public string Extension { get; set; }

        public string VipCustomer { get; set; }

        public string Remarks { get; set; }

        public string PolicyIsForOmanNationals_LegalResidentsOfOman { get; set; }

        public string SpecialDiscount { get; set; }

        public string AdditionalConditions { get; set; }

        public string MazayaCard { get; set; }

        public string AssuredNameFamilyMember { get; set; }

        public DateTime? DateOfBirthFamilyMember { get; set; }

        public int? Age { get; set; }

        public string Relationship { get; set; }

        public string Sex { get; set; }

        public int? PassportNoFamilyMember { get; set; }

        public string ExtensionFamilyMember { get; set; }

        public DateTime? CreatedAt { get; set; }

        public string CreatedBy { get; set; }

        public DateTime? UpdatedAt { get; set; }

        public string UpdatedBy { get; set; }
        public int Flag { get; set; }

    }
}
