<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="http://localhost:9090/LearnerAcademy/css/admin.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>
	<div class="head">
	<img src="image/logo.png" alt="logo">
	<h1 align="center">Admin Login</h1>
	</div>
	
	
	<form action="LoginServlet" method="POST">
		<div>
		<label>Username: </label>
		<input type="text" placeholder="Enter Username" name="username" required/>
		</div>
		<div>
		<label>Password: </label>
		<input type="password" placeholder="Enter Password" name="password" required/>
		</div>
		<button type="submit">Submit</button>
	</form>
	
</body>
</html>