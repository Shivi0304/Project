using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class placeOrder : System.Web.UI.Page
{
    String s4, p,o,sid;
    protected void Page_Load(object sender, EventArgs e)
    {
        String s3 = (string)Session["total"];
      
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");
            con.Open();
            String s2 = (string)Session["USERID"];
            l1.Text = "Total Sum:"+s3;
            String s1 = "select Address,City,State,Pincode,Contact_No from UserReg where USER_ID='" + s2 + "';";
            SqlCommand cmd1 = new SqlCommand(s1, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                s4 = reader["Address"].ToString() +", "+reader["City"].ToString()+", " + reader["State"].ToString()+", " + reader["Pincode"].ToString();
                p = reader["Contact_No"].ToString();
            }
            address.Text = s4;
            phoneNumber.Text = p;
            con.Close();
         /*   SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ID = "SqlDataSource1";
            this.Page.Controls.Add(SqlDataSource1);
            SqlDataSource1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ShivangiConnectionString"].ConnectionString;
            SqlDataSource1.SelectCommand = "SELECT s.Symptom,d.D_Name,m.Medicine FROM Sym s,Disease d,Med m WHERE s.S_ID='" + s4 + "' AND s.D_ID=d.D_ID AND s.S_ID=m.S_ID";
            gv.DataSource = SqlDataSource1;
            gv.DataBind();*/
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
    public void editAddress(object sender, EventArgs e)
    {
        placeorder.Visible = true;
        edit.Visible = false;
        submit.Visible = false;
        address.Text = "";
        phoneNumber.Text = "";
        
    }
    public void submitAddress(object sender, EventArgs e)
    {
        placeorder.Visible = true;
        edit.Visible = false;
        submit.Visible = false;

        
    }
    protected void place(object sender, EventArgs e)
    {
        String s3 = (string)Session["total"];
        String us = (string)Session["USERID"];
        string s1 = address.Text;
        string s2 = phoneNumber.Text;
        if (string.IsNullOrEmpty(s1) || string.IsNullOrEmpty(s2))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Please fill all the fields.')", true);
        }
        else
        {
            SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");
            con.Open();
            ArrayList ar1 = (ArrayList)Session["Select"];
            ArrayList shop = (ArrayList)Session["shop"];
            ArrayList price = (ArrayList)Session["price"];
            ArrayList quantity = (ArrayList)Session["Quantity"];
            int n = ar1.Count;
         
            string q1 = "insert into Orders(USER_ID)values('" + us + "');";
            SqlDataAdapter da1 = new SqlDataAdapter(q1, con);

            da1.SelectCommand.ExecuteNonQuery();
            string query1 = "select Order_ID from Orders where USER_ID='" + us + "';";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                o = reader["Order_ID"].ToString();
            }
            reader.Close();
            for (int i = 0; i < n; i++)
            {
           string item = (string)ar1[i];
        string shopn = (string)shop[i];
         string quant = (string)quantity[i];
            string pr = (string)price[i];
            string query3 = "select SID from ShopList where Name='" + shopn + "';";
            SqlCommand cmd3 = new SqlCommand(query3, con);
            SqlDataReader reader1;
            reader1 = cmd3.ExecuteReader();
            while (reader1.Read())
            {
                sid = reader1["SID"].ToString();
            }
            reader1.Close();
            int a = Int32.Parse(quant);
            int b = Int32.Parse(pr);
            int c = a * b;
            String cost = Convert.ToString(c);
                string query = "insert into p1(Order_ID,User_ID,Item,Quantity,Price_Per_Quantity,TotalPrice,OrderStatus,ShopName)values('"+o+"','" + us + "','" + item + "','" + quant + "','" + pr + "','" + cost + "','In process','"+shopn+"');";
                //string query = "insert into Orders(User_Id,Item,Quantity,Price_Per_Quantity,TotalPrice,OrderStatus)values('" + us + "','" + item + "','" + quant + "','" + pr + "','" + s3 + "','In process');";
                SqlDataAdapter da12= new SqlDataAdapter(query, con);
                
                da12.SelectCommand.ExecuteNonQuery();
                string query4 = "insert into ShopkeeperOrder(SID,OrderID,Item,Quantity,Price_Per_Quantity,TotalPrice,Address,PhoneNumber)values('" +sid + "','" + o + "','" + item + "','" + quant + "','" + pr + "','" + cost + "','"+s1+"','"+s2+"');";
                //string query = "insert into Orders(User_Id,Item,Quantity,Price_Per_Quantity,TotalPrice,OrderStatus)values('" + us + "','" + item + "','" + quant + "','" + pr + "','" + s3 + "','In process');";
                SqlDataAdapter da14 = new SqlDataAdapter(query4, con);

                da14.SelectCommand.ExecuteNonQuery();
            }
           
      // or= o + "!\r\nYour total amount is:" + s3;
           Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Order Placed.Your Order ID is " + o + "');window.location='MediNow.aspx';", true);
        }
    }
}
