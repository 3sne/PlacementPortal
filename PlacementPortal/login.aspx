<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Theme="Theme1" Inherits="PlacementPortal.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login to Continue</title>
    <link href="ext/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-align: center;
            align-items: center;
            background-color: #f6f6f6;
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
    <div id="_main_card" class="card cust__card">
        <div class="card-body">
            <form id="_form_login_attempt" class="form__container" runat="server">
                <h1 class="h3 font-weight-bold" id="_header" runat="server">Sign In to continue</h1>
                <div class="mt-4">
                    <asp:Label ID="_lbl_username" AssociatedControlID="_tb_username" runat="server" />
                    <asp:TextBox ID="_tb_username" CssClass="form-control" runat="server" />
                    <asp:Label ID="_lbl_password" AssociatedControlID="_tb_password" runat="server" />
                    <asp:TextBox ID="_tb_password" CssClass="form-control" TextMode="Password" runat="server" />
                </div>
                <div class="checkbox mt-3">
                    <label>
                        <input id="_cb_remember_me" type="checkbox" value="remember-me" />
                        <label for="_cb_remember_me">Remember Me</label>
                    </label>
                </div>
                <div class="">
                    <asp:Button ID="_btn_login" CssClass="cust__btn" Text="Login" runat="server" OnClick="_btn_login_Click" />
                    <asp:Button ID="_btn_register" CssClass="cust__btn" Text="Register" runat="server" />
                </div>
                <small class="text-muted">
                    <asp:Label ID="_lbl_register_urge" runat="server" />
                </small>
            </form>
        </div>
    </div>


    <script type="text/javascript" src="ext/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="ext/js/popper.min.js"></script>
    <script type="text/javascript" src="ext/js/bootstrap.min.js"></script>
</body>
</html>
