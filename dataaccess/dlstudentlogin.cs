using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace dataaccess
{
    public class dlstudentlogin
    {
        public string username { get; set; }
        public string password { get; set; }

        public DataTable loginuser(dlstudentlogin da)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-4NU18DVA;Initial Catalog=student_result;User ID=sa;Password=sql");

            DataTable dt = new DataTable();
            con.Open();
            SqlCommand com = new SqlCommand("select * from students where username='" + da.username + "' and password='" + da.password + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(com);
            sda.Fill(dt);
            return dt;
        }
    }


}
