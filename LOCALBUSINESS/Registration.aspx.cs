using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LOCALBUSINESS
{
    public partial class Registration : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))

            {
                using (SqlCommand cmd = new SqlCommand("Insert_User"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Name", nametext.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", emailtext.Text.Trim());
                        cmd.Parameters.AddWithValue("@Mobile", mobiletext.Text.Trim());
                        cmd.Parameters.AddWithValue("@City", citytext.Text.Trim());
                        cmd.Parameters.AddWithValue("@Location", locationtext.Text.Trim());
                        cmd.Parameters.AddWithValue("@Address", addresstext.Text.Trim());
                        cmd.Parameters.AddWithValue("@ZipCode", zipcodetext.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", passwordtext.Text.Trim());
                        cmd.Parameters.AddWithValue("@roleid", DropDownList1.SelectedValue.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                       
                    }
                }
                string message = string.Empty;
                switch (userId)
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;
                    case -2:
                        message = "Supplied email address has already been used.";
                        break;
                    default:
                        message = "Registration successful.\\nUser Id: " + userId.ToString();
                        break;
                      
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }
            //Response.Redirect("Login.aspx", true);
        }

       
    }
   
}
