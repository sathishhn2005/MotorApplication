using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace MotorApp.BusinessEntities
{
    public class CsvFileBulkUplaod
    {        
        public string DivisionCode { get; set; }
        public string ProductCode { get; set; }
        public string ClassName { get; set; }
        public string ProductName { get; set; }
        public string PolicyNumber { get; set; }
        public string InsuredName { get; set; }
        public DateTime PeriodFrom { get; set; }
        public DateTime PeriodTo { get; set; }
        public string CustomerPhoneNo { get; set; }
        public string CustomerType { get; set; }
        public string CustomerCode { get; set; }
        public string CustomerName { get; set; }
        public string SourceCode { get; set; }
        public string SourceName { get; set; }
        public string VehicleType { get; set; }
        public string VehicleMake { get; set; }
        public string RegNo { get; set; }
        public string EngineNo { get; set; }
        public string ChassisNo { get; set; }
        public decimal SumInsured { get; set; }
        public decimal RevisedSumInsured { get; set; }
        public decimal TotalGrossPremium { get; set; }
        public decimal RevisedGrossPremium { get; set; }
        

        public string Geo { get; set; }
        
        public string RenewalStatus { get; set; }
        public string MarketingCode { get; set; }
        public string UserName { get; set; }

      
    }
}
