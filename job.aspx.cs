using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class job : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
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

    protected void Btn_Submit_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into alumni_job(alumni_id , job_type , company_name , company_address , company_email , company_contact , company_website , internship_duration , internship_start_date , internship_end_date , internship_location , paid_internship , experience_gained) values( '" + Session["UserId"] + "'" +
            " , '" + Ddl_Type.SelectedItem.Text + "' , '" + Txt_Company_Name.Text + "' , '" + Txt_Address.Text + "' , '" + Txt_Email.Text + "' , '" + Txt_Contact.Text + "' , '" + Txt_Website.Text + "' , '" + Txt_Duration.Text + "' , '" + Txt_Start.Text + "' , '" + Txt_End.Text + "' , '" + Txt_Location.Text + "' , '" + Txt_Paid.Text + "' ," +
            " '" + Txt_Benefits.Text + "')  ", conn);
        SqlDataReader sqlDataReader = cmd.ExecuteReader();
        conn.Close();
        conn.Dispose();
        Response.Write("<script>alert('Data Inserted Successfully')</script>");
    }
}