using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void signup(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx");
    }
    public void signin(object sender, EventArgs e)
    {
        String s1 = l_email.Text;
        String s2 = l_Password.Text;
        String s3 = RadioButtonList1.SelectedValue;
        SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");
        try
        {
            con.Open();

            if (string.IsNullOrEmpty(s1) || string.IsNullOrEmpty(s2))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Please fill all the fields.')", true);
            }
            else if (string.IsNullOrEmpty(s3))
            {

                Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Please select one option from the given set of options.')", true);
            }
            else
            {
                SqlCommand cmd = new SqlCommand("select * from UserReg where USER_ID='" + s1 + "' AND Password='" + s2 + "' AND Type='" + s3 + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
              

                if (ds.Tables[0].Rows.Count == 1)
                {
                    Session["UserID"] = s1;
                    if (s3.Equals("Shopkeeper", StringComparison.Ordinal))
                    {
                       
                        
                        Response.Redirect("ShopkeeperDashboard.aspx");
                    }
                    else if (s3.Equals("Customer", StringComparison.Ordinal))
                    {
                       
                        
                        Response.Redirect("Medinow.aspx");
                    }

                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Authentication Error.');window.location='home.aspx';", true);
                }
            }
        }
        catch (Exception ex)
        {
            con.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Authentication Error.\r\n " + ex + "');window.location='home.aspx';", true);
        }
    }
}