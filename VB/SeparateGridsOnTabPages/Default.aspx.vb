Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Namespace SeparateGridsOnTabPages
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

		End Sub

		Protected Sub gridSubCategories_FocusedRowChanged(ByVal sender As Object, ByVal e As EventArgs)
			Dim row As Integer = gridSubCategories.FocusedRowIndex
			Dim key As Object = gridSubCategories.GetRowValues(row, gridSubCategories.KeyFieldName)
			Session("CurrentSubcategoryID") = key
		End Sub

		Protected Sub ASPxButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
			' go to the next tab
			ASPxPageControl1.ActiveTabIndex = 1
		End Sub

	End Class
End Namespace
