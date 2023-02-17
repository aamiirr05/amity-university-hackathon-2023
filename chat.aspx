<%@ Page Title="" Language="C#" MasterPageFile="~/alumni.master" AutoEventWireup="true" CodeFile="chat.aspx.cs" Inherits="chat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="Css/chatbox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper">
        <header>
            <div class="title">
                <h1>Chat Box</h1>
            </div>
        </header>
        <div class="container">
            <div class="left">
                <div class="member">
                    <h3>Member</h3>
                    <h4>3</h4>
                </div>
                <div class="people">
                    <p>Alex</p>
                    <p>Harry</p>
                    <p>John</p>
                </div>
            </div>
            <div class="right">
                <div class="chats">
                    <div class="user-join">
                        <p><strong>John</strong> joined the chat</p>
                    </div>
                    <div class="msg in">
                        <h5>John</h5>
                        <p>Hello Alex</p>
                    </div>
                    <div class="msg out">
                        <h5>Harry</h5>
                        <p>Welcome John</p>
                    </div>
                    <div class="msg in">
                        <h5>Alex</h5>
                        <p>Hey John</p>
                    </div>
                </div>
                <div class="user-input">
                    <input type="text" placeholder="Type your message...">
                    <button>Send</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

