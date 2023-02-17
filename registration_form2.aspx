<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration_form2.aspx.cs" Inherits="registration_form2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>College Details</title>
    <link href="Css/register.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
        <!-- <h2>Register</h2> -->
        <div class="form-wrapper">
            <div class="personal-info ">
                <span class="pi">
                    <h2>College Information</h2>
                </span>
                    <div class="insert name">
                        <label for="">College Type:</label>
                        <%--<input type="text" required>--%>
                        <asp:DropDownList  OnSelectedIndexChanged="Ddl_College_Type_SelectedIndexChanged" AutoPostBack="true" AppendDataBoundItems="true" ID="Ddl_College_Type" runat="server">
                            <asp:ListItem value="0" Text="Select">Select</asp:ListItem>
                            <asp:ListItem value="1" Text="Government">Government</asp:ListItem>
                            <asp:ListItem value="2" Text="Aided">Aided</asp:ListItem>
                        </asp:DropDownList>
                        <%--<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Static" ValidationGroup="College" ControlToValidate="Txt_College_Name" ErrorMessage="College Name Required"></asp:RequiredFieldValidator>--%>

                    </div>

                    <div class="insert name">
                        <label for="">College Name:</label>
                        <%--<input type="text" required>--%>
                        <%--<asp:TextBox ID="Txt_College_Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Static"  ControlToValidate="Txt_College_Name" ErrorMessage="College Name Required"></asp:RequiredFieldValidator>--%>
                        <asp:DropDownList ID="Ddl_College_Name" OnSelectedIndexChanged="Ddl_College_Name_SelectedIndexChanged" AutoPostBack="true" AppendDataBoundItems="true" runat="server">

                        </asp:DropDownList>
                    </div>
                   <div class="insert">
                        <label for="">Country:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Country"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Static"  ControlToValidate="Txt_Country" ErrorMessage="Country Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="insert">
                        <label for="">State:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_State"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Static"  ControlToValidate="Txt_State" ErrorMessage="State Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="insert">
                        <label for="">City:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_City"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Static"  ControlToValidate="Txt_City" ErrorMessage="City Required"></asp:RequiredFieldValidator>
                    </div>

                    </div>
                    <!-- <div class="insert gender">
                        <label for="">Gender: <input type="checkbox" required> <input type="checkbox" required> <input type="checkbox" required></label>
                    </div> -->
            </div>
        
        <div class="form-wrapper">
            <div class="personal-info ">
                <span class="pi">
                    <h2>Qualification</h2>
                </span>
                    <div class="insert">
                        <label for="">Stream:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Stream"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Static"  ControlToValidate="Txt_Stream" ErrorMessage="Stream Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="insert">
                        <label for="">Degree:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Degree"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Static"  ControlToValidate="Txt_Degree" ErrorMessage="Degree Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="insert">
                        <label for="">Graduation Start Date:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Grad_Start"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Static"  ControlToValidate="Txt_Grad_Start" ErrorMessage="Graduation Starting Date Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="insert">
                        <label for="">Graduation End Date:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Grad_End"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Display="Static"  ControlToValidate="Txt_Grad_End" ErrorMessage="Graduation End Date Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="insert">
                        <label for="">CGPA:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_CGPA"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Static"  ControlToValidate="Txt_CGPA" ErrorMessage="CGPA Required"></asp:RequiredFieldValidator>
                    </div>
                    
                    <%--<button class="btn">Next</button>--%>
                    <asp:Button ID="Button_Submit" OnClick="Button_Submit_Click" CssClass="btn" runat="server" Text="Submit" />
            </div>
        </div>
    </div>
        
    </form>
</body>
</html>
