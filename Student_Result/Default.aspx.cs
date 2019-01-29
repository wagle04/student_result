using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using dataaccess;
using businesslayer;

namespace Student_Result
{
    public partial class Default : System.Web.UI.Page
    {
        blstudentlogin ba = new blstudentlogin();
        dlstudentlogin da = new dlstudentlogin();
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        dlsearchresult srd = new dlsearchresult();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            da.username = username.Text;
            da.password = password.Text;
            dt = ba.loginuser(da);
            dt1 = srd.result(username.Text);
            if (dt.Rows.Count > 0)
            {
                if (dt1.Rows.Count > 0)
                {
                    Session["username"] = username.Text;
                    Session["password"] = password.Text;
                    Response.Redirect("ViewResult.aspx");
                }
                else
                {

                    Response.Write("<script>alert('Sorry, No result found!!!')</script>");
                }
            }

            else
            {
                Response.Write("<script>alert('invalid username or password')</script>");
            }
        }

        protected void btnforgot_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Contact your administrator!!')</script>");
        }

        protected void btnTeacher_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherLogin.aspx");
        }
    }
}