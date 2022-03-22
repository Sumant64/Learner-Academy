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
	<h1 style="margin-left:400px">Student Details</h1>
	</div>
	<% 
	String id=request.getParameter("id");
	int stdid=Integer.parseInt(id);
	String first=request.getParameter("first_name");
	String last=request.getParameter("last_name");
	String name=first+" "+last;
	boolean s=false;
	
	try {
		DbManager db=new DbManager();
		Connection con=db.getConnection();
	
		Statement st=con.createStatement();
		String query="select Std_ID, Student_name, Gender, Class_ID from student";
		ResultSet rs=st.executeQuery(query);
		while(rs.next()) { 
		 
			if(rs.getInt(1)==stdid && rs.getString(2).equalsIgnoreCase(name)){
				
			%>
			<div class="display">
			<table>
				<tr><th>Student ID</th><th>Student Name</th><th>Gender</th><th>Class</th></tr>
				<tr><td> <%=rs.getInt(1) %></td><td> <%= rs.getString(2) %></td><td><%= rs.getString(3) %></td><td><%= rs.getString(4) %></td></tr>
				
			</table>
			</div>
			<% 
			s=true;
			break;
			}
		}
		if(s==false){
			out.println("<h1>Student data not found</h1>");
			
			
		}
	
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