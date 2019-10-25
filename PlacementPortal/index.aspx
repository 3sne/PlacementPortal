<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Theme="Theme1" Inherits="PlacementPortal.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Placement Portal</title>
    <link href="ext/css/bootstrap.min.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css' />
    <style>
        body {
            background-color: #f6f6f6;
        }

        .font__adjust {
            font-family: "Muli";
            font-size: 1.3em;
        }

        .heading__stroke {
            color: white;
            text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
        }

        #_scream {
            min-height: 20em;
            max-height: 50em;
            background: url("assets/img/index-bg-1.jpg");
            background-position: center 70%;
            background-size: cover;
            position: relative;
        }

        #_scream_inner {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>
</head>
<body>
    <!-- NAVIGATION BAR  -->
    <div id="_scream">
        <div id="_scream_inner">
            <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center heading__stroke" style="color: white">
                <h1 class="display-1" style="font-family: 'Dancing Script', cursive;">Placement Portal</h1>
                <p class="lead font__adjust">Welcome to portal that turns boys into men.</p>
            </div>
        </div>
    </div>

    <div class="d-flex justify-content-center p-4">
        <p class="h5">Let's get you started. Who are you?</p>
    </div>

    <div class="container">
        <form runat="server">
            <div class="card-deck mb-3 text-center">
                <div class="card mb-4 cust__card">
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">Student</h1>
                        <hr />
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>Browse Jobs</li>
                            <li>Multiple Profiles</li>
                            <li>Manage Schedule</li>
                            <li>Register with Company</li>
                        </ul>
                        <asp:Button ID="_btn_student" Text="Continue" runat="server" OnClick="_btn_student_Click" />
                    </div>
                </div>
                <div class="card mb-4 cust__card">
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">Recruiter</h1>
                        <hr />
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>Post Multiple JDs</li>
                            <li>Filter Candidates</li>
                            <li>Curate Applications</li>
                            <li>Help center access</li>
                        </ul>
                        <asp:Button ID="_btn_recruiter" Text="Continue" runat="server" OnClick="_btn_recruiter_Click" />
                    </div>
                </div>
                <div class="card mb-4 cust__card">
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">Admin</h1>
                        <hr />
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>Create/Edit Student Groups</li>
                            <li>Verify Companies</li>
                            <li>Manage Blacklists</li>
                            <li>Coordinate Placement Process</li>
                        </ul>
                        <asp:Button ID="_btn_admin" Text="Continue" runat="server" OnClick="_btn_admin_Click" />
                    </div>
                </div>
            </div>
        </form>
    </div>

    <script type="text/javascript" src="ext/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="ext/js/popper.min.js"></script>
    <script type="text/javascript" src="ext/js/bootstrap.min.js"></script>
</body>
</html>
