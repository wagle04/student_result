﻿using System;
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
    public partial class _Default : Page
    {
        blteacherlogin ba = new blteacherlogin();
        dlteacherlogin da = new dlteacherlogin();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)

            {
                da.username = username.Text;
                da.password = password.Text;
                dt = ba.loginuser(da);
                if (dt.Rows.Count > 0)
                {
                Session["username"] = username.Text;
                Session["password"] = password.Text;
                Response.Redirect("AddResult.aspx");
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
    }
}