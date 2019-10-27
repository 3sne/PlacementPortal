<%@ Page Title="" Language="C#" Theme="Theme1" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="studenthome.aspx.cs" Inherits="PlacementPortal.StudentHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="_content_title" runat="server">
    <title id="_page_title" runat="server"></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="_content_body" runat="server">
    <style>
        #_d_body {
            z-index: 1;
        }

        #_name_ph {
            font-weight: 600;
        }

        body {
            background-color: #f6f6f6;
        }
    </style>
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
</asp:Content>
