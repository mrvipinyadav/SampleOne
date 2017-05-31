<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IdentifierList.aspx.cs" Inherits="WebExcepBlock.IdentifierList" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Activity List</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <br />
    <div class="container">
        <form id="frmTaskSearch" runat="server">        
            <div class="row">
                <div class="col-md-12">
                     <div class="panel panel-primary" >
                        <div class="panel-heading" style="padding: 1px 14px;">Identifier List: </div>
                        <div class="panel-body">
                            <asp:GridView ID="taskGridView" HeaderStyle-BackColor="LightGray" Font-Names="Arial" Font-Size="Small" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" PageSize="10" runat="server" CellPadding="2" CellSpacing="1" OnPageIndexChanging="taskGridView_PageIndexChanging">
                                <AlternatingRowStyle BackColor="#F8F8F8" />
                                <Columns>
                                    <asp:BoundField DataField="IdentifierType" HeaderText="IdentifierType" ItemStyle-Width="100px">
                                        <ItemStyle Width="150px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="IdentifierValue" HeaderText="Identifier Value" ItemStyle-Width="100px">
                                        <ItemStyle Width="150px"></ItemStyle>
                                    </asp:BoundField>                                 
                                </Columns>
                                <HeaderStyle BackColor="#CCCCCC"></HeaderStyle>
                                <PagerSettings Mode="NumericFirstLast" />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>

        </form>
    </div>
</body>
</html>
