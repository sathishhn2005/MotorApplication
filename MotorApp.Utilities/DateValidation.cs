using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Globalization;

namespace MotorApp.Utilities
{
    public static class DateValidation
    {
       public static bool isLeap(int year)
        {

            // Return true if year is a 
            // multiple of 4 and not 
            // multiple of 100. OR year
            // is multiple of 400.
            return (((year % 4 == 0) &&
                     (year % 100 != 0)) ||
                     (year % 400 == 0));
        }
        public static bool isValidDate(int d,
                             int m,
                             int y)
        {
            const int MAX_VALID_YR = 9999;
            const int MIN_VALID_YR = 1800;
            // If year, month and day 
            // are not in given range
            if (y > MAX_VALID_YR ||
                y < MIN_VALID_YR)
                return false;
            if (m < 1 || m > 12)
                return false;
            if (d < 1 || d > 31)
                return false;

            // Handle February month 
            // with leap year
            if (m == 2)
            {
                if (isLeap(y))
                    return (d <= 29);
                else
                    return (d <= 28);
            }

            // Months of April, June, 
            // Sept and Nov must have 
            // number of days less than
            // or equal to 30.
            if (m == 4 || m == 6 ||
                m == 9 || m == 11)
                return (d <= 30);

            return true;
        }

        public static DateTime ConvertDateTimeFormatter(string Value,string Formatter) //Formatter => "MM/dd/yyyy HH:mm:ss", "MM-dd-yyyy HH:mm:ss", "MM.dd.yyyy HH:mm:ss"
        {
            CultureInfo provider = CultureInfo.InvariantCulture;        
            DateTime dateTime14;
            bool isSuccess6 = DateTime.TryParseExact(Value, new string[] { Formatter }, provider, DateTimeStyles.None, out dateTime14);
            return dateTime14;

        }
    }
}
