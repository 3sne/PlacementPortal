<%@ Page Title="" Theme="Theme1" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="studentaccount.aspx.cs" Inherits="PlacementPortal.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="_content_title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="_content_body" runat="server">
    <style>
        body {
            background: #f6f6f6;
        }
    </style>
    <div class="container mt-4">
        <div class="row">
            <div class="col-12">
                <div>
                    <p class="h4 font-weight-bold ml-4">Review your account details, it helps the companies know you better.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- Form View 1 >> General Info -->
            <div class="col-lg-6">
                <div class="card mb-4 mt-3 cust__card">
                    <div class="card-body">
                        <asp:FormView runat="server"
                            ID="fv_student_info"
                            CssClass="mx-auto"
                            Width="100%"
                            DataKeyNames="student_id"
                            DataSourceID="SqlDataSource1"
                            OnDataBound="fv_student_info_DataBound">

                            <EditItemTemplate>
                                <p class="h4 text-center mb-3">Edit General Info</p>
                                <hr />
                                <div class="form-group">
                                    <label for="student_idLabel1">Student ID: </label>
                                    <asp:Label ID="student_idLabel1" runat="server" Text='<%# Eval("student_id") %>' />
                                </div>
                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="first_nameTextBox">First Name</label>
                                            <asp:TextBox ID="first_nameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("first_name") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="last_nameTextBox">Last Name</label>
                                            <asp:TextBox ID="last_nameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("last_name") %>' />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="emailTextBox">Email</label>
                                    <asp:TextBox ID="emailTextBox" CssClass="form-control" runat="server" Text='<%# Bind("email") %>' />
                                </div>
                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="genderTextBox">Gender</label>
                                            <asp:TextBox ID="genderTextBox" CssClass="form-control" runat="server" Text='<%# Bind("gender") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="dobTextBox">Date of Birth(mdy)</label>
                                            <asp:TextBox ID="dobTextBox" CssClass="form-control" runat="server" Text='<%# Bind("dob") %>' />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="courseTextBox">Course</label>
                                            <asp:TextBox ID="courseTextBox" CssClass="form-control" runat="server" Text='<%# Bind("course") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="branchTextBox">Branch</label>
                                            <asp:TextBox ID="branchTextBox" CssClass="form-control" runat="server" Text='<%# Bind("branch") %>' />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="semesterTextBox">Semester</label>
                                            <asp:TextBox ID="semesterTextBox" CssClass="form-control" runat="server" Text='<%# Bind("semester") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="sectionTextBox">Section</label>
                                            <asp:TextBox ID="sectionTextBox" CssClass="form-control" runat="server" Text='<%# Bind("section") %>' />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row mt-3 mx-auto justify-content-center">
                                    <style>
                                        .more {
                                            background: #fff;
                                            border: solid 2px #ff0000;
                                            color: black;
                                            transition: 0.3s all ease;
                                        }

                                            .more:hover {
                                                background: #f6f6f6;
                                                color: black;
                                            }
                                    </style>
                                    <div class="form-group">
                                        <asp:LinkButton ID="UpdateButton" runat="server" CssClass="link__buttons" CausesValidation="True" CommandName="Update" Text="Update" />
                                        <asp:LinkButton ID="UpdateCancelButton" CssClass="link__buttons more" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </div>
                                </div>
                                </div>
                            </EditItemTemplate>

                            <ItemTemplate>
                                <p class="h4 text-center mb-3">General Info</p>
                                <hr />
                                <div class="form-group">
                                    <label for="student_idLabel">Student ID</label>
                                    <asp:Label ID="student_idLabel" CssClass="form-control" runat="server" Text='<%# Eval("student_id") %>' />
                                </div>
                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="first_nameLabel">First Name</label>
                                            <asp:Label ID="first_nameLabel" CssClass="form-control" runat="server" Text='<%# Bind("first_name") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="last_nameLabel">Last Name</label>
                                            <asp:Label ID="last_nameLabel" CssClass="form-control" runat="server" Text='<%# Bind("last_name") %>' />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="emailLabel">Email</label>
                                    <asp:Label ID="emailLabel" CssClass="form-control" runat="server" Text='<%# Bind("email") %>' />
                                </div>

                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="genderLabel">Gender</label>
                                            <asp:Label ID="genderLabel" CssClass="form-control" runat="server" Text='<%# Bind("gender") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="dobLabel">Date of Birth(mdy)</label>
                                            <asp:Label ID="dobLabel" CssClass="form-control" runat="server" Text='<%# Bind("dob") %>' />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="courseLabel">Course</label>
                                            <asp:Label ID="courseLabel" CssClass="form-control" runat="server" Text='<%# Bind("course") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="branchLabel">Branch</label>
                                            <asp:Label ID="branchLabel" CssClass="form-control" runat="server" Text='<%# Bind("branch") %>' />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="semesterLabel">Semester</label>
                                            <asp:Label ID="semesterLabel" CssClass="form-control" runat="server" Text='<%# Bind("semester") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="sectionLabel">Section</label>
                                            <asp:Label ID="sectionLabel" CssClass="form-control" runat="server" Text='<%# Bind("section") %>' />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row mr-auto justify-content-center">
                                    <style>
                                        span {
                                            display: block;
                                        }

                                        .more {
                                            background: #fff;
                                            border: solid 2px #ff0000;
                                            color: black;
                                            transition: 0.3s all ease;
                                        }

                                            .more:hover {
                                                background: #f6f6f6;
                                                color: black;
                                            }
                                    </style>
                                    <div class="form-group">
                                        <asp:LinkButton ID="EditButton" CssClass="link__buttons" Width="5em" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                    </div>
                                </div>
                            </ItemTemplate>

                        </asp:FormView>
                        <asp:SqlDataSource
                            ID="SqlDataSource1"
                            runat="server"
                            ConflictDetection="CompareAllValues"
                            ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\db_placement.mdf;Integrated Security=True"
                            OldValuesParameterFormatString="original_{0}"
                            ProviderName="System.Data.SqlClient"
                            SelectCommand="SELECT * FROM [student_account] WHERE student_id=@student_id"
                            UpdateCommand="UPDATE [student_account] SET [first_name] = @first_name, [last_name] = @last_name, [gender] = @gender, [email] = @email, [dob] = @dob, [course] = @course, [branch] = @branch, [semester] = @semester, [section] = @section WHERE [student_id] = @original_student_id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [gender] = @original_gender AND [email] = @original_email AND [dob] = @original_dob AND [course] = @original_course AND [branch] = @original_branch AND [semester] = @original_semester AND [section] = @original_section">
                            <SelectParameters>
                                <asp:Parameter Name="student_id" Type="String" />
                            </SelectParameters>
                            <InsertParameters>
                                <asp:Parameter Name="student_id" Type="String" />
                                <asp:Parameter Name="first_name" Type="String" />
                                <asp:Parameter Name="last_name" Type="String" />
                                <asp:Parameter Name="gender" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter DbType="Date" Name="dob" />
                                <asp:Parameter Name="course" Type="String" />
                                <asp:Parameter Name="branch" Type="String" />
                                <asp:Parameter Name="semester" Type="String" />
                                <asp:Parameter Name="section" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="first_name" Type="String" />
                                <asp:Parameter Name="last_name" Type="String" />
                                <asp:Parameter Name="gender" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter DbType="Date" Name="dob" />
                                <asp:Parameter Name="course" Type="String" />
                                <asp:Parameter Name="branch" Type="String" />
                                <asp:Parameter Name="semester" Type="String" />
                                <asp:Parameter Name="section" Type="String" />
                                <asp:Parameter Name="original_student_id" Type="String" />
                                <asp:Parameter Name="original_first_name" Type="String" />
                                <asp:Parameter Name="original_last_name" Type="String" />
                                <asp:Parameter Name="original_gender" Type="String" />
                                <asp:Parameter Name="original_email" Type="String" />
                                <asp:Parameter DbType="Date" Name="original_dob" />
                                <asp:Parameter Name="original_course" Type="String" />
                                <asp:Parameter Name="original_branch" Type="String" />
                                <asp:Parameter Name="original_semester" Type="String" />
                                <asp:Parameter Name="original_section" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>

            <!-- Form View 2 >> Additional Details -->
            <div class="col-lg-6">
                <div class="card mb-4 mt-3 cust__card">
                    <div class="card-body">
                        <asp:FormView runat="server"
                            ID="fv_additional_info"
                            CssClass="mx-auto"
                            Width="100%"
                            DataKeyNames="student_id"
                            DataSourceID="_sql_additional">

                            <EditItemTemplate>
                                <p class="h4 text-center mb-3">Edit Additional Info</p>
                                <hr />
                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="x_boardTextBox">10th Board</label>
                                            <asp:TextBox ID="x_boardTextBox" CssClass="form-control" runat="server" Text='<%# Bind("x_board") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="x_scoreTextBox">10th Score</label>
                                            <asp:TextBox ID="x_scoreTextBox" CssClass="form-control" runat="server" Text='<%# Bind("x_score") %>' />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="xii_boardTextBox">12th Board</label>
                                            <asp:TextBox ID="xii_boardTextBox" CssClass="form-control" runat="server" Text='<%# Bind("xii_board") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="xii_scoreTextBox">12th Score</label>
                                            <asp:TextBox ID="xii_scoreTextBox" CssClass="form-control" runat="server" Text='<%# Bind("xii_score") %>' />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="citizenshipTextBox">Citizenship</label>
                                            <asp:TextBox ID="citizenshipTextBox" CssClass="form-control" runat="server" Text='<%# Bind("citizenship") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="stateTextBox">State</label>
                                            <asp:TextBox ID="stateTextBox" CssClass="form-control" runat="server" Text='<%# Bind("state") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="cityTextBox">City</label>
                                            <asp:TextBox ID="cityTextBox" CssClass="form-control" runat="server" Text='<%# Bind("city") %>' />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="addressTextBox">Address</label>
                                    <asp:TextBox ID="addressTextBox" CssClass="form-control" runat="server" Text='<%# Bind("address") %>' />
                                </div>

                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="father_nameTextBox">Father's Name</label>
                                            <asp:TextBox ID="father_nameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("father_name") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="father_occupationTextBox">Father's Occupation</label>
                                            <asp:TextBox ID="father_occupationTextBox" CssClass="form-control" runat="server" Text='<%# Bind("father_occupation") %>' />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="backlogTextBox">Current Backlog</label>
                                    <asp:TextBox ID="backlogTextBox" CssClass="form-control" runat="server" Text='<%# Bind("backlog") %>' />
                                </div>

                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="phone_numberTextBox">Student Phone Number</label>
                                            <asp:TextBox ID="phone_numberTextBox" CssClass="form-control" runat="server" Text='<%# Bind("phone_number") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="father_mobileTextBox">Father's Phone Number</label>
                                            <asp:TextBox ID="father_mobileTextBox" CssClass="form-control" runat="server" Text='<%# Bind("father_mobile") %>' />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row mt-3 mx-auto justify-content-center">
                                    <style>
                                        .more {
                                            background: #fff;
                                            border: solid 2px #ff0000;
                                            color: black;
                                            transition: 0.3s all ease;
                                        }

                                            .more:hover {
                                                background: #f6f6f6;
                                                color: black;
                                            }
                                    </style>
                                    <div class="form-group">
                                        <asp:LinkButton ID="UpdateButton" runat="server" CssClass="link__buttons" CausesValidation="True" CommandName="Update" Text="Update" />
                                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CssClass="link__buttons more" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </div>
                                </div>
                            </EditItemTemplate>

                            <ItemTemplate>
                                <p class="h4 text-center mb-3">Additional Info</p>
                                <hr />
                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="x_boardLabel">10th Board</label>
                                            <asp:Label ID="x_boardLabel" CssClass="form-control" runat="server" Text='<%# Bind("x_board") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="x_scoreLabel">10th Score</label>
                                            <asp:Label ID="x_scoreLabel" CssClass="form-control" runat="server" Text='<%# Bind("x_score") %>' />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="xii_boardLabel">12th Board</label>
                                            <asp:Label ID="xii_boardLabel" CssClass="form-control" runat="server" Text='<%# Bind("xii_board") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="xii_scoreLabel">12th Score</label>
                                            <asp:Label ID="xii_scoreLabel" CssClass="form-control" runat="server" Text='<%# Bind("xii_score") %>' />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="citizenshipLabel">Citizenship</label>
                                            <asp:Label ID="citizenshipLabel" CssClass="form-control" runat="server" Text='<%# Bind("citizenship") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="stateLabel">State</label>
                                            <asp:Label ID="stateLabel" CssClass="form-control" runat="server" Text='<%# Bind("state") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="cityLabel">City</label>
                                            <asp:Label ID="cityLabel" CssClass="form-control" runat="server" Text='<%# Bind("city") %>' />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="addressLabel">Address</label>
                                    <asp:Label ID="addressLabel" CssClass="form-control" runat="server" Text='<%# Bind("address") %>' />
                                </div>

                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="father_nameLabel">Father's Name</label>
                                            <asp:Label ID="father_nameLabel" CssClass="form-control" runat="server" Text='<%# Bind("father_name") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="father_occupationLabel">Father's Occupation</label>
                                            <asp:Label ID="father_occupationLabel" CssClass="form-control" runat="server" Text='<%# Bind("father_occupation") %>' />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="backlogLabel">Current Backlog</label>
                                    <asp:Label ID="backlogLabel" CssClass="form-control" runat="server" Text='<%# Bind("backlog") %>' />
                                </div>

                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="phone_numberLabel">Student Phone Number</label>
                                            <asp:Label ID="phone_numberLabel" CssClass="form-control" runat="server" Text='<%# Bind("phone_number") %>' />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="father_mobileLabel">Father's Phone Number</label>
                                            <asp:Label ID="father_mobileLabel" CssClass="form-control" runat="server" Text='<%# Bind("father_mobile") %>' />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row mr-auto justify-content-center">
                                    <style>
                                        span {
                                            display: block;
                                        }

                                        .more {
                                            background: #fff;
                                            border: solid 2px #ff0000;
                                            color: black;
                                            transition: 0.3s all ease;
                                        }

                                            .more:hover {
                                                background: #f6f6f6;
                                                color: black;
                                            }
                                    </style>
                                    <div class="form-group">
                                        <asp:LinkButton ID="EditButton" CssClass="link__buttons" Width="5em" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                    </div>
                                </div>

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource runat="server"
                            ID="_sql_additional"
                            ConflictDetection="CompareAllValues"
                            ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\db_placement.mdf;Integrated Security=True"
                            OldValuesParameterFormatString="original_{0}"
                            ProviderName="System.Data.SqlClient"
                            SelectCommand="SELECT * FROM [student_info] WHERE student_id=@student_id"
                            UpdateCommand="UPDATE [student_info] SET [phone_number] = @phone_number, [x_score] = @x_score, [xii_score] = @xii_score, [backlog] = @backlog, [father_name] = @father_name, [citizenship] = @citizenship, [father_mobile] = @father_mobile, [father_occupation] = @father_occupation, [state] = @state, [city] = @city, [address] = @address, [x_board] = @x_board, [xii_board] = @xii_board WHERE [student_id] = @original_student_id AND [phone_number] = @original_phone_number AND [x_score] = @original_x_score AND [xii_score] = @original_xii_score AND [backlog] = @original_backlog AND (([father_name] = @original_father_name) OR ([father_name] IS NULL AND @original_father_name IS NULL)) AND [citizenship] = @original_citizenship AND (([father_mobile] = @original_father_mobile) OR ([father_mobile] IS NULL AND @original_father_mobile IS NULL)) AND (([father_occupation] = @original_father_occupation) OR ([father_occupation] IS NULL AND @original_father_occupation IS NULL)) AND [state] = @original_state AND [city] = @original_city AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND [x_board] = @original_x_board AND [xii_board] = @original_xii_board">
                            <SelectParameters>
                                <asp:Parameter Name="student_id" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="phone_number" Type="String" />
                                <asp:Parameter Name="x_score" Type="String" />
                                <asp:Parameter Name="xii_score" Type="String" />
                                <asp:Parameter Name="backlog" Type="String" />
                                <asp:Parameter Name="father_name" Type="String" />
                                <asp:Parameter Name="citizenship" Type="String" />
                                <asp:Parameter Name="father_mobile" Type="String" />
                                <asp:Parameter Name="father_occupation" Type="String" />
                                <asp:Parameter Name="state" Type="String" />
                                <asp:Parameter Name="city" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="x_board" Type="String" />
                                <asp:Parameter Name="xii_board" Type="String" />
                                <asp:Parameter Name="original_student_id" Type="String" />
                                <asp:Parameter Name="original_phone_number" Type="String" />
                                <asp:Parameter Name="original_x_score" Type="String" />
                                <asp:Parameter Name="original_xii_score" Type="String" />
                                <asp:Parameter Name="original_backlog" Type="String" />
                                <asp:Parameter Name="original_father_name" Type="String" />
                                <asp:Parameter Name="original_citizenship" Type="String" />
                                <asp:Parameter Name="original_father_mobile" Type="String" />
                                <asp:Parameter Name="original_father_occupation" Type="String" />
                                <asp:Parameter Name="original_state" Type="String" />
                                <asp:Parameter Name="original_city" Type="String" />
                                <asp:Parameter Name="original_address" Type="String" />
                                <asp:Parameter Name="original_x_board" Type="String" />
                                <asp:Parameter Name="original_xii_board" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
