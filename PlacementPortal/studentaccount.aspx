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

            <div class="col-lg-6">
                <div class="card mb-4 mt-3 cust__card">
                    <div class="card-body">

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
