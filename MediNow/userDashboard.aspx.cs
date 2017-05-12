using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userDashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String user = (string)Session["UserID"];
        if (!IsPostBack)
        {
            
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ID = "SqlDataSource1";
            this.Page.Controls.Add(SqlDataSource1);
            SqlDataSource1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ShivangiConnectionString"].ConnectionString;
            SqlDataSource1.SelectCommand = "select Order_ID,User_ID,Item,Quantity,Price_Per_Quantity,TotalPrice,OrderStatus,ShopName from p1 where User_ID='" + user + "';";
            gv.DataSource = SqlDataSource1;
            gv.DataBind();
        }
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
        Response.Redirect("EnterSymptoms.aspx");
    }
    protected void cancel(object sender, EventArgs e)
    {
        Response.Redirect("CancelOrder.aspx");
    }
    protected void h(object sender, EventArgs e)
    {
        Response.Redirect("MediNow.aspx");
    }
    protected void log(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}