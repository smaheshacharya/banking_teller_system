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

namespace FinalProject.admin_services
{
    public partial class add_staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            grid();
        }

        protected void amgrig_SelectedIndexChanged(object sender, EventArgs e)
        {
            label.Text = amgrid.SelectedRow.Cells[1].Text;
            amusername.Text = amgrid.SelectedRow.Cells[2].Text;
            amemail.Text = amgrid.SelectedRow.Cells[3].Text;
            amhouse.Text = amgrid.SelectedRow.Cells[4].Text;
            amvdc.Text = amgrid.SelectedRow.Cells[5].Text;
            amdistrict.Text = amgrid.SelectedRow.Cells[6].Text;
            ammobile.Text = amgrid.SelectedRow.Cells[7].Text;

            amdrop.Text = amgrid.SelectedRow.Cells[9].Text;
            amfather.Text = amgrid.SelectedRow.Cells[10].Text;
            amgrandfather.Text = amgrid.SelectedRow.Cells[11].Text;
            amwifename.Text = amgrid.SelectedRow.Cells[12].Text;
        }
        public void grid()
        {
            controllerclass stu = new controllerclass();
            DataTable dt = stu.account_manipulation();
            amgrid.DataSource = dt;
            amgrid.DataBind();

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Decimal  acc = Convert.ToInt16(label.Text);
            string username = amusername.Text;
            string email = amemail.Text;
            int house_no = Convert.ToInt16(amhouse.Text);
            string vdc = amvdc.Text;
            string district = amdistrict.Text;
            Decimal mobile_no = Convert.ToDecimal(ammobile.Text);

            string usertype = amdrop.SelectedItem.Text;
            string father_name = amfather.Text;
            string grand_father = amgrandfather.Text;
            string wife_name = amwifename.Text;
            DateTime date = System.DateTime.Now;

            controllerclass con = new controllerclass();
            con.update_account(acc, username, email, house_no, vdc, district, mobile_no, usertype, father_name, grand_father, wife_name); //);date);

            grid();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            controllerclass con = new controllerclass();
            int acc = Convert.ToInt16(label.Text);
            DataTable dt = con.loan_ammount(acc);
            Decimal a = 0;
            string ammount = dt.Rows[0]["ammount_digit"].ToString();
            Decimal amm = Convert.ToDecimal(ammount);
            if (amm > a)

            {
                lresult.Text = "YOU HAVE TO CLEAR LOAN FIRST";
                lresult.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                con.delete_account(acc);
            }
        }
    }

}