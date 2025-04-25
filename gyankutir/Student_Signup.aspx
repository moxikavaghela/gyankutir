<%@ Page Title="" Language="C#" MasterPageFile="~/gyankutir_Site.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="gyankutir.Student_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="box-shadow: -1px 0px 36px 7px rgba(0,0,0,0.58); -webkit-box-shadow: -1px 0px 36px 7px rgba(0,0,0,0.58); -moz-box-shadow: -1px 0px 36px 7px rgba(0,0,0,0.58);">
        <br />
        <div class="row">
            <div class="col-md-12">
                <h1 class="jumbotron text-white text-center" style="background-color: #1e4356;">Student Signup</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter First Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="FatherNameTextBox" CssClass="form-control" placeholder="Enter Father Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="FatherNameTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Father Name"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter Surname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Surname"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Gender" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Gender"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Age"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Sorry this age number is not allowed" MaximumValue="60" MinimumValue="5" Type="Integer"></asp:RangeValidator>
                <br />

                <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Country"></asp:RequiredFieldValidator>
                <br />
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter City"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Columns="20" Rows="4" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Address"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="ClassTextBox" CssClass="form-control" placeholder="Enter Class" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ClassTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Class"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="GoingToDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Going Type</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>University</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="GoingToDropDownList" InitialValue="Select Going Type" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Going Type"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="SubjectTextBox" CssClass="form-control" placeholder="Enter Subject" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="SubjectTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Subject"></asp:RequiredFieldValidator>
                <br />
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter ContactNO" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Contact No"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegexValidatorContact" ControlToValidate="ContactTextBox" ValidationExpression="^\d{10}$" ErrorMessage="Enter exactly 10 digits" ForeColor="Red" Display="Dynamic" SetFocusOnError="True" runat="server"></asp:RegularExpressionValidator>
                <%--<asp:RangeValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ID="RangeValidator2" runat="server" ErrorMessage="Enter only 10 digits"></asp:RangeValidator>--%>
                <br />

                <asp:DropDownList ID="TutionTypeDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tution Mode</asp:ListItem>
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Physical</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="TutionTypeDropDownList" InitialValue="Select Tution Mode" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Tution Type"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="TutorPreferDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tutor Prefer</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="TutorPreferDropDownList" InitialValue="Select Tutor Prefer" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Tutor Prefer"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="UsernameTextBox" CssClass="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="UsernameTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="PasswordTextBox" TextMode="Password" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="PasswordTextBox" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" ErrorMessage="Password must be at least 8 characters long and include uppercase, lowercase, number, and special character." ForeColor="Red" Display="Dynamic" SetFocusOnError="True" runat="server" />
                <br />

                <asp:TextBox ID="ConfirmPasswordTextBox" TextMode="Password" CssClass="form-control" placeholder="Confirm Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Re-Enter Password"></asp:RequiredFieldValidator>
                <asp:CompareValidator ControlToValidate="ConfirmPasswordTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ID="CompareValidator1" runat="server" ErrorMessage="Password Dosenot matches"></asp:CompareValidator>
                <br />
            </div>
        </div>
        <br />

        <div class="row">
            <div class="col-md-4 mx-auto">
                <asp:Button ID="StudentSignupButton" OnClick="StudentSignupButton_Click" Style="background-color: #1e4356;" Text="Signup" CssClass="btn btn-primary btn-block" runat="server" />
            </div>
        </div>
        <br />
    </div>
</asp:Content>
