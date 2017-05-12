using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class SymptomMedicine : System.Web.UI.Page
{
    String s4;
    ArrayList abc=new ArrayList();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");
            con.Open();
            String s2 = (string)Session["Search"];
            String s3 = (string)Session["SMD"];
        
            String s1 = "select DISTINCT S_ID from Sym where Symptom='" + s2 + "';";
            SqlCommand cmd1 = new SqlCommand(s1, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                s4 = reader["S_ID"].ToString();
            }
            con.Close();
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ID = "SqlDataSource1";
            this.Page.Controls.Add(SqlDataSource1);
            SqlDataSource1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ShivangiConnectionString"].ConnectionString;
            SqlDataSource1.SelectCommand = "SELECT s.Symptom,d.D_Name,m.Medicine FROM Sym s,Disease d,Med m WHERE s.S_ID='" + s4 + "' AND s.D_ID=d.D_ID AND s.S_ID=m.S_ID AND m.D_ID=d.D_ID";
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
    protected void con(object sender,EventArgs e)
    {
          foreach (GridViewRow item in gv.Rows)
            {
                if ((item.Cells[0].FindControl("cbSelect") as CheckBox).Checked)
                {
                   abc.Add(item.Cells[1].Text);
                }
            }
        Session["Medicines"]=abc;
        Response.Redirect("ViewSymptomShop.aspx");


    }

}