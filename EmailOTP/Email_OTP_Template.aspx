<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Email_OTP_Template.aspx.vb" Inherits="EmailOTP.Email_OTP_Template" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 25px;
        }
        .auto-style4 {
            height: 24px;
            position: relative;
            left: 5px;
            top: 64px;
            width: 84px;
        }
        .auto-style5 {
            height: 23px;
            position: relative;
            left: -81px;
            top: 2px;
            width: 79px;
        }
        .auto-style7 {
            height: 21px;
        }
        .auto-style8 {
            height: 20px;
        }
        .auto-style9 {
            position: relative;
            left: -1px;
            top: 29px;
        }
    </style>
</head>
<body style="width: 100vh; height: 100vh;">
    <form id="form1" runat="server">
        <div class="auto-style7">

            <table class="auto-style1" style="position: absolute; inset: 0px; margin: auto;">
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="EMAIL ID"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnVeryOTP" runat="server" CssClass="auto-style4" Text="Verify OTP" ForeColor="Blue" />
                        <asp:Button ID="btnSendOTP" runat="server" CssClass="auto-style5" Text="Send OTP" ForeColor="#0000CC" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtOTP" runat="server" CssClass="auto-style9"></asp:TextBox>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Verification OTP"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
