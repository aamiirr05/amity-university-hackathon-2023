using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class regisyration_form3 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.AppSettings["ConnString"];

    }

    protected void Button_Submit_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select MAX(alumni_id) as I from alumni_personal", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            id = dr["I"].ToString();
            dr.Close();
        }
        SqlCommand cmd2 = new SqlCommand("insert into alumni_login(alumni_id , login_username , login_password , login_confirm_password)values('" + id + "' , '" + Txt_Username.Text + "' , '" + Txt_Password.Text + "' , '" + Txt_Confirm_Password.Text + "') ", conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
        conn.Dispose();
        Response.Write("<script>alert('All the Data inserted successfully')</script>");
        Response.Redirect("landing.aspx");
    }
}