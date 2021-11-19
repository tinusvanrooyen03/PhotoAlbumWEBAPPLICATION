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
    public partial class ManageUser : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand comm;
        public DataSet ds;
        public SqlDataAdapter adap;
        public string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\PhotoSystemV2.mdf;Integrated Security=True";

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
                    Label1.Text = "Please contact page advisor!\n" + error.Message;

                    return "";
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Text = getStringValue("Select Firstname from Users Where UserID = '" + Session["UserID"] + "'");
                TextBox2.Text = getStringValue("Select Lastname from Users Where UserID = '" + Session["UserID"] + "'");
                TextBox3.Text = getStringValue("Select Username from Users Where UserID = '" + Session["UserID"] + "'");
                TextBox4.Text = getStringValue("Select Password from Users Where UserID = '" + Session["UserID"] + "'");
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open();
            string sql = "UPDATE Users SET Firstname = @first, Lastname = @last, Username = @name, Password = @word WHERE UserID = '" + Session["UserID"] + "'";
            comm = new SqlCommand(sql, conn);

            comm.Parameters.AddWithValue("@first", TextBox1.Text);
            comm.Parameters.AddWithValue("@last", TextBox2.Text);
            comm.Parameters.AddWithValue("@name", TextBox3.Text);
            comm.Parameters.AddWithValue("@word", TextBox4.Text);
            comm.ExecuteNonQuery();
            conn.Close();
            
        }


        private void DeleteEntry(String sqlDelete)
        {
            try
            {
                conn = new SqlConnection(constr);
                conn.Open();
                comm = new SqlCommand(sqlDelete, conn);
                comm.Connection = conn;
                comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException error)
            {
                Label1.Text = "Please contact page advisor!\n" + error;
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            DeleteEntry("Delete FROM Photo WHERE UserID = '" + Session["UserID"] + "'");
            DeleteEntry("Delete FROM Album WHERE UserID = '" + Session["UserID"] + "'");
            DeleteEntry("Delete FROM Users WHERE UserID = '" + Session["UserID"] + "'");
            Response.Redirect("Default.aspx");
        }
    }
}