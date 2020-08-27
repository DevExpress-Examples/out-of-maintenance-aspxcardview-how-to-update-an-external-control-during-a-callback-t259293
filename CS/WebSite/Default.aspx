<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <dx:aspxlabel ID="ASPxLabel1" runat="server" ClientInstanceName="clientLabel">
    </dx:aspxlabel>
    <dx:ASPxCardView ID="ASPxCardView1" runat="server" AutoGenerateColumns="false" DataSourceID="AccessDataSource1" KeyFieldName="CategoryID" OnCardUpdated="ASPxCardView1_CardUpdated">
        <clientsideevents EndCallback="function(s, e) {
	        if (s.cpIsUpdated != '') {
	            clientLabel.SetText('The category '+s.cpIsUpdated+' is updated successfully');
	            clientLabel.GetMainElement().style.backgroundColor = 'green';
	            clientLabel.GetMainElement().style.color = 'white';
	        }
	        else {
	            clientLabel.SetText('');
	        }
         }" />
        <Columns>
            <dx:CardViewColumn FieldName="CategoryID" ReadOnly="true" />
            <dx:CardViewColumn FieldName="CategoryName" ReadOnly="true"/>
            <dx:CardViewColumn FieldName="Description" ReadOnly="true"/>
        </Columns>
        <CardLayoutProperties>
            <Items>
                <dx:CardViewCommandLayoutItem ShowEditButton="true" HorizontalAlign="Right" />
                <dx:CardViewColumnLayoutItem ColumnName="CategoryID" />
                <dx:CardViewColumnLayoutItem ColumnName="CategoryName" />
                <dx:CardViewColumnLayoutItem ColumnName="Description" />
                <dx:EditModeCommandLayoutItem HorizontalAlign="Right" />
            </Items>
        </CardLayoutProperties>
    </dx:ASPxCardView>    
    <asp:accessdatasource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/nwind.mdb" 
        DeleteCommand="DELETE FROM [Categories] WHERE [CategoryID] = ?" 
        InsertCommand="INSERT INTO [Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Categories]" 
        UpdateCommand="UPDATE [Categories] SET [CategoryName] = ?, [Description] = ?, [Picture] = ? WHERE [CategoryID] = ?">
        <deleteparameters>
            <asp:parameter Name="CategoryID" Type="Int32" />
        </deleteparameters>
        <updateparameters>
            <asp:parameter Name="CategoryName" Type="String" />
            <asp:parameter Name="Description" Type="String" />
            <asp:parameter Name="Picture" Type="Object" />
            <asp:parameter Name="CategoryID" Type="Int32" />
        </updateparameters>
        <insertparameters>
            <asp:parameter Name="CategoryID" Type="Int32" />
            <asp:parameter Name="CategoryName" Type="String" />
            <asp:parameter Name="Description" Type="String" />
            <asp:parameter Name="Picture" Type="Object" />
        </insertparameters>
    </asp:accessdatasource>        
    </form>
</body>
</html>
