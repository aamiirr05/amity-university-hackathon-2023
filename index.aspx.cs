using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class index : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        string total = "";
        string total_govt = "";
        string total_aided = "";
        this.Page.Title = "Home";
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
            Response.Write("<script>alert('User Not Logged In');window.location.href('login.aspx');</script>");
            Response.Redirect("landing.aspx");
        }
        conn.ConnectionString = ConfigurationManager.AppSettings["ConnString"];

        conn.Open();
        SqlCommand cmd = new SqlCommand("select count(alumni_id) as T from alumni_personal ", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            total = dr["T"].ToString();
            dr.Close();
        }
        Lbl_Total_Alumni.Text = total + " Alumni";

        SqlCommand cmd1 = new SqlCommand("select count(P.alumni_id) as G from alumni_personal as P inner join alumni_college as C on P.alumni_id = C.alumni_id where C.college_type = 'Government'   ", conn);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            total_govt = dr1["G"].ToString();
            dr1.Close();
        }
        Lbl_Govt.Text = total_govt + " Alumni";

        SqlCommand cmd2 = new SqlCommand("select count(P.alumni_id) as A from alumni_personal as P inner join alumni_college as C on P.alumni_id = C.alumni_id where C.college_type = 'Aided'   ", conn);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        if (dr2.Read())
        {
            total_aided = dr2["A"].ToString();
            dr2.Close();
        }
        Lbl_Aided.Text = total_aided + " Alumni";




    }
}