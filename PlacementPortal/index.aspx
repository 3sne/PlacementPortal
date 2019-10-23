<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PlacementPortal.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Placement Portal</title>
</head>
<body>

    <h3>What are you?</h3>
    <form runat="server">
        <asp:Button ID="_btn_student" Text="Student" runat="server" OnClick="_btn_student_Click"/>
        <asp:Button ID="_btn_recruiter" Text="Recruiter" runat="server" OnClick="_btn_recruiter_Click"/>
        <asp:Button ID="_btn_admin" Text="Admin" runat="server" OnClick="_btn_admin_Click"/>
    </form>
</body>
</html>
