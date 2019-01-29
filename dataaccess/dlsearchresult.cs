using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace dataaccess
{
    public class dlsearchresult
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-4NU18DVA;Initial Catalog=student_result;User ID=sa;Password=sql");

        public DataTable result(string rollno)
        {
            DataTable dt = new DataTable();
            SqlCommand com = new SqlCommand("select * from result where username='" + rollno + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(com);
            sda.Fill(dt);
            return dt;
        }

    }
}
