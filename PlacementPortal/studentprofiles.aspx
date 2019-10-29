<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="studentprofiles.aspx.cs" Inherits="PlacementPortal.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="_content_title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="_content_body" runat="server">
    <div>
    </div>
    <div class="container mt-4">
        <div class="row">
            <div class="col">
                <div class="card mb-4 cust__card">
                    <div class="card-body">
                        <div class="row">
                            <p class="ml-4 h3 font-weight-bold" style="font-family: 'Nunito', sans-serif">Your Stored Resumes</p>
                        </div>
                        <asp:GridView runat="server"
                            ID="gv_my_resume_list"
                            AutoGenerateColumns="False"
                            DataKeyNames="resume_id"
                            DataSourceID="sql_resume_list"
                            BorderStyle="None"
                            GridLines="None"
                            CssClass="table table-responsive table-hover">
                            <Columns>
                                <asp:BoundField DataField="resume_id" HeaderText="Resume ID" InsertVisible="False" ReadOnly="True" SortExpression="resume_id" />
                                <asp:BoundField DataField="resume_name" HeaderText="Resume Name" SortExpression="resume_name" />
                                <asp:HyperLinkField
                                    ControlStyle-ForeColor="Purple"
                                    DataNavigateUrlFormatString="resume.aspx?resume_id={0}"
                                    DataNavigateUrlFields="resume_id"
                                    Text="Show" />
                            </Columns>

                        </asp:GridView>
                        <asp:SqlDataSource ID="sql_resume_list" runat="server" 
                            ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\db_placement.mdf;Integrated Security=True" 
                            ProviderName="System.Data.SqlClient" 
                            SelectCommand="SELECT [resume_id], [resume_name] FROM [data_student_resume] WHERE ([student_id] = @student_id)">
                            <SelectParameters>
                                <asp:Parameter Name="student_id" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Button
                            ID="_btn_create_resume"
                            Text="Create New" runat="server" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
