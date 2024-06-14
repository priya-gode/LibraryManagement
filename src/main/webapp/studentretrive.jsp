<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>
<body>
<%@ page import="java.util.List" %>
<%@ page import="com.model.Library" %>

<%-- Suppressing unchecked warning --%>

<%
    List<Library> L = (List<Library>)request.getAttribute("list");
%>

<style>
body{

background-image:url("lib7.gif");
background-size:1000px;
  

}
table{
height:500px;
  width:900px;
   margin-left: auto;
  margin-right: auto;
  }
table, th, td {
  border: 2px solid red;
  
}
th,td{
font-weight: 1000;
font-size:20px;
color:white;
}
</style>
<table border="1">
    <tr>
        <th>student id</th>
        <th>student name</th>
        <th>book name</th>
        <th>Issued date</th>
        <th>Return date</th>
        <th>returned date</th>
        <th>Fine</th>
        <th>Status</th>
    </tr>

    <% for (Library E : L) { %>
    <tr>
        <td><%= E.getSid()%></td>
        <td><%= E.getSname()%></td>
        <td><%= E.getBook() %></td>
        <td><%= E.getIssued() %></td>
        <td><%= E.getReturnd() %></td>
        <td><%= E.getReturned() %></td>
        <td><%= E.getFine() %></td>
        <td><%= E.getStatus() %></td>
    </tr>
    <% } %>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

</body>
</html>