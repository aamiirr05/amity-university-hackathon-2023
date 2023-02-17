<%@ Page Title="" Language="C#" MasterPageFile="~/alumni.master" AutoEventWireup="true" CodeFile="temp2.aspx.cs" Inherits="temp2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/job-details.css" rel="stylesheet" />
    <link href="Css/job.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper">
        <header>
            <h1>Job Details</h1>
        </header>
        <div class="container">
            <div class="left">
                <div class="info">
                    <label for="">Select Type</label>
                    <%--<select name="select" id="drop-down" required>
                        <option value="">Select Type</option>
                        <option value="">Full Time</option>
                        <option value="">Part Time</option>
                        <option value="">On Site</option>
                        <option value="">Work From Home</option>
                        <option value="">Other</option>
                    </select>--%>
                    <asp:DropDownList CssClass="drop-down" ID="Ddl_Type" runat="server">
                        <asp:ListItem value="1" Text="" CssClass="opt">Full Time</asp:ListItem>
                        <asp:ListItem value="2" Text="" CssClass="opt">Part Time</asp:ListItem>
                        <asp:ListItem value="3" Text="" CssClass="opt">Onsite</asp:ListItem>
                        <asp:ListItem value="4" Text="" CssClass="opt">Work From Home</asp:ListItem>
                        <asp:ListItem value="5" Text="" CssClass="opt">Others</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="info">
                    <label for="">Company Name</label>
                    <asp:TextBox ID="Txt_Company_Name" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="Txt_Company_Name" ErrorMessage="Company Name Required"></asp:RequiredFieldValidator>
                </div>
                <div class="info">
                    <label for="">Company Address</label>
                    <asp:TextBox ID="Txt_Address" CssClass="textarea" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="Txt_Address" ErrorMessage="Address Required"></asp:RequiredFieldValidator>
                </div>
                <div class="info">
                    <label for="">Company Contact Email
                    </label>
                    <asp:TextBox ID="Txt_Email" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  ControlToValidate="Txt_Email" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txt_Email" Display="Static" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ErrorMessage="Invalid Email"></asp:RegularExpressionValidator>
                </div>
                <div class="info">
                    <label for="">Company Contact Number</label>
                    <asp:TextBox ID="Txt_Contact" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ControlToValidate="Txt_Contact" ErrorMessage="Contact Required"></asp:RequiredFieldValidator>
                </div>
                <div class="info">
                    <label for="">Company Website</label>
                    <asp:TextBox ID="Txt_Website" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ControlToValidate="Txt_Website" ErrorMessage="Website Required"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="right">
                <div class="info">
                    <label for="">Job Duration (in days)</label>
                    <asp:TextBox ID="Txt_Duration"  CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"  ControlToValidate="Txt_Duration" ErrorMessage="Enter Duration"></asp:RequiredFieldValidator>
                </div>
                <div class="info">
                    <label for="">Job Start Date</label>
                    <asp:TextBox ID="Txt_Start" Type="date" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"  ControlToValidate="Txt_Start" ErrorMessage="Enter Start Duration"></asp:RequiredFieldValidator>
                </div>
                <div class="info">
                    <label for="">Job End Date</label>
                    <asp:TextBox ID="Txt_End" Type="date" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"  ControlToValidate="Txt_End" ErrorMessage="Enter End Duration"></asp:RequiredFieldValidator>
                </div>
                <div class="info">
                    <label for="">Internship Location
                    </label>
                    <asp:TextBox ID="Txt_Location" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"  ControlToValidate="Txt_Location" ErrorMessage="Location Required"></asp:RequiredFieldValidator>
                </div>
                <div class="info">
                    <label for="">Internship Benefits
                    </label>
                    <asp:TextBox ID="Txt_Benefits" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"  ControlToValidate="Txt_Benefits" ErrorMessage="Enter Your Experience"></asp:RequiredFieldValidator>
                </div>
                <div class="info">
                    <label for="">Paid Internship</label>
                    <asp:TextBox ID="Txt_Paid" CssClass="inp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"  ControlToValidate="Txt_Paid" ErrorMessage="Stipend Required write 0 if no stipend"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="btn" style="width:100%;">
            <button >Save Information</button>
        </div>
    </div>
</asp:Content>

