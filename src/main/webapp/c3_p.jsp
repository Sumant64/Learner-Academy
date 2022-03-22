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
<h1 style="margin-left: 350px;">Periods Of Class III</h1>
</div>
<%
try {
	DbManager db=new DbManager();
	Connection con=db.getConnection();

	Statement st=con.createStatement();
	String query="select sub_class.Period, teacher.Teacher_name, subject.Subject_name from sub_class JOIN teacher ON sub_class.Tech_ID=teacher.Tech_ID   JOIN subject ON sub_class.Sub_ID=subject.Sub_ID where class_ID=3 order by Period";
	ResultSet rs=st.executeQuery(query);%>
	<div class="display">
	<table>
	<tr><th>Period NO.</th><th>Teacher Name</th><th>Subject Name</th></tr>
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

<form action="class.jsp">
<button type="submit">Back to Class Page</button>
</form>
</body>
</html>