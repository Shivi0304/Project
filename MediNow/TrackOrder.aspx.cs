﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
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
        Response.Redirect("EnterSymptoms.aspx");
    }
    protected void dash(object sender, EventArgs e)
    {
        Response.Redirect("userDashboard.aspx");
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
    protected void track(object sender, EventArgs e)
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
            SqlCommand cmd = new SqlCommand("select * from p1 where Order_ID='" + s2 + "' AND User_ID='"+s1+"';", con);
            TextBox3.Visible = true;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                string query1 = "select DISTINCT OrderStatus from p1 where Order_ID='" + s2 + "';";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                SqlDataReader reader;
                reader = cmd1.ExecuteReader();

                while (reader.Read())
                {
                    s1 = reader["OrderStatus"].ToString();
                }
                TextBox3.Text = s1;
                reader.Close();

            }

            else
            {
                TextBox3.Text = "Sorry! No such order exists!";
            }
           
        }

    }
}