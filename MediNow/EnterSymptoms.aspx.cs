using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;



public partial class EnterSymptoms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!this.IsPostBack)
        {
            string constr = ConfigurationManager.ConnectionStrings["ShivangiConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT Symptom FROM Sym"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    symptoms.DataSource = cmd.ExecuteReader();
                    symptoms.DataTextField = "Symptom";

                    symptoms.DataBind();
                    con.Close();
                }
            }
            symptoms.Items.Insert(0, new ListItem("--Select symptoms--", "0"));
        }
        if (!this.IsPostBack)
        {
            string constr = ConfigurationManager.ConnectionStrings["ShivangiConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT Medicine FROM Med"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    medicine.DataSource = cmd.ExecuteReader();
                    medicine.DataTextField = "Medicine";

                    medicine.DataBind();
                    con.Close();
                }
            }
            medicine.Items.Insert(0, new ListItem("--Select medicine--", "0"));
        }
        if (!this.IsPostBack)
        {
            string constr = ConfigurationManager.ConnectionStrings["ShivangiConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT D_Name FROM Disease"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    disease.DataSource = cmd.ExecuteReader();
                    disease.DataTextField = "D_Name";

                    disease.DataBind();
                    con.Close();
                }
            }
            disease.Items.Insert(0, new ListItem("--Select disease--", "0"));
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

    protected void rdb(object sender, EventArgs e)
    {
        if (string.Equals(RadioButtonList1.SelectedValue, "Symptom"))
        {
            symptoms.Visible = true;
            disease.Visible = false;
            medicine.Visible = false;
     

        }
        else if (string.Equals(RadioButtonList1.SelectedValue, "Disease"))
        {
            symptoms.Visible = false;
            disease.Visible = true;
            medicine.Visible = false;


        }
        else if (string.Equals(RadioButtonList1.SelectedValue, "Medicine"))
        {
            symptoms.Visible = false;
            disease.Visible = false;
            medicine.Visible = true;


        }
    }
    //public void submitSymptom(object sender, EventArgs e)
    //{
    //    submitSymptoms.Visible = false;
    //    symptoms.Visible = false;
    //}
    public void viewmed(object sender, EventArgs e)
    {
        String s1 = RadioButtonList1.SelectedValue;

  

        if (string.IsNullOrEmpty(s1))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Please select one option from the given set of options.')", true);
        }
       
        else if (string.Equals(s1, "Symptom"))
        {
            String s2 = symptoms.SelectedItem.Value.ToString();
             if (string.IsNullOrEmpty(s2))
             {
                 Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Enter the symptoms.')", true);
             }
             else
             {
                 Session["Search"] = s2;

                 Session["SDM"] = s1;

                 Response.Redirect("SymptomMedicine.aspx");
             }
        }
        else if (string.Equals(s1, "Disease"))
        {
            String s2 = disease.SelectedItem.Value.ToString();
            if (string.IsNullOrEmpty(s2))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Enter the disease.')", true);
            }
            else
            {
                Session["Search"] = s2;

                Session["SDM"] = s1;

                Response.Redirect("DiseaseMedicine.aspx");
            }
        }
        else if (string.Equals(s1, "Medicine"))
        {
            String s2 = medicine.SelectedItem.Value.ToString();
            if (string.IsNullOrEmpty(s2))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Enter the medicine.')", true);
            }
            else
            {
                Session["Search"] = s2;

                Session["SDM"] = s1;

                Response.Redirect("ViewMedicines.aspx");
            }
        }
    }

}