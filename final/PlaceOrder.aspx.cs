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
    public partial class PlaceOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //Adding product to Gridview

                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("productid");
                dt.Columns.Add("productname");
                dt.Columns.Add("productimage");
                dt.Columns.Add("price");
                dt.Columns.Add("quantity");
                dt.Columns.Add("totalprice");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=sampathfoodcity;Integrated Security=True");

                        SqlDataAdapter da = new SqlDataAdapter("SELECT [ProName], [Price], [Image], [ProID] FROM [product] WHERE ProID=" + Request.QueryString["id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["ProID"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["ProName"].ToString();
                        dr["productimage"] = ds.Tables[0].Rows[0]["Image"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * quantity;
                        dr["totalprice"] = TotalPrice;

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
                        dr["productid"] = ds.Tables[0].Rows[0]["ProID"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["ProName"].ToString();
                        dr["productimage"] = ds.Tables[0].Rows[0]["Image"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Price"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["totalprice"] = TotalPrice;

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
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();


                    }
                }
            }
            Label2.Text = DateTime.Now.ToShortDateString();
          
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

                totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
                i = i + 1;
            }
            return totalprice;
        }
       
   

        

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}