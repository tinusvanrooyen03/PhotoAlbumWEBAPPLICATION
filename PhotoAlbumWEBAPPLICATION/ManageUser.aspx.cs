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
    public partial class ManageUser : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand comm;
        public DataSet ds;
        public SqlDataAdapter adap;
        public string sqlStatement;
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
                    lblUID.Text = "Please contact page advisor!\n" + error.Message;

                    return "";
                }
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblUID.Visible = false;
                txtFirstName.Text = getStringValue("Select Firstname from Users Where UserID = '" + Session["UserID"] + "'");
                txtLastName.Text = getStringValue("Select Lastname from Users Where UserID = '" + Session["UserID"] + "'");
                txtUserID.Text = getStringValue("Select Username from Users Where UserID = '" + Session["UserID"] + "'");
                txtPassword.Text = getStringValue("Select Password from Users Where UserID = '" + Session["UserID"] + "'");
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(constr);
                conn.Open();
                string sql = "UPDATE Users SET Firstname = @first, Lastname = @last, Username = @name, Password = @word WHERE UserID = '" + Session["UserID"] + "'";
                comm = new SqlCommand(sql, conn);

                comm.Parameters.AddWithValue("@first", txtFirstName.Text);
                comm.Parameters.AddWithValue("@last", txtLastName.Text);
                comm.Parameters.AddWithValue("@name", txtUserID.Text);
                comm.Parameters.AddWithValue("@word", txtPassword.Text);
                comm.ExecuteNonQuery();
                conn.Close();
                lblUID.Text = "Updated data";
                lblUID.Visible = true;
            }
            catch
            {
                lblUID.Text = "ID not in context";
                lblUID.Visible = true;
            }


        }
    }
}