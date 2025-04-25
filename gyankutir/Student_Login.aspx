<%@ Page Title="" Language="C#" MasterPageFile="~/gyankutir_Site.Master" AutoEventWireup="true" CodeBehind="Student_Login.aspx.cs" Inherits="gyankutir.Student_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto" style="box-shadow: -1px 0px 36px 7px rgba(0,0,0,0.58); -webkit-box-shadow: -1px 0px 36px 7px rgba(0,0,0,0.58); -moz-box-shadow: -1px 0px 36px 7px rgba(0,0,0,0.58);">
                <br />
                <div class="jumbotron text-center text-white" style="background-color: #1c4558;">
                    <h2>Student Login</h2>
                </div>

                <asp:TextBox ID="UsernameTxt" placeholder="Enter Username" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UsernameTxt" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Username required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="PasswordTxt" placeholder="Enter Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="PasswordTxt" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Password required"></asp:RequiredFieldValidator>
                <br />

                <asp:Button ID="Student_LoginBtn" runat="server" Text="Login" style="background-color: #1e4356;" CssClass="btn btn-primary btn-block" OnClick="Student_LoginBtn_Click"/>
                <br />

            </div>
        </div>
    </div>
    <br />
</asp:Content>
