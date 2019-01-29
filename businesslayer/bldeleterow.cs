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
    public class bldeleterow
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-4NU18DVA;Initial Catalog=student_result;User ID=sa;Password=sql");
        public void delete(string subject, string username)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from result where subject='" + subject + "' and username='"+username+"'";
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
