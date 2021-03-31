﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MotorApp.BusinessEntities
{
    public class Insurance
    {

        public string UserName { get; set; }
        public string AssignTo { get; set; }
        public long InsuranceID { get; set; }
        [Display(Name = "Division Code")]
        public string DivisionCode { get; set; }

        [Display(Name = "Description")]
        public string Description { get; set; }
        [Display(Name = "Division Name")]
        public string DivisionName { get; set; }
        [Display(Name = "Product Code")]
        public string ProductCode { get; set; }
        [Display(Name = "Product Name")]
        public string ProductName { get; set; }
        [Display(Name = "Business Type")]
        public string BusinessType { get; set; }

        [Display(Name = "Policy No")]
        public string PolicyNo { get; set; }
        [Display(Name = "Assured Name")]
        public string AssuredName { get; set; }
        [Display(Name = "Assured Mobile")]
        public string AssuredMobile { get; set; }
        [Display(Name = "Customer Name")]
        public string CustomerName { get; set; }
        [Display(Name = "Source Code")]
        public string SourceCode { get; set; }


        [Display(Name = "Source Name")]
        public string SourceName { get; set; }
        [Display(Name = "Customer Category")]
        public string CustomerCategory { get; set; }
        [Display(Name = "Policy From Date")]
        [DisplayFormat(DataFormatString = "{0: dd/MM/yyyy}")]

        public DateTime PolicyFromDate { get; set; }
        [Display(Name = "Policy To Date")]
        [DisplayFormat(DataFormatString = "{0: dd/MM/yyyy}")]
        public DateTime PolicyToDate { get; set; }

        [DisplayFormat(DataFormatString = "{0: dd/MM/yyyy hh:mm:ss}")]
        public DateTime CallBackDate { get; set; }

        [Display(Name = "Gross Premium")]
        public long GrossPremium { get; set; }

        [Display(Name = "Revised Sum Insured")]
        public long RevisedSumInsured { get; set; }
        [Display(Name = "Renewal Premium")]
        public long RenewalPremium { get; set; }
        [Display(Name = "Marketing Executive")]
        public string MarketingExecutive { get; set; }
        [Display(Name = "Remarks")]
        public string Remarks { get; set; }
        [Display(Name = "Status")]
        public string Status { get; set; }

        [Display(Name = "ExpiredSumInsured")]
        public decimal ExpiredSumInsured { get; set; }
        [Display(Name = "SumAssuredPercentage")]
        public decimal SumAssuredPercentage { get; set; }
        [Display(Name = "RenewalSumAssured")]
        public decimal RenewalSumAssured { get; set; }
        [Display(Name = "Customer Code")]
        public string CustomerCode { get; set; }
        [Display(Name = "Charges")]
        public long Charges { get; set; }
        [Display(Name = "Insurance Type")]
        public string InsType { get; set; }
        [Display(Name = "Producer Name")]
        public string ProducerName { get; set; }
        public InssType InsuranceType { get; set; }

        public int Flag { get; set; }

    }
    public enum InssType
    {
        Motor,
        Travel,
        Domestic,
        Individual
    }

}
