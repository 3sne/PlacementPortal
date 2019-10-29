<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resume.aspx.cs" Inherits="PlacementPortal.resume" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="ext/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style>
        .cust_font {
            font-weight: 600;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="row">
                <div class="col-12">
                    <div>
                        <p class="h3 ml-3 m-3">This resume Badn't</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-9">
                    <div class="card mb-4 cust__card">
                        <div class="card-body">
                            <asp:DetailsView ID="DetailsView1" runat="server"
                                AutoGenerateRows="False"
                                DataSourceID="SqlDataSource1"
                                CssClass="table table-bordered table-hover table-condensed">
                                <Fields>
                                    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderText="Name" SortExpression="first_name">
                                        <ItemTemplate>
                                            <asp:Label ID="tb1" Text='<%# string.Format("{0} {1}", Eval("first_name").ToString(), Eval("last_name").ToString()) %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderStyle-Font-Bold="true" DataField="gender" HeaderText="Gender" SortExpression="gender" />
                                    <asp:BoundField HeaderStyle-Font-Bold="true" DataField="email" HeaderText="Email" SortExpression="email" />
                                    <asp:BoundField HeaderStyle-Font-Bold="true" DataField="dob" DataFormatString="{0:d}" HeaderText="Date Of Birth" SortExpression="dob" />
                                    <asp:BoundField HeaderStyle-Font-Bold="true" DataField="areas_of_interest" HeaderText="Area of Interest" SortExpression="areas_of_interest" />
                                    <asp:BoundField HeaderStyle-Font-Bold="true" DataField="skills" HeaderText="Skills" SortExpression="skills" />
                                    <asp:BoundField HeaderStyle-Font-Bold="true" DataField="technical_skills" HeaderText="Technical Skills" SortExpression="technical_skills" />
                                </Fields>

                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\db_placement.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT student_account.first_name, student_account.last_name, student_account.gender, student_account.email, student_account.dob, data_student_resume.areas_of_interest, data_student_resume.skills, data_student_resume.technical_skills FROM data_student_resume INNER JOIN student_account ON data_student_resume.student_id = student_account.student_id WHERE (data_student_resume.resume_id = @resume_id)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="resume_id" QueryStringField="resume_id" />
                                </SelectParameters>
                            </asp:SqlDataSource>
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
