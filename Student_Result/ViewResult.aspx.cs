﻿using System;
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
            gridresult.DataSource = dt;
            gridresult.DataBind();

 
        }
    }
}