<%@ Page Title="" Language="C#" MasterPageFile="~/Tutor/Tutor_Dashboard.Master" AutoEventWireup="true" CodeBehind="View_Students.aspx.cs" Inherits="gyankutir.Tutor.View_Students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <div class="row">

        <div class="col-md-12">

            <h1 class="jumbotron bg-dark text-white text-center">View Student Details</h1>

        </div>

    </div>
    <br />

    <div class="row">

        <asp:Repeater ID="Repeater1" runat="server">

            <itemtemplate>

                <br />

                <div class="col-md-4">

                    <br />
                    <div class="card bg-dark text-white text-center">
                        <div class="card-header">
                            <small style="font-size: 15px; color: steelblue;">Name:</small>
                            <h3>
                                <asp:Label ID="Label1" runat="server" Text='<% #Bind("name") %>'></asp:Label>
                            </h3>

                        </div>
                        <div class="card-body">

                            <small style="font-size: 15px; color: steelblue;">Contact No:</small>
                            <h5>
                                <asp:Label ID="Label6" runat="server" Text='<% #Bind("contactno") %>'></asp:Label>
                            </h5>

                            <small style="font-size: 15px; color: steelblue;">Standard:</small>
                            <h5>
                                <asp:Label ID="Label2" runat="server" Text='<% #Bind("standard") %>'></asp:Label>
                            </h5>

                            <small style="font-size: 15px; color: steelblue;">Age:</small>
                            <h5>
                                <asp:Label ID="Label5" runat="server" Text='<% #Bind("age") %>'></asp:Label>
                            </h5>

                            <small style="font-size: 15px; color: steelblue;">Going to:</small>
                            <h5>
                                <asp:Label ID="Label9" runat="server" Text='<% #Bind("goingto") %>'></asp:Label>
                            </h5>

                            <small style="font-size: 15px; color: steelblue;">Subject:</small>
                            <h5>
                                <asp:Label ID="Label10" runat="server" Text='<% #Bind("subject") %>'></asp:Label>
                            </h5>

                            <small style="font-size: 15px; color: steelblue;">Country:</small>
                            <h5>
                                <asp:Label ID="Label3" runat="server" Text='<% #Bind("country") %>'></asp:Label>
                            </h5>

                            <small style="font-size: 15px; color: steelblue;">City:</small>
                            <h5>
                                <asp:Label ID="Label4" runat="server" Text='<% #Bind("city") %>'></asp:Label>
                            </h5>

                        </div>
                        <div class="card-footer">

                            <small style="font-size: 15px; color: steelblue;">Tution Type:</small>
                            <h4>
                                <asp:Label ID="Label7" runat="server" Text='<% #Bind("tutiontype") %>'></asp:Label>
                            </h4>

                            <small style="font-size: 15px; color: steelblue;">Tutor Prefer:</small>
                            <h4>
                                <asp:Label ID="Label8" runat="server" Text='<% #Bind("tutorprefer") %>'></asp:Label>
                            </h4>

                        </div>
                    </div>
                    <br />

                </div>

                <br />

            </itemtemplate>

        </asp:Repeater>

    </div>

</asp:Content>
