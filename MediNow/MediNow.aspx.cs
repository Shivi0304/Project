using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MediNow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
  
    protected void ev(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
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
    public void sendfeedback(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(name.Text) || string.IsNullOrEmpty(email.Text) || string.IsNullOrEmpty(subject.Text) || string.IsNullOrEmpty(message.Text))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Please fill all the fields.')", true);
        }
        else
        {
            String s1 = name.Text;
            String s2 = email.Text;
            String s3 = subject.Text;
            String s4 = message.Text;
            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Thank you for your valuable feedback.');window.location='MediNow.aspx';", true);

        }
    }
}