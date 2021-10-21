using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace PhotoAlbumWEBAPPLICATION
{
    public partial class Main : System.Web.UI.Page
    {
        public string query;
        public string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\tinus\OneDrive\Desktop\323Project2\PhotoAlbumWEBAPPLICATION\PhotoAlbumWEBAPPLICATION\App_Data\PhotoSystem.mdf;Integrated Security=True";
        public SqlConnection con;
        public void connection()
        {

            con = new SqlConnection(constr);
            con.Open();


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            lblEvent.Visible = false;
            if (!IsPostBack)
                imagebindGrid();
        }
        private void Imageupload()
        {
            if (FileUpload1.HasFile)
            {
                int imagefilelenth = FileUpload1.PostedFile.ContentLength;
                byte[] imgarray = new byte[imagefilelenth];
                HttpPostedFile image = FileUpload1.PostedFile;
                image.InputStream.Read(imgarray, 0, imagefilelenth);
                connection();
                query = "Insert into Photo (Photo, CapturedDate, CapturedBy, GeoLocation, Tags, UserID) values (@Photo, @CapturedDate, @CapturedBy, @GeoLocation, @Tags, @User)";
                SqlCommand com = new SqlCommand(query, con);
                com.Parameters.AddWithValue("@Photo", SqlDbType.Image).Value = imgarray;
                com.Parameters.AddWithValue("@CapturedDate", SqlDbType.VarChar).Value = TextBox1.Text;
                com.Parameters.AddWithValue("@CapturedBy", SqlDbType.VarChar).Value = TextBox2.Text;
                com.Parameters.AddWithValue("@GeoLocation", SqlDbType.VarChar).Value = TextBox3.Text;
                com.Parameters.AddWithValue("@Tags", SqlDbType.VarChar).Value = TextBox4.Text;
                com.Parameters.AddWithValue("@User", SqlDbType.Int).Value = TextBox5.Text;
                com.ExecuteNonQuery();
                lblEvent.Visible = true;
                lblEvent.Text = "Image Is Uploaded successfully";
                imagebindGrid();
            }
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
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            Imageupload();
        }

        protected void Gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}