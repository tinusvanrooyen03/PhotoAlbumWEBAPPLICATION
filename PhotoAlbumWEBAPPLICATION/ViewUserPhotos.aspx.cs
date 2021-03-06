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
    public partial class ViewUserPhotos : System.Web.UI.Page
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
            query = "Select PhotoID, Photo, PhotoName, CapturedDate, GeoLocation, Tags, CapturedBy from Photo WHERE UserID = '" + (string)Session["UserID"] +"' ";
            SqlCommand com = new SqlCommand(query, con);
            SqlDataReader dr = com.ExecuteReader();
            Gridview1.DataSource = dr;
            Gridview1.DataBind();
        }
        public void imagebindGridAlbum()
        {
            
        }

        public void albumbindGrid()
        {
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
                imagebindGrid();

            if (!IsPostBack)
                albumbindGrid();
        }

        protected void Gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            imagebindGridAlbum();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("MainMenu.aspx");
        }
    }
}