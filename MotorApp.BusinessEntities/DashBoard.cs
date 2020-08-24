using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MotorApp.BusinessEntities
{
   public class DashBoard
    {
        public int TotPoltoBeRenewed { get; set; }

        public int TotPolforRenewal { get; set; }

        public int NoOfPoRenewed { get; set; }

        public int PolicyLost { get; set; }
        public long RoleId { get; set; }
        public string UserName { get; set; }
    }
}
