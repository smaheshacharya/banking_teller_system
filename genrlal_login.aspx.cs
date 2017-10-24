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
using FinalProject.helper;

namespace FinalProject
{
    public partial class genrlal_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            controllerclass con =new controllerclass();
            string username = gusername.Text;
            string password = gpassword.Text;
          
            DataTable dt = con.general_login(username, password);
            if(dt.Rows.Count>0)
            {
                Session["uname"] = username;
               
               
                        Response.Redirect("~/indexuser.aspx");

                   
                   
               
            }
            else
            {
                
                result.Text ="YOU ENTER THE WRONG UERR NAME AND PASSWORD";
                result.ForeColor = System.Drawing.Color.Red;
               
               
               
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/signup.aspx");
        }
    }
}