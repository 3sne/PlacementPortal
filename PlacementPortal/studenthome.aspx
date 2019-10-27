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
                                <img src="assets/img/email-icon.png" style="height: 100%; width: 1.4em" />
                                <span id="_email_ph" runat="server">panchanimukur@gmail.com</span></li>
                            <li>
                                <img src="assets/img/course-icon.png" style="height: 100%; width: 1.4em" />
                                <span id="_brsec_ph" runat="server">BTech, CSE</span></li>
                            <li>
                                <img src="assets/img/institute-icon.png" style="height: 100%; width: 1.4em" />
                                <span>MIT, Manipal</span></li>
                        </ul>
                    </div>
                </div>

                <!-- applied company list -->
                <div class="card mb-4 cust__card">
                    <div class="card-body">
                        <div class="text-center">
                            <h3 class="card-title">Current Registrations</h3>
                        </div>
                        <hr />
                        <div>
                            <ul class="list-unstyled" id="_currreg_ph" runat="server"></ul>
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
                            <h3 class="card-title">Announcements</h3>
                        </div>
                        <asp:SqlDataSource runat="server"
                            ID="_sql_announcement" 
                            ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\db_placement.mdf;Integrated Security=True"
                            ProviderName="System.Data.SqlClient"
                            SelectCommand="SELECT [date], [content] FROM [announcements] ORDER BY [date] DESC, [content]" />
                        
                        <asp:GridView runat="server"
                            ID="_gv_announcement"
                            AutoGenerateColumns="False"
                            BorderStyle="None"
                            GridLines="None"
                            ShowHeader="false"
                            DataSourceID="_sql_announcement"
                            CssClass="table table-responsive table-hover" >
                            <Columns>
                                <asp:BoundField 
                                    DataField="date" 
                                    ReadOnly="true"
                                    DataFormatString = "{0:dd/MMM/yyyy}"
                                    SortExpression="date" />
                                <asp:BoundField 
                                    DataField="content" 
                                    ReadOnly="false" 
                                    SortExpression="content" />
                            </Columns>

                        </asp:GridView>                        
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
