<%@ Page Title="" Language="C#" MasterPageFile="~/gyankutir_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_Signup.aspx.cs" Inherits="gyankutir.Tutor_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="box-shadow: -1px 0px 36px 7px rgba(0,0,0,0.58); -webkit-box-shadow: -1px 0px 36px 7px rgba(0,0,0,0.58); -moz-box-shadow: -1px 0px 36px 7px rgba(0,0,0,0.58);">
        <br />
        <div class="row">
            <div class="col-md-12">
                <h1 class="jumbotron text-white text-center" style="background-color: #1e4356;">Tutor Signup</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter First Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
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
                <asp:RangeValidator ID="RangeValidator1" ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Sorry this age number is not allowed" MaximumValue="70" MinimumValue="20" Type="Integer"></asp:RangeValidator>
                <br />

                <asp:TextBox ID="EmailTextBox" CssClass="form-control" placeholder="Enter E-Mail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />

                <asp:DropDownList ID="MaritalStatusDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Marital Status</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Engaged</asp:ListItem>
                    <asp:ListItem>Seperated</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                    <asp:ListItem>Widowed</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Marital Status" ControlToValidate="MaritalStatusDropDownList" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Marital Status"></asp:RequiredFieldValidator>
                <br />

            </div>
            <div class="col-md-4">

                <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Country"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter City"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Columns="20" Rows="6" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Address"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="QualificationDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Qualification</asp:ListItem>
                    <asp:ListItem>Graduation</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="QualificationDropDownList" InitialValue="Select Qualification" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Qualification Type"></asp:RequiredFieldValidator>
                <br />
            </div>
            <div class="col-md-4">

                <asp:TextBox ID="DegreeTextBox" CssClass="form-control" placeholder="Enter Degree" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="DegreeTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Degree"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="ExperienceDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Experience</asp:ListItem>
                    <asp:ListItem>1 year</asp:ListItem>
                    <asp:ListItem>2 year</asp:ListItem>
                    <asp:ListItem>3 year</asp:ListItem>
                    <asp:ListItem>4 year</asp:ListItem>
                    <asp:ListItem>5 year</asp:ListItem>
                    <asp:ListItem>5+ year</asp:ListItem>
                    <asp:ListItem>10+ year</asp:ListItem>
                    <asp:ListItem>Fresher</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="ExperienceDropDownList" InitialValue="Select Experience" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Experience"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter ContactNo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" runat="server" ErrorMessage="Enter Contact No"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegexValidatorContact" ControlToValidate="ContactTextBox" ValidationExpression="^\d{10}$" ErrorMessage="Enter exactly 10 digits" ForeColor="Red" Display="Dynamic" SetFocusOnError="True" runat="server"></asp:RegularExpressionValidator>
                <%--<asp:RangeValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ID="RangeValidator2" runat="server" ErrorMessage="Enter only 10 digits"></asp:RangeValidator>--%>
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
            <div class="col-md-6 mx-auto">
                <%--OnClick="TutorSignupButton_Click"--%>
                <asp:Button ID="TutorSignupButton" OnClick="TutorSignupButton_Click" Style="background-color: #1e4356;" Text="Signup" CssClass="btn btn-primary btn-block" runat="server" />
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4 mx-auto text-center">
                <a href="Student_Signup.aspx" class="btn btn-success" style="background-color: #1e4356;">Signup As Student</a>
                <a href="Tutor_Signup.aspx" class="btn btn-info" style="background-color: #1e4356;">Signup As Tutor</a>
                <br />
            </div>
        </div>

        <br />
    </div>
</asp:Content>
