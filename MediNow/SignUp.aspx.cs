using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;

public partial class SignUp : System.Web.UI.Page
{
    String s1;
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void Submit(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=CSE1405161\\SQLEXPRESS;Initial Catalog=Shivangi;Integrated Security=True");

        try
        {
            con.Open();

            if (string.IsNullOrEmpty(name.Text) || string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text) || string.IsNullOrEmpty(TextBox3.Text) || string.IsNullOrEmpty(TextBox4.Text) || string.IsNullOrEmpty(TextBox5.Text) || string.IsNullOrEmpty(email.Text) || string.IsNullOrEmpty(Password.Text) || string.IsNullOrEmpty(ps.Text))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Please fill all the fields.')", true);
            }
            else{
                SqlCommand cmd = new SqlCommand("select * from UserReg where Email='" + email.Text + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    lblStatus.Text = "Email Id already exists.";

                }

                else
                {

                    string query = "insert into UserReg(Name,Address,City,State,Pincode,Contact_No,Email,Password,Type)values('" + name.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + email.Text + "','" + Password.Text + "','" + RadioButtonList1.SelectedValue +"');";
                    SqlDataAdapter da1 = new SqlDataAdapter(query, con);

                    da1.SelectCommand.ExecuteNonQuery();

                    string query1 = "select USER_ID from UserReg where Email='" + email.Text + "';";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    SqlDataReader reader;
                    reader = cmd1.ExecuteReader();
                    while (reader.Read())
                    {
                        s1 = reader["USER_ID"].ToString();
                    }
                    reader.Close();
                    if (string.Equals(RadioButtonList1.SelectedValue, "Shopkeeper"))
                    {
                        Session["Shopkeeperid"] = s1;
                        Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Successfully registered.Your User_ID is " + s1 + "');window.location='Shopdetails.aspx';", true);

                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Successfully registered.Your User_ID is " + s1 + "');window.location='home.aspx';", true);
                    }
                        /* try
                    {
                        string fromaddr = "medinow.app@gmail.com";
                        string toaddr = email.Text;//TO ADDRESS HERE
                        string password = "medinow123";


                        MailMessage msg = new MailMessage();
                        msg.Subject = "Welcome to MediNow";
                        msg.From = new MailAddress(fromaddr);
                        msg.Body = "Thank you for for registering on Medinow. MediNow welcomes you!\r\nUsername:" + s1 + "\r\nPassword:" + Password.Text + "\r\nFor any query, contact us at:\"medinow.app@gmail.com\"\r\n\r\nWith Regards\r\nWebiNow Team\r\n";
                        msg.To.Add(new MailAddress(toaddr));
                        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                        // smtp.Host = "smtp.gmail.com";
                        // smtp.Port = 587;
                        smtp.UseDefaultCredentials = false;
                        smtp.EnableSsl = true;
                      ServicePointManager.ServerCertificateValidationCallback = delegate(object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };
                        NetworkCredential nc = new NetworkCredential("medinow.app@gmail.com", password);
                        smtp.Credentials = nc;
                        smtp.Send(msg);
                      
                    }
                    catch (Exception e1)
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('" + e1.ToString() + "');", true);
                    }*/
            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Error 
                    con.Close();
                   
                }
            }
            
        }
        catch(Exception ex)
        {
            con.Close();Saving Data.\r\n "+ex+"');window.location='SignUp.aspx';", true);
        }
       
    }
 
}