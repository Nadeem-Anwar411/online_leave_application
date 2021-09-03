<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
</head>
 <body><h1>Student Management System</h1><br>
	<%@page import="java.sql.*" %>
	  <%     
	  String name=request.getParameter("n");
	  String regno=request.getParameter("r");
	  String email=request.getParameter("e");
	  String mobile=request.getParameter("m");
	  String password=request.getParameter("p");
	  String conpassword=request.getParameter("cp");
	  
	  Connection con=null;

	try
	{
		Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","Nadeem@123");  
		PreparedStatement ps=con.prepareStatement("insert into student_registration(registration_id,password,mobile,email) values(?,?,?,?)");
		ps.setString(1,regno);
		ps.setString(2,password);
		ps.setString(3,mobile);
		ps.setString(4,email);
	

		int r=ps.executeUpdate();
		if(r==1)
		{
			out.println("<h2>1 Record is inserted..</h2");
		    response.setHeader("Refresh","3;URL=Swelcome.jsp");	
		}
		con.close();
	}
	
catch(Exception e)
	{
	 out.println(e);
	}
	%><br>
	<a href="addstud.jsp">Back to Enquiry</a>
</body>
</html>