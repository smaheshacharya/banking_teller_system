using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.controller;
using System.Data;



namespace FinalProject.services
{
    public partial class deposite_cash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            controllerclass con = new controllerclass();

            int acc = Convert.ToInt16(dacc.Text);


            Decimal amm = Convert.ToDecimal(damm.Text);
            string name = dname.Text;
        
            con.deposite(acc, amm, name);

        }
    }
}