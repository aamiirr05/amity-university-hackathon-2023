using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class email : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
    }
}