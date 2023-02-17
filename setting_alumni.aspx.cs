using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class setting_alumni : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Page.Title = "Setting";
        conn.ConnectionString = ConfigurationManager.AppSettings["ConnString"];
        try
        {
            if (string.IsNullOrEmpty(Session["alumni_id"].ToString()))
            {
                Response.Write("<script>alert('User Not Logged In');</script>");
                Response.Redirect("landing.aspx");
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("landing.aspx");

        }

    }


    protected void Btn_Submit_Email_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand query = new SqlCommand("select login_username from alumni_login where login_username = '" + Txt_Old_Username.Text + "'  ", conn);
        SqlDataReader DataReader = query.ExecuteReader();
        if (DataReader.Read())
        {
          SqlCommand cmd = new SqlCommand("update alumni_login set login_username = '" + Txt_New_Username.Text + "' where alumni_id = '" + Session["alumni_id"] + "'  ", conn);
          SqlDataReader sqlDataReader = cmd.ExecuteReader();
          sqlDataReader.Close();
          DataReader.Close();
          Response.Write("<script>alert('Username Updated Successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Old Username Incorrect');</script>");
        }
        conn.Close();
        conn.Dispose();
    }

    protected void Button_Submit_Password_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand query = new SqlCommand("select login_password from alumni_login where login_password = '" + Txt_Old_Password.Text + "'  ", conn);
        SqlDataReader DataReader = query.ExecuteReader();
        if (DataReader.Read())
        {
          SqlCommand cmd = new SqlCommand("update alumni_login set login_password = '" + Txt_New_Password.Text + "' where alumni_id = '" + Session["alumni_id"] + "'  ", conn);
          SqlDataReader sqlDataReader = cmd.ExecuteReader();
          sqlDataReader.Close();
          DataReader.Close();
          Response.Write("<script>alert('Password Updated Successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Old Password Incorrect');</script>");
        }
        conn.Close();
        conn.Dispose();
    }
}


    