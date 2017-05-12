using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Chat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string msg = (string)Application["msg"];

        txtchat.Text = msg;

    }
    protected void Button1_Click(object sender,EventArgs e)
    {

        string nickname = txtnickname.Text;

        string chatmessage = txtmessage.Text;

        string mymessage = nickname + "::" + chatmessage;

        //Appending the User Entered Data To Application["msg"] object

        Application["msg"] = Application["msg"] + mymessage + Environment.NewLine;

        //Finally Dispaling on the Chat Content

        txtchat.Text = Application["msg"].ToString();

        txtmessage.Text = "";

    }
    protected void chat(object sender, EventArgs e)
    {
        Response.Redirect("CancelOrder.aspx");
    }
    protected void tr(object sender, EventArgs e)
    {
        Response.Redirect("TrackOrder.aspx");
    }
    protected void dash(object sender, EventArgs e)
    {
        Response.Redirect("userDashboard.aspx");
    }
    protected void ev(object sender, EventArgs e)
    {
        Response.Redirect("EnterSymptoms.aspx");
    }
    protected void h(object sender, EventArgs e)
    {
        Response.Redirect("MediNow.aspx");
    }
    protected void log(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}