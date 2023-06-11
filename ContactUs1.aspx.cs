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
        BasicCode b = new BasicCode();

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into ContactUs(id,name,email,mobile,message,username)values(@id,@name,@email,@mobile,@message,@username)";

        cmd.Parameters.AddWithValue("@id", b.generateID("id", "ContactUs"));
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmob.Text);

        cmd.Parameters.AddWithValue("@message", txtaddress.Text);
        cmd.Parameters.AddWithValue("@username", txtusername.Text);
        
        cmd.Connection = con;

        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            Response.Redirect("ContactSuccess.aspx");
           
        }
        else
        {
            Response.Write("Error!");
        }

       
    }
}