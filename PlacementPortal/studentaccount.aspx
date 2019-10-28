<%@ Page Title="" Theme="Theme1" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="studentaccount.aspx.cs" Inherits="PlacementPortal.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="_content_title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="_content_body" runat="server">

    <div class="container mt-4">
        <div class="row">
            <div class="col-12">
                <div>
                    <p class="h4 font-weight-bold ml-4">Review your account details, it helps the companies know you better.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card mb-4 mt-3 cust__card">
                    <div class="card-body">
                        <asp:FormView runat="server"
                            ID="fv_student_info"
                            CssClass="mx-auto"
                            DataKeyNames="student_id"
                            DataSourceID="SqlDataSource1">

                            <EditItemTemplate>
                                <p class="h4 text-center mb-3">Edit General Info</p>
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
                                            <label for="dobTextBox">Date of Birth(MM/DD/YYYY)</label>
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
                                <div class="form-row mt-3 mr-auto">
                                    <div class="form-group">
                                        <asp:LinkButton ID="UpdateButton" runat="server" CssClass="link__buttons" CausesValidation="True" CommandName="Update" Text="Update" />
                                        <asp:LinkButton ID="UpdateCancelButton" CssClass="link__buttons" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </div>
                                </div>
                                </div>
                            </EditItemTemplate>

                            <InsertItemTemplate>
                                student_id:
                                <asp:TextBox ID="student_idTextBox" runat="server" Text='<%# Bind("student_id") %>' />
                                <br />
                                first_name:
                                <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
                                <br />
                                last_name:
                                <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
                                <br />
                                gender:
                                <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                                <br />
                                email:
                                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                <br />
                                dob:
                                <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
                                <br />
                                course:
                                <asp:TextBox ID="courseTextBox" runat="server" Text='<%# Bind("course") %>' />
                                <br />
                                branch:
                                <asp:TextBox ID="branchTextBox" runat="server" Text='<%# Bind("branch") %>' />
                                <br />
                                semester:
                                <asp:TextBox ID="semesterTextBox" runat="server" Text='<%# Bind("semester") %>' />
                                <br />
                                section:
                                <asp:TextBox ID="sectionTextBox" runat="server" Text='<%# Bind("section") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>

                            <ItemTemplate>
                                student_id:
                                <asp:Label ID="student_idLabel" runat="server" Text='<%# Eval("student_id") %>' />
                                <br />
                                first_name:
                                <asp:Label ID="first_nameLabel" runat="server" Text='<%# Bind("first_name") %>' />
                                <br />
                                last_name:
                                <asp:Label ID="last_nameLabel" runat="server" Text='<%# Bind("last_name") %>' />
                                <br />
                                gender:
                                <asp:Label ID="genderLabel" runat="server" Text='<%# Bind("gender") %>' />
                                <br />
                                email:
                                <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                                <br />
                                dob:
                                <asp:Label ID="dobLabel" runat="server" Text='<%# Bind("dob") %>' />
                                <br />
                                course:
                                <asp:Label ID="courseLabel" runat="server" Text='<%# Bind("course") %>' />
                                <br />
                                branch:
                                <asp:Label ID="branchLabel" runat="server" Text='<%# Bind("branch") %>' />
                                <br />
                                semester:
                                <asp:Label ID="semesterLabel" runat="server" Text='<%# Bind("semester") %>' />
                                <br />
                                section:
                                <asp:Label ID="sectionLabel" runat="server" Text='<%# Bind("section") %>' />
                                <br />
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                            </ItemTemplate>

                        </asp:FormView>
                        <asp:SqlDataSource
                            ID="SqlDataSource1"
                            runat="server"
                            ConflictDetection="CompareAllValues"
                            ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\db_placement.mdf;Integrated Security=True"
                            OldValuesParameterFormatString="original_{0}"
                            ProviderName="System.Data.SqlClient"
                            InsertCommand="INSERT INTO [student_account] ([student_id], [first_name], [last_name], [gender], [email], [dob], [course], [branch], [semester], [section]) VALUES (@student_id, @first_name, @last_name, @gender, @email, @dob, @course, @branch, @semester, @section)"
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
        </div>
    </div>

</asp:Content>
