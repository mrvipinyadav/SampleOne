<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DocumentSearch.aspx.cs" Inherits="WebExcepBlock.DocumentSearch" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Bootstrap Case</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css" />
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#createDateStart").datepicker();
            $("#createDateEnd").datepicker();
        });
    </script>

</head>
<body>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
               <div class="navbar-header">      
      <a class="navbar-brand" href="#"> <img src="images/citi-logo-transparent-citi.jpg" height="40px" width="60px"  /></a>
    </div>
            <ul class="nav navbar-nav">
                <li><a href="Index.aspx">Home</a></li>
                <li><a href="TaskSearch.aspx">Task Search</a></li>
                <li ><a href="CaseSearch.aspx">Case Search</a></li>
                <li class="active"><a href="DocumentSearch.aspx">Document Search</a></li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <form id="frmTaskSearch" runat="server">
            <div class="row" style="font-size: 12px;">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="createDateStart">Date Created  Begin</label>
                                        <input type="datetime" class="form-control" id="createDateStart" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="createDateEnd">Date Created End</label>
                                        <input type="datetime" class="form-control" id="createDateEnd" />
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="departmentID">Document Type</label>
                                        <select class="form-control" id="departmentID" runat="server">
                                            <option>IMAGE</option>
                                            <option>CTEXT</option>
                                            <option>ATTCH</option>
                                            <option>NOTE</option>
                                            <option>CORRO</option>
                                            <option>SIGN</option>
                                            <option>EXTERN</option>
                                        </select>                                        
                                    </div>
                                </div>
                            </div>                      


                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="taskID">Document ID</label>
                                        <input type="text" class="form-control" id="taskID" />
                                    </div>
                                </div>

                                <div class="col-md-4">                                   

                                </div>
                                <div class="col-md-4">
                              
                                </div>

                            </div>

                            <div class="row">
                            </div>

                            <div class="row">
                                <div class="col-md-12" style="text-align: right;">
                                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" BackColor="#337AB7" ForeColor="White" BorderColor="#337AB7" BorderStyle="Ridge" Width="100px" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary" >
                        <div class="panel-heading" style="padding: 1px 14px;">Document Search result: </div>
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
