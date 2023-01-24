<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to display an icon in a grid cell</title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="gv" runat="server" AutoGenerateColumns="False" KeyFieldName="ID"
            ClientInstanceName="grid">
            <Columns>
                <dx:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Value" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataColumn Caption="Image (Template)" VisibleIndex="3">
                    <DataItemTemplate>
                        <img id="img" runat="server" alt='Eval("Value")' src='<%# GetImageName(Eval("Value")) %>' />
                    </DataItemTemplate>
                </dx:GridViewDataColumn>
            </Columns>
        </dx:ASPxGridView>
        <dxe:ASPxButton ID="btn" runat="server" AutoPostBack="False" Text="Select All">
            <ClientSideEvents Click="function(s, e) { grid.SelectAllRowsOnPage(); }" />
        </dxe:ASPxButton>
    </form>
</body>
</html>
