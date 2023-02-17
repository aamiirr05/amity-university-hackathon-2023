using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class landing : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.AppSettings["ConnString"];
    }

    protected void Btn_Login_Click1(object sender, EventArgs e)
    {
        conn.Open();
        if(Ddl_type.SelectedItem.Text == "Admin" )
        {
            SqlCommand query = new SqlCommand("select admin_id , admin_username , admin_password, admin_name from authority_master where admin_username= '" + Txt_Username.Text + "'  and admin_password= '" + Txt_Password.Text + "'", conn);
            SqlDataReader reader = query.ExecuteReader();
            if (reader.Read())
            {
                Txt_Username.Text = reader["admin_username"].ToString();
                Txt_Password.Text = reader["admin_password"].ToString();
                Session["admin_id"] = reader["admin_id"].ToString();
                Session["userId"] = Txt_Username.Text;
                reader.Close();
                conn.Close();
                conn.Dispose();
                Response.Redirect("index.aspx");
            }
            else
            {
                reader.Close();
                conn.Close();
                conn.Dispose();
                Response.Write("<script>alert('Incorrect Username/password')</script>");

            }
        }

        else if(Ddl_type.SelectedItem.Text == "Alumni")
        {
            string alumni_id;
            SqlCommand query = new SqlCommand("select login_id , alumni_id , login_username, login_password from alumni_login where login_username= '" + Txt_Username.Text + "'  and login_password= '" + Txt_Password.Text + "'", conn);
            SqlDataReader dr = query.ExecuteReader();
            if (dr.Read())
            {
                Txt_Username.Text = dr["login_username"].ToString();
                Txt_Password.Text = dr["login_password"].ToString();
                alumni_id = dr["alumni_id"].ToString();
                Session["alumni_id"] = alumni_id;
                Session["UserId"] = dr["login_id"].ToString();
                dr.Close();
                conn.Close();
                conn.Dispose ();
                Response.Redirect("job.aspx");
            }
            else
            {
                dr.Close();
                conn.Close();
                conn.Dispose();
                Response.Write("<script>alert('Incorrect Username/password')</script>");
            }
        }
        
    }
}