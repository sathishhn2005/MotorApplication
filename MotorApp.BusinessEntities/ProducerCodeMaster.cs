using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MotorApp.BusinessEntities
{
    public class ProducerCodeMaster
    {
        private long producerCodeId = 0;
        private string producerCode = string.Empty;
        private string producerName = string.Empty;
        private string userName = string.Empty;

        public long ProducerCodeId { get => producerCodeId; set => producerCodeId = value; }
        public string ProducerCode { get => producerCode; set => producerCode = value; }
        public string ProducerName { get => producerName; set => producerName = value; }
        public string UserName { get => userName; set => userName = value; }
    }
}
