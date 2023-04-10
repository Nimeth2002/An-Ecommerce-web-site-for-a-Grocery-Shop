using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace final
{
    public partial class Admin : System.Web.UI.Page 
    {
        string cs = ConfigurationManager.ConnectionStrings["sampathfoodcity"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }
        void ResetControls()
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
            DropDownList1.ClearSelection();
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string filePath = Server.MapPath("images/");
            string fileName = Path.GetFileName(FileUpload1.FileName);
            string extention = Path.GetExtension(fileName);
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            int size = postedFile.ContentLength;

            if (FileUpload1.HasFile == true)
            {
               
                    
                        string query2 = "select * from product where ProID = @id";
                        SqlCommand cmd2 = new SqlCommand(query2, con);
                        cmd2.Parameters.AddWithValue("@id", TextBox1.Text);
                        con.Open();
                        SqlDataReader dr = cmd2.ExecuteReader();
                        if (dr.HasRows == true)
                        {
                            Response.Write("<script> alert('Already Exists'); </script>");
                        }
                        else
                        {

                            con.Close();

                            FileUpload1.SaveAs(filePath + fileName);
                            string path2 = "images/" + fileName;
                            con.Open();
                            string query = "insert into [product] values(@id,@name,@price,@qty,@category,@image)";
                            SqlCommand cmd = new SqlCommand(query, con);
                            cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                            cmd.Parameters.AddWithValue("@name", TextBox2.Text);
                            cmd.Parameters.AddWithValue("@price", TextBox3.Text);
                            cmd.Parameters.AddWithValue("@qty", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@category", DropDownList1.SelectedItem.Value);
                            cmd.Parameters.AddWithValue("@image", path2);
                            int a = cmd.ExecuteNonQuery();
                            if (a > 0)
                            {
                                Response.Write("<script> alert('Inserted Successfully'); </script>");
                            BindGridView();
                            ResetControls();
                        }
                            else
                            {
                                Response.Write("<script> alert('Failed'); </script>");
                            }
                            con.Close();
                        }
                    }


                

            }
        void BindGridView()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from product";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            Label lblID = (Label)row.FindControl("LabelId");
            Label lblname = (Label)row.FindControl("LabelName");
            Label lblprice = (Label)row.FindControl("LabelPrice");
            Label lblqty = (Label)row.FindControl("Labelqty");
            Label lblcategory = (Label)row.FindControl("Labelcategory");

            TextBox1.Text = lblID.Text;
            TextBox2.Text = lblname.Text;
            TextBox3.Text = lblprice.Text;
            TextBox4.Text = lblqty.Text;
            DropDownList1.Text = lblcategory.Text;

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);



            string query = "update product set ProName = @name , Price = @price , Quentity = @qty , Category = @category where ProID =@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@price", TextBox3.Text);
            cmd.Parameters.AddWithValue("@qty", TextBox4.Text);
            cmd.Parameters.AddWithValue("@category", DropDownList1.SelectedValue.ToString());
      

            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script> alert('Updated Successfully'); </script>");
                BindGridView();
                ResetControls();


            }
            else
            {
                Response.Write("<script> alert('Failed'); </script>");
            }
            con.Close();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            string query = "delete from product where ProID =@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", TextBox1.Text);


            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script> alert('Delete Successfully'); </script>");
                BindGridView();
                ResetControls();


            }
            else
            {
                Response.Write("<script> alert('Failed'); </script>");
            }
            con.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/order.aspx");
        }
        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/orders.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/signin.aspx");
        }
    }
    }


    




