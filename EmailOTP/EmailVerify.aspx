<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EmailVerify.aspx.vb" Inherits="EmailOTP.EmailVerify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 30%;
            position: relative;
            left: 558px;
            top: 199px;
            height: 281px;
        }
        .auto-style2 {
            width: 128px;
        }
        .auto-style3 {
            width: 182px;
        }
        .auto-style4 {
            position: relative;
            left: 6px;
            top: 70px;
            width: 88px;
        }
        .auto-style5 {
            position: relative;
            left: 6px;
            top: 76px;
            width: 86px;
        }
        .auto-style6 {
            position: relative;
            left: 54px;
            top: 2px;
        }
        .auto-style7 {
            height: 32px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body style="width: 1767px; height: 164px">
    <form id="form1" runat="server">
        <div class="auto-style7">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnSendOTP" runat="server" CssClass="auto-style5" Text="Send OTP" ForeColor="#0000CC" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="EMAIL ID"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnVeryOTP" runat="server" CssClass="auto-style4" Text="Verify OTP" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="VERIFY ID"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtOTP" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style6" Text="SAVE" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
