using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Delete : System.Web.UI.Page
{
    String o, p;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string shop = (string)Session["UserID"];
            SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");
            con.Open();
            string query1 = "select Name,Pincode from ShopList where ShopkeeperID=" + shop + ";";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                o = reader["Name"].ToString();
                p = reader["Pincode"].ToString();
            }
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ID = "SqlDataSource1";
            this.Page.Controls.Add(SqlDataSource1);
            SqlDataSource1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ShivangiConnectionString"].ConnectionString;
            SqlDataSource1.SelectCommand = "SELECT MedicineName,Quantity,Price,ShopName,Pincode from " + o + ";";
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }
    protected void del(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");
        con.Open();
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            if (((GridView1.Rows[i].Cells[0].FindControl("cbSelect") as CheckBox).Checked))
            {
                SqlCommand cmd = new SqlCommand("Delete from " + GridView1.Rows[i].Cells[4].Text + " where MedicineName='" + GridView1.Rows[i].Cells[1].Text + "'", con);
                cmd.ExecuteNonQuery();


            }
        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Updated Database.');window.location='ShopkeeperDashBoard.aspx';", true);


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