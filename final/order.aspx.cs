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
    public partial class order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button9_Click(object sender, EventArgs e)
        {
          
        }

        protected void Button9_Click1(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource4;
                DataList1.DataBind();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/orders.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/signin.aspx");
        }
    }
}