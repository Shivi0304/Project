using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class EditItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String med = (string)Session["med"];
        TextBox1.Text = med;
    }
    protected void up(object sender, EventArgs e)
    {
        String med = (string)Session["med"];
        string shop1 = (string)Session["shop"];
        TextBox1.Text = med;
        String q = TextBox2.Text;
        String p = TextBox3.Text;
        SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");
        con.Open();
        SqlCommand cmd1 = new SqlCommand("alter table " + shop1+"", con);
        cmd1.ExecuteNonQuery();
        SqlCommand cmd = new SqlCommand("UPDATE "+shop1+" SET Quantity=@q1,Price=@p1 where MedicineName=@m1;", con);
   
        cmd.Parameters.AddWithValue("@q1", q);
        cmd.Parameters.AddWithValue("@p1", p);
        cmd.Parameters.AddWithValue("@m1", med);
        cmd.ExecuteNonQuery();
        Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Successfully updated.')", true);
    }
}