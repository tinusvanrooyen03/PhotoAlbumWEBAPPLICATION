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
    public partial class PhotoAlbumAdd : System.Web.UI.Page
    {
        public string query;
        public string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\PhotoSystemV2.mdf;Integrated Security=True";
        public SqlConnection con;
        public void connection()
        {

            con = new SqlConnection(constr);
            con.Open();


        }
        public void imagebindGrid()
        {
            connection();
            query = "Select * from Photo WHERE UserID = '" + (string)Session["UserID"] + "' ";
            SqlCommand com = new SqlCommand(query, con);
            SqlDataReader dr = com.ExecuteReader();
            Gridview1.DataSource = dr;
            Gridview1.DataBind();
        }

        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
                imagebindGrid();

            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    SqlCommand cmd = new SqlCommand("Select * from Album WHERE UserID = '" + (string)Session["UserID"] + "' ", con);
                    con.Open();
                    DropDownList3.DataSource = cmd.ExecuteReader();
                    DropDownList3.DataTextField = "AlbumName";
                    DropDownList3.DataValueField = "AlbumID";
                    DropDownList3.DataBind();
                }
            }

            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    SqlCommand cmd = new SqlCommand("Select * from Photo WHERE UserID = '" + (string)Session["UserID"] + "' ", con);
                    con.Open();
                    DropDownList2.DataSource = cmd.ExecuteReader();
                    DropDownList2.DataTextField = "PhotoName";
                    DropDownList2.DataValueField = "PhotoID";
                    DropDownList2.DataBind();
                }
            }

            Label1.Visible = false;
        }

        protected void Gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                connection();
                query = "UPDATE Photo SET AlbumID = @id WHERE PhotoID = '" + DropDownList2.Text + "'";
                SqlCommand comm = new SqlCommand(query, con);

                comm.Parameters.AddWithValue("@id", DropDownList3.Text);
                
                comm.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Photo Added Succesfully";

            }
            catch
            {
                Label1.Text = "Please choose a user with corisponding ID to update";
                Label1.Visible = true;
            }

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainMenu.aspx");
        }
    }
}


    