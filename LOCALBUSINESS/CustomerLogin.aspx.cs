using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.ComponentModel;
using System.Drawing;
using System.ComponentModel.DataAnnotations;
using System.Security.Policy;
using System.Collections.ObjectModel;



namespace LOCALBUSINESS
{
    public partial class MyServices : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        public object MessageBox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showall();
            }
            else
            {
                searchby();
            }


        }
        void showall()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select users.name as UserName,users.Id as userid ,email,mobile,city,location,address,zipcode, services.name as ServiceName,services.Id as serviceid,description ,serviceprovider.Id as spid,serviceprovider.status from users cross join services,serviceprovider  where users.roleid = 2";
            SqlDataAdapter cmd = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            cmd.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }
        void searchby()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select users.name as UserName,users.Id as userid ,email,mobile,city,location,address,zipcode, services.name as ServiceName,services.Id as serviceid,description ,serviceprovider.Id as spid,serviceprovider.status from users cross join services,serviceprovider  where users.roleid = 2 and services.name=@nam";
            SqlDataAdapter cmd = new SqlDataAdapter(query, con);
            cmd.SelectCommand.Parameters.AddWithValue("@nam", searchtext.Text);
            DataTable data = new DataTable();
            cmd.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowIndex == GridView1.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("gray");
                    row.ToolTip = String.Empty;
                    String sid;
                    sid = row.Cells[7].Text;
                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                    row.ToolTip = "Click to slect this row";
                }
            }

            




        }



        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                bool select1 = Convert.ToBoolean(GridView1.SelectedIndex);
                if (select1)
                {
                    DateTime d = DateTime.UtcNow;
                    SqlConnection con = new SqlConnection(cs);
                    /*string kkpp = $"select Id from serviceprovider where userid=(select Id from users where email={row.Cells[3].Text}) and serviceid=@sid";




                    SqlCommand md = new SqlCommand(kkpp, con);
                    md.Parameters.AddWithValue("@sid", row.Cells[10].Text);
                    con.Open();
                    int kk=md.ExecuteNonQuery();
                    con.Close();*/




                    SqlCommand cmd = new SqlCommand("Insert into servicebooking(date,serviceid,spid,userid,description,status,providerdescription)Values(@date,@serviceid,@spid,@userid,@description,@status,@providerdescription)", con);
                    cmd.Parameters.AddWithValue("@date", d);
                    cmd.Parameters.AddWithValue("@serviceid", row.Cells[9].Text);
                    cmd.Parameters.AddWithValue("@spid", row.Cells[11].Text);
                    cmd.Parameters.AddWithValue("@userid", row.Cells[1].Text);
                    cmd.Parameters.AddWithValue("@description", searchtext.Text);
                    cmd.Parameters.AddWithValue("@status", row.Cells[9].Text);



                    cmd.Parameters.AddWithValue("@providerdescription", row.Cells[10].Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                   

                }
            
                break;
            }
           





        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {



        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "click to select serviceprovider.";
            }








        }
    }










    }










   
    
