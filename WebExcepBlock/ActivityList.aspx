<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActivityList.aspx.cs" Inherits="WebExcepBlock.ActivityList" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Action Steps List</title>
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
                        <div class="panel-heading" style="padding: 1px 14px;">Action Steps List: </div>
                        <div class="panel-body">
                            <asp:GridView ID="taskGridView" HeaderStyle-BackColor="LightGray" Font-Names="Arial" Font-Size="Small" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" PageSize="15" runat="server" CellPadding="2" CellSpacing="1" OnPageIndexChanging="taskGridView_PageIndexChanging">
                                <AlternatingRowStyle BackColor="#F8F8F8" />

                                <Columns>
                                    <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" ItemStyle-Width="100px">
                                        <ItemStyle Width="80px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CreateTime" HeaderText="CreateTime" ItemStyle-Width="100px">
                                        <ItemStyle Width="120px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Operator" HeaderText="Operator" ItemStyle-Width="100px">
                                        <ItemStyle Width="100px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Department" HeaderText="Department" ItemStyle-Width="100px">
                                        <ItemStyle Width="130px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="TaskType" HeaderText="Task Type" ItemStyle-Width="100px">
                                        <ItemStyle Width="130px"></ItemStyle>
                                    </asp:BoundField>
                                     <asp:BoundField DataField="ActionStep" HeaderText="Action Step" ItemStyle-Width="100px">
                                        <ItemStyle Width="130px"></ItemStyle>
                                    </asp:BoundField> 
                                     <asp:BoundField DataField="Wrkbkt" HeaderText="Wrkbkt" ItemStyle-Width="100px">
                                        <ItemStyle Width="130px"></ItemStyle>
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
