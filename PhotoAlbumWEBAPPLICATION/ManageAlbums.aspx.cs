using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace PhotoAlbumWEBAPPLICATION
{
    public partial class ManageAlbums : System.Web.UI.Page
    {

        public string query;
        public string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\PhotoSystemV2.mdf;Integrated Security=True";
        public SqlConnection con;
        public SqlCommand comm;
        public void connection()
        {

            con = new SqlConnection(constr);
            con.Open();


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    SqlCommand cmd = new SqlCommand("Select * from Album WHERE UserID = '" + (string)Session["UserID"] + "' ", con);
                    con.Open();
                    DropDownList1.DataSource = cmd.ExecuteReader();
                    DropDownList1.DataTextField = "AlbumName";
                    DropDownList1.DataValueField = "AlbumID";
                    DropDownList1.DataBind();
                    
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
                con = new SqlConnection(constr);
                con.Open();
                string sql = "UPDATE Album SET AlbumName = @first WHERE AlbumID = '" + DropDownList1.Text + "'";
                comm = new SqlCommand(sql, con);
                comm.Parameters.AddWithValue("@first", TextBox1.Text);
                comm.ExecuteNonQuery();
                con.Close();
                Response.Redirect("AlbumView.aspx");
            
            
        }

        private void DeleteEntry(String sqlDelete)
        {
            try
            {
                con = new SqlConnection(constr);
                con.Open();
                comm = new SqlCommand(sqlDelete, con);
                comm.Connection = con;
                comm.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException error)
            {
                Label1.Text = "Please contact page advisor!\n" + error;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(constr);
            con.Open();
            string sql = "UPDATE Photo SET AlbumID = null WHERE AlbumID = '" + DropDownList1.Text + "'";
            comm = new SqlCommand(sql, con);
            comm.ExecuteNonQuery();
            con.Close();

            DeleteEntry("Delete FROM Album WHERE AlbumID = '" +DropDownList1.Text+ "'");
            Response.Redirect("AlbumView.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainMenu.aspx");
        }
    }
}