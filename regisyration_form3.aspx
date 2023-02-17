<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regisyration_form3.aspx.cs" Inherits="regisyration_form3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/register.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
        <!-- <h2>Register</h2> -->
        <div class="form-wrapper">
            <div class="personal-info ">
                <span class="pi">
                    <h2>Login Credentials</h2>
                </span>
                <div class="insert name">
                        <label for="">Username:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Username" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Static"  ControlToValidate="Txt_Username" ErrorMessage="UserName Required"></asp:RequiredFieldValidator>

                    </div>
                   <div class="insert">
                        <label for="">Password:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Password" TextMode="Password"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Static"  ControlToValidate="Txt_Password" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="insert">
                        <label for="">Confirm Password:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Confirm_Password" TextMode="Password"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  runat="server" Display="Static" ControlToValidate="Txt_Confirm_Password" ErrorMessage="Confirm Your Password"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="Password" ControlToValidate="Txt_Confirm_Password" ControlToCompare="Txt_Password" ErrorMessage="Password not matched"></asp:CompareValidator>
                    </div>

                <asp:Button ID="Button_Submit" CssClass="inp sub" OnClick="Button_Submit_Click" runat="server" Text="Submit" />
                <asp:ValidationSummary ID="ValidationSummary1"  ShowSummary="false" runat="server" />
                    
                </div>
                    <!-- <div class="insert gender">
                        <label for="">Gender: <input type="checkbox" required> <input type="checkbox" required> <input type="checkbox" required></label>
                    </div> -->
            </div>
        </div>
    </form>
</body>
</html>
