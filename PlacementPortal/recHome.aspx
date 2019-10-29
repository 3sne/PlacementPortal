<%@ Page Title="" Theme="Theme1" Language="C#" MasterPageFile="~/RecruiterMaster.Master" AutoEventWireup="true" CodeBehind="recHome.aspx.cs" Inherits="PlacementPortal.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    </style>
    <div class="container mt-4">
        <div class="row justify-content-between">
            <div class="col-8">
                <div class="card cust__card">
                    <div class="card-body">
                        <p class="h4 font-weight-bold">Post a new Job opening</p>
                    </div>
                    <div class="pl-lg-5 pr-lg-5">
                        <div class="form-group">
                            <label for="job_id">Institute provided Job ID</label>
                            <asp:TextBox CssClass="form-control" ID="job_id" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="position">Position</label>
                            <asp:TextBox CssClass="form-control" ID="position" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="jd">Job Description</label>
                            <asp:TextBox CssClass="form-control" ID="jd" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="egpa">Eligible GPA</label>
                            <asp:TextBox CssClass="form-control" ID="egpa" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="ebranch">Eligible Branches</label>
                            <asp:TextBox CssClass="form-control" ID="ebranch" runat="server" />
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="deadline">Deadline</label>
                                    <asp:TextBox CssClass="form-control" ID="deadline" runat="server" />
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group">
                                    <label for="Offer Type">Offer Type</label>
                                    <asp:DropDownList CssClass="form-control" ID="ddl_offer" runat="server">
                                        <asp:ListItem Text="Internship" />
                                        <asp:ListItem Text="Placement" />
                                        <asp:ListItem Text="Internship + Placement" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="compensation">Compensation</label>
                            <asp:TextBox CssClass="form-control" ID="compensation" runat="server" />
                        </div>
                        <div class="form-group">
                            <span>
                                <asp:Button Text="Post" ID="btn_post" OnClick="btn_post_Click" runat="server" />
                            <asp:Label
                                ID="post_status"
                                Text=""
                                runat="server" />
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
