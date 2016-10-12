using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["New"]!=null)
        {
            Label_Welcome.Text += Session["New"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button_Logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Login.aspx");
    }
}