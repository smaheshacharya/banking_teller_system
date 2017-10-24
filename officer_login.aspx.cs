using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FinalProject.controller;

namespace FinalProject
{
    public partial class officer_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            controllerclass con = new controllerclass();
            string name = offusername.Text;
            string pass = offpassword.Text;
            DataTable dt = con.admin_login(name, pass);
            if(dt.Rows.Count>0)
            {
                Response.Redirect("~/account_manipulation.aspx");
            }
            else
            {
                result.Text = "YOU ENTER WRONG EMAIL AND PASSWORD";
                result.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}