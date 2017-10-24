using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FinalProject.controller;

namespace FinalProject.services
{
    public partial class deposite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            Decimal acc = Convert.ToDecimal(laccount.Text);
            Decimal amm = Convert.ToDecimal(lammount.Text);
            string name = lname.Text;
            Decimal rate = Convert.ToDecimal(lrate.Text);
            Decimal time = Convert.ToDecimal(ltime.Text);
            controllerclass con = new controllerclass();
            con.loan(acc, amm, name,rate,time);

        }
    }
}