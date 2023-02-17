using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class directorate : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Page.Title = "Display";
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
        SqlDataAdapter adapter = new SqlDataAdapter("select distinct A.alumni_id , A.alumni_name , C.college_name , C.college_type , Q.stream , Q.degree , Q.grad_start , Q.grad_end , C.country , C.city from alumni_personal as A inner join alumni_college as C on A.alumni_id = C.alumni_id inner join alumni_qualification as Q on A.alumni_id = Q.alumni_id  ", conn);
        DataSet dataSet = new DataSet();
        adapter.Fill(dataSet);
        Directorate_Grid.DataSource = dataSet.Tables[0];
        Directorate_Grid.DataBind();

    }

    protected void Btn_Search_Click(object sender, EventArgs e)
    {

        string command = "";
        string condition = "";

        command = "select distinct A.alumni_id , A.alumni_name , C.college_name , C.college_type , Q.stream , Q.degree , Q.grad_start , Q.grad_end , C.country , C.city from alumni_personal as A inner join alumni_college as C on A.alumni_id = C.alumni_id inner join alumni_qualification as Q on A.alumni_id = Q.alumni_id where A.status = 'ACTIVE'  ";
        if (Txt_Name.Text != "")
        {
            condition += " and A.alumni_name like '%" + Txt_Name.Text + "%' ";
        }

        if (Txt_College.Text != "")
        {
            condition += " and C.college_name like '%" + Txt_College.Text + "%' ";
        }

        if (Txt_College_Type.Text != "")
        {
            condition += " and C.college_type like '%" + Txt_College_Type.Text + "%' ";
        }

        if (Txt_Stream.Text != "")
        {
            condition += " and Q.stream like '%" + Txt_Stream.Text + "%' ";
        }

        if (Txt_Degree.Text != "")
        {
            condition += "and Q.degree like '%" + Txt_Degree.Text + "%'";
        }

        if (Txt_Country.Text!="")
        {
            condition += "and C.country like '%" + Txt_Country.Text + "%'";
        }

        if (Txt_City.Text != "")
        {
            condition += "and C.city like '%" + Txt_City.Text + "%'";
        }

        if (condition == "")
        {
            Response.Write("<script>alert('Select any one criteria')</script>");
            return;
        }

        string query = command + " " + condition;

        SqlDataAdapter adp = new SqlDataAdapter(query, conn);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        Directorate_Grid.DataSource = ds.Tables[0];
        Directorate_Grid.DataBind();
        conn.Close();
        conn.Dispose();
    }
}