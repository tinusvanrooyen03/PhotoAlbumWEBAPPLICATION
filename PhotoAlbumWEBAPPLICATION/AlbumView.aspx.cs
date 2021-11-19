using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace PhotoAlbumWEBAPPLICATION
{
    public partial class AlbumView : System.Web.UI.Page
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
            query = "Select * from Photo WHERE AlbumID = '" +DropDownList1.Text + "' ";
            SqlCommand com = new SqlCommand(query, con);
            SqlDataReader dr = com.ExecuteReader();
            Gridview1.DataSource = dr;
            Gridview1.DataBind();
        }

        
        protected void Page_Load(object sender, EventArgs e)
        {
        
            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    SqlCommand cmd = new SqlCommand("Select * from Album WHERE UserID = '" + (string)Session["UserID"] + "' ", con);
                    con.Open();
                    DropDownList1.DataSource = cmd.ExecuteReader();
                    DropDownList1.DataTextField = "AlbumName";
                    DropDownList1.DataValueField = "AlbumID";
                    DropDownList1.DataBind();
                }
            }
                
        }

        protected void Gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            imagebindGrid();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}