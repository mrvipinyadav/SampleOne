<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TaskSearch.aspx.cs" Inherits="WebExcepBlock.TaskSearch" %>

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

    <style>
        .gridview td {
            padding-left: 2px;
        }
    </style>

    <script>
        $(function () {
            $("#createDateStart").datepicker();
            $("#createDateEnd").datepicker();
        });
    </script>

</head>
<body style="font-size: 12px;">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">
                    <img src="images/citi-logo-transparent-citi.jpg" height="40px" width="60px" /></a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="Index.aspx">Home</a></li>
                <li class="active"><a href="TaskSearch.aspx">Task Search</a></li>
           </ul>
        </div>
    </nav>

    <div class="container">
        <form id="frmTaskSearch" runat="server">
            <div class="row" >
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group" style="margin-bottom:10px;">
                                        <label for="createDateStart">Create Date Start</label>
                                        <input type="datetime" runat="server" class="form-control" id="createDateStart" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group"  style="margin-bottom:10px;">
                                        <label for="createDateEnd">Create Date End</label>
                                        <input type="datetime" runat="server" class="form-control" id="createDateEnd" />
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group"  style="margin-bottom:10px;">
                                        <label for="departmentID">Department ID</label>
                                        <select class="form-control" id="departmentID" runat="server">
                                        </select>
                                    </div>
                                </div>

                                 <div class="col-md-3">
                                    <div class="form-group"  style="margin-bottom:10px;">
                                        <label for="taskID">Task ID</label>
                                        <input type="text" class="form-control" id="taskID" />
                                    </div>
                                </div>
                            </div>


                            <div class="row">                              
                                <div class="col-md-2">
                                    <div class="form-group"  style="margin-bottom:10px;">
                                        <label for="taskStatus">Identifier Option 1</label>
                                        <select class="form-control" id="identifierType1" runat="server">
                                        </select>
                                        <input type="text" class="form-control" id="identifierValue1" />
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="form-group"  style="margin-bottom:10px;">
                                        <label for="taskStatus">Identifier Option 2</label>
                                        <select class="form-control" id="identifierType2" runat="server">
                                        </select>
                                        <input type="text" class="form-control" id="identifierValue2" />
                                    </div>
                                </div>

                                 <div class="col-md-2">
                                    <div class="form-group"  style="margin-bottom:10px;">
                                        <label for="taskStatus">Identifier Option 3</label>
                                        <select class="form-control" id="identifierType3" runat="server">
                                        </select>
                                        <input type="text" class="form-control" id="identifierValue3" />
                                    </div>
                                </div>

                                 <div class="col-md-3">
                                    <div class="form-group"  style="margin-bottom:10px;">
                                        <label for="taskType">Task Type</label>
                                         <select class="form-control" id="taskType" runat="server">
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group"  style="margin-bottom:10px;">
                                        <label for="taskStatus">Task Status</label>
                                        <select class="form-control" id="taskStatus" runat="server">
                                        </select>
                                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" BackColor="#337AB7" ForeColor="White" BorderColor="#337AB7" style="margin-top:10px;" BorderStyle="Ridge" Width="100px" />
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading" style="padding: 1px 14px;">Task search result: </div>
                        <div class="panel-body" style="padding:7px;">
                            <asp:Label runat="server" ID="lblError" ForeColor="Red"></asp:Label>
                            <asp:GridView ID="taskGridView" width="100%" RowStyle-CssClass="gridview" HeaderStyle-BackColor="LightGray" Font-Names="Arial" Font-Size="Small" AutoGenerateColumns="false" AllowPaging="true" PageSize="18" runat="server"  OnPageIndexChanging="taskGridView_PageIndexChanging">
                                <Columns>
                                    <asp:BoundField DataField="TaskID" HeaderText="Task ID"/>                
                                    <asp:BoundField DataField="TaskType" HeaderText="Task Type"/>
                                    <asp:BoundField DataField="DescriptionName" HeaderText="Task Desc."/>                                  
                                    <asp:BoundField DataField="Status" HeaderText="Status"/>                                    
                                    <asp:BoundField DataField="Department" HeaderText="Department"/>
                                    <asp:BoundField DataField="IdentifierType" HeaderText="Id. Type"/>
                                    <asp:BoundField DataField="IdentifierValue" HeaderText="Id. Value"/>                                    
                                    <asp:BoundField DataField="Workbasket" HeaderText="Workbasket"/>
                                    <asp:BoundField DataField="RecdDate" HeaderText="Recd Date"/>
                                    <asp:BoundField DataField="RecdTime" HeaderText="Time"/>
                                    <asp:BoundField DataField="CreateDate" HeaderText="Create Date"/>
                                    <asp:BoundField DataField="CreateTime" HeaderText="Time"/>
                                    <asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <a href="#" onclick="Javascript:window.open('activityList.aspx?Pam1=<%# DataBinder.Eval(Container,"DataItem.TaskID")%>','mywindow','status=1,toolbar=0,location=0,width=700,height=400');">Actions</a>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Documents">
                                        <ItemTemplate>
                                            <a href="#" onclick="Javascript:window.open('documentList.aspx?Pam1=<%# DataBinder.Eval(Container,"DataItem.TaskID")%>','mywindow','status=1,toolbar=0,location=0,width=700,height=400');">Documents</a>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>

                                <HeaderStyle BackColor="#CCCCCC"></HeaderStyle>
                                <PagerSettings Mode="NumericFirstLast" />
                            </asp:GridView>
                        
                         <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group"  style="margin-bottom:10px; text-align:right;">
                                              <asp:Button ID="btnExport" runat="server" Text="Export to Excel"  BackColor="#337AB7" ForeColor="White" BorderColor="#337AB7" style="margin-top:10px;" BorderStyle="Ridge" Width="100px" OnClick="btnExport_Click" Visible="False" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </form>
    </div>
</body>
</html>
