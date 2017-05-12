using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class CancelOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void chat(object sender, EventArgs e)
    {
        Response.Redirect("Chat.aspx");
    }
    protected void tr(object sender, EventArgs e)
    {
        Response.Redirect("TrackOrder.aspx");
    }
    protected void dash(object sender, EventArgs e)
    {
        Response.Redirect("userDashboard.aspx");
    }
    protected void ev(object sender, EventArgs e)
    {
        Response.Redirect("EnterSymptoms.aspx");
    }
    protected void h(object sender, EventArgs e)
    {
        Response.Redirect("MediNow.aspx");
    }
    protected void log(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }

    protected void cancel(object sender, EventArgs e)
    {
        String s1 = TextBox2.Text;
        String s2 = TextBox1.Text;

        SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");
        con.Open();

        if (string.IsNullOrEmpty(s1) || string.IsNullOrEmpty(s2))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Please fill all the fields.')", true);
        }
        else
        {
            string query1 = "select DISTINCT OrderStatus from p1 where Order_ID='" + s2 + "' AND User_ID='" + s1 + "';";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();

            while (reader.Read())
            {
                s1 = reader["OrderStatus"].ToString();
            }
            reader.Close();
            if (s1.Equals("In process", StringComparison.Ordinal))
            {

                SqlCommand cmd = new SqlCommand("Delete from p1 where Order_ID='" + s2 + "'", con);
                SqlCommand cmd3 = new SqlCommand("Delete from Orders where Order_ID='" + s2 + "'", con);
                SqlCommand cmd2 = new SqlCommand("Delete from ShopKeeperOrder where OrderID='" + s2 + "'", con);
                cmd.ExecuteNonQuery();
           
                cmd3.ExecuteNonQuery();
              
                cmd2.ExecuteNonQuery();

                Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Order Cancelled.');window.location='MediNow.aspx';", true);

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Sorry! Since the order has been dispatched,it can't be cancelled.');window.location='MediNow.aspx';", true);
            }
        }
    }
}