using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;
using FinalProject.controller;

namespace FinalProject
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            controllerclass std = new controllerclass();
            string username = csusername.Text;
            Decimal acc = Convert.ToDecimal(cl_account_no.Text);
            DataTable lbl= std.customer_info(acc,username);
            if(lbl.Rows.Count>0)
            {
                Response.Redirect("~/index.aspx");
            }
            else
            {
                rel.Text = "YOU ENTER WRONG ACCOUNT NO. OR USERNAME";
                rel.ForeColor = System.Drawing.Color.Red;
            }

        }
      
    }
}