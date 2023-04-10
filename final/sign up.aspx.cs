using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace final
{
    public partial class sign_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (isformvalied())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sampathfoodcity"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into Users(Name,Email,Password,confirmpassword,usertype) Values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "', 'User')", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Registration Successfully'); </script>");
                    clr();
                    con.Close();

                }
             
            }
            else
            {
                Response.Write("<script> alert('Registration Failed'); </script>");

            }
        }
        private bool isformvalied()
        {
            if (TextBox1.Text == "")
            {
                Response.Write("<script> alert('Name is Required'); </script>");
                return false;
            }
            else if (TextBox2.Text == "")
            {
                Response.Write("<script> alert('Email is Required'); </script>");
                return false;
            }
            else if (TextBox3.Text == "")
            {
                Response.Write("<script> alert('password is Required'); </script>");

                return false;
            }

            else if (TextBox3.Text != TextBox4.Text)
            {
                Response.Write("<script> alert('Confirm Password is not matching'); </script>");
                return false;
            }
            return true;
        }
        private void clr()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/signin.aspx");
        }
    }
}