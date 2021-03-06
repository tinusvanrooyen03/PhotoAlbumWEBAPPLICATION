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
    public partial class ManagePhotos : System.Web.UI.Page
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
                    SqlCommand cmd = new SqlCommand("Select * from Photo WHERE UserID = '" + (string)Session["UserID"] + "' ", con);
                    con.Open();
                    DropDownList1.DataSource = cmd.ExecuteReader();
                    DropDownList1.DataTextField = "PhotoName";
                    DropDownList1.DataValueField = "PhotoID";
                    DropDownList1.DataBind();

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(constr);
            con.Open();
            string sql = "UPDATE Photo SET PhotoName = @name, CapturedDate = @date, GeoLocation = @location, Tags = @tags, CapturedBy = @capby WHERE PhotoID = '" + DropDownList1.Text + "'";
            comm = new SqlCommand(sql, con);
            comm.Parameters.AddWithValue("@name", TextBox1.Text);
            comm.Parameters.AddWithValue("@date", TextBox2.Text);
            comm.Parameters.AddWithValue("@location", TextBox3.Text);
            comm.Parameters.AddWithValue("@tags", TextBox4.Text);
            comm.Parameters.AddWithValue("@capby", TextBox5.Text);
            comm.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ViewUserPhotos.aspx");
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

            DeleteEntry("Delete FROM Photo WHERE PhotoID = '" + DropDownList1.Text + "'");
            Response.Redirect("ViewUserPhotos.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainMenu.aspx");
        }
    }
}