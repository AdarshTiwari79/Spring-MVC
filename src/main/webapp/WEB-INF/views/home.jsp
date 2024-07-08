<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<h1>This is Home Page</h1>
	
	<%String name = (String)request.getAttribute("name"); %>
	<h1>My name is <%=name %></h1>
	
	<% int price = (int)request.getAttribute("price"); %>
	<h1>Price of one mobile phone is <%=price %></h1>
	
	<h1>List of MCA first semester books :</h1>
	<% List<String> books = (List<String>)request.getAttribute("book");
	for(String s: books){%>
	<h1> <%=s %></h1>
	
	<%} %>
</body>
</html>