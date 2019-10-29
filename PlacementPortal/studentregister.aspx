<%@ Page Title="" Theme="Theme1" Language="C#" AutoEventWireup="true" CodeBehind="studentregister.aspx.cs" Inherits="PlacementPortal.WebForm4" %>

<html>
<head runat="server">
    <title></title>
    <link href="ext/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f6f6f6;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="container mt-4">
            <div class="row">
                <div class="col-12">
                    <p class="display-4">New Registration: Student</p>
                    <hr />
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <p class="h4 font-weight-bold ml-2">Basic Details</p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-9">
                    <div class="card mb-4 mt-2 cust__card">
                        <div class="card-body">

                            <div class="form-group">
                                <label for="student_id">Student ID</label>
                                <asp:TextBox ID="student_id" CssClass="form-control" runat="server" />
                                <asp:RequiredFieldValidator runat="server"
                                    CssClass="text-danger"
                                    Display="Dynamic"
                                    ControlToValidate="student_id"
                                    ErrorMessage="Can't be Empty" />
                            </div>

                            <div class="form-row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="first_nameTextBox">First Name</label>
                                        <asp:TextBox ID="first_nameTextBox" CssClass="form-control" runat="server" />
                                        <asp:RequiredFieldValidator runat="server"
                                            ControlToValidate="first_nameTextBox"
                                            CssClass="text-danger"
                                            Display="Dynamic"
                                            ErrorMessage="Can't be Empty" />
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="last_nameTextBox">Last Name</label>
                                        <asp:TextBox ID="last_nameTextBox" CssClass="form-control" runat="server" />
                                        <asp:RequiredFieldValidator runat="server"
                                            CssClass="text-danger"
                                            Display="Dynamic"
                                            ControlToValidate="last_nameTextBox"
                                            ErrorMessage="Can't be Empty" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="pw_original">Set Password</label>
                                        <asp:TextBox ID="pw_original" CssClass="form-control" TextMode="Password" runat="server" />
                                        <asp:RequiredFieldValidator runat="server"
                                            CssClass="text-danger"
                                            Display="Dynamic"
                                            ControlToValidate="pw_original"
                                            ErrorMessage="Can't be Empty" />
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="pw_reenter">Re-Enter Password</label>
                                        <asp:TextBox ID="pw_reenter" CssClass="form-control" TextMode="Password" runat="server" />
                                        <asp:RequiredFieldValidator runat="server"
                                            CssClass="text-danger"
                                            Display="Dynamic"
                                            ControlToValidate="pw_reenter"
                                            ErrorMessage="Can't be Empty" />
                                    </div>
                                </div>
                            </div>
                            <div>
                                <asp:CompareValidator
                                    runat="server"
                                    ControlToValidate="pw_original"
                                    ControlToCompare="pw_reenter"
                                    CssClass="text-danger"
                                    Display="Dynamic"
                                    ErrorMessage="Passwords must match" />
                            </div>

                            <div class="form-group">
                                <label for="email">E-Mail</label>
                                <asp:TextBox ID="email" CssClass="form-control" runat="server" />
                                <asp:RequiredFieldValidator runat="server"
                                    CssClass="text-danger"
                                    Display="Dynamic"
                                    ControlToValidate="email"
                                    ErrorMessage="Can't be Empty" />
                            </div>

                            <div class="form-group">
                                <label for="phone_number">Phone Number</label>
                                <asp:TextBox ID="phone_number" CssClass="form-control" runat="server" />
                                <asp:RequiredFieldValidator runat="server"
                                    CssClass="text-danger"
                                    Display="Dynamic"
                                    ControlToValidate="phone_number"
                                    ErrorMessage="Can't be Empty" />
                            </div>

                            <div class="form-row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="gender">Gender</label>
                                        <asp:TextBox ID="gender" CssClass="form-control" runat="server" />
                                        <asp:RequiredFieldValidator runat="server"
                                            CssClass="text-danger"
                                            Display="Dynamic"
                                            ControlToValidate="gender"
                                            ErrorMessage="Can't be Empty" />
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="dob">Date of Birth(m/d/y)</label>
                                        <asp:TextBox ID="dob" CssClass="form-control" TextMode="Date" runat="server" />
                                        <asp:RequiredFieldValidator runat="server"
                                            CssClass="text-danger"
                                            Display="Dynamic"
                                            ControlToValidate="dob"
                                            ErrorMessage="Can't be Empty" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="course">Course</label>
                                        <asp:TextBox ID="course" CssClass="form-control" runat="server" />
                                        <asp:RequiredFieldValidator runat="server"
                                            CssClass="text-danger"
                                            Display="Dynamic"
                                            ControlToValidate="course"
                                            ErrorMessage="Can't be Empty" />
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="branch">Branch</label>
                                        <asp:TextBox ID="branch" CssClass="form-control" runat="server" />
                                        <asp:RequiredFieldValidator runat="server"
                                            CssClass="text-danger"
                                            Display="Dynamic"
                                            ControlToValidate="branch"
                                            ErrorMessage="Can't be Empty" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="semester">Semester</label>
                                        <asp:TextBox ID="semester" CssClass="form-control" runat="server" />
                                        <asp:RequiredFieldValidator runat="server"
                                            CssClass="text-danger"
                                            Display="Dynamic"
                                            ControlToValidate="semester"
                                            ErrorMessage="Can't be Empty" />
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="section">Section</label>
                                        <asp:TextBox ID="section" CssClass="form-control" runat="server" />
                                        <asp:RequiredFieldValidator runat="server"
                                            CssClass="text-danger"
                                            Display="Dynamic"
                                            ControlToValidate="section"
                                            ErrorMessage="Can't be Empty" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-row mt-3 mx-auto">
                                <div class="form-group">
                                    <asp:Button ID="next_1" CssClass="ml-auto" runat="server" Text="Register" OnClick="next_1_Click" />

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script type="text/javascript" src="ext/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="ext/js/popper.min.js"></script>
    <script type="text/javascript" src="ext/js/bootstrap.min.js"></script>
</body>

</html>
