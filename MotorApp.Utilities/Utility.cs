using System.Configuration;

namespace MotorApp.Utilities
{
    
    public class Utility
    {
        public string GetConnectionString()
        {
            string conStr = ConfigurationManager.ConnectionStrings["MotorApp"].ConnectionString.ToString();
            return conStr;
        }
        public string GetOLEDBConnectionString(string Extension)
        {
            string OLEDBContstr = string.Empty;
            if (Extension.Equals(".xls"))
            {
                OLEDBContstr = ConfigurationManager.ConnectionStrings["Excel03ConString"].ConnectionString;
            }
            else if (Extension.Equals(".xlsx"))
            {
                OLEDBContstr = ConfigurationManager.ConnectionStrings["Excel07ConString"].ConnectionString;
            }

            return OLEDBContstr;
        }
       

    }
}
