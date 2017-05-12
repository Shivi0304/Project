using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.Configuration;

public partial class Email : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string fromaddr = "medinow.app@gmail.com";
            string toaddr = "shivangiranesh@gmail.com";//TO ADDRESS HERE
            string password = "medinow123";


            MailMessage msg = new MailMessage();
            msg.Subject = "Username &password";
            msg.From = new MailAddress(fromaddr);
            msg.Body = "Message BODY";
            msg.To.Add(new MailAddress(toaddr));
          //  SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            // smtp.Host = "smtpout.secureserver.net";
           // smtp.Port = 587;
          /*  smtp.UseDefaultCredentials = false;
            smtp.EnableSsl =true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
           ServicePointManager.ServerCertificateValidationCallback = delegate(object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };
            NetworkCredential nc = new NetworkCredential(fromaddr, password);
            smtp.Credentials = nc;
            smtp.Send(msg);*/
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.SendAsync(msg, null);

            Label1.Text = "Message sent successfuly";
        }
        catch (Exception ex)
        {
            Label2.Text = "" + ex;
        }

    }
}