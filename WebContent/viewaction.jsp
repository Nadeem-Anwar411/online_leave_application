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
	  <%     String name=request.getParameter("n");
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		PreparedStatement ps=con.prepareStatement("select * from smsinfo where name=?");
		ps.setString(1,name);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			out.println("Name :"+rs.getString(1));
			out.println("<br>Regno :"+rs.getString(2));
			out.println("<br>Email :"+rs.getString(3));
			out.println("<br>Mobile:"+rs.getString(4));
			
		}
		con.close();
	}
	
catch(Exception e)
	{
	 out.println(e);
	}
	%><br>
	<a href="viewstud.jsp">Back to Enquiry</a>
</body>
</html>