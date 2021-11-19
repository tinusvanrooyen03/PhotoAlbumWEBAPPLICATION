using System;
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
        public string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\PhotoSystemV2.mdf;Integrated Security=True";
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
            Label3.Text = "Hi " + getStringValue("Select Firstname from Users Where UserID = '" + Session["UserID"] + "'");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddAlbum.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("PhotoAlbumAdd.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("AlbumView.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageUser.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageAlbums.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagePhotos.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewUserPhotos.aspx");
        }
    }
}