﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;
using FinalProject.helper;
using FinalProject.services;

namespace FinalProject.controller
{
    public class controllerclass
    {
        public void general_signup(string name, string password, string address)
        {

            try
            {

                DataBaseConnection.connectiondatabase();
                string str = "insert into general_login(username,password,address)values('" + name + "'," + password + "','" + address + "')";
                MySqlCommand con = new MySqlCommand(str, DataBaseConnection.cn);
                con.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

            }

        }
        public void  delete_account(int acc)
        {
            string str="delete from addaccount where account_no='"+acc+"'";
            MySqlCommand con = new MySqlCommand(str,DataBaseConnection.cn);
            con.ExecuteNonQuery();

        }
        public void deposite(int acc, Decimal amm, string name)
        {
            // insert data in withdraw table in database
            DataBaseConnection.connectiondatabase();


            string insertdata = "insert into deposite_cash (account_no,ammount_digit,depositer_name)values('" + acc + "','" + amm + "','" + name + "')";
            MySqlCommand md = new MySqlCommand(insertdata, DataBaseConnection.cn);
            md.ExecuteNonQuery();
        }

        public void update_deposite_cash(Decimal acc ,Decimal amm)
        {
            DataBaseConnection.connectiondatabase();
            string str = "update deposite_cash set ammount_digit='" + amm + "' where account_no='" + acc + "'";
            MySqlCommand con =new  MySqlCommand(str, DataBaseConnection.cn);
            con.ExecuteNonQuery();

        }
        public void withdraw(Decimal acc, string name, Decimal digit)
        {
            // insert data in withdraw table in database
            DataBaseConnection.connectiondatabase();


            string insertdata = "insert into withdraw (account_no,withdrawer_name,ammount_digit)values('" + acc + "','" + name + "','" + digit + "')";
            MySqlCommand md = new MySqlCommand(insertdata, DataBaseConnection.cn);
            md.ExecuteNonQuery();
        }

        public DataTable withdraw_ammount(Decimal acc)
        {
            DataBaseConnection.connectiondatabase();
            string srt = "select ammount_digit from deposite_cash where account_no='" + acc + "'";
            MySqlDataAdapter dt = new MySqlDataAdapter(srt, DataBaseConnection.cn);
            DataSet ds = new DataSet();
            dt.Fill(ds, "login");
            return ds.Tables[0];
        }
     
          public void loan(Decimal acc, Decimal ammount,String name, Decimal rate,Decimal time)
       {
           // insert data in loan table in database
           DataBaseConnection.connectiondatabase();


           string insertdata = "insert into loan (account_no,ammount_digit_with_interest,loner_name,rate,time)values('" + acc + "','" + ammount + "','" + name + "','" + rate + "','"+time+"')";
           MySqlCommand md = new MySqlCommand(insertdata, DataBaseConnection.cn);
           md.ExecuteNonQuery();
       }
        public DataTable loan_ammount(int acc)
        {
            DataBaseConnection.connectiondatabase();
            string srt = "select ammount_digit_with_interest from loan where account_no='" + acc + "'";
            MySqlDataAdapter dt = new MySqlDataAdapter(srt, DataBaseConnection.cn);
            DataSet ds = new DataSet();
            dt.Fill(ds, "login");
            return ds.Tables[0];
        }
        public DataTable customer_info(Decimal acc, string username)
        {
            //select data from database to compare data with admin input
            DataBaseConnection.connectiondatabase();
            string srt = "select account_no ,username from addaccount where account_no='" + acc + "'and username='" + username + "'";
            MySqlDataAdapter dt = new MySqlDataAdapter(srt, DataBaseConnection.cn);
            DataSet ds = new DataSet();
            dt.Fill(ds, "login");
            return ds.Tables[0];


        }


        public DataTable general_login(string name, string password)
        {
            //select  data from database to compare data input by general user
            DataBaseConnection.connectiondatabase();
            //tring strdata = "select signup where username='" + name + "'  password='" + password + "'and usertype='" + utype + "'";
            string strdata = "select username,password from general_login where username ='" + name + "'and password='" + password + "'";
            MySqlDataAdapter da = new MySqlDataAdapter(strdata, DataBaseConnection.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "general_login");
            return ds.Tables[0];

        }


        public DataTable admin_login(string name, string pass)
        {
            //select data from database to compare data with admin input
            DataBaseConnection.connectiondatabase();
            string srt = "select * from officer_login where username='" + name + "'and password='" + pass + "'";
            MySqlDataAdapter dt = new MySqlDataAdapter(srt, DataBaseConnection.cn);
            DataSet ds = new DataSet();
            dt.Fill(ds, "login");
            return ds.Tables[0];
            

        }
        public DataTable cusdetail()
        { 
          //select for customer login
            DataBaseConnection.connectiondatabase();
            string srt = "select account_no,username from addaccount";
            MySqlDataAdapter dt = new MySqlDataAdapter(srt, DataBaseConnection.cn);
            DataSet ds = new DataSet();
            dt.Fill(ds, "login");
            return ds.Tables[0];


        }


        public void add_account(string name, string email, int house_no, string vdc, string district, Decimal mobile_no, string gender, string usertype, string father_name, string grand_father, string wife,byte[] img, DateTime date)
        {
            //add account in database of costumer
            try
            {
                DataBaseConnection.connectiondatabase();

                string insertdata = "insert into addaccount(username,email,house_no,vdc,district,mobile,gender,usertype,father_name,grandfather_name,wife_name,image,date)values('" + name + "','" + email + "','" + house_no + "','" + vdc + "','" + district + "','" + mobile_no + "','" + gender + "','" + usertype + "','" + father_name + "','" + grand_father + "','" + wife + "','" + img + "','" + date + "')";
                MySqlCommand nm = new MySqlCommand(insertdata, DataBaseConnection.cn);
                nm.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

            }
        }
        public DataTable account_manipulation()
        {
            database_connection();
            string str = "select account_no,username,email,house_no,vdc,district,mobile,gender,usertype,father_name,grandfather_name,wife_name,image from addaccount ORDER BY username";
            MySqlDataAdapter da = new MySqlDataAdapter(str ,DataBaseConnection.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "log");
            return ds.Tables[0];
        }
        public void database_connection()
        {
            DataBaseConnection.connectiondatabase();
        }
        public void update_account(Decimal acc,string username, string email,int house_no, string vdc, string district, Decimal mobile_no, string usertype, string father_name, string grand_father, string wife_name)
        {

            string str = "update addaccount set username='" + username + "',email='" + email + "',house_no='" + house_no + "',vdc='" + vdc + "',district='" + district + "',mobile='" + mobile_no + "',usertype='" + usertype + "',father_name='" + father_name + "',grandfather_name='" + grand_father + "',wife_name='" + wife_name + "' WHERE account_no = '" + acc + "'";
            MySqlCommand con =new  MySqlCommand(str,DataBaseConnection.cn);
            con.ExecuteNonQuery();

        }
        public DataTable deposite_cash_add_with_tranjaction(int acc)
        {
            database_connection();
            string str = "select ammount_digit from deposite_cash where acc='" + acc + "'";
            MySqlDataAdapter da = new MySqlDataAdapter(str, DataBaseConnection.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "log");
            return ds.Tables[0];
        }

        public DataTable loan_detail()
        {
            database_connection();
            string str = "select * from loan ";
            MySqlDataAdapter da = new MySqlDataAdapter(str, DataBaseConnection.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "log");
            return ds.Tables[0];
        }
        public void deposite_loan(int acc, Decimal amm, string name)
        {
            string str = "insert into loan_deposite(account_no,ammount_interest,depositer_name)values('" + acc + "','" + amm + "','" + name + "')";
            MySqlCommand md = new MySqlCommand(str, DataBaseConnection.cn);
            md.ExecuteNonQuery();


        }
    
   

        public void update_loan(int acc, Decimal amm)
        {

            string str = "update loan set ammount_digit_with_interest='" + amm + "' WHERE account_no = '" + acc + "'";
            MySqlCommand con = new MySqlCommand(str, DataBaseConnection.cn);
            con.ExecuteNonQuery();

        }
        public DataTable loan_ammount9(int accn)
        {
            database_connection();
            string str = "select ammount_digit_with_interest from loan where account_no='" + accn + "'";
            MySqlDataAdapter da = new MySqlDataAdapter(str, DataBaseConnection.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "log");
            return ds.Tables[0];
        }
        public DataTable search(string src)
        {
            database_connection();
            string str = "select account_no,username,email,house_no,vdc,district,mobile,gender,usertype,father_name,grandfather_name,wife_name,image from addaccount  where username='" + src + "'";
            MySqlDataAdapter da = new MySqlDataAdapter(str, DataBaseConnection.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "log");
            return ds.Tables[0];
        }
    }
}