﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="gyankutir.admin.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="~/dist/sweetalert2.min.css" rel="stylesheet" />
    <script src="/dist/sweetalert2.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <div class="row">
                <div class="col-md-4 mx-auto" style="box-shadow: -1px 0px 36px 7px rgba(0,0,0,0.58); -webkit-box-shadow: -1px 0px 36px 7px rgba(0,0,0,0.58); -moz-box-shadow: -1px 0px 36px 7px rgba(0,0,0,0.58);">

                    <div class="jumbotron text-center text-white bg-primary">
                        <h2>Admin Login</h2>
                    </div>

                    <asp:TextBox ID="UsernameTxt" placeholder="Enter Username" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UsernameTxt" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Username required"></asp:RequiredFieldValidator><br />

                    <asp:TextBox ID="PasswordTxt" placeholder="Enter Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="PasswordTxt" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Password required"></asp:RequiredFieldValidator><br />

                    <asp:Button ID="LoginBtn" OnClick="LoginBtn_Click" runat="server" Text="Login" CssClass="btn btn-primary btn-block" /><br />

                </div>
            </div>
        </div>

    </form>
    <script src="/assets/vendor/jquery/jquery.min.js"></script>
    <script src="/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
