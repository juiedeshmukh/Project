using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        AES c1 = new AES();
        BasicCode b = new BasicCode();

        string ipaddress;
        ipaddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        if (ipaddress == "" || ipaddress == null)
            ipaddress = Request.ServerVariables["REMOTE_ADDR"];

        //lblIPAddress.Text = ipaddress;


        // save image in project.
        string upath = Server.MapPath("user");
        String ppath = upath + "\\photos" + "\\" + FileUpload1.FileName.ToString();
        FileUpload1.SaveAs(ppath);

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into Registration(id,name,email,mobile,address,username,pwd,photo,ip,pin,status)values(@id,@name,@email,@mobile,@address,@username,@pwd,@photo,@ip,@pin,@status)";

        cmd.Parameters.AddWithValue("@id", b.generateID("id", "Registration"));
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmob.Text);

        cmd.Parameters.AddWithValue("@address", txtaddress.Text);
        cmd.Parameters.AddWithValue("@username", txtusername.Text);
        cmd.Parameters.AddWithValue("@pwd", c1.Encrypt( txtpwd.Text));

        cmd.Parameters.AddWithValue("@photo", FileUpload1.FileName.ToString());
        cmd.Parameters.AddWithValue("@ip", ipaddress);
        cmd.Parameters.AddWithValue("@pin",txtPin.Text);
        cmd.Parameters.AddWithValue("@status", "Active");

        cmd.Connection = con;

        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            //Response.Redirect("Success.aspx");
            Session.Add("username1", txtusername.Text);
            Response.Redirect("Registration2.aspx");
        }
        else
        {
            Response.Write("Error!");
        }

       
    }
}