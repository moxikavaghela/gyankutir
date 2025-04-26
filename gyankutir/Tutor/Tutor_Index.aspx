<%@ Page Title="" Language="C#" MasterPageFile="~/Tutor/Tutor_Dashboard.Master" AutoEventWireup="true" CodeBehind="Tutor_Index.aspx.cs" Inherits="gyankutir.Tutor.Tutor_Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="breadcrumb-item active breadcrumb mb-4"><%Response.Write($"Welcom To GyanKutir {Session["tutor_username"]} ji");%></h1>
    <br />
    <h4 class="text-justify mb-4 p-3" style="font-family: Calibri, sans-serif; font-size: 1.4rem; color: black;">
        <% Response.Write($"Welcome to GyanKutir, where your journey of shaping young minds begins! We are thrilled to have you as part of our growing community of passionate tutors. Here, you can find students, manage your classes, and inspire the next generation with your knowledge and experience. Stay motivated, stay dedicated, and make every session a step towards excellence. Wishing you a fulfilling and successful teaching experience with us, {Session["tutor_username"]} ji."); %>
    </h4>

    <br />
    <div class="row">
        <div class="col-xl-3 col-md-6">
            <div class="card bg-primary text-white mb-4">
                <div class="card-body">Find Students</div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <a class="small text-white stretched-link" href="View_Students.aspx">View Students</a>
                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                </div>
            </div>
        </div>
</asp:Content>
