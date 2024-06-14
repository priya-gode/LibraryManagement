<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

background-image:url("lib8.gif");
background-size:1550px;
  

}
table{
height:500px;
  width:500px;
  margin-left: auto;
  margin-right: auto;
  }
table, th, td {
  border:  solid red;
  
}
th,td{
font-weight: 1000;
font-size:20px;
color:white;
}
</style>
<table border="1">
    <tr>
        <th>bid</th>
        <th>bname</th>
        <th>quantity</th>
        <th>available</th>
        <th>taken</th>
    </tr>

    <% for (Library E : L) { %>
    <tr>
        <td><%= E.getBid()%></td>
        <td><%= E.getBname()%></td>
        <td><%= E.getQuantity()%></td>
        <td><%= E.getAvailable()%></td>
        <td><%= E.getTaken()%></td>
    </tr>
    <% } %>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

</body>
</html>