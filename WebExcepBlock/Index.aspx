<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebExcepBlock.Index" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">      
      <a class="navbar-brand" href="#"> <img src="images/citi-logo-transparent-citi.jpg" height="40px" width="60px"  /></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Index.aspx">Home</a></li>
      <li ><a href="TaskSearch.aspx">Task Search</a></li>
      <li><a href="CaseSearch.aspx">Case Search</a></li>
      <li><a href="DocumentSearch.aspx">Document Search</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
    <br />
    <h1>Power Image</h1>
     <br />
  <h3>The searching features of PowerImage allow you to search for Tasks, Cases, and Documents.</h3>
    <br />
  <p>Task search – Searches for Tasks by Date, Department, Task Id, Task Type and Task Status.</p>    
  <p>Case search – Searches for cases by Date, Case type, Case ID.</p>
  <p>Document search – Searches for documents by document ID, Finds a document and the tasks associated with it. </p>
</div>
</body>
</html>
