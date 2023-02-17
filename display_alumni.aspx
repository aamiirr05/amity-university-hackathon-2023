<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="display_alumni.aspx.cs" Inherits="display_alumni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 
    <link href="Css/bootstrap.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .Btn{
            width: 169px;
            background-color: #5ec576;
            border-radius: 19px;
            margin: 7px;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div class="form-group row" style="margin: 0 5em;">

                       <div class="col-sm-6 col-md-5">
                          <div class="form-group">
                             <asp:TextBox id="Txt_Name" CssClass="input-text full-width" runat="server" ValidationGroup="Enquiry" placeholder="Search By Name"></asp:TextBox>

                         </div>
                     </div>

                       <div class="col-sm-6 col-md-5">
                          <div class="form-group">
                             <asp:TextBox id="Txt_College" CssClass="input-text full-width" runat="server" ValidationGroup="Enquiry" placeholder="Search By College Name"></asp:TextBox>
                         </div>
                     </div>

                       <div class="col-sm-6 col-md-5">
                          <div class="form-group">
                             <asp:TextBox id="Txt_College_Type" CssClass="input-text full-width" runat="server" ValidationGroup="Enquiry" placeholder="Search By College Type"></asp:TextBox>
                         </div>
                     </div>

                       <div class="col-sm-6 col-md-5">
                          <div class="form-group">
                             <asp:TextBox id="Txt_Stream" CssClass="input-text full-width" runat="server" ValidationGroup="Enquiry" placeholder="Search By Stream"></asp:TextBox>
                         </div>
                     </div>

                    <div class="col-sm-6 col-md-5">
                          <div class="form-group">
                             <asp:TextBox id="Txt_Degree" CssClass="input-text full-width" runat="server" ValidationGroup="Enquiry" placeholder="Search By Degree"></asp:TextBox>
                         </div>
                     </div>
                   
                  

                     <div class="col-sm-4 col-md-2" >
                         <asp:Button ID="Btn_Search"  OnClick="Btn_Search_Click"  CssClass="full-width btn-medium btn" runat="server" Text="Search" />
                       </div>
                    </div>

    <asp:GridView ID="Display_Grid" Width="100%" AutoGenerateColumns="false" runat="server">
                    <Columns>
                         <asp:TemplateField  HeaderText="Id"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Id" CssClass="grid_label" runat="server" Text='<%# Eval("alumni_id") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Name"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Name" runat="server" CssClass="grid_label" Text='<%# Eval("alumni_name") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="college Name"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_College_Name" runat="server" CssClass="grid_label" Text='<%# Eval("college_name") %>'></asp:Label>


                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="college Type"> 
                             <ItemTemplate>
                                  <asp:Label ID="Lbl_College_Type" runat="server" CssClass="grid_label" Text='<%# Eval("college_type") %>'></asp:Label>
                            </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Stream"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Stream" runat="server" CssClass="grid_label" Text='<%# Eval("stream") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Degree"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Degree" runat="server" CssClass="grid_label" Text='<%# Eval("degree") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Graduation Start"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Grad_Start" runat="server" CssClass="grid_label" Text='<%# Eval("grad_start") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Graduation End"> 
                             <ItemTemplate>
                                 <asp:Label ID="Lbl_Grad_End" runat="server" CssClass="grid_label" Text='<%# Eval("grad_end") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <%--<asp:HyperLinkField HeaderText="Verify" Text="Verify" HeaderStyle-Width="100" ItemStyle-Width="100" DataNavigateUrlFields="alumni_id" DataNavigateUrlFormatString="see_more.aspx?id={0}"/>--%>
                    </Columns>
                </asp:GridView>
</asp:Content>

