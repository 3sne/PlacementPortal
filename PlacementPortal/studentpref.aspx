<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="studentpref.aspx.cs" Inherits="PlacementPortal.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="_content_title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="_content_body" runat="server">
    <div class="container mt-4">
        <div class="row">
            <div class="col-lg-4">
                <div class="card cust__card">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="ddl">Choose Theme </label>
                            <asp:DropDownList ID="ddl" runat="server">
                                <asp:ListItem Value="Theme1" Text="Purple Accent" />
                                <asp:ListItem Value="ThemePeach" Text="Peach Accent" />
                                <asp:ListItem Value="ThemeDark" Text="Dark Accent" />
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:Button Text="Apply" OnClick="Unnamed_Click2" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
