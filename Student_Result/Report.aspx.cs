﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Result
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReport_Click(object sender, EventArgs e)
        {

        }

        protected void btnforgot_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Contact your administrator!!')</script>");
        }
    }
}