using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ab : System.Web.UI.Page
{
    int sum = 0;

    int n;
    TextBox[] textBox = new TextBox[100];
    Label[] Labels = new Label[100];
    ArrayList qu = new ArrayList();
   
    protected void Page_Load(object sender, EventArgs e)
    {

       ArrayList ar1 = (ArrayList)Session["Select"];
    ArrayList shop = (ArrayList)Session["shop"];
    ArrayList price = (ArrayList)Session["price"];
        n = ar1.Count;

        Label l = new Label();
        l.Text = "ENTER QUANTITY\r\n";
        Panel2.Controls.Add(new LiteralControl("<br />"));
        Panel2.Controls.Add(l);
        Panel2.Controls.Add(new LiteralControl("<br />"));
        for (int i = 0; i < n; i++)
        {
            Labels[i] = new Label();
            Labels[i].Text = (String)ar1[i];
            textBox[i] = new TextBox();
        
            
        }
        for (int i = 0; i < n; i++)
        {
            Panel2.Controls.Add(new LiteralControl("<br />"));

            Panel2.Controls.Add(Labels[i]);
            Panel2.Controls.Add(textBox[i]);
            Panel2.Controls.Add(new LiteralControl("<br />"));
            Panel2.Controls.Add(new LiteralControl("<br />"));
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

    protected void send(object sender, EventArgs e)
    {
       
              ArrayList price = (ArrayList)Session["price"];
        for (int i = 0; i < n; i++)
        {

            qu.Add(textBox[i].Text);
            int q = Int32.Parse(textBox[i].Text);

            int p = Int32.Parse((string)price[i]);
            int pr = q * p;
            sum = sum + pr;
        }

        string su = Convert.ToString(sum);
        Session["total"] = su;
       
      Session["Quantity"] = qu;
        Response.Redirect("placeOrder.aspx");
    }


}