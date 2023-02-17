<%@ Page Title="" Language="C#" MasterPageFile="~/alumni.master" AutoEventWireup="true" CodeFile="setting_alumni.aspx.cs" Inherits="setting_alumni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/setting.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="setting">
        <div class="wrapper">
        <div class="up-email">
            <h2 class="heading">Update Your Username</h2>
            <div class="old-mail">
                <label for="old-mail">Enter Old Username</label><br>
                <asp:TextBox ID="Txt_Old_Username" CssClass="inp" placeholder="Enter Your Old Username" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="Email" ControlToValidate="Txt_Old_Username" ErrorMessage="Old Email Required"></asp:RequiredFieldValidator>

            </div>
            <div class="new-mail">
                <label for="new-mail">Enter New Username</label><br>
                <asp:TextBox ID="Txt_New_Username" CssClass="inp" placeholder="Enter Your New username" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="Email" ControlToValidate="Txt_New_Username" ErrorMessage="New Email Required"></asp:RequiredFieldValidator>
            </div>
            <div class="con-mail">
                <label for="new-mail">Confirm Username</label><br>
                <asp:TextBox ID="Txt_Confirm_Username" CssClass="inp" placeholder="Confirm Your username" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Email" runat="server" ControlToValidate="Txt_Confirm_Username" ErrorMessage="Confirm Your Email"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ValidationGroup="Email" ControlToValidate="Txt_Confirm_Username" ControlToCompare="Txt_New_Username" ErrorMessage="Email not matched"></asp:CompareValidator>

                <asp:Button ID="Btn_Submit_Email" CssClass="inp sub" OnClick="Btn_Submit_Email_Click" runat="server" Text="Update Username" />
            </div>
        </div>

        <!-- <hr> -->

        <div class="up-pass">
            <h2 class="heading">Update Your Password</h2>
            <div class="old-pass">
                <label for="old-pass">Enter Old Password</label><br>
                <asp:TextBox ID="Txt_Old_Password" CssClass="inp" TextMode="Password" placeholder="Enter Your Old Password" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Password" runat="server" ControlToValidate="Txt_Old_Password" ErrorMessage="Old Password Required"></asp:RequiredFieldValidator>
            </div>
            <div class="new-pass">
                <label for="new-pass">Enter New Mail</label><br>
                <asp:TextBox ID="Txt_New_Password" CssClass="inp" TextMode="Password" placeholder="Enter Your New Password" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Password" runat="server" ControlToValidate="Txt_New_Password" ErrorMessage="New Password Required"></asp:RequiredFieldValidator>
            </div>
            <div class="con-pass">
                <label for="con-pass">Confirm Password</label><br>
                <asp:TextBox ID="Txt_Confirm_Password" CssClass="inp" TextMode="Password" placeholder="Confirm Your Password" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Password" runat="server" ControlToValidate="Txt_Confirm_Password" ErrorMessage="Confirm Your Password"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="Password" ControlToValidate="Txt_Confirm_Password" ControlToCompare="Txt_New_Password" ErrorMessage="Password not matched"></asp:CompareValidator>
                
                <asp:Button ID="Button_Submit_Password" CssClass="inp sub" OnClick="Button_Submit_Password_Click" runat="server" Text="Update Password" />
                <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="Password" ShowSummary="false" runat="server" />
            </div>
        </div>
        
    </div>
    </section>
</asp:Content>

