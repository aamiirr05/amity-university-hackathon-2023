<%@ Page Title="" Language="C#" MasterPageFile="~/alumni.master" AutoEventWireup="true" CodeFile="update_alumni.aspx.cs" Inherits="update_alumni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-sm-12">    <%--grid for personal information--%>
    <asp:GridView ID="Grid_Personal" CssClass="grid_view" AutoGenerateColumns="false" runat="server">
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
                                 <asp:Label ID="Lbl_Dob" runat="server" CssClass="grid_label" Text='<%# Eval("alumni_dob") %>'></asp:Label>
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

                        <asp:HyperLinkField HeaderText="EDIT" ControlStyle-ForeColor="#11936e" Text="EDIT" HeaderStyle-Width="100" ItemStyle-Width="100"  DataNavigateUrlFields="alumni_id" DataNavigateUrlFormatString="registration_form.aspx?id={0}" /> 
                    </Columns>
                </asp:GridView>
        </div>
    <br />
    <div class="col-sm-12">    <%--grid for College information--%>
    <asp:GridView ID="Grid_College" CssClass="grid_view" AutoGenerateColumns="false" runat="server">
                    <Columns>
                         <asp:TemplateField  HeaderText="Id"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Id" runat="server" CssClass="grid_label" Text='<%# Eval("alumni_id") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="College Type"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Type" runat="server" CssClass="grid_label" Text='<%# Eval("college_type") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="College Name"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Name" runat="server" CssClass="grid_label" Text='<%# Eval("college_name") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Country"> 
                             <ItemTemplate>
                                  <asp:Label ID="Lbl_Country" runat="server" CssClass="grid_label" Text='<%# Eval("country") %>'></asp:Label>
                            </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="State"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_State" runat="server" CssClass="grid_label" Text='<%# Eval("state") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="City"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_City" runat="server" CssClass="grid_label" Text='<%# Eval("city") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                    </Columns>
                </asp:GridView>
        </div>
</asp:Content>

