<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="studentprofiles.aspx.cs" Inherits="PlacementPortal.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="_content_title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="_content_body" runat="server">
    <div>
    </div>
    <div class="container mt-4">
        <% for (int i = 0; i < 3; i++) { %>
        <div class="row">
            <% for (int j = 0; j < 3; j++) { %>
            <div class="col">
                <div class="card mb-4 cust__card">
                    <div class="card-body">
                    </div>
                </div>
            </div>
            <% } %>
        </div>
        <% } %>
    </div>
</asp:Content>
