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
    public partial class withdraw : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Submit_Click(object sender, EventArgs e)
        {
            controllerclass con = new controllerclass();
            Decimal acc_no = Convert.ToDecimal(waccc.Text);
            DataTable dt = con.withdraw_ammount(acc_no);
            string ammount = dt.Rows[0]["ammount_digit"].ToString();
            Decimal amm_retrive = Convert.ToDecimal(ammount);
            Decimal ammdi = Convert.ToDecimal(ammdigit.Text);
           
            if (amm_retrive >=ammdi )
            {
               
               // controllerclass co = new controllerclass();
                Decimal acc = Convert.ToDecimal(waccc.Text);
                string name = wname.Text;
                Decimal ann = Convert.ToDecimal(ammdigit.Text);


               con.withdraw(acc, name, ammdi);  //to insert withdraw ammount in withdraw table
                Decimal decrease_amm = amm_retrive - ammdi;
                con.update_deposite_cash(acc,decrease_amm);//for update in deposite table 
            

            }
            else
            {
                result.Text = "YOU DONOT HAVE SUFFICINT BALANCE";
                result.ForeColor = System.Drawing.Color.Red;
            }

            
          
           
        }
    }
}