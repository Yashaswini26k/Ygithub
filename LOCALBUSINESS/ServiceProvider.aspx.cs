using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LOCALBUSINESS
{
    public partial class ServiceProvider : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
       
    protected void Page_Load(object sender, EventArgs e)
        {
            showall();
        }
        void showall()
        {

            SqlConnection con = new SqlConnection(cs);
            string query = "select name,email,mobile,city,location,address,zipcode from users where roleid=3";
            SqlDataAdapter cmd = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            cmd.Fill(data);
            GridView2.DataSource = data;
            GridView2.DataBind();
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          



        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            showall();

        }
    }
}