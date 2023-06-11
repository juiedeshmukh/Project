using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Registration2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string card = txtCardNo.Text;
        string str = card.Substring(0, 1);
        if (str == "4" || str == "5")
        {            
            BasicCode b = new BasicCode();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into CardData(id,username,cardno,cvv,card_type,exp_month,exp_year)values(@id,@username,@cardno,@cvv,@card_type,@exp_month,@emp_year)";

            cmd.Parameters.AddWithValue("@id", b.generateID("id", "CardData"));
            cmd.Parameters.AddWithValue("@username", Session["username1"].ToString());
            cmd.Parameters.AddWithValue("@cardno", txtCardNo.Text);
            cmd.Parameters.AddWithValue("@cvv", txtCvv.Text);

            cmd.Parameters.AddWithValue("@card_type", ddlType.Text);
            cmd.Parameters.AddWithValue("@exp_month", ddlMonth.Text);
            cmd.Parameters.AddWithValue("@emp_year", ddlYear.Text);


            cmd.Connection = con;

            int n = cmd.ExecuteNonQuery();
            con.Close();
            if (n > 0)
            {
                Response.Redirect("Success.aspx");
            }
            else
            {
                Response.Write("Error!");
            }
            
           
        }
        else
        {
            lblmsg.Text = "Card is not valid !";
        }
       
    }
}