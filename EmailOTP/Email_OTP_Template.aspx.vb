Imports System.Net
Imports System.Net.Mail

Public Class Email_OTP_Template
    Inherits System.Web.UI.Page


    'Dim username As String = ""
    'Dim password As String = ""

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Function GenerateOTP() As String
        Dim rand As New Random()
        Dim otp As Integer = rand.Next(1000, 9999)
        Return otp.ToString()
    End Function
    Private Sub sendVerificationCode(ByVal email As String, ByVal otp As String)
        Try
            Dim fromAddress As New MailAddress("noreply@groupsurya.co.in", "Moneymela")
            Dim toAddress As New MailAddress(txtEmail.Text)
            Dim subject As String = "Verify your email Address through OTP"
            Dim body As String = String.Format("Please use the following code to verify your email address for Surya IT:{0}", otp)

            Dim smtp As New SmtpClient("smtpout.secureserver.net")
            'smtp.Host = "smtp.gmail.com"
            smtp.Port = 587
            smtp.EnableSsl = True
            smtp.Credentials = New NetworkCredential("noreply@groupsurya.co.in", "aMu2vbdn7vzF")
            Dim message As New MailMessage(fromAddress, toAddress)
            message.Subject = subject
            message.Body = body
            smtp.Send(message)
            Response.Write("<script>alert('OTP send successfully...');</script>")
        Catch ex As Exception
            MsgBox("Failed to send the OTP:" & ex.Message)
        End Try
    End Sub
    Protected Sub btnSendOTP_Click(sender As Object, e As EventArgs) Handles btnSendOTP.Click
        Dim email As String = txtEmail.Text
        Dim otp As String = GenerateOTP()

        ViewState("OTP") = otp
        sendVerificationCode(email, otp)
    End Sub
End Class