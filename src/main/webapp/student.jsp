<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="http://localhost:9090/LearnerAcademy/css/table.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>
	<div class="head">
	<img src="image/logo.png" alt="logo">
	<h1>The Student's Of Learner's Academy</h1>
	
	</div>
	<div class="display">
	
	<table>
	<tr>
	<th>Classes</th>
	<th>Student</th>
	</tr>
	<tr><td>Class I</td><td><a href="class1_std.jsp" >List Of Students</a></td></tr>
	<tr><td>Class II</td><td><a href="class2_std.jsp" >List Of Students</a></td></tr>
	<tr><td>Class III</td><td><a href="class3_std.jsp" >List Of Students</a></td></tr>
	<tr><td>Class IV</td><td><a href="class4_std.jsp" >List Of Students</a></td></tr>
	<tr><td>Class V</td><td><a href="class5_std.jsp" >List Of Students</a></td></tr>
	</table>
	</div>
	
	
	
	<form action="welcome.jsp">
		
		<button type="submit">Back to Welcome Page</button>
	</form>
	
</body>
</html>