<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="http://localhost:9090/LearnerAcademy/css/welcome.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>
	<div class="head">
		<img src="image/logo.png" alt="logo">
		<h1>Welcome to Learner's Academy</h1>
	</div>
	
	<div class="selection">
		<form action="subject.jsp">
		<button type="submit">Subjects</button>
		</form>
		<form action="teacher.jsp">
		<button type="submit">Teachers</button>
		</form>
		<form action="student.jsp">
		<button type="submit">Students</button>
		</form>
		<form action="class.jsp">
		<button type="submit">Class</button>
		</form>
		<form action="search.jsp" style="margin-bottom:10px;">
		<button type="submit">Search a Student</button>
		</form>
	</div>

</body>
</html>