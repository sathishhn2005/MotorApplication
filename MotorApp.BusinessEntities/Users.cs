using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MotorApp.BusinessEntities
{
    public class Users
    {
        public long UserId { get; set; }
        public long LoginId { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public long RoleId { get; set; }
        public string RoleName { get; set; }
        public MotorInsRoles Role { get; set; }
    }
    public enum MotorInsRoles
    {

        //Admin = 1,

        Agent = 2,
        Broker = 3,

        Branches = 4,

        DirectSales = 5
    }
}
