<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DocumentList.aspx.cs" Inherits="WebExcepBlock.DocumentList" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Document List</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <form id="frmTaskSearch" runat="server">        
            <div class="row">
                <div class="col-md-12">
                     <div class="panel panel-primary" >
                        <div class="panel-heading" style="padding: 1px 14px;">Document List: </div>
                        <div class="panel-body">
                            <asp:GridView ID="taskGridView" HeaderStyle-BackColor="LightGray" Font-Names="Arial" Font-Size="Small" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" PageSize="10" runat="server" CellPadding="2" CellSpacing="1" OnPageIndexChanging="taskGridView_PageIndexChanging">
                                <AlternatingRowStyle BackColor="#F8F8F8" />
                                <Columns>
                                    <asp:BoundField DataField="CreateDate" HeaderText="Create Date" ItemStyle-Width="100px">
                                        <ItemStyle Width="80px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DocID" HeaderText="DocID" ItemStyle-Width="100px">
                                        <ItemStyle Width="120px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DocType" HeaderText="Doc Type" ItemStyle-Width="100px">
                                        <ItemStyle Width="100px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ContentType" HeaderText="Content Type" ItemStyle-Width="100px">
                                        <ItemStyle Width="130px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="MailType" HeaderText="Mail Type" ItemStyle-Width="100px">
                                        <ItemStyle Width="130px"></ItemStyle>
                                    </asp:BoundField>                               

                                    <asp:HyperLinkField ItemStyle-Width="130px" Text="Get The Document" DataNavigateUrlFields="DocID" DataNavigateUrlFormatString="~/Details.aspx?CaseIdentifier={0}"
                                        HeaderText="Documents" />
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
