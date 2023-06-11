using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        AES c1 = new AES();
        hfUser.Value = txtUsername.Text;
        hfPwd.Value = c1.Encrypt(txtPwd.Text);

        if (txtUsername.Text == "admin" && txtPwd.Text == "admin")
        {
            Response.Redirect("admin/Default.aspx");
        }
        else
        {
            DataView dv = (DataView)SqlDataLogin.Select(new DataSourceSelectArguments());
            if (dv.Count == 1)
            {
                Session.Add("userid", hfUser.Value);
                Session.Add("pwd", hfPwd.Value);

                Response.Redirect("user/Default.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Username & Password')", true);
            }
        }
    }
}