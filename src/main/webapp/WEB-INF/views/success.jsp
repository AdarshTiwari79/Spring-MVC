<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Submit</title>
</head>
<body>
	<h1>${msg } with id : ${id}</h1>
	<h3>${header1 }</h3>
	<h3>${header2 }</h3>
	<h2>your email : ${user.email}</h2>
	<h2>your username : ${user.uname}</h2>
	<h2>your password : ${user.password}</h2>
</body>
</html>