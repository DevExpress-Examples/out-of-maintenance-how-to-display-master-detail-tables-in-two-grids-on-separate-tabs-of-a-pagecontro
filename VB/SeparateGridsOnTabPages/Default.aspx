<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="SeparateGridsOnTabPages._Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dxw" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxTabControl" TagPrefix="dxtc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dxtc:ASPxPageControl ID="ASPxPageControl1" runat="server" AutoPostBack="True" Width="600px">
			<TabPages>
				<dxtc:TabPage Text="Subcategories">
					<ContentCollection>
						<dxw:ContentControl runat="server">

		<dxwgv:ASPxGridView ID="gridSubCategories" runat="server" DataSourceID="sqlSubCategories" AutoGenerateColumns="False" KeyFieldName="ProductSubcategoryID" Width="100%" OnFocusedRowChanged="gridSubCategories_FocusedRowChanged">
			<Columns>
				<dxwgv:GridViewDataTextColumn Caption="ID" FieldName="ProductSubcategoryID" ReadOnly="True"
					VisibleIndex="0" Width="50px">
					<EditFormSettings Visible="False" />
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="ProductCategoryID" VisibleIndex="1" Visible="False">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="Name" VisibleIndex="1">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn Name="colShowProducts" VisibleIndex="2" Width="130px">
					<DataItemTemplate>
						<dxe:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="Show products...">
						</dxe:ASPxButton>
					</DataItemTemplate>
				</dxwgv:GridViewDataTextColumn>
			</Columns>
			<SettingsBehavior AllowFocusedRow="True" ProcessFocusedRowChangedOnServer="True" />
		</dxwgv:ASPxGridView>
		<asp:SqlDataSource ID="sqlSubCategories" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksConnectionString %>"
			SelectCommand="SELECT [ProductSubcategoryID], [ProductCategoryID], [Name] FROM Production.[ProductSubcategory]">
		</asp:SqlDataSource>
						</dxw:ContentControl>
					</ContentCollection>
				</dxtc:TabPage>
				<dxtc:TabPage Text="Products">
					<ContentCollection>
						<dxw:ContentControl runat="server">
		<dxwgv:ASPxGridView ID="gridProducts" runat="server" AutoGenerateColumns="False" DataSourceID="sqlProducts" KeyFieldName="ProductID" Width="100%">
			<Columns>
				<dxwgv:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
					<EditFormSettings Visible="False" />
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="Name" VisibleIndex="1" Caption="Product Name">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="ProductNumber" VisibleIndex="2">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="Color" VisibleIndex="3">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="ListPrice" VisibleIndex="4">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="ProductSubcategoryID" VisibleIndex="5" Caption="SubcategoryID">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataDateColumn FieldName="SellStartDate" VisibleIndex="6">
				</dxwgv:GridViewDataDateColumn>
			</Columns>
		</dxwgv:ASPxGridView><asp:SqlDataSource ID="sqlProducts" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksConnectionString %>"
			SelectCommand="SELECT [ProductID], [Name], [ProductNumber], [Color], [ListPrice], [ProductSubcategoryID], [SellStartDate] FROM Production.[Product] WHERE ([ProductSubcategoryID] = @ProductSubcategoryID)">
			<SelectParameters>
				<asp:SessionParameter DefaultValue="1" Name="ProductSubcategoryID" SessionField="CurrentSubcategoryID"
					Type="Int32" />
			</SelectParameters>
		</asp:SqlDataSource>
						</dxw:ContentControl>
					</ContentCollection>
				</dxtc:TabPage>
			</TabPages>
		</dxtc:ASPxPageControl>    &nbsp; &nbsp;
	</div>
	</form>
</body>
</html>
