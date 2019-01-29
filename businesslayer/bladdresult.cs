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
    public class bladdresult
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-4NU18DVA;Initial Catalog=student_result;User ID=sa;Password=sql");
        public void add(string rollno, string subject,int fullmarks,int passmarks,int obtmarks,int pracmarks)
        {
            int total = obtmarks + pracmarks;
            double percent = Convert.ToDouble(total)*100 / Convert.ToDouble(fullmarks);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "addResult";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", rollno);
            cmd.Parameters.AddWithValue("@subject", subject);
            cmd.Parameters.AddWithValue("@fullmarks", fullmarks);
            cmd.Parameters.AddWithValue("@passmarks", passmarks);
            cmd.Parameters.AddWithValue("@obtmarks", obtmarks);
            cmd.Parameters.AddWithValue("@pracmarks", pracmarks);
            cmd.Parameters.AddWithValue("@totalmarks", total);
            cmd.Parameters.AddWithValue("@percentage", percent);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
