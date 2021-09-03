<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ONLINE LEAVE APPLICATION</title>
<style>
h1{background:blue;color:yellow;font-size:50px;border:2px solid yellow;text-align:center;}
body{background:linear-gradient(skyblue,white,skyblue);}
</style>

</head>
 <body><h1>ONLINE LEAVE APPLICATION</h1><br>
 <table border="3">
	<%@page import="java.sql.*" %>
	  <%     String registration=request.getParameter("n");
	  Connection con;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");  
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","Nadeem@123");  
		PreparedStatement ps=con.prepareStatement("select * from student_registration where registration_id=?");
		ps.setString(1,registration);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			out.println("<tr><th><h3>NAME: </h3></th><th>"+rs.getString(2)+"</th></tr>");
			out.println("<tr><th><h3>PASSWORD :</h3></th><th>"+rs.getString(4)+"</th></tr>");
			out.println("<tr><th><h3>EMAIL :</h3></th><th>"+rs.getString(6)+"</th></tr>");
			out.println("<tr><th><h3>MOBILE:</h3></th><th>"+rs.getString(5)+"</th></tr>");
			out.println("<tr><th><h3>REGISTRATION:</h3></th><th>"+rs.getString(3)+"</th></tr>");

	
			
		}
		con.close();
	}
	
catch(Exception e)
	{
	 out.println(e);
	}
	%>
	</table>
	<a href="enquiry.jsp"><b>Back to Enquiry</a>
	
</body>
</html>