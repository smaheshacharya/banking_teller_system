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
using System.IO;
namespace FinalProject
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = susername.Text;
            string email = semail.Text;
            int house_no = Convert.ToInt16(shouse.Text);
            string vdc = svdc.Text;
            string district = sdistrict.Text;
            Decimal mobile_no = Convert.ToDecimal(smobile.Text);
            string gender;
            if (smale.Checked)
            {
                gender = "male";

            }
            else
            {
                gender = "female";
            }
            string usertype = sdrop.SelectedItem.Text;
            string father_name = sfather.Text;
            string grand_father = sgrandfather.Text;
            string wife_name = swifename.Text;
            DateTime date = System.DateTime.Now;



            if (fileupload.HasFile)
            {



                // fileupload.SaveAs(Server.MapPath("~/uploads/" + fileupload.FileName));//upload file in uploads folder
                HttpPostedFile postfile = fileupload.PostedFile;
                Stream stream = postfile.InputStream;
                BinaryReader bin = new BinaryReader(stream);
                byte[] byt = bin.ReadBytes((int)stream.Length);
                controllerclass con = new controllerclass();
                con.add_account(username, email, house_no, vdc, district, mobile_no, gender, usertype, father_name, grand_father, wife_name, byt, date);


            }
            else
            {
                add_account_result.Text = "file upload first";

            }
        }
    }
}