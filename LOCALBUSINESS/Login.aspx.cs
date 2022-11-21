using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LOCALBUSINESS
{
    public partial class Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

       
        protected void Button2_Click(object sender, EventArgs e)
        {
            /*  if (AuthenticateUser(nametext.Text, passwordtext.Text))
              // if(FormsAuthentication.Authenticate(utextbox.Text,ptextbox.Text))
              {
                  FormsAuthentication.RedirectFromLoginPage(nametext.Text, false);
              }
              else
              {
                  Label1.Text = "Invalid User Name and/or password";
              }*/
            Response.Redirect("CustomerLogin.aspx");
        }


       /* private bool AuthenticateUser(string username, string password)
        {
           *//* // ConfigurationManager class is in System.Configuration namespace
            string CS = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
            // SqlConnection is in System.Data.SqlClient namespace
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("AuthenticateUser", con);
                cmd.CommandType = CommandType.StoredProcedure;



                // FormsAuthentication is in System.Web.Security
                string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");
                // SqlParameter is in System.Data namespace
                SqlParameter paramUsername = new SqlParameter("@Username", username);
                SqlParameter paramPassword = new SqlParameter("@Password", EncryptedPassword);



                cmd.Parameters.Add(paramUsername);
                cmd.Parameters.Add(paramPassword);



                con.Open();
                int ReturnCode = (int)cmd.ExecuteScalar();
                return ReturnCode == 1;
            }


*//*
            

            
        }*/



    }
}
  








    




    





 

      
    

    