using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Dashboard : System.Web.UI.Page
{
    String o;
    protected void Page_Load(object sender, EventArgs e)
    {
        String user = (string)Session["UserID"];
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");
            con.Open();
            string query1 = "select SID from ShopList where ShopkeeperID=" + user + ";";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                o = reader["SID"].ToString();
               
            }
            reader.Close();
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ID = "SqlDataSource1";
            this.Page.Controls.Add(SqlDataSource1);
            SqlDataSource1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ShivangiConnectionString"].ConnectionString;
            SqlDataSource1.SelectCommand = "select SID,OrderID,Item,Quantity,Price_Per_Quantity,TotalPrice,Address,PhoneNumber from ShopkeeperOrder where SID='" + o + "';";
            gv.DataSource = SqlDataSource1;
            gv.DataBind();
        }
    }
    protected void h(object sender, EventArgs e)
    {
        Response.Redirect("ShopkeeperDashboard.aspx");
    }
    protected void log(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}