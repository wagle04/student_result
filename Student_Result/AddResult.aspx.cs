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
    public partial class AddResult : System.Web.UI.Page
    {
        dlstudentlogin das = new dlstudentlogin();
        blsearchresult srs = new blsearchresult();
        blteacherlogin ba = new blteacherlogin();
        dlteacherlogin da = new dlteacherlogin();
        bladdresult ar = new bladdresult();
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            string password = Session["password"].ToString();
            da.username = username;
            da.password = password;
            dt1 = ba.loginuser(da);

            string fullname = dt1.Rows[0].ItemArray[3].ToString();
            lblname.Text = fullname;
            addpanel.Visible = false;

            das.username = txtroll.Text;
            dt = srs.result(das);

        }

        protected void btnenter_Click(object sender, EventArgs e)
        {
            showdt();
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {


            string[] subjects = new string[dt.Rows.Count];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                subjects[i] = dt.Rows[i].ItemArray[0].ToString();
            }
            bool a = false;
            foreach (string x in subjects)
            {
                if (txtsubject.Text.ToString() == x)
                {
                    a = true;
                }
            }
            if (a)
            {
                Response.Write("<script>alert('The result for same subject and rollno already exists!')</script>");
            }
            else
            {
                ar.add(txtroll.Text.ToString(), txtsubject.Text.ToString(), Convert.ToInt32(txtfm.Text), Convert.ToInt32(txtpm.Text), Convert.ToInt32(txtobtmarks.Text), Convert.ToInt32(txtpracmarks.Text));
                txtsubject.Text = "";
                txtfm.Text = "";
                txtpm.Text = "";
                txtpracmarks.Text = "";
                txtobtmarks.Text = "";
                showdt();
            }


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            bldeleterow dr = new bldeleterow();
            dr.delete(GridView1.DataKeys[e.RowIndex].Values["subject"].ToString(), txtroll.Text.ToString());
            showdt();
        }

        protected void showdt()
        {
            string username = Session["username"].ToString();
            addpanel.Visible = true;
            txtroll.Text = txtroll.Text;
            lblrn.Text = txtroll.Text;
            
            das.username = txtroll.Text;
            dt = srs.result(das);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}