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
	<h2><U>View Application</U></h2><table border="6">
	<tr><th><h3>Name Of The Student</th><th>Branch & Sec</th><th>Period</th><th>FROM</th><th>TO</th><th>Purpose Of Leave</th><th>Home Address</th><th>Parent Number</th></tr></h3>
	<%@page import="java.sql.*" %>
	  <% Connection con = null;   
	try
	{
		Class.forName("com.mysql.jdbc.Driver");  
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","Nadeem@123");  
		PreparedStatement ps=con.prepareStatement("select * from leave_application");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			out.println("<tr><td><b>"+rs.getString(2)+"</td>");
			out.println("<td><b>"+rs.getString(3)+"</td>");
			out.println("<td><b>"+rs.getString(4)+"</td>");
			out.println("<td><b>"+rs.getString(5)+"</td>");
			out.println("<td><b>"+rs.getString(6)+"</td>");
			out.println("<td><b>"+rs.getString(7)+"</td>");
			out.println("<td><b>"+rs.getString(8)+"</td>");
			out.println("<td><b>"+rs.getString(9)+"</td></tr>");



			
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