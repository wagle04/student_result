using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using dataaccess;
using businesslayer;
using System.Data.SqlClient;

namespace Student_Result
{
    public partial class ViewResult : System.Web.UI.Page
    {
        studentloginb ba = new studentloginb();
        studentlogind da = new studentlogind();
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            string password = Session["password"].ToString();
            da.username = username;
            da.password = password;
            dt1 = ba.loginuser(da);

            string fullname = dt1.Rows[0].ItemArray[2].ToString();
            lblname.Text = fullname;

            dt = ba.searchresult(da);
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
            GridView1.DataSource = dt;
            GridView1.DataBind();


            float total = Convert.ToInt32(dt.Rows[dt.Rows.Count - 1].ItemArray[5]);
            float totalmarks = Convert.ToInt32(dt.Rows[dt.Rows.Count - 1].ItemArray[1]);
            float percent = (total * 100 / totalmarks);

            lblpercent.Text = percent.ToString();

            string division = getDivision(percent);
            lbldivision.Text = division;



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
            string result = passorfail(obtmarks, pracmarks);
            lblresult.Text = result;

        }


        protected string getDivision(float percent)
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


        protected string passorfail(int[] obtmarks, int[] pracmarks)
        {
            bool a = true;
            foreach (int x in obtmarks)
            {
                if (x < 32)
                {
                    a = false;
                }
            }
            foreach (int x in pracmarks)
            {
                if (x < 8)
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