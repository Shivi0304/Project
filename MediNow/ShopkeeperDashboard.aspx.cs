using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class ShopkeeperDashboard : System.Web.UI.Page
{
    int flag = 0;
    String o,p;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void log(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
       
    
    protected void add1(object sender, EventArgs e)
    {
        String s1 = medicine_name.Text;
        String s2 = quantity.Text;
        String s3 = price.Text;
        string shop=(string)Session["UserID"];
        SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");
        con.Open();

        if (string.IsNullOrEmpty(s1) || string.IsNullOrEmpty(s2) || string.IsNullOrEmpty(s3))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Please fill all the fields.')", true);
        }
        else
        {
            string query1 = "select Name,Pincode from ShopList where ShopkeeperID=" + shop + ";";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                o = reader["Name"].ToString();
                p = reader["Pincode"].ToString();
            }
            reader.Close();
            string q1 = "insert into "+o+" (MedicineName,Quantity,Price,ShopName,Pincode)values('"+s1+"',"+s2+","+s3+",'"+o+"','"+p+"');";
            SqlDataAdapter da1 = new SqlDataAdapter(q1, con);

            da1.SelectCommand.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Database Updated!');window.location='ShopkeeperDashboard.aspx';", true);

        }

    }
    protected void cancel1(object sender, EventArgs e)
    {
        Response.Redirect("ShopkeeperDashboard.aspx");

    }
    public void additem(object sender, EventArgs e)
    {
        if (flag == 0)
        {
            flag = 1;
            medicine_name.Visible = true;
            quantity.Visible = true;
            price.Visible = true;
            add.Visible = true;
            cancel.Visible = true;
        }
        else
        {
            flag = 0;
            medicine_name.Visible = false;
            quantity.Visible = false;
            price.Visible = false;
            add.Visible = false;
            cancel.Visible = false;
        }
    }
    public void delete(object sender, EventArgs e)
    {
        medicine_name.Visible = false;
        quantity.Visible = false;
        price.Visible = false;
        add.Visible = false;
        cancel.Visible = false;
        Response.Redirect("Delete.aspx");
    }
    public void update(object sender, EventArgs e)
    {
        medicine_name.Visible = false;
        quantity.Visible = false;
        price.Visible = false;
        add.Visible = false;
        cancel.Visible = false;
        Response.Redirect("Update.aspx");
    }
    public void hide(object sender, EventArgs e)
    {
        medicine_name.Visible = false;
        quantity.Visible = false;
        price.Visible = false;
        add.Visible = false;
        cancel.Visible = false;
    }
    public void viewOrder(object sender, EventArgs e)
    {
        medicine_name.Visible = false;
        quantity.Visible = false;
        price.Visible = false;
        add.Visible = false;
        cancel.Visible = false;
        Response.Redirect("Dashboard.aspx");
    }
}