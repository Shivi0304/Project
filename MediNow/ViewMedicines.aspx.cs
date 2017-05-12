using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ViewMedicines : System.Web.UI.Page
{
    String s4,s7;
    ArrayList abc = new ArrayList();
 
    int sum = 0;
    ArrayList ar = new ArrayList();
    ArrayList shop = new ArrayList();
    ArrayList price = new ArrayList();
    int i = 0;
    string s3, s1;
    protected void Page_Load(object sender, EventArgs e)
    {
       /*   SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");
            con.Open();
            String mname = (string)Session["Search"];
   
            String med = (string)Session["SMD"];
            if (string.Equals(med, "Medicine"))
            {
                String s1 = "select Name from ShopList;";
                SqlCommand cmd1 = new SqlCommand(s1, con);
                SqlDataReader reader;
                reader = cmd1.ExecuteReader();
            /*   while (reader.Read())
                {
                    abc.Add(reader["Name"].ToString());
                    if (string.IsNullOrEmpty(s7))
                    {
                        s7= "SELECT MedicineName,Quantity,Price,ShopName,Pincode from "+abc[i]+" where MedicineName='" + mname + "'";
                    }
                    else
                    {
                        s7 = s7 + " UNION ALL SELECT MedicineName,Quantity,Price,ShopName,Pincode from " + abc[i] + " where MedicineName='" + mname + "'";
                    }
                    i++;

                }
                s7 = s7 + ";";
        
                con.Close();*/
        if (!IsPostBack)
        {
            string mname = (string)Session["Search"];

            string med = (string)Session["SMD"];
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ID = "SqlDataSource1";
            this.Page.Controls.Add(SqlDataSource1);
            SqlDataSource1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ShivangiConnectionString"].ConnectionString;
            SqlDataSource1.SelectCommand = "SELECT MedicineName,Quantity,Price,ShopName,Pincode from RAJ_PHARMACEUTICALS where MedicineName='" + mname + "' UNION ALL SELECT MedicineName,Quantity,Price,ShopName,Pincode from RELIGARE where MedicineName='" + mname + "' UNION ALL SELECT MedicineName,Quantity,Price,ShopName,Pincode from APOLLO_PHARMACY where MedicineName='" + mname + "' UNION ALL SELECT MedicineName,Quantity,Price,ShopName,Pincode from TS3_PHARMACY where MedicineName='" + mname + "'";
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
            }
            
       /*String s2 = (string)Session["Search"];
        String s3 = (string)Session["SMD"];
        SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");

        try
        {
            con.Open();
            String s1 = "select DISTINCT S_ID from Sym where Symptom='" + s2 + "';";
            SqlCommand cmd1 = new SqlCommand(s1, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                s4 = reader["S_ID"].ToString();
                Response.Redirect(s4);
                string query = "select s.Symptom,d.D_Name,m.Medicine from Sym s,Disease d,Med m where s.S_ID='"+s1+"' AND s.D_ID=d.D_ID AND s.S_ID=m.S_ID;";

                SqlCommand cmd11 = new SqlCommand(query, con);
                SqlDataReader reader1;
                reader1 = cmd11.ExecuteReader();
                GridView1.DataSource = reader1;

                //Bind the data
                GridView1.DataBind();
            }
        }
        catch (Exception ex)
        {
            con.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Error Saving Data.\r\n " + ex + "');window.location='SignUp.aspx';", true);
        }*/
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
    protected void con(object sender, EventArgs e)
    {

        int n = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            if (((GridView1.Rows[i].Cells[0].FindControl("cbSelect") as CheckBox).Checked))
            {
                ar.Add(GridView1.Rows[i].Cells[1].Text);
                shop.Add(GridView1.Rows[i].Cells[4].Text);
                price.Add(GridView1.Rows[i].Cells[3].Text);


            }
        }


        Session["Select"] = ar;
        Session["shop"] = shop;
        Session["price"] = price;
        Response.Redirect("ab.aspx");
    }
    
}