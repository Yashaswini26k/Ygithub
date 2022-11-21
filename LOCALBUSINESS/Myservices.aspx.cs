using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LOCALBUSINESS
{
    public partial class Myservices : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            foreach (GridViewRow row in GridView1.Rows)
            {
                bool select1 = Convert.ToBoolean(GridView1.SelectedIndex);
                if (select1)
                {
                    {
                        SqlConnection con = new SqlConnection(cs);



                        string query = "update serviceprovider set rating = comment =@comment where serviceid = @sid";
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.Parameters.AddWithValue("@sid", row.Cells[1].Text);
                        /*                        cmd.Parameters.AddWithValue("@rating", DropDownList1.SelectedValue);*/
                        cmd.Parameters.AddWithValue("@comment", TextBox1.Text);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }









            }

            protected void Button1_Click(object sender, EventArgs e)
            {
                foreach (GridViewRow row in GridView1.Rows)
                {
                    bool select1 = Convert.ToBoolean(GridView1.SelectedIndex);
                    if (select1)
                    {
                        {
                            SqlConnection con = new SqlConnection(cs);



                            string query = "update serviceprovider set rating = @rating,comment =@comment where serviceid = @sid";
                            SqlCommand cmd = new SqlCommand(query, con);
                            cmd.Parameters.AddWithValue("@sid", row.Cells[1].Text);
                            /*                        cmd.Parameters.AddWithValue("@rating", DropDownList1.SelectedValue);*/
                            cmd.Parameters.AddWithValue("@comment", TextBox1.Text);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }

                }
            }
             }      }