<%@ Page Language="C#" AutoEventWireup="true" CodeFile="landing.aspx.cs" Inherits="landing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Landing Page</title>
    <link href="Css/landing.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    
       <div class="wrapper hidden">
      <div class="form-wrapper login">
        <span class="close"><i class="fa-solid fa-xmark"></i></span>
       <form id="form" runat="server">
          <h2>Login</h2>
           <div class="insert">
               <label>Login Type:</label>
               <asp:DropDownList ID="Ddl_type"  runat="server">
                   <asp:ListItem value="1" text="Admin">Admin</asp:ListItem>
                   <asp:ListItem value="2" text="Alumni">Alumni</asp:ListItem>
               </asp:DropDownList>
            <!-- <label for="">Username:</label> -->
          </div>
          <div class="insert">
            <asp:TextBox ID="Txt_Username" placeholder="Enter your user name" runat="server"></asp:TextBox>
            <!-- <label for="">Username:</label> -->
          </div>
          <div class="insert">
            <%--<input
              type="password"
              id="passcode"
              placeholder="Enter your password"
              required
            />--%>
              <asp:TextBox ID="Txt_Password" placeholder="Enter your Password" TextMode="Password" runat="server"></asp:TextBox>
            <!-- <label for="">Password:</label> -->
            <span class="eye" id="passcode" onclick="myFuncttion()">
              <i id="open-eye" class="fa-solid fa-eye"></i>
              <i id="close-eye" class="fa-solid fa-eye-slash"></i>
            </span>
          </div>
          <div class="checkbox">
            <label for=""><input type="checkbox" /> Remember me</label>
          </div>
           <asp:Button ID="Btn_Login" OnClick="Btn_Login_Click1" runat="server" Text="Log In" />
          <!-- <div class="register-link">
                    <p>Don't have an account? <a href="#" class="register">Register</a></p>
                </div> -->
           </form>
      </div>
    </div>
    <div class="overlay hidden"></div>
    <div class="main">
      <div class="container">
        <nav>
          <ul>
            <li><a href="#">About</a></li>
          </ul>
          <ul>
            <li><a href="registration_form.aspx">Alumni Registration</a></li>
            <button class="btn">Log In</button>
          </ul>
        </nav>
      </div>

      <div class="head">
        <h1>Building a Stronger Alumni Network</h1>
      </div>

      <script>
        function myFuncttion() {
          var x = document.getElementById("passcode");
          var y = document.getElementById("open-eye");
          var z = document.getElementById("close-eye");

          if (x.type === "password") {
            x.type = "text";
            y.style.display = "block";
            z.style.display = "none";
          } else {
            x.type = "password";
            y.style.display = "none";
            z.style.display = "block";
          }
        }

        const btn1 = document.querySelector(".btn");
        const wrapper = document.querySelector(".wrapper");
        const overlay = document.querySelector(".overlay");
        const close = document.querySelector(".close");

        const openForm = function () {
          wrapper.classList.remove("hidden");
          overlay.classList.remove("hidden");
        };
        const closeForm = function () {
          wrapper.classList.add("hidden");
          overlay.classList.add("hidden");
        };

        btn1.addEventListener("click", openForm);
          close.addEventListener("click", closeForm);
          overlay.addEventListener("click", closeForm);
        //       document.addEventListener('keydown', function (e) {
        // console.log(e.key)};
      </script>
    </div>
</body>
</html>
