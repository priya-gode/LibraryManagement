<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
//session.removeAttribute("username");
session.invalidate();
response.sendRedirect("librarianlogin.jsp");
%>