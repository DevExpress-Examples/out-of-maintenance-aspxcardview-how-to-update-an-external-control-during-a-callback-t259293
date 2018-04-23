Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        ASPxCardView1.JSProperties("cpIsUpdated") = ""
    End Sub
    Protected Sub ASPxCardView1_CardUpdated(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataUpdatedEventArgs)
        If e.Exception Is Nothing Then
            DirectCast(sender, ASPxCardView).JSProperties("cpIsUpdated") = e.Keys(0)
        End If

    End Sub
End Class
