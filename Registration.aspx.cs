using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser= "select count(*) from [Table] where UserName='"+TextBoxUN.Text+"'";
            SqlCommand com = new SqlCommand(checkuser,conn);
            int temp= Convert.ToInt32(com.ExecuteScalar().ToString());
            if(temp==1)
            {
                Response.Write("User already exists!");
            }

            conn.Close();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Guid newGuid = Guid.NewGuid();
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertUser = "insert into [Table] (ID,UserName,Email,Password,Country) values (@ID,@Uname,@email,@password,@country)";
            SqlCommand com = new SqlCommand(insertUser, conn);
            com.Parameters.Add(new SqlParameter("@ID", newGuid.ToString()));
            com.Parameters.Add(new SqlParameter("@Uname", TextBoxUN.Text));
            com.Parameters.Add(new SqlParameter("@email", TextBoxEmail.Text));
            com.Parameters.Add(new SqlParameter("@password", TextBoxPass.Text));
            com.Parameters.Add(new SqlParameter("@country",DropDownListCountry.SelectedItem.ToString()));
            com.ExecuteNonQuery();
            Response.Redirect("Manager.aspx");
            Response.Write("Registration is Successful!!!");

            conn.Close();
        }
        catch(Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }
    }
}