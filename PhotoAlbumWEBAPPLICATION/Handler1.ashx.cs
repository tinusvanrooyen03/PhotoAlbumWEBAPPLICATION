using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace PhotoAlbumWEBAPPLICATION
{
    /// <summary>
    /// Summary description for Handler1
    /// this application is created by vithal wadje for C# corner
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]

    public class Handler1 : IHttpHandler
    {
        //createting the object of Default.aspx class page to 
        //call connection and use strings variable
        Main cls = new Main();

        public void ProcessRequest(HttpContext context)
        {
            //storing the querystring value that comes from Defaul.aspx page

            string displayimgid = context.Request.QueryString["id_Image"].ToString();
            cls.connection();
            //retriving the images on the basis of id of uploaded 
            //images,by using the querysting valaues which comes from Defaut.aspx page
            cls.query = "select Photo from Photo where PhotoID=" + displayimgid;
            SqlCommand com = new SqlCommand(cls.query, cls.con);
            SqlDataReader dr = com.ExecuteReader();
            dr.Read();
            context.Response.BinaryWrite((Byte[])dr[0]);
            context.Response.End();

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}