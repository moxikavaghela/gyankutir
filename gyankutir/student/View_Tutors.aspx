﻿<%@ Page Title="" Language="C#" MasterPageFile="~/student/Student_Dashboard.Master" AutoEventWireup="true" CodeBehind="View_Tutors.aspx.cs" Inherits="gyankutir.student.View_Tutors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <div class="row">

        <div class="col-md-12">

            <h1 class="jumbotron bg-dark text-white text-center">View Tutor Details</h1>

        </div>

    </div>
    <br />

    <div class="row">

        <asp:Repeater ID="Repeater1" runat="server">

            <ItemTemplate>

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

                            <small style="font-size: 15px; color: steelblue;">Email:</small>
                            <h5>
                                <asp:Label ID="Label2" runat="server" Text='<% #Bind("email") %>'></asp:Label>
                            </h5>

                            <small style="font-size: 15px; color: steelblue;">Country:</small>
                            <h5>
                                <asp:Label ID="Label3" runat="server" Text='<% #Bind("country") %>'></asp:Label>
                            </h5>

                            <small style="font-size: 15px; color: steelblue;">City:</small>
                            <h5>
                                <asp:Label ID="Label4" runat="server" Text='<% #Bind("city") %>'></asp:Label>
                            </h5>

                            <small style="font-size: 15px; color: steelblue;">Experience:</small>
                            <h5>
                                <asp:Label ID="Label5" runat="server" Text='<% #Bind("experience") %>'></asp:Label>
                            </h5>

                            <small style="font-size: 15px; color: steelblue;">Contact No:</small>
                            <h5>
                                <asp:Label ID="Label6" runat="server" Text='<% #Bind("contactno") %>'></asp:Label>
                            </h5>

                        </div>
                        <div class="card-footer">

                            <small style="font-size: 15px; color: steelblue;">Qualification:</small>
                            <h4>
                                <asp:Label ID="Label7" runat="server" Text='<% #Bind("qualification") %>'></asp:Label>
                            </h4>

                            <small style="font-size: 15px; color: steelblue;">Degree:</small>
                            <h4>
                                <asp:Label ID="Label8" runat="server" Text='<% #Bind("degree") %>'></asp:Label>
                            </h4>

                        </div>
                    </div>
                    <br />

                </div>

                <br />

            </ItemTemplate>

        </asp:Repeater>

    </div>

</asp:Content>
