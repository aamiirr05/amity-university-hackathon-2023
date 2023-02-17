using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class registration_form : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
   

    
    protected void Page_Load(object sender, EventArgs e)
    {
            string id = Request.QueryString["id"];
        this.Page.Title = "Registration";
        conn.ConnectionString = ConfigurationManager.AppSettings["ConnString"];
        try
        {

            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(id))
                {
                    bindedit(int.Parse(id));
                    Btn_Update.Visible = true;
                    Button_Next.Visible = false;
                    Txt_Id.Visible = true;
                    Lbl_Id.Visible = true;
                   
                }
                else
                {
                    Btn_Update.Visible=false;
                    Button_Next.Visible=true;
                    Txt_Id.Visible=false;
                    Lbl_Id.Visible=false;
                    //RequiredFieldValidator1.Validate = false;
                    RequiredFieldValidator2.Enabled = false;
                }
              
            }
        }
        catch (Exception ex)
        { Response.Write(id); }
    }

    public void bindedit(int a_id)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select P.alumni_id ,  P.alumni_name , P.alumni_father_name , P.alumni_mother_name , P.alumni_email , P.alumni_contact , P.alumni_dob , A.country , A.state , A.city , A.street_address  from alumni_personal P inner join alumni_address as A on P.alumni_id = A.alumni_id  where P.alumni_id =  " + a_id, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            Txt_Name.Text = reader["P.alumni_name"].ToString();
            Txt_Father.Text = reader["P.alumni_father_name"].ToString();
            Txt_Mother_Name.Text = reader["P.alumni_mother_name"].ToString();
            Txt_Email.Text = reader["P.alumni_email"].ToString();
            Txt_Contact.Text = reader["P.alumni_country"].ToString();
            Txt_DOB.Text = reader["P.alumni_dob"].ToString();
            Txt_Country.Text = reader["A.country"].ToString();
            Txt_State.Text = reader["A.state"].ToString();
            Txt_City.Text = reader["A.city"].ToString();
            Txt_Address.Text = reader["A.street_address"].ToString();
            Txt_Id.Text = a_id.ToString();

        }
        reader.Close();
        conn.Close();
        conn.Dispose();
    }

    protected void Btn_Update_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("update alumni_personal set alumni_name = '" + Txt_Name.Text + "' , alumni_father_name = '" + Txt_Father.Text + "' , alumni_mother_name = '" + Txt_Mother_Name.Text + "' , alumni_email = '" + Txt_Email.Text + "' , alumni_contact = '" + Txt_Contact.Text + "' , alumni_dob = '" + Txt_DOB.Text + "'  where alumni_id = '" + Txt_Id + "' ", conn);
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Close();

        SqlCommand cmd2 = new SqlCommand("update alumni_address set country = '" + Txt_Country.Text + "' , state = '" + Txt_State.Text + "' , city = '" + Txt_City.Text + "' , street_address = '" + Txt_Address.Text + "'  where alumni_id = '" + Txt_Id + "' ", conn);
        SqlDataReader reader1 = cmd2.ExecuteReader();
        reader1.Close();
        Response.Write("Data Updated successfully");
        conn.Close();
        conn.Dispose();
        Response.Redirect("update_alumni.aspx");
    }


    protected void Button_Next_Click(object sender, EventArgs e)
    {
        string id = "";
        string gender = "";

        if (Chk_Male.Checked == true)
        {
            gender = "Male";
        }
        else if (Chk_Female.Checked == true)
        {
            gender = "Female";
        }
        else
        {
            gender = "Other";
        }
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into alumni_personal(alumni_name, alumni_father_name, alumni_mother_name, alumni_email , alumni_contact , alumni_dob ,alumni_gender ) values ('" + Txt_Name.Text + "' , '" + Txt_Father.Text + "' , '" + Txt_Mother_Name.Text + "' , '" + Txt_Email.Text + "' , '" + Txt_Contact.Text + "' , '" + Txt_DOB.Text + "' , '" + gender + "')  ", conn);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Data Inserted Successfully')</script>");

        SqlCommand cmd2 = new SqlCommand("select MAX(alumni_id) as I from alumni_personal", conn);
        SqlDataReader dr = cmd2.ExecuteReader();
        if (dr.Read())
        {
            id = dr["I"].ToString();
            dr.Close();
        }
        SqlCommand cmd3 = new SqlCommand("insert into alumni_address(alumni_id , country , state , city , street_Address) values('" + id + "' , '" + Txt_Country.Text + "' , '" + Txt_State.Text + "' , '" + Txt_City.Text + "' , '" + Txt_Address.Text + "') ",conn);
        cmd3.ExecuteNonQuery();
        Response.Write("<script>alert('Data Inserted Successfully')</script>");
        Response.Redirect("registration_form2.aspx");
        conn.Close();
        conn.Dispose();
    }



    
}