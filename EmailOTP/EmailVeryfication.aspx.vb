Imports System.Data.SqlClient
Imports System.Net
Imports System.Net.Mail

Public Class EmailVeryfication
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Function GenerateOTP() As String
        Dim rand As New Random()
        Dim otp As Integer = rand.Next(1000, 9999)
        Return otp.ToString()
    End Function

    Private Sub SendEmail(ByVal email As String, ByVal otp As String)
        Dim client As New SmtpClient("smtp.gmail.com")
        client.Port = 587
        client.Credentials = New NetworkCredential("ratnajit198@gmail.com", "kcow zhyt eoyw jgck")
        client.EnableSsl = True

        Dim message As New MailMessage()
        message.From = New MailAddress("ratnajit198@gmail.com")
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

        ' Store the OTP for later verification (you may use Session, ViewState, or a database)
        Session("OTP") = otp

        SendEmail(email, otp)
    End Sub

End Class