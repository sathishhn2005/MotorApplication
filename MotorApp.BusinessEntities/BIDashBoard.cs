using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MotorApp.BusinessEntities
{
    public class BIDashBoard
    {

        public int CalenderId { get; set; }

        public string MonthName { get; set; }

        public int Renewed { get; set; }

        public int Available { get; set; }
        public string BusinessType { get; set; }
    }
}
