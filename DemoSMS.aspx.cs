using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Text;


public partial class DemoSMS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //http://203.129.225.68/API/WebSMS/Http/v1.0a/index.php?username=lakshit&password=12345678&sender=LAKSHY&to=9503351933&message=Hello+Test+Message&reqid=1&format={json|text}&route_id=494&sendondate=07-04-2020T02:43:00;
        BasicCode b = new BasicCode();

        b.SendSms("PROJCT", "9503351933", "This is a message");

        /*
        try
        {
            //Call Send SMS API
            //string sendSMSUri = "http://msg.worldtechsofts.com/api/sendhttp.php";
            string sendSMSUri = "http://203.129.225.68/API/WebSMS/Http/v1.0a/index.php?username=lakshit&password=12345678&sender=LAKSHY&to=9503351933&message=Hello1+Test1+Message&reqid=1&format={json|text}&route_id=494&sendondate=07-04-2020T02:43:00";
            //Create HTTPWebrequest
            HttpWebRequest httpWReq = (HttpWebRequest)WebRequest.Create(sendSMSUri);
            //Prepare and Add URL Encoded data
            UTF8Encoding encoding = new UTF8Encoding();
            //byte[] data = encoding.GetBytes(sbPostData.ToString());
            //Specify post method
            httpWReq.Method = "POST";
            httpWReq.ContentType = "application/x-www-form-urlencoded";
           // httpWReq.ContentLength = data.Length;
            using (Stream stream = httpWReq.GetRequestStream())
            {
                //stream.Write(data, 0, data.Length);
            }
            //Get the response
            HttpWebResponse response = (HttpWebResponse)httpWReq.GetResponse();
            StreamReader reader = new StreamReader(response.GetResponseStream());
            string responseString = reader.ReadToEnd();

            //Close the response
            reader.Close();
            response.Close();
        }
        catch (SystemException ex)
        {

        }

        */
    }
}