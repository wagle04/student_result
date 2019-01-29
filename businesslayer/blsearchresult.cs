using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using businesslayer;
using dataaccess;

namespace businesslayer
{
   public class blsearchresult
    {
        
        public DataTable result(dlsearchresult sr, string rollno)
        {
            DataTable dt = new DataTable();
            dt = sr.result(rollno);
            DataRow dr = dt.NewRow();
            dr[0] = "Total";
            for (int j = 1; j < dt.Columns.Count; j++)
            {
                dr[j] = 0;
            }
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                for (int j = 1; j <= 5; j++)
                {
                    dr[j] = Convert.ToInt32(dr[j]) + Convert.ToInt32(dt.Rows[i].ItemArray[j]);
                }
            }
            dt.Rows.Add(dr);
            return dt;
        }

        public DataTable result(dlstudentlogin da)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-4NU18DVA;Initial Catalog=student_result;User ID=sa;Password=sql");

            DataTable dt = new DataTable();
            SqlCommand com = new SqlCommand("select * from result where username='" + da.username + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(com);
            sda.Fill(dt);
            return dt;
        }

        public string[] getpdr(DataTable dt)
        {
            float total = Convert.ToInt32(dt.Rows[dt.Rows.Count - 1].ItemArray[5]);
            float totalmarks = Convert.ToInt32(dt.Rows[dt.Rows.Count - 1].ItemArray[1]);
            float percent = (total * 100 / totalmarks);

            string division = getDivision(percent);

            int[] obtmarks = new int[dt.Rows.Count - 1];
            for (int i = 0; i < dt.Rows.Count - 1; i++)
            {
                obtmarks[i] = Convert.ToInt32(dt.Rows[i].ItemArray[3]);
            }
            int[] pracmarks = new int[dt.Rows.Count - 1];
            for (int i = 0; i < dt.Rows.Count - 1; i++)
            {
                pracmarks[i] = Convert.ToInt32(dt.Rows[i].ItemArray[4]);
            }

            int[] fullmarks = new int[dt.Rows.Count - 1];
            for (int i = 0; i < dt.Rows.Count - 1; i++)
            {
                fullmarks[i] = Convert.ToInt32(dt.Rows[i].ItemArray[1]);
            }
            string result = passorfail(obtmarks, pracmarks, fullmarks);

            string[] pdr = new string[3];
            pdr[0]= percent.ToString();
            pdr[1] = division;
            pdr[2] = result;
            return pdr;

        }

        public string getDivision(float percent)
        {
            if (percent >= 80)
            {
                return "Distinction";
            }

            else if (percent >= 65 && percent < 80)
            {
                return "1st Division";
            }
            else if (percent >= 50 && percent < 65)
            {
                return "2nd Division";
            }
            else
            {
                return "   ";
            }
        }


        public string passorfail(int[] obtmarks, int[] pracmarks, int[] fullmarks)
        {
            bool a = true;
            for (int i = 0; i < obtmarks.Length; i++)
            {
                int m = Convert.ToInt32(0.32 * fullmarks[i]);
                if (obtmarks[i] < m)
                {
                    a = false;
                }
            }
            for (int i = 0; i < pracmarks.Length; i++)
            {
                int m = Convert.ToInt32(0.08 * fullmarks[i]);
                if (pracmarks[i] < m)
                {
                    a = false;
                }
            }

            if (a)
            {
                return "Passed";
            }
            else
            {
                return "Failed";
            }

        }
    }
}
