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
<h1>The Teacher's Of Learner's Academy</h1>
</div>
<%
try {
	DbManager db=new DbManager();
	Connection con=db.getConnection();

	Statement st=con.createStatement();
	String query="select teacher.Tech_ID,teacher.Teacher_name,teacher.Gender,subject.Subject_name from teacher JOIN subject ON teacher.Sub_ID=subject.Sub_ID";
	ResultSet rs=st.executeQuery(query);%>
	<div class="display">
	<table>
	<tr><th>Serial NO.</th><th>Teacher Name</th><th>Gender</th><th>Subject Taught</th></tr>
	<%
	while(rs.next()) { 
	%>
	<tr><td><%= rs.getInt(1) %></td><td><%= rs.getString(2) %></td><td><%= rs.getString(3) %></td><td><%= rs.getString(4) %></td></tr>
	
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

<form action="welcome.jsp">
<button type="submit">Back to Welcome Page</button>
</form>
</body>
</html>