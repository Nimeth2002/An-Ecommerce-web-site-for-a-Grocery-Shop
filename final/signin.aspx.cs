using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace final
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sampathfoodcity"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Users where Email=@email and Password=@password", con);
                cmd.Parameters.AddWithValue("@email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@password", TextBox3.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    string Utype;
                    Utype = dt.Rows[0][4].ToString().Trim();

                    if (Utype == "User")
                    {
                        Session["Email"] = TextBox2.Text;
                        Response.Redirect("~/HomePage.aspx");
                    }
                    if (Utype == "Admin")
                    {
                        Session["Email"] = TextBox2.Text;
                        Response.Redirect("~/AdminHome.aspx");
                    }
                }
                else
                {
                    lblError.Text = "Invalied Email and password";
                }

                


                clr();
                con.Close();

            }


        }
        private void clr()
        {
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox2.Focus();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/sign up.aspx");
        }
    }
}