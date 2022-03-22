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
<h1>Search a Student</h1>
</div>
<form action="stu_search.jsp">
	<div>
	<label>Sudent ID:</label>
	<input type="text" placeholder="Enter Student ID" name="id" required/>
	</div>
	<div>
	<label>First Name</label>
	<input type="text" placeholder="Enter First Name" name="first_name" required/>
	</div>
	<div>
	<label>Last Name</label>
	<input type="text" placeholder="Enter Last Name" name="last_name" required/>
	</div>
	<button type="submit">Search</button>
</form>
<form action="student.jsp" >
	<button style="width: 300px">Back to Student Page</button>
</form>
</body>
</html>