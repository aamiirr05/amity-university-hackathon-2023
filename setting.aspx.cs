using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class setting : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.AppSettings["ConnString"];
        try
        {
            if (string.IsNullOrEmpty(Session["admin_id"].ToString()))
            {
                Response.Write("<script>alert('User Not Logged In');</script>");
                Response.Redirect("landing.aspx");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('User Not Logged In');window.location.href('landing.aspx');</script>");
            Response.Redirect("landing.aspx");
        }
    }

    protected void Btn_Submit_Email_Click(object sender, EventArgs e)
    {
            conn.Open();
            SqlCommand query = new SqlCommand("select admin_username from authority_master where admin_username = '" + Txt_Old_Username.Text + "' ", conn);
            SqlDataReader reader = query.ExecuteReader();
            if(reader.Read())
            {
            SqlCommand cmd = new SqlCommand("update authority_master set admin_username = '" + Txt_New_Username.Text + "' where admin_id = '" + Session["admin_id"] + "'  ", conn);
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            sqlDataReader.Close();
            reader.Close();
            Response.Write("<script>alert('Username Updated Successfully')</script>");
             }
            else
            {
                Response.Write("<script>alert('Old Password Incorrect');</script>");
            }
            conn.Close();
            conn.Dispose();
            
    }

    protected void Button_Submit_Password_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand query = new SqlCommand("select admin_password from authority_master where admin_password = '" + Txt_Old_Password.Text + "'  ", conn);
        SqlDataReader sqlDataReader = query.ExecuteReader();
        if (sqlDataReader.Read())
        {
           SqlCommand cmd = new SqlCommand("update authority_master set admin_password = '" + Txt_New_Password.Text + "' where admin_id = '" + Session["admin_id"] + "'  ", conn);
           SqlDataReader sqlReader = cmd.ExecuteReader();
           sqlReader.Close();
           sqlDataReader.Close();
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