using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FinalProject.controller;
using MySql.Data;
using MySql.Data.MySqlClient;


namespace FinalProject.services
{
    public partial class loan_deposite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            grid();
        }
        public void grid()
        {
            controllerclass stu = new controllerclass();
            DataTable dt = stu.loan_detail();
            loan_grid.DataSource = dt;
            loan_grid.DataBind();

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            int acc =Convert.ToInt16( laccount.Text);
            Decimal amm =Convert.ToDecimal( lammount.Text);
            string name = lname.Text;
            controllerclass con = new controllerclass();
            con.deposite_loan(acc, amm, name);
            //int accn = Convert.ToInt16(laccount.Text);
            DataTable dt = con.loan_ammount9(acc);
            string ammt = dt.Rows[0]["ammount_digit_with_interest"].ToString();
            Decimal ammount = Convert.ToDecimal(ammt);
            if (ammount > 0)
            {
                Decimal update_ammount = ammount - amm;
                con.update_loan(acc, update_ammount);
                grid();
               
            }
            else
            {

                
                grid();
            }
            grid();
        }
    }
}