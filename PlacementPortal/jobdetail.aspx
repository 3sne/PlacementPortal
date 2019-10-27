<%@ Page Title="" Theme="Theme1" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="jobdetail.aspx.cs" Inherits="PlacementPortal.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="_content_title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="_content_body" runat="server">
    <style>
        .cust_font {
            font-weight: 600;
        }

        body {
            background-color: #f6f6f6;
        }
    </style>
    <div class="container mt-4">
        <div class="row">
            <div class="col-12">
                <div>
                    <p class="display-4 ml-4">Job Details<span id="_badge_registration" style="font-size: 1rem; vertical-align:middle" runat="server"></span></p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-9">
                <div class="card mb-4 cust__card">
                    <div class="card-body">
                        <asp:SqlDataSource ID="job_detail" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\db_placement.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT data_job_list.job_id, data_job_list.recruiter_id, data_job_list.position, data_job_list.job_description, data_job_list.eligible_gpa, data_job_list.eligible_branch, data_job_list.offer_type, data_job_list.compensation, data_job_list.registration_deadline, r.recruiter_name, r.field FROM data_job_list INNER JOIN recruiter_account AS r ON data_job_list.recruiter_id = r.recruiter_id WHERE (data_job_list.job_id = @job_id)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="job_id" QueryStringField="job_id" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:DetailsView runat="server"
                            AutoGenerateRows="False"
                            DataKeyNames="job_id"
                            DataSourceID="job_detail"
                            CssClass="table table-bordered table-hover table-condensed">
                            <Fields>
                                <asp:BoundField DataField="recruiter_name" HeaderStyle-CssClass="cust_font" HeaderText="Company" SortExpression="recruiter_name" />
                                <asp:BoundField DataField="field" HeaderStyle-CssClass="cust_font" HeaderText="Company Type" SortExpression="field" />
                                <asp:BoundField DataField="position" HeaderStyle-CssClass="cust_font" HeaderText="Position" SortExpression="position" />
                                <asp:BoundField DataField="job_description" HeaderStyle-CssClass="cust_font" HeaderText="Job Description" SortExpression="job_description" />
                                <asp:BoundField DataField="eligible_gpa" HeaderStyle-CssClass="cust_font" HeaderText="Required GPA" SortExpression="eligible_gpa" />
                                <asp:BoundField DataField="eligible_branch" HeaderStyle-CssClass="cust_font" HeaderText="Eligible Branches" SortExpression="eligible_branch" />
                                <asp:BoundField DataField="offer_type" HeaderStyle-CssClass="cust_font" HeaderText="Offer Type" SortExpression="offer_type" />
                                <asp:BoundField DataField="compensation" HeaderStyle-CssClass="cust_font" HeaderText="Compensation" SortExpression="compensation" />
                                <asp:BoundField DataField="registration_deadline" HeaderStyle-CssClass="cust_font" HeaderText="Registration Deadline" SortExpression="registration_deadline" />
                            </Fields>
                        </asp:DetailsView>
                        <p class="text-muted">Warning: Faux registration can lead to blacklisting of the candidate. Proceed with certainty.</p>
                        <span>
                            <asp:Button
                                ID="_btn_register"
                                Text="Register"
                                runat="server"
                                OnClick="_btn_register_Click" />
                            <asp:Label
                                ID="_lbl_regstatus"
                                Text=""
                                runat="server" />
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
