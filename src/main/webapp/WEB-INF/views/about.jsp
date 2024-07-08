<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Page</title>
</head>
<body>
	<h1>This is about page</h1>

	<h1>My name is ${name}</h1>

	<h1>Price of one mobile phone is ${price}</h1>

	<h1>List of MCA first semester books :</h1>

	<c:forEach var="item" items="${book}">
		<h2>${item}</h2>
	</c:forEach>
</body>
</html>