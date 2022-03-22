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
<h1>The Subjects Taught in Learner's Academy</h1>
</div>
<%
try {
	DbManager db=new DbManager();
	Connection con=db.getConnection();

	Statement st=con.createStatement();
	String query="select Sub_ID as Serial_NO, Subject_name as Subject from subject";
	ResultSet rs=st.executeQuery(query);%>
	<div class="display">
	<table>
	<tr><th>Serial NO.</th><th>Subject Name</th></tr>
	<%
	while(rs.next()) { 
	%>
	<tr><td><%= rs.getInt(1) %></td><td><%= rs.getString(2) %></td></tr>
	
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