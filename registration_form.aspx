<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration_form.aspx.cs" Inherits="registration_form" %>

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
        <div class="form-wrapper" style="height:300px;">
            <div class="personal-info ">
                <span class="pi">
                    <h2>Personal Information</h2>
                </span>
                    <div class="insert name" style="border-bottom:none;">
                        <asp:Label ID="Lbl_Id" runat="server" Text="Id"></asp:Label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Id" runat="server"></asp:TextBox>

                    </div>

                    <div class="insert name">
                        <label for="">Full Name:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Static"  ControlToValidate="Txt_Name" ErrorMessage="Name Required"></asp:RequiredFieldValidator>

                    </div>
                    <div class="insert fname">
                        <label for="">Father Name:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Father" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Static"  ControlToValidate="Txt_Father" ErrorMessage="Father name Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="insert mname">
                        <label for="">Mother Name:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Mother_Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Static"  ControlToValidate="Txt_Mother_Name" ErrorMessage="Mother Name Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="insert mail">
                        <label for="">Email:</label>
                        <%--<input type="email" required>--%>
                        <asp:TextBox ID="Txt_Email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Static" ControlToValidate="Txt_Email" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txt_Email" Display="Static" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ErrorMessage="Invalid Email"></asp:RegularExpressionValidator>
                    </div>
                    <div class="insert num">
                        <label for="">Mobile No.:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Contact" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Static"  ControlToValidate="Txt_Contact" ErrorMessage="Contact Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="insert dob">
                        <label for="">Date Of Birth:</label>
                        <%--<input type="date" required>--%>
                        <asp:TextBox ID="Txt_DOB" type="date" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Static"  ControlToValidate="Txt_DOB" ErrorMessage="DOB Required"></asp:RequiredFieldValidator>
                    </div>
                     <div class="insert gender" style="border-bottom:none;">
                        <label>Gender</label>
                         <asp:CheckBox ID="Chk_Male" Text="Male"  runat="server" />
                         <asp:CheckBox ID="Chk_Female" Text="Female" runat="server" />
                         <asp:CheckBox ID="Chk_Other" Text="Other" runat="server" />
                    </div> 
            </div>
        </div>
        <div class="form-wrapper" style="margin-top:3em;">
            <div class="personal-info ">
                <span class="pi">
                    <h2>Address</h2>
                </span>
                    <div class="insert">
                        <label for="">Country:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Country"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Static"  ControlToValidate="Txt_Country" ErrorMessage="Country Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="insert">
                        <label for="">State:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_State"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Static"  ControlToValidate="Txt_State" ErrorMessage="State Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="insert">
                        <label for="">City:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_City"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Static"  ControlToValidate="Txt_City" ErrorMessage="City Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="insert">
                        <label for="">Pincode:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Pincode"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Display="Static"  ControlToValidate="Txt_Pincode" ErrorMessage="Pincode Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="insert" style="border-bottom:none;">
                        <label for="">Street Address:</label>
                        <%--<input type="text" required>--%>
                        <asp:TextBox ID="Txt_Address" TextMode="MultiLine" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Display="Static"  ControlToValidate="Txt_Address" ErrorMessage="Address Required"></asp:RequiredFieldValidator>
                    </div>
                    <%--<button class="btn">Next</button>--%>
                    <asp:Button ID="Button_Next" OnClick="Button_Next_Click" CssClass="btn" runat="server" Text="Submit" />
                    <asp:ValidationSummary ID="ValidationSummary1" ShowSummary="false" runat="server" />
                    <asp:Button ID="Btn_Update" OnClick="Btn_Update_Click" CssClass="btn" runat="server" Text="Update" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
