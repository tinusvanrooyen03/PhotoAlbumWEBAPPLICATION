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
        public string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ivanj\Desktop\PhotoAlbumWEBAPPLICATION\PhotoAlbumWEBAPPLICATION\App_Data\PhotoSystemV2.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        public int getPrimaryKeyValue(string sql)
        {
            string sqlStatement = sql;
            int primarykey;
            using (conn = new SqlConnection(constr))
            {
                conn.Open();
                comm = new SqlCommand(sqlStatement, conn);
                conn.Close();
                try
                {
                    conn.Open();
                    primarykey = (int)comm.ExecuteScalar();
                    conn.Close();
                    return primarykey;
                }
                catch (SqlException error)
                {
                    Label1.Text = ("Please contact page advisor!\n" + error.Message);
                    return -1;
                }

            }
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
                string sqlUserID = "SELECT UserID FROM Users WHERE Username = '" + txtUsername.Text + "' AND Password = '" + txtPassword.Text + "'";
                int userID = getPrimaryKeyValue(sqlUserID);
                Session["UserID"] = userID.ToString();
                Response.Redirect("MainMenu.aspx");
                
            }
            else
            {
                Label1.Text = "Your username and/or password is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}