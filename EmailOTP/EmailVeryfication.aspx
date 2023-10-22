<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EmailVeryfication.aspx.vb" Inherits="EmailOTP.EmailVeryfication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            left: 582px;
            top: 151px;
        }
        .auto-style2 {
            position: relative;
            left: 598px;
            top: 155px;
        }
        .auto-style3 {
            position: relative;
            left: 297px;
            top: 259px;
        }
        .auto-style4 {
            position: relative;
            left: 772px;
            top: 213px;
        }
        .auto-style5 {
            width: 1801px;
            height: 19px;
        }
        .auto-style6 {
            width: 2023px;
            height: 1px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style5">
        <div>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style1"></asp:TextBox>
            <asp:Button ID="btnSendOTP" runat="server" Text="Send OTP" OnClick="btnSendOTP_Click" CssClass="auto-style2" />
            <asp:TextBox ID="txtOTP" runat="server" CssClass="auto-style3"></asp:TextBox>
        </div>
        <p class="auto-style6">
            <asp:Button ID="btnVeryOTP" runat="server" Text="Verify OTP" OnClick="btnSendOTP_Click" CssClass="auto-style4" />
            </p>
    </form>
</body>
</html>
