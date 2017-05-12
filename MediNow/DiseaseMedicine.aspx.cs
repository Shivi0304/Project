using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class DiseaseMedicine : System.Web.UI.Page
{
    String s4;
ArrayList abc=new ArrayList();
    int i = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");
            con.Open();
            String s2 = (string)Session["Search"];
            String s3 = (string)Session["SMD"];
            String s1 = "select D_ID from Disease where D_Name='" + s2 + "';";
            SqlCommand cmd1 = new SqlCommand(s1, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                s4 = reader["D_ID"].ToString();
            }
            con.Close();
            SqlDataSource SqlDataSource2 = new SqlDataSource();
            SqlDataSource2.ID = "SqlDataSource2";
            this.Page.Controls.Add(SqlDataSource2);
            SqlDataSource2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ShivangiConnectionString"].ConnectionString;
            SqlDataSource2.SelectCommand = "SELECT d.D_Name,dm.Medicine FROM Disease d,DiseaseMed dm where d.D_ID='" + s4 + "' AND d.D_ID=dm.D_ID";
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
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
       // Response.Write(GridView2.Rows.Count);
        //abc.Add(GridView2.Rows[0].Cells[2].Text);
        for (int i = 0; i < GridView2.Rows.Count; i++)
        {
            if (((GridView2.Rows[i].Cells[0].FindControl("cbSelect") as CheckBox).Checked))
            {
                abc.Add(GridView2.Rows[i].Cells[2].Text);
            }
        }
    
      
          
        
      /* for (int i = 0; i < GridView2.Rows.Count; i++)
        {
            GridViewRow row = GridView2.Rows[i];
            bool isChecked = ((CheckBox)row.FindControl("chk")).Checked;
            if (isChecked)
            {
                abc.Add(GridView2.Rows[i].Cells[2].Text);
            }
        }*/
        Session["Medicines"] = abc;
        Response.Redirect("ViewDiseaseShop.aspx");


    }
    
}