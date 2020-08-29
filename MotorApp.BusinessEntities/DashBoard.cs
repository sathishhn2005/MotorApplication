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

        public int TotPoltoBeRenewedCM { get; set; }

        public int TotPolforRenewalCM { get; set; }

        public int NoOfPoRenewedCM { get; set; }

        public int PolicyLostCM { get; set; }
        public long RoleId { get; set; }
        public string UserName { get; set; }
        public List<ProducerCodeMaster> lstProducerMaster { get; set; }
    }
}
