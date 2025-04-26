<%@ Page Title="About Us - Gyan-Kutir" Language="C#" MasterPageFile="~/gyankutir_Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="gyankutir.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ======= About Us Section ======= -->
    <section class="breadcrumbs">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <h2>About Us</h2>
                <ol>
                    <li><a href="Default.aspx">Home</a></li>
                    <li>About Us</li>
                </ol>
            </div>
        </div>
    </section>
    <!-- End About Us Section -->

    <!-- ======= About Section ======= -->
    <section class="about" data-aos="fade-up">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <img src="assets/img/about.jpg.png" class="img-fluid" alt="Gyan-Kutir" />
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0">
                    <h3>Your Smart Tuition Class Management System</h3>
                    <p class="font-italic">
                        Gyan-Kutir is a full-stack web application designed to simplify the process of connecting students and tutors. With features such as easy registration, filtering, and seamless communication, Gyan-Kutir offers a personalized experience for both students and tutors.
                    </p>
                    <ul>
                        <li><i class="icofont-check-circled"></i>Find and connect with the best tutors based on location, subject, and preferences.</li>
                        <li><i class="icofont-check-circled"></i>Manage student profiles, attendance, fees, and progress reports efficiently.</li>
                        <li><i class="icofont-check-circled"></i>Direct communication with tutors and the admin for seamless interaction.</li>
                    </ul>
                    <p>
                        With Gyan-Kutir, both students and tutors can experience a new level of convenience, transparency, and efficiency. The admin panel ensures smooth management of all processes, from user registration to feedback handling, ensuring a top-notch experience for all.
                    </p>
                </div>
            </div>
        </div>
    </section>
    <!-- End About Section -->

    <!-- ======= Facts Section ======= -->

    <section class="facts section-bg" data-aos="fade-up">
        <div class="container">
            <div class="row counters">
                <asp:FormView ID="FormViewCounts" runat="server" DataSourceID="SqlDataSourceCounts" Width="100%">
                    <ItemTemplate>
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-6 text-center">
                                <span><%# Eval("StudentCount") %></span>
                                <p>Students Registered</p>
                            </div>

                            <div class="col-lg-4 col-md-4 col-6 text-center">
                                <span><%# Eval("TutorCount") %></span>
                                <p>Tutors Available</p>
                            </div>

                            <div class="col-lg-4 col-md-4 col-6 text-center">
                                <span><%# Eval("FeedbackCount") %></span>
                                <p>Feedback Submitted</p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSourceCounts" runat="server"
                    ConnectionString="<%$ ConnectionStrings:dbcs %>"
                    SelectCommand="SELECT 
                    (SELECT COUNT(*) FROM student_signup) AS StudentCount,
                    (SELECT COUNT(*) FROM tutor_signup) AS TutorCount,
                    (SELECT COUNT(*) FROM contact_tbl) AS FeedbackCount"></asp:SqlDataSource>
            </div>
        </div>
    </section>
    <!-- End Facts Section -->
    <!-- ======= Our Skills Section ======= -->
    <section class="skills" data-aos="fade-up">
        <div class="container">
            <div class="section-title">
                <h2>Our Skills</h2>
                <p>We combine the best technologies and methodologies to create a platform that ensures ease of use, security, and scalability. Our skills are demonstrated in various areas such as full-stack development, database management, and UI/UX design.</p>
            </div>

            <div class="skills-content">
                <div class="progress">
                    <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                        <span class="skill">HTML <i class="val">100%</i></span>
                    </div>
                </div>

                <div class="progress">
                    <div class="progress-bar bg-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                        <span class="skill">CSS <i class="val">90%</i></span>
                    </div>
                </div>

                <div class="progress">
                    <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100">
                        <span class="skill">JavaScript <i class="val">85%</i></span>
                    </div>
                </div>

                <div class="progress">
                    <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
                        <span class="skill">ASP.NET <i class="val">80%</i></span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Our Skills Section -->
</asp:Content>
