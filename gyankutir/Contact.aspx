<%@ Page Title="" Language="C#" MasterPageFile="~/gyankutir_Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="gyankutir.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        function SuccessContact() {
            Swal.fire({
                title: "Inserted!",
                text: "Thanks for contacting us!",
                icon: "success"
            });
        }

        function FailContact() {
            Swal.fire({
                title: "Opps!",
                text: "Please try once again!",
                icon: "error"
            });
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ======= Contact Section ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>Contact</h2>
                <ol>
                    <li><a href="Default.aspxl">Home</a></li>
                    <li>Contact</li>
                </ol>
            </div>

        </div>
    </section>
    <!-- End Contact Section -->

    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
        <div class="container">

            <div class="row">

                <div class="col-lg-6">

                    <div class="row">
                        <div class="col-md-12">
                            <div class="info-box">
                                <i class="bx bx-map"></i>
                                <h3>Our Address</h3>
                                <p>Gyan-Kutir Vadodara, Gujarat-India</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="info-box">
                                <i class="bx bx-envelope"></i>
                                <h3>Email Us</h3>
                                <p>
                                    moxikavaghela15123@gmail.com<br>
                                </p>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="info-box">
                                <i class="bx bx-envelope"></i>
                                <h3>Email Us</h3>
                                <p>
                                    moxika1512@gmail.com<br>
                                </p>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6">
                    <form>
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <%--<input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />--%>
                                <asp:TextBox ID="NameTextBox" class="form-control" placeholder="Your Name" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>

                                <%--<div class="validate"></div>--%>
                            </div>
                            <div class="col-md-6 form-group">
                                <%-- <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />--%>
                                <asp:TextBox ID="EmailTextBox" class="form-control" placeholder="Your Email" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="e-mail is Required"></asp:RequiredFieldValidator>
                                <%--<div class="validate"></div>--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <%--<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />--%>
                            <asp:DropDownList ID="SubjectDropDownList" class="form-control" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Feedback</asp:ListItem>
                                <asp:ListItem>Complaint</asp:ListItem>
                                <asp:ListItem>Suggestion</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="SubjectDropDownList" InitialValue="Select" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject is Required"></asp:RequiredFieldValidator>
                            <%--<asp:TextBox ID="SubjectTextBox" class="form-control" placeholder="Subject" runat="server"></asp:TextBox>--%>
                            <%--<div class="validate"></div>--%>
                        </div>
                        <div class="form-group">
                            <%--<textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>--%>
                            <asp:TextBox ID="MessageTextBox" class="form-control" TextMode="MultiLine" Columns="50" Rows="5" placeholder="Message" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="MessageTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Message is Required"></asp:RequiredFieldValidator>
                            <%--<div class="validate"></div>--%>
                        </div>
                        <%-- <div class="mb-3">
                            <div class="loading">Loading</div>
                            <div class="error-message"></div>
                            <div class="sent-message">Your message has been sent. Thank you!</div>
                        </div>--%>
                        <div class="text-center">
                            <%--<button type="submit">Send Message</button>--%>
                            <asp:Button CssClass="btn btn-info" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                        </div>
                    </form>
                </div>

            </div>

        </div>
    </section>
    <!-- End Contact Section -->

<!-- ======= Map Section ======= -->
<section class="map mt-2">
    <div class="container-fluid p-0">
        <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8&q=Vadodara,Gujarat,India" frameborder="0" style="border: 0; width: 100%; height: 350px;" allowfullscreen=""></iframe>
    </div>
</section>
<!-- End Map Section -->
</asp:Content>
