using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class ViewDiseaseShop : System.Web.UI.Page
{
    int sum = 0;
    ArrayList ar = new ArrayList();
    ArrayList shop = new ArrayList();
    ArrayList price = new ArrayList();
    int i = 0;
    string s3, s1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           ArrayList FavColors = (ArrayList)Session["Medicines"];
            int count = FavColors.Count;
            int i;
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ID = "SqlDataSource1";
            this.Page.Controls.Add(SqlDataSource1);
            SqlDataSource1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ShivangiConnectionString"].ConnectionString;
            SqlDataSource1.SelectCommand = "SELECT MedicineName,Quantity,Price,ShopName,Pincode from RAJ_PHARMACEUTICALS where MedicineName='" + FavColors[0] + "' UNION ALL SELECT MedicineName,Quantity,Price,ShopName,Pincode from RELIGARE where MedicineName='" + FavColors[0] + "' UNION ALL SELECT MedicineName,Quantity,Price,ShopName,Pincode from APOLLO_PHARMACY where MedicineName='" + FavColors[0] + "' UNION ALL SELECT MedicineName,Quantity,Price,ShopName,Pincode from TS3_PHARMACY where MedicineName='" + FavColors[0] + "'";
            for (i = 1; i < count; i++)
            {
                SqlDataSource1.SelectCommand = SqlDataSource1.SelectCommand + " UNION ALL SELECT MedicineName,Quantity,Price,ShopName,Pincode from RAJ_PHARMACEUTICALS where MedicineName='" + FavColors[i] + "' UNION ALL SELECT MedicineName,Quantity,Price,ShopName,Pincode from RELIGARE where MedicineName='" + FavColors[i] + "' UNION ALL SELECT MedicineName,Quantity,Price,ShopName,Pincode from APOLLO_PHARMACY where MedicineName='" + FavColors[i] + "' UNION ALL SELECT MedicineName,Quantity,Price,ShopName,Pincode from TS3_PHARMACY where MedicineName='" + FavColors[i] + "'";
            }
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
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