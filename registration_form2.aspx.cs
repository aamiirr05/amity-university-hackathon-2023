using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class registration_form2 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Page.Title = "Registration";
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

        SqlCommand cmd2 = new SqlCommand("insert into alumni_college(alumni_id , college_type , college_name , country , state , city) values('" + id + "' , '" + Ddl_College_Type.SelectedItem.Text + "' , '" + Ddl_College_Name.SelectedItem.Text + "' , '" + Txt_Country.Text + "' , '" + Txt_State.Text + "' , '" + Txt_City.Text + "' ) ", conn);
        cmd2.ExecuteNonQuery();
        Response.Write("<script>alert('Data Inserted Successfully')</script>");
        
        SqlCommand cmd3 = new SqlCommand("insert into alumni_qualification(alumni_id , stream , degree , grad_start , grad_end , cgpa) values('" + id + "' , '" + Txt_Stream.Text + "' , '" + Txt_Degree.Text + "' , '" + Txt_Grad_Start.Text + "' , '" + Txt_Grad_End.Text + "' , '" + Txt_CGPA.Text + "' ) ", conn);
        cmd3.ExecuteNonQuery();
        Response.Redirect("regisyration_form3.aspx");
        Response.Write("<script>alert('You will be notified one your process have been verified')</script>");

        conn.Close();
        conn.Dispose();
    }

    void BindCollegeGovt()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select college_id , college_name , college_country , college_state from Govt_Colleges" ,conn);
        SqlDataReader reader = cmd.ExecuteReader();
        Ddl_College_Name.DataSource = reader;
        Ddl_College_Name.Items.Clear();
        Ddl_College_Name.Items.Add("--Please Select colleges--");
        Ddl_College_Name.DataTextField = "college_name";
        Ddl_College_Name.DataValueField = "college_id";
        Ddl_College_Name.DataBind();
        conn.Close();
    }
    void BindCollegeAided()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select aided_college_id , aided_college_name , aided_college_country , aided_college_state from Aided_Colleges", conn);
        SqlDataReader reader = cmd.ExecuteReader();
        Ddl_College_Name.DataSource = reader;
        Ddl_College_Name.Items.Clear();
        Ddl_College_Name.Items.Add("--Please Select colleges--");
        Ddl_College_Name.DataTextField = "aided_college_name";
        Ddl_College_Name.DataValueField = "aided_college_id";
        Ddl_College_Name.DataBind();
        conn.Close();
    }

    //void AutoCountryState()
    //{
    //    conn.Open();
    //    SqlCommand cmd = new SqlCommand("select college_id , college_country , college_state from Govt_Colleges where college_name = '" + Ddl_College_Name.DataTextField + "'  ", conn);
    //    SqlDataReader reader = cmd.ExecuteReader();
    //    if(reader.Read())
    //    {
    //        Txt_Country.Text = reader["college_country"].ToString();
    //        Txt_State.Text = reader["college_state"].ToString();
    //    }
    //}

    protected void Ddl_College_Type_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(Ddl_College_Type.SelectedItem.Text == "Government")
        {
            BindCollegeGovt();
            
        }
        else if(Ddl_College_Type.SelectedItem.Text == "Aided")
        {
            BindCollegeAided();
        }
    }

    protected void Ddl_College_Name_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

   