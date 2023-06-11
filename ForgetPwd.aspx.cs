using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class ForgetPwd : System.Web.UI.Page
{
    string pwd = "";
    string mob = "";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPassword_Click(object sender, EventArgs e)
    {
        BasicCode b = new BasicCode();
         AES a = new AES();

        string email = txtEmailID.Text;

        DataView dv = (DataView)SqlDataSource1.Select(new DataSourceSelectArguments());
        if (dv.Count > 0)
        {
            pwd = dv[0][0].ToString();
            mob = dv[0][1].ToString();

            string msg = "Dear User your password is : "+a.Decrypt(pwd)+" .Thank You Project Team ";
            b.sendEmail(email, "Regarding Forget Password", msg);

            b.SendSms("PROJCT", mob, msg);

            lblmsg.Text = "Your Password is send on your registered Email ID & mobile number: ";

            txtEmailID.Text = "";
            txtUsername.Text = "";

        }



    }

    public void SendHTMLMail()
    {
        AES b = new AES();


        StreamReader reader = new StreamReader(Server.MapPath("~/MailBody.htm"));
        string readFile = reader.ReadToEnd();
        string myString = "";
        myString = readFile;
        myString = myString.Replace("$$Username$$", txtUsername.Text);
        myString = myString.Replace("$$Password$$", b.Decrypt(pwd));

        myString = myString.Replace("$$Website$$", "Creadit Card Fraud Detection");
        MailMessage Msg = new MailMessage();
        
        MailAddress fromMail = new MailAddress("mycollegeproject02@gmail.com");
        // Sender e-mail address.
        Msg.From = fromMail;
        // Recipient e-mail address.
        Msg.To.Add(new MailAddress(txtEmailID.Text));
        // Subject of e-mail
        Msg.Subject = "Login Creadential From Project";
        Msg.Body = myString.ToString();
        Msg.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();
        //smtp.Host = "smtp.gmail.com";
        smtp.Host = "relay-hosting.secureserver.net";
        //smtp.EnableSsl = true;
        smtp.EnableSsl = false;
        NetworkCredential NetworkCred = new NetworkCredential("mycollegeproject02@gmail.com", "India95033@@##");
        smtp.UseDefaultCredentials = true;
        smtp.Credentials = NetworkCred;
        //smtp.Port = 587;
        smtp.Port = 25;
        smtp.Send(Msg);

        reader.Dispose();
    }
  
}