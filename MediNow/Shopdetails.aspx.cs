using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Shopdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void update(object sender, EventArgs e)
    {
        String s1 = TextBox2.Text;
        String s2 = TextBox3.Text;
        if (string.IsNullOrEmpty(s1) || string.IsNullOrEmpty(s2))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Please fill all the fields.')", true);
        }
        else
        {
            SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");
            con.Open();
            String s6 = (string)Session["Shopkeeperid"];
            string query = "insert into ShopList(Name,Pincode,ShopkeeperID)values('" + s1 + "','" + s2 + "','"+s6+"');";
            SqlDataAdapter da1 = new SqlDataAdapter(query, con);

            da1.SelectCommand.ExecuteNonQuery();

            string query1 = "select SID from ShopList where Name='" + s1 + "';";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                s1 = reader["SID"].ToString();
            }
            reader.Close();

            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Your Shop ID is " + s1 + "');window.location='home.aspx';", true);

        }
    }

}