<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="verification.aspx.cs" Inherits="verification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="verification">
        <br />
        <hr />

        <asp:GridView ID="Pending_Grid" AutoGenerateColumns="false" runat="server">
                    <Columns>
                         <asp:TemplateField  HeaderText="Id"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Id" runat="server" CssClass="grid_label" Text='<%# Eval("alumni_id") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Name"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Name" runat="server" CssClass="grid_label" Text='<%# Eval("alumni_name") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Father Name"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Father" runat="server" CssClass="grid_label" Text='<%# Eval("alumni_father_name") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Mother Name"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Mother" runat="server" CssClass="grid_label" Text='<%# Eval("alumni_mother_name") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Email"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Email" runat="server" CssClass="grid_label" Text='<%# Eval("alumni_email") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Contact"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Contact" runat="server" CssClass="grid_label" Text='<%# Eval("alumni_contact") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="DOB"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_DOB" runat="server" CssClass="grid_label" Text='<%# Eval("alumni_DOB") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Gender"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Gender" runat="server" CssClass="grid_label" Text='<%# Eval("alumni_gender") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Verify?"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Verify" runat="server" CssClass="grid_label" Text='<%# Eval("active") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:HyperLinkField HeaderText="Checked" ControlStyle-ForeColor="#11936e" Text="Checked" HeaderStyle-Width="100" ItemStyle-Width="100"  DataNavigateUrlFields="alumni_id" DataNavigateUrlFormatString="verification.aspx?id={0}" /> 
                    </Columns>
                </asp:GridView>
    </section>
</asp:Content>

