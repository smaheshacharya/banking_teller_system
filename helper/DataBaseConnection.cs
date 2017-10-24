using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;


namespace FinalProject.helper
{
    public class DataBaseConnection
    {
        public static MySqlConnection cn;
        public static void connectiondatabase()
        {
            cn = new MySqlConnection("Data source=localhost;User Id=root; DataBase=finalproject; password=''");
            cn.Open();
        }
    }
}