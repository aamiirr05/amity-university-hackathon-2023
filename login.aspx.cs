using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        this.Page.Title = "Login";
        conn.ConnectionString = ConfigurationManager.AppSettings["ConnString"];

    }


    protected void Login_page_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand query = new SqlCommand("select admin_username , admin_password, admin_name from authority_master where admin_username= '" + User.Text + "'  and admin_password= '" + Password.Text + "'", conn);

        SqlDataReader reader = query.ExecuteReader();

        if (reader.Read())
        {
            User.Text = reader["admin_username"].ToString();
            Password.Text = reader["admin_password"].ToString();
            Session["userName"] = reader["admin_name"].ToString();
            Session["userId"] = User.Text;
            reader.Close();
            conn.Close();
            conn.Dispose();
            Response.Redirect("dashboard.aspx");
        }

        else
        {
            reader.Close();
            conn.Close();
            conn.Dispose();
            Response.Write("<script>alert('Incorrect Username/password')</script>");

        }
    }

    protected void Login_page_Click1(object sender, EventArgs e)
    {

    }
}