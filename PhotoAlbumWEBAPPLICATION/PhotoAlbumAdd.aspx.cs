﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace PhotoAlbumWEBAPPLICATION
{
    public partial class PhotoAlbumAdd : System.Web.UI.Page
    {
        public string query;
        public string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\tinus\OneDrive\Desktop\323Project2\PhotoAlbumWEBAPPLICATION\PhotoAlbumWEBAPPLICATION\App_Data\PhotoSystemV2.mdf;Integrated Security=True";
        public SqlConnection con;
        public void connection()
        {

            con = new SqlConnection(constr);
            con.Open();


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
                imagebindGrid();
        }

        public void imagebindGrid()
        {
            connection();
            query = "Select * from Photo";
            SqlCommand com = new SqlCommand(query, con);
            SqlDataReader dr = com.ExecuteReader();
            Gridview1.DataSource = dr;
            Gridview1.DataBind();
        }
    }
}

    