<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mypackage.DbManager" %>    

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
	<h1 style="margin-left: 320px;">The Students in Class II</h1>
	</div>
	<% 
try {
	DbManager db=new DbManager();
	Connection con=db.getConnection();

	Statement st=con.createStatement();
	String query="select Std_ID,Student_name, Gender from student where Class_ID=2";
	ResultSet rs=st.executeQuery(query);%>
	<div class="display">
	<table>
	<tr><th>Student ID</th><th>Student Name</th><th>Gender</th></tr>
	<%
	while(rs.next()) { 
	%>
	<tr><td><%= rs.getInt(1) %></td><td><%= rs.getString(2) %></td><td><%= rs.getString(3) %></td></tr>
	
	<% 
	}
	%>
	</table>
	</div>
	<% 
	st.close();
	con.close();
	}catch(Exception e) {
		
	}

%>

<form action="student.jsp">
<button type="submit">Back to Student Page</button>
</form>

</body>
</html>