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
    public partial class Default : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand comm;
        public DataSet ds;
        public SqlDataAdapter adap;
        public string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\tinus\OneDrive\Desktop\323Project2\PhotoAlbumWEBAPPLICATION\PhotoAlbumWEBAPPLICATION\App_Data\PhotoSystem.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);

            SqlCommand cmd = new SqlCommand("select * from Users where Username=@username and Password=@word", conn);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@word", txtPassword.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Main.aspx");
            }
            else
            {
                Label1.Text = "Your username and password is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;

            }
        }
    }
}