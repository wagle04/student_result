using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dataaccess;
using businesslayer;
using System.Data;
using System.Data.SqlClient;

namespace businesslayer
{
   public class teacherloginb
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-4NU18DVA;Initial Catalog=student_result;User ID=sa;Password=sql");

        public DataTable loginuser(teacherlogind da)
        {
            DataTable dt = new DataTable();
            con.Open();
            SqlCommand com = new SqlCommand("select * from teachers where username='" + da.username + "' and password='" + da.password + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(com);
            sda.Fill(dt);
            return dt;
        }
    }
}
