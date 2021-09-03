<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management Syatem</title>
<style>
h1{background:blue;color:white;font-size:50px;border:2px solid yellow;text-align:center;}
body{background:linear-gradient(skyblue,white,skyblue);}
</style>
</head>
<body>
	<h1>ONLINE LEAVE APPLICATION</h1>
	<h2><u>VIEW FEEDBACK</u></h2><table border="6">
	<tr><th><h3>Name</th><th>Branch & Sec</th><th>Feedback Area</th><th>Mention Feedback</th></tr><h3></h3>
	<%@page import="java.sql.*" %>
	  <%  
	  Connection con =null;  
	try
	{
		Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","Nadeem@123"); 
		PreparedStatement ps=con.prepareStatement("select * from feedback");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			out.println("<tr><td>"+rs.getString(1)+"</td>");
			out.println("<td>"+rs.getString(2)+"</td>");
			out.println("<td>"+rs.getString(3)+"</td>");
			out.println("<td>"+rs.getString(4)+"</td></tr>");
			



			
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