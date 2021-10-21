﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PhotoAlbumWEBAPPLICATION
{
    public partial class MainMenu : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand comm;
        public DataSet ds;
        public SqlDataAdapter adap;
        public SqlDataReader datread;
        public string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\tinus\OneDrive\Desktop\323Project2\PhotoAlbumWEBAPPLICATION\PhotoAlbumWEBAPPLICATION\App_Data\PhotoSystem.mdf;Integrated Security=True";
        public string first, last;

        public string getStringValue(string sql)
        {
            conn = new SqlConnection(constr);
            string sqlStatement = sql;
            string value;
            using (conn = new SqlConnection(constr))
            {
                conn.Open();
                comm = new SqlCommand(sqlStatement, conn);
                conn.Close();
                try
                {
                    conn.Open();
                    value = comm.ExecuteScalar().ToString();
                    conn.Close();
                    return value;
                }
                catch (SqlException error)
                {
                    Label2.Text = "Please contact page advisor!\n" + error.Message;

                    return "";
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = "Welcome " + getStringValue("Select Firstname from Users Where UserID = '" + Session["UserID"] + "'");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewUserPhotos.aspx");
        }
    }
}