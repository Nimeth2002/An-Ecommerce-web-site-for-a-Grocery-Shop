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
    public partial class Addtocart : System.Web.UI.Page
    {
        SqlConnection s = new SqlConnection("Data Source=.;Initial Catalog=sampathfoodcity;Integrated Security=True;");
        string orderid = "order11";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

              
                //Adding product to Gridview

                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("pid");
                dt.Columns.Add("pname");
                dt.Columns.Add("pimage");
                dt.Columns.Add("pprice");
                dt.Columns.Add("pquantity");
                dt.Columns.Add("ptotalprice");

                if(Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=sampathfoodcity;Integrated Security=True");

                        SqlDataAdapter da = new SqlDataAdapter("SELECT [ProName], [Price], [Image], [ProID] FROM [product] WHERE ProID=" + Request.QueryString["id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["ProID"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["ProName"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["Image"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * quantity;
                        dr["ptotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                      

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("Addtocart.aspx");

                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=sampathfoodcity;Integrated Security=True");

                        SqlDataAdapter da = new SqlDataAdapter("SELECT [ProName], [Price], [Image], [ProID] FROM [product] WHERE ProID=" + Request.QueryString["id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["ProID"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["ProName"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["Image"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Price"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["ptotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                      

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("Addtocart.aspx");
                    }
                  
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0 )
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();


                    }
                }
            }
            
            }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int totalprice = 0;
            while (i < nrow)
            {
               
               totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["ptotalprice"].ToString());
                i = i + 1;
            }
            return totalprice;

        }
  
        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;

                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }


            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }
            Session["buyitems"] = dt;
            Response.Redirect("Addtocart.aspx");
        }
    


        protected void Button1_Click(object sender, EventArgs e)
        {
            s.Open();
            SqlCommand cmd = new SqlCommand("Select Count(orderid) from Orders", s);
            int a = Convert.ToInt32(cmd.ExecuteScalar());
            s.Close();
            a++;
            Label2.Text = orderid + a.ToString();

            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {

                String updatepass = "insert into Orders(sno,ProID,ProName,Price,Quentity,orderid) values("+dt.Rows[i]["sno"] + " , " + dt.Rows[i]["pid"] + ",'" + dt.Rows[i]["pname"] + "', " + dt.Rows[i]["pprice"] + " , " + dt.Rows[i]["pquantity"] + " , '"+Label2.Text+"' )"; 
                String mycon1 = "Data Source=.;Initial Catalog=sampathfoodcity;Integrated Security=True";
                SqlConnection s = new SqlConnection(mycon1);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;
              
                cmd1.ExecuteNonQuery();
               
                s.Close();
                
            }
            Response.Redirect("~/payment.aspx");
        }
    }
}