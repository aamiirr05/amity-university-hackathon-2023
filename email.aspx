<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="email.aspx.cs" Inherits="email" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/email.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form">
        <form action="https://formsubmit.co/ba8df8b45cb153c4a68b204805916b25" method="POST">
            <label for="" class="lb" >Name</label>
            <input type="text" placeholder="Name" class="inp"
            name="name" required>
            <label for="" class="lb">Email</label>
            <input type="email"placeholder="Email"class="inp"
            name="email" required>

            <input type="hidden" name="_cc" value="aamirbhathara@gmail.com">

            <label for="" class="lb">Subject</label>
            <input type="text" placeholder="Subject" class="inp"
            name="subject" required>

            <label for="" class="lb">Message</label>
            <textarea name="" id="" cols="20" rows="5"
            placeholder="Message"class="inp" name="msg"></textarea>

            <input type="hidden" name="_template" value="box">
            <button class="btn" type="submit">Submit</button>
        </form>
    </div>
</asp:Content>

