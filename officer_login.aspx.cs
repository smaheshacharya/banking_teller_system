using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.controller;
using System.Data;

namespace FinalProject
{
    public partial class officer_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            controllerclass std = new controllerclass();
            string username = csusername.Text;
            string pass = cpassword.Text;
            DataTable lbl = std.admin_login( username,pass);
            if (lbl.Rows.Count > 0)
            {
                Response.Redirect("admin_services/account_manipulation.aspx");
            }
            else
            {
                rel.Text = "YOU ENTER WRONG ACCOUNT NO. OR USERNAME";
                rel.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}