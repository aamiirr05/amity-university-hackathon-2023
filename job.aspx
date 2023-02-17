<%@ Page Title="" Language="C#" MasterPageFile="~/alumni.master" AutoEventWireup="true" CodeFile="job.aspx.cs" Inherits="job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/job.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form">
        <div class="head">
            <h2>Job Details</h2>
        </div>

        <div class="flex">

            <div class="left">
                <div class="wrap">
                    <label for="" class="lb">
                        Select Type
                    </label> <br/>
                    <asp:DropDownList CssClass="sel" ID="Ddl_Type" runat="server">
                        <asp:ListItem value="1" Text="" CssClass="opt">Full Time</asp:ListItem>
                        <asp:ListItem value="2" Text="" CssClass="opt">Part Time</asp:ListItem>
                        <asp:ListItem value="3" Text="" CssClass="opt">Onsite</asp:ListItem>
                        <asp:ListItem value="4" Text="" CssClass="opt">Work From Home</asp:ListItem>
                        <asp:ListItem value="5" Text="" CssClass="opt">Others</asp:ListItem>
                    </asp:DropDownList>
                    <br/>
                </div>
                <div class="wrap">
                    <label for="" class="lb">
                        Company Name
                    </label><br/>
                    <asp:TextBox ID="Txt_Company_Name" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="Txt_Company_Name" ErrorMessage="Company Name Required"></asp:RequiredFieldValidator>
                </div>
                <div class="wrap">
                    <label for="" class="lb">Company Address</label><br>
                    <asp:TextBox ID="Txt_Address" CssClass="textarea" TextMode="MultiLine" Columns="30" Rows="5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="Txt_Address" ErrorMessage="Address Required"></asp:RequiredFieldValidator>
                </div>
                <div class="wrap">
                    <label for="" class="lb">
                        Company Contact Email
                    </label><br>
                    <asp:TextBox ID="Txt_Email" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  ControlToValidate="Txt_Email" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txt_Email" Display="Static" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ErrorMessage="Invalid Email"></asp:RegularExpressionValidator>
                </div>
                <div class="wrap">
                    <label for="" class="lb">
                        Company Contact Number
                    </label><br>
                    <asp:TextBox ID="Txt_Contact" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ControlToValidate="Txt_Contact" ErrorMessage="Contact Required"></asp:RequiredFieldValidator>
                </div>
                <div class="wrap">
                    <label for="" class="lb">
                        Company Website
                    </label><br>
                    <asp:TextBox ID="Txt_Website" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ControlToValidate="Txt_Website" ErrorMessage="Website Required"></asp:RequiredFieldValidator>
                </div>
                
            </div>

            <div class="right">
                
                <div class="wrap">
                    <label for="" class="lb">
                        Job Duration (in days)
                    </label><br>
                    <asp:TextBox ID="Txt_Duration"  CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"  ControlToValidate="Txt_Duration" ErrorMessage="Enter Duration"></asp:RequiredFieldValidator>
                </div>
                <div class="wrap">
                    <label for="" class="lb">
                        Job Start Date
                    </label><br>
                    <asp:TextBox ID="Txt_Start" Type="date" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"  ControlToValidate="Txt_Start" ErrorMessage="Enter Start Duration"></asp:RequiredFieldValidator>
                </div>
                <div class="wrap">
                    <label for="" class="lb">
                        Job End Date
                    </label><br>
                    <asp:TextBox ID="Txt_End" Type="date" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"  ControlToValidate="Txt_End" ErrorMessage="Enter End Duration"></asp:RequiredFieldValidator>
                </div>
                <div class="wrap">
                    <label for="" class="lb">
                        Job Location
                    </label><br>
                    <asp:TextBox ID="Txt_Location" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"  ControlToValidate="Txt_Location" ErrorMessage="Location Required"></asp:RequiredFieldValidator>
                </div>
                <div class="wrap">
                    <label for="" class="lb">
                        Internship Benefits 
                    </label><br>
                    <asp:TextBox ID="Txt_Benefits" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"  ControlToValidate="Txt_Benefits" ErrorMessage="Enter Your Experience"></asp:RequiredFieldValidator>
                </div>
                <div class="wrap">
                    <label for="" class="lb">
                        Paid Internship (Any payment recieved for completing internship)
                    </label><br>
                    <asp:TextBox ID="Txt_Paid" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"  ControlToValidate="Txt_Paid" ErrorMessage="Stipend Required write 0 if no stipend"></asp:RequiredFieldValidator>
                </div>

                <asp:Button ID="Btn_Submit" CssClass="btn" OnClick="Btn_Submit_Click" runat="server" Text="Save" />
                <asp:ValidationSummary ID="ValidationSummary1" ShowSummary="false" runat="server" />
            </div>
            
        </div>
        </div>
</asp:Content>

