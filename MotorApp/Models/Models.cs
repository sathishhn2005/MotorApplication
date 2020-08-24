using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MotorApp.Models
{
    public class LoginViewModel
    {
        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        [Display(Name = "Remember me?")]
        public bool RememberMe { get; set; }

        public long UserId { get; set; }
        public long LoginId { get; set; }
        public string UserName { get; set; }

        public long RoleId { get; set; }
        public string RoleName { get; set; }
        public MotorInsRoles Role { get; set; }
    }
    public enum MotorInsRoles
    {

        Admin = 1,

        Agent = 2,
        Broker = 3,

        Branches = 4,

        DirectSales = 5

    }
}