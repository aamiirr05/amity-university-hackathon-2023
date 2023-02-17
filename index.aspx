<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/index.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="dashboard">
        <div class="grid_content">
            <div class="grid_dark">
                <h2>Total Alumni's:</h2><br />
                <asp:Label ID="Lbl_Total_Alumni" runat="server" ></asp:Label> 
            </div>

            <div class="grid_light">
                <h2>Total Alumni's in Govt College:</h2><br />
                <asp:Label ID="Lbl_Govt" CssClass="label_style" runat="server"></asp:Label>
            </div>

            <div class="grid_dark">
                <h2>Total Alumni's in Aided College:</h2><br />
                <asp:Label ID="Lbl_Aided" CssClass="label_style"  runat="server"></asp:Label> 
            </div>
        </div>

        <div class="grid_content">
            <div class="grid_light">
                <h2>Job%:</h2><br />
                <asp:Label ID="Lbl_Job_Percentage" CssClass="label_style" runat="server">90%</asp:Label>
            </div>

            <div class="grid_dark">
                <h2>Job% in Govt College:</h2><br />
                <asp:Label ID="Lbl_Job_Govt" CssClass="label_style" runat="server">55%</asp:Label>
            </div>

            <div class="grid_light">
                <h2>Job% in Aided College:</h2><br />
                <asp:Label ID="Lbl_Job_Aided" CssClass="label_style" runat="server" >35%</asp:Label>
            </div>
        </div>
    </section>
</asp:Content>

