using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace dataaccess
{
   public class dlteacherlogin
    {
   
        public string username { get; set; }
        public string password { get; set; }

        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-4NU18DVA;Initial Catalog=student_result;User ID=sa;Password=sql");

        public DataTable loginuser(dlteacherlogin da)
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
