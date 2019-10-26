<%@ Page Language="C#" Theme="Theme1" AutoEventWireup="true" CodeBehind="studenthome1.aspx.cs" Inherits="PlacementPortal.studenthome" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title id="_title_page" runat="server"></title>
    <link href="ext/css/bootstrap.min.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css' />

    <style>
        body {
            background-color: #f6f6f6;
        }

        #bg__drop {
            position: fixed;
            top: 0px;
            left: 0px;
            width: 110%;
            min-height: 18em;
            background-image: linear-gradient(-225deg, #A8BFFF 0%, #884D80 100%);
            z-index: -1;
            border-radius: 100px;
        }

        #_d_body {
            z-index: 1;
        }

        #_name_ph {
            font-weight: 600;
        }

        a {
            color: inherit;
            text-decoration: none;
        }
        .navbar-nav > li > a {
            line-height: 50px;
        }

        #navbar__right {
            font-family: "Muli", sans-serif;
            font-size: 1.4em;
        }
    </style>
</head>
<body>
    <form runat="server">
        <!--<div id="bg__drop" class="row justify-content-center"></div>-->
        <div id="_d_body" class="container mt-4">
            <div class="row">
                <!-- left column -->
                <div class="col-lg-4 col-md-3">
                    <!-- profile tile -->
                    <div class="card mb-4 cust__card">
                        <div class="card-body">
                            <div class="text-center m-3" style="overflow: hidden">
                                <img id="_avatar_ph" runat="server" src="assets/img/avatar-1.png" style="border-radius: 50%; height: auto; width: 10em;" />
                            </div>
                            <div class="text-center">
                                <h3 id="_name_ph" runat="server" class="card-title heading__font">Student Name</h3>
                            </div>
                            <hr />
                            <ul class="list-unstyled" style="margin-bottom: 0px">
                                <li>
                                    <img src="assets/img/email-icon.png" style="height: 100%; width: 1.5em" />
                                    <span id="_email_ph" runat="server">panchanimukur@gmail.com</span></li>
                                <li>
                                    <img src="assets/img/course-icon.png" style="height: 100%; width: 1.5em" />
                                    <span id="_brsec_ph" runat="server">BTech, CSE</span></li>
                                <li>
                                    <img src="assets/img/institute-icon.png" style="height: 100%; width: 1.5em" />
                                    <span>MIT, Manipal</span></li>
                            </ul>
                        </div>
                    </div>

                    <!-- applied company list -->
                    <div class="card mb-4 cust__card">
                        <div class="card-body">
                            <div class="text-center">
                                <h3 class="card-title">PH: Applied companies</h3>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- right column  -->
                <div class="col-lg-8 col-md-9">
                    <!-- Latest Annoucements -->
                    <div class="card mb-4 cust__card">
                        <div class="card-body">
                            <div class="text-center">
                                <h3 class="card-title">PH: Latest Announcements</h3>
                            </div>
                        </div>
                    </div>

                    <!-- Summary of the boi -->
                    <div class="card mb-4 cust__card">
                        <div class="card-body">
                            <div class="text-center">
                                <h3 class="card-title pricing-card-title">PH: Summary of current profile</h3>
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
