using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace final
{

    public partial class payment : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=sampathfoodcity;Integrated Security=True;");
        string orderid = "order11";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateAutoID();
            }
           
        }
        private void GenerateAutoID()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Count(orderid) from payment", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            Label2.Text = orderid + i.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into payment values('" + Label2.Text + "', '" +TextBox4.Text+"','" +TextBox1.Text+"', '" +TextBox2.Text+"', '"+TextBox3.Text+"')" , con);
            cmd.ExecuteNonQuery();
            con.Close();
            GenerateAutoID();
            Response.Redirect("~/PlacedSuccessfully.aspx");
        }
        
    }

   
}