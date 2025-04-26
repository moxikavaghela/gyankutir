<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_dashboard.Master" AutoEventWireup="true" CodeBehind="Admin_Index.aspx.cs" Inherits="gyankutir.admin.Admin_Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="breadcrumb-item active breadcrumb mb-4"><%Response.Write($"Welcom To GyanKutir {Session["admin_username"]} ji");%></h1>
    <br />
    <h4 class="text-justify mb-4 p-3" style="font-family: Calibri, sans-serif; font-size: 1.4rem; color: black;">
        <% Response.Write($"Welcome to GyanKutir, where your journey of shaping young minds begins! We are thrilled to have you as part of our growing community of passionate tutors. Here, you can find students, manage your classes, and inspire the next generation with your knowledge and experience. Stay motivated, stay dedicated, and make every session a step towards excellence. Wishing you a fulfilling and successful teaching experience with us, {Session["admin_username"]} ji."); %>
    </h4>

    <br />
    <div class="row">
        <!-- View Tutor Card -->
        <div class="col-xl-3 col-md-6">
            <div class="card bg-primary text-white mb-4">
                <div class="card-body">View Tutor</div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <a class="small text-white stretched-link" href="View_Tutor_Admin.aspx">View Tutors</a>
                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                </div>
            </div>
        </div>

        <!-- View Students Card -->
        <div class="col-xl-3 col-md-6">
            <div class="card bg-warning text-white mb-4">
                <div class="card-body">View Students</div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <a class="small text-white stretched-link" href="View_Students_Admin.aspx">View Students</a>
                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                </div>
            </div>
        </div>

        <!-- View Contacts Card -->
        <div class="col-xl-3 col-md-6">
            <div class="card bg-success text-white mb-4">
                <div class="card-body">View Contacts</div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <a class="small text-white stretched-link" href="View_Contact.aspx">View Contacts</a>
                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
