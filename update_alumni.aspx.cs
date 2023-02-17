using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class update_alumni : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    void Bindpersonal()
    {
        SqlDataAdapter adapter = new SqlDataAdapter("select alumni_id , alumni_name , alumni_father_name , alumni_mother_name , alumni_email , alumni_contact , alumni_dob , alumni_gender , active from alumni_personal where alumni_id = '" + Session["alumni_id"] + "'  ", conn);
        DataSet dataSet = new DataSet();
        adapter.Fill(dataSet);
        Grid_Personal.DataSource = dataSet.Tables[0];
        Grid_Personal.DataBind();
    }
    
    void BindCollege()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("select Distinct alumni_id , college_type , college_name , country , state , city  from alumni_college  where alumni_id = '" + Session["alumni_id"] + "'  ", conn);
        DataSet dataSet = new DataSet();
        adpt.Fill(dataSet);
        Grid_College.DataSource = dataSet.Tables[0];
        Grid_College.DataBind();

    }

       protected void Page_Load(object sender, EventArgs e)
       {
        this.Page.Title = "Update";
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
        conn.ConnectionString = ConfigurationManager.AppSettings["ConnString"];
        conn.Open();
        Bindpersonal();
        BindCollege();
        conn.Close();


    }
        
}