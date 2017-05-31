<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CaseSearch.aspx.cs" Inherits="WebExcepBlock.CaseSearch" %>
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
                <li class="active"><a href="CaseSearch.aspx">Case Search</a></li>
                <li><a href="DocumentSearch.aspx">Document Search</a></li>
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
                                        <label for="createDateStart">Case Begin Date</label>
                                        <input type="datetime" class="form-control" id="createDateStart" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="createDateEnd">Case End Date</label>
                                        <input type="datetime" class="form-control" id="createDateEnd" />
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="departmentID">Case Type</label>
                                        <select class="form-control" id="departmentID" runat="server">
                                            <option>Need Sign</option>
                                            <option>Need More Documents</option>
                                            <option>Need More Information</option>
                                        </select>                                        
                                    </div>
                                </div>
                            </div>

                            


                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="taskID">First Name/Corporate Name</label>
                                        <input type="text" class="form-control" id="taskID" />
                                    </div>
                                </div>

                                <div class="col-md-4">

                                    <div class="form-group">
                                        <label for="taskType">Last Name</label>
                                        <input type="text" class="form-control" id="taskType" />
                                    </div>

                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="departmentID">Case Status</label>
                                        <select class="form-control" id="Select1" runat="server">
                                            <option>OPEN</option>
                                            <option>SUSPEND</option>
                                            <option>CLOSED</option>
                                            <option>COMBINE</option>                                            
                                        </select>                                        
                                    </div>
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
                        <div class="panel-heading" style="padding: 1px 14px;">Case Search result: </div>
                        <div class="panel-body">
                            <asp:GridView ID="taskGridView" HeaderStyle-BackColor="LightGray" Font-Names="Arial" Font-Size="Small" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" PageSize="10" runat="server" CellPadding="2" CellSpacing="1" OnPageIndexChanging="taskGridView_PageIndexChanging">
                                <AlternatingRowStyle BackColor="#F8F8F8" />
                                <Columns>
                                    <asp:BoundField DataField="CaseType" HeaderText="Case Type" ItemStyle-Width="100px">
                                        <ItemStyle Width="80px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CaseIdentifier" HeaderText="Case Identifier" ItemStyle-Width="100px">
                                        <ItemStyle Width="120px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Status" HeaderText="Status" ItemStyle-Width="100px">
                                        <ItemStyle Width="100px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CaseName" HeaderText="Case Name" ItemStyle-Width="100px">
                                        <ItemStyle Width="130px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ContactName" HeaderText="Contact Name" ItemStyle-Width="100px">
                                        <ItemStyle Width="130px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CreateDate" HeaderText="Create Date" ItemStyle-Width="100px">
                                        <ItemStyle Width="100px"></ItemStyle>
                                    </asp:BoundField>                                    

                                    <asp:HyperLinkField Text="View Tasks" DataNavigateUrlFields="CaseIdentifier" DataNavigateUrlFormatString="~/Details.aspx?CaseIdentifier={0}"
                                        HeaderText="Task Details" />
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
