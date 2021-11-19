using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;

namespace PhotoAlbumWEBAPPLICATION
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\PhotoSystemV2.mdf;Integrated Security=True";

        //Declaring variables for SQL
        private bool closeApp = false;
        public SqlConnection conn;
        public SqlCommand cmd;
        public SqlDataAdapter adap;
        public DataSet ds;
        //public Register()
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            lblErr.Visible = false;
            string regPass1, regPass2;
            regPass1 = txtPass1.Text;
            regPass2 = txtPass2.Text;
            int smallLetterCount = 0, capLetterCount = 0;
            bool isSpecialChar = false, passwordCheck = false, isDigitPresent = false, isnewUsername = true;

            if (!(regPass1 == regPass2))
            {
               lblErr.Text = "Passwords do not match. Please enter again";
                lblErr.Visible = true;
                passwordCheck = false;
                txtPass1.Focus();
                txtPass2.Text = "";
            }
            else
            {
                //Checks if length is correct
                if (regPass1.Length >= 8)
                {
                    //Checks if password contains capital and small letters
                    for (int i = 0; i < regPass1.Length; i++)
                    {
                        if (regPass1[i] >= 'a' && regPass2[i] <= 'z')
                        {
                            smallLetterCount++;
                        }
                        if (regPass1[i] >= 'A' && regPass2[i] <= 'Z')
                        {
                            capLetterCount++;
                        }
                    }
                    if (smallLetterCount <= 0)
                    {
                       lblErr.Text = "Your password must contain at least one lowercase letter";
                        lblErr.Visible = true;
                        txtPass1.Focus();
                        txtPass2.Text = "";

                    }
                    else
                    {
                        if (capLetterCount <= 0)
                        {
                           lblErr.Text = "Your password must contain at least one uppercase letter";
                            lblErr.Visible = true;
                            txtPass1.Focus();
                            txtPass2.Text = "";
                        }
                        else
                        {
                            //Check if password contains numbers
                            isDigitPresent = regPass1.Any(c => char.IsDigit(c));
                            if (isDigitPresent)
                            {
                                //check is password contains special charecters 
                                isSpecialChar = regPass1.Any(sChar => !char.IsLetterOrDigit(sChar));
                                if (isSpecialChar)
                                {
                                    passwordCheck = true;
                                }
                                else
                                {
                                   lblErr.Text = "The password needs to contain a special charackter.";
                                    lblErr.Visible = true;
                                    txtPass1.Focus();
                                    txtPass2.Text = "";
                                }
                            }
                            else
                            {
                               lblErr.Text = "The password needs to contain a digit.";
                                lblErr.Visible = true;
                                txtPass1.Focus();
                                txtPass2.Text = "";
                            }
                        }
                    }
                }
                else
                {
                   lblErr.Text = "You need a password of 8 digits";
                    lblErr.Visible = true;
                }
            }
            //if the password is correct
            if (passwordCheck)
            {
                //Check if name, surname and username is filled in
                if (txtFirstName.Text == "")
                {
                   lblErr.Text = "Please enter your name.";
                    lblErr.Visible = true;
                }
                else if (txtLastName.Text == "")
                {
                   lblErr.Text = "Please enter your surname.";
                    lblErr.Visible = true;
                }
                else if (txtUsername.Text == "")
                {
                   lblErr.Text = "Please enter your username.";
                    lblErr.Visible = true;
                }
                else
                {
                    //Checks if the username already exists
                    try
                    {
                        string select_All = "SELECT * FROM UserLoginTable";
                        try
                        {
                            conn = new SqlConnection(constr);
                            conn.Open();
                            cmd = new SqlCommand(select_All, conn);
                            ds = new DataSet();
                            SqlDataReader dataReader = cmd.ExecuteReader();

                            while (dataReader.Read())
                            {
                                if (txtUsername.Text == dataReader.GetValue(4).ToString())
                                {
                                    isnewUsername = false;
                                }
                            }
                            conn.Close();
                        }
                        catch (SqlException err)
                        {
                           lblErr.Text = err.Message;
                            lblErr.Visible = true;
                        }

                        // if the username does not exists, add to database
                        if (isnewUsername)
                        {
                            string pass = txtPass1.Text;

                            string insert_NewUser = "INSERT INTO Users VALUES(@Firstname,@Lastname,@Username,@Password)";
                            conn = new SqlConnection(constr);
                            conn.Open();
                            cmd = new SqlCommand(insert_NewUser, conn);
                            cmd.Parameters.AddWithValue("@Firstname", txtFirstName.Text);
                            cmd.Parameters.AddWithValue("@Lastname", txtLastName.Text);
                            cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                            cmd.Parameters.AddWithValue("@Password", txtPass1.Text);
                            cmd.ExecuteNonQuery();
                           lblErr.Text = "You have been added as a new user of the Photo Album Website app";
                            lblErr.Visible = true;
                            Response.Redirect("Default.aspx");
                           
                        }
                        else
                        {
                           lblErr.Text = "The username already exists, please chose another one.";
                            lblErr.Visible = true;
                        }
                        conn.Close();
                    }

                    catch (Exception err)
                    {
                       lblErr.Text = err.Message;
                        lblErr.Visible = true;
                    }
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}