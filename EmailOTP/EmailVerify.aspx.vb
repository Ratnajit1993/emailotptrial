Imports System.Net
Imports System.Net.Mail

Public Class EmailVerify
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Function GenerateOTP() As String
        Dim rand As New Random()
        Dim otp As Integer = rand.Next(1000, 9999)
        Return otp.ToString()
    End Function

    Private Sub SendEmail(ByVal email As String, ByVal otp As String)
        Dim client As New SmtpClient("smtpout.secureserver.net")
        client.Port = 587
        client.Credentials = New NetworkCredential("noreply@groupsurya.co.in", "aMu2vbdn7vzF")
        client.EnableSsl = True

        Dim message As New MailMessage()
        message.From = New MailAddress("noreply@groupsurya.co.in")
        message.To.Add(email)
        message.Subject = "Your OTP"
        message.Body = "Your OTP is: " & otp
        Try
            client.Send(message)
            Response.Write("<script>alert('Code send successfully');</script>")
        Catch
            Response.Write("<script>alert('Something went wrong');</script>")
        End Try

    End Sub
    Protected Sub btnSendOTP_Click(sender As Object, e As EventArgs) Handles btnSendOTP.Click
        Dim email As String = txtEmail.Text
        Dim otp As String = GenerateOTP()

        ViewState("OTP") = otp

        SendEmail(email, otp)
    End Sub

    Protected Sub btnVeryOTP_Click(sender As Object, e As EventArgs) Handles btnVeryOTP.Click
        Dim enteredOTP As String = txtOTP.Text
        Dim storedOTP As String = ViewState("OTP").ToString()

        If enteredOTP = storedOTP Then
            Response.Write("<script>alert('Code verify successfully');</script>")
        Else
            Response.Write("<script>alert('Inavalid OTP. Please try again.');</script>")
        End If
    End Sub
End Class