<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>contact page</title>
</head>
<body>
	<h1 class="text-center">Registration Form</h1>
	<h2 class="text-center">${header1 }</h2>
	<h2 class="text-center">${header2 }</h2>
	<div class="container mb-5">
		<form action="processform" method="post">
			<div class="form-group">
				<label for="formControlInput1" class="form-label">Email
					address</label> <input type="email" class="form-control"
					id="formControlInput1" name="email" placeholder="Enter email here">
			</div>
			<div class="form-group">
				<label for="formControlInput2" class="form-label">User Name</label>
				<input type="text" class="form-control" id="formControlInput2"
					name="uname" placeholder="Enter username here">
			</div>
			<div class="form-group">
				<label for="formControlInput3" class="form-label">Password</label> <input
					type="password" class="form-control" id="formControlInput3"
					name="password" placeholder="Enter password here here">
			</div>
			<div class="form-group text-center">
				<button type="submit" class="mt-3 btn btn-success">sign up</button>
			</div>
		</form>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>