<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="ISO-8859-1">
<title>ONLINE LEAVE APPLICATION</title>
<style>
h1{background:blue;color:white;font-size:50px;border:2px solid yellow;text-align:center;}
body{background:linear-gradient(skyblue,white,skyblue);}
</style>
</head>
<body>
	<h1>ONLINE LEAVE APPLICATION</h1>
	<h2><u>View Student</u></h2><table border="6">
	<tr><th><h3>REGISTRATION</th><th>NAME</th><th>PASSWORD</th><th>EMAIL</th><th>MOBILE</th></tr></h3>
	<%@page import="java.sql.*" %>
	  <%  
	  Connection con =null;  
	try
	{
		Class.forName("com.mysql.jdbc.Driver");  
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","Nadeem@123");  
		PreparedStatement ps=con.prepareStatement("select * from student_registration");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			out.println("<tr><td><b>"+rs.getString(3)+"</td>");
			out.println("<td><b>"+rs.getString(2)+"</td>");
			out.println("<td><b>"+rs.getString(4)+"</td>");
			out.println("<td><b>"+rs.getString(6)+"</td>");
			out.println("<td><b>"+rs.getString(5)+"</td>");
			
			


			
		}
		con.close();
	}
	
catch(Exception e)
	{
	 out.println(e);
	}
	%></table><br>
	
	 <a href="Swelcome.jsp">Back to Welcome Page</a>
	</pre></form>
</body>
</html>