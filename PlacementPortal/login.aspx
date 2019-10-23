<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PlacementPortal.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="ext/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-align: center;
            align-items: center;
            background-color: #f5f5f5;
        }

        #_tb_username {
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
            margin-bottom: -1px;
        }

        #_tb_password {
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }

        #_main_card {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .form__container {
            width: 100%;
            max-width: 23em;
            padding: 2em;
            margin: auto;
        }
    </style>
</head>
<body class="text-center justify-content-center">
    <div id="_main_card" class="card mb-4 shadow-sm">
        <div class="card-body">
            <form id="_form_login_attempt" class="form__container" runat="server">
                <h1 class="h3 mb-3 font-weight-normal" id="_header" runat="server">
                    Sign In to continue</h1>
                <div>
                    <asp:Label ID="_lbl_username" AssociatedControlID="_tb_username" runat="server" />
                    <asp:TextBox ID="_tb_username" CssClass="form-control" runat="server" />
                    <asp:Label ID="_lbl_password" AssociatedControlID="_tb_password" runat="server" />
                    <asp:TextBox ID="_tb_password" CssClass="form-control" TextMode="Password" runat="server" />
                </div>
                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me" />
                        Remember me
                    </label>
                </div>
                <small class="text-muted">
                    <asp:Label ID="_lbl_register_urge" runat="server" />
                </small>
                <div class="">
                    <asp:Button ID="_btn_login" CssClass="btn btn-lg btn-primary" Text="Login" runat="server" />
                    <asp:Button ID="_btn_register" CssClass="btn btn-lg btn-primary " Text="Register" runat="server" />
                </div>
            </form>
        </div>
    </div>


    <script type="text/javascript" src="ext/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="ext/js/popper.min.js"></script>
    <script type="text/javascript" src="ext/js/bootstrap.min.js"></script>
</body>
</html>
