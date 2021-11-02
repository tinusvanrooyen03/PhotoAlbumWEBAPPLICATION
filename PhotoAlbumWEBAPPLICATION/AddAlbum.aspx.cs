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
    public partial class AssAlbum : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand comm;
        public DataSet ds;
        public SqlDataAdapter adap;
        public string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\tinus\OneDrive\Desktop\323Project2\PhotoAlbumWEBAPPLICATION\PhotoAlbumWEBAPPLICATION\App_Data\PhotoSystemV2.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(constr);
                conn.Open();
                string sql = "INSERT INTO ALBUM(AlbumName, UserID) VALUES(@name, @id)";
                comm = new SqlCommand(sql, conn);

                comm.Parameters.AddWithValue("@name", TextBox1.Text);
                comm.Parameters.AddWithValue("@id", Session["UserID"]);
                comm.ExecuteNonQuery();
                conn.Close();
                Label1.Text = "User Added";
                
            }
            catch
            {
                Label1.Text = "Please enter valid ID";
            }
        }
    }
}