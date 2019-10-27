<%@ Page Title="" Language="C#" Theme="Theme1" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="studentjobs.aspx.cs" Inherits="PlacementPortal.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="_content_title" runat="server">
    <title>Available Jobs</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="_content_body" runat="server">
    <asp:SqlDataSource
        ID="sql_jobs"
        ProviderName="System.Data.SqlClient"
        ConnectionString="<%$ ConnectionStrings:main_db %>"
        SelectCommand="SELECT r.recruiter_name, jl.position, jl.eligible_gpa, jl.eligible_branch, jl.offer_type FROM data_job_list AS jl INNER JOIN recruiter_account AS r ON jl.recruiter_id = r.recruiter_id ORDER BY r.recruiter_name, jl.position"
        runat="server" />
    <div class="container mt-4">
        <div class="row">
            <div class="col-12">
                <p class="h7 font-weight-bold">Explore more about a Job by click on it!</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-9">
                <div class="card mb-4 cust__card">
                    <div class="card-body">
                        <asp:GridView runat="server"
                            AllowSorting="True"
                            AutoGenerateColumns="false"
                            DataSourceID="sql_jobs"
                            CssClass="table table-bordered table-hover table-condensed">
                            <Columns>
                                
                                <asp:TemplateField HeaderText="#" ControlStyle-Font-Bold="true">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                    <ItemStyle Width="2%" Font-Bold="true" />
                                </asp:TemplateField>

                                <asp:BoundField 
                                    HeaderText="Company" 
                                    DataField="recruiter_name"/>

                                <asp:BoundField 
                                    HeaderText="Position" 
                                    DataField="position"/>
                                
                                <asp:BoundField 
                                    HeaderText="Minimum GPA" 
                                    DataField="eligible_gpa"
                                    SortExpression="eligible_gpa" />

                                <asp:BoundField 
                                    HeaderText="Eligible Branches" 
                                    DataField="eligible_branch"/>

                                <asp:BoundField 
                                    HeaderText="Offer" 
                                    DataField="offer_type"
                                    SortExpression="offer_type" />

                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
