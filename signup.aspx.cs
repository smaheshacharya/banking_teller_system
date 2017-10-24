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
    public partial class signup1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string name = gusername.Text;
            string pass = gpassword.Text;
            controllerclass con =new controllerclass();
            con.general_signup(name, pass);
        }
    }
}