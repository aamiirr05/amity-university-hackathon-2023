using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class verify_alumni : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    void Bindpersonal()
    {
        SqlDataAdapter adapter = new SqlDataAdapter("select alumni_id , alumni_name , alumni_father_name , alumni_mother_name , alumni_email , alumni_contact , alumni_dob , alumni_gender , active from alumni_personal  ", conn);
        DataSet dataSet = new DataSet();
        adapter.Fill(dataSet);
        Grid_Personal.DataSource = dataSet.Tables[0];
        Grid_Personal.DataBind();
    }

    void BindChecked(int id)
    {
        SqlCommand cmd = new SqlCommand("update alumni_personal set active = 'verified' where alumni_id = '" + id + "' ", conn);
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Close();
    }

    void BindCollege()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("select Distinct alumni_id , college_type , college_name , country , state , city  from alumni_college  ", conn);
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
        Bindpersonal();
        BindCollege();
        try
        {
            string id = Request.QueryString["id"];
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(id))
                {
                    BindChecked(int.Parse(id));
                    Bindpersonal();
                }

            }

        }
        catch (Exception ex) { }
        conn.Close();


    }

}