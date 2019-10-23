<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PlacementPortal.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="_form_login_attempt" runat="server">
        <div>
            <asp:Label ID="_lbl_username" runat="server" />
            <asp:TextBox ID="_tb_username" runat="server" />
            <br />
            <asp:Label ID="_lbl_password" runat="server" />
            <asp:TextBox ID="_tb_password" runat="server" />
        </div>
        <div>
            <asp:Button ID="_btn_login" runat="server" />
        </div>
    </form>
</body>
</html>
